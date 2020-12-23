# Path to your oh-my-zsh installation.
export ZSH=/home/tustar/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# JAVA_HOME
export JAVA_HOME="/usr/lib/jvm/java-8-oracle"
export JRE_HOME="$JAVA_HOME/jre"
export CLASSPATH=".:$JAVA_HOME/lib:$JRE_HOME/lib:$CLASSPATH"
export JAVA_PATH="$JAVA_HOME/bin:$JRE_HOME/bin"

# Android
ANDROID_HOME="$HOME/Documents/android/sdk"
ANDROID_NDK="$ANDROID_HOME/ndk/21.0.6113669"
export PATH="$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/build-tools/29.0.2:$ANDROID_HOME/platform-tools:$ANDROID_NDK"
# CTS
alias cts-tf="cd ~/Documents/android/cts/android-cts/tools/ && ./cts-tradefed"

#
alias use_android_23="cd ~/Documents/android/sdk/platforms/android-23 && cp -f android_bak.jar android.jar"
alias use_fm_23="cd ~/Documents/android/sdk/platforms/android-23 && cp -f android_fm.jar android.jar"
alias use_android_24="cd ~/Documents/android/sdk/platforms/android-24 && cp -f android_bak.jar android.jar"
alias use_fm_24="cd ~/Documents/android/sdk/platforms/android-24 && cp -f android_fm.jar android.jar"

# Autojump
[[ -s $HOME/.autojump/etc/profile.d/autojump.sh ]] && source $HOME/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

# Alias
alias xopen="xdg-open"
alias apktool="java -jar $HOME/Documents/tools/apktool_2.4.1.jar"
alias classyshark="java -jar $HOME/Documents/tools/ClassyShark.jar"
alias tf="python /home/tustar/Documents/tools/tf.py"

# Dex2Jar
export PATH="$PATH:/home/tustar/Documents/tools/dex2jar-2.0"

export LC_ALL=zh_CN.UTF-8
export LANG=zh_CN.UTF-8

# Rvm
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Repo
export PATH="$PATH:$HOME/.repo/repo"

# Gradle
export PATH="$PATH:$HOME/.gradle/gradle-2.7/bin"

# NodeJS
export PATH="$PATH:$HOME/.node/bin"

# Genymotion
export PATH="$PATH:$HOME/Documents/android/genymotion"

# Wechat
alias wechat="cd ~/Documents/software/electronic-wechat && npm start"

# rdesktop
alias rdp="rdesktop 10.119.126.212 -g1536x864 -u tuxp1 -p TuStar2009"

# Shadowsocks
alias ss="sudo sslocal -c /etc/shadowsocks/config.json  > log &"
alias chrome="google-chrome --proxy-server=socks5://127.0.0.1:1080"

# Idea
export PATH="$PATH:$HOME/Documents/software/idea-IU-163.13906.18/bin"

# Go
export GOROOT_BOOTSTRAP="$HOME/Documents/go/go1.4.3"
export GOROOT="$HOME/Documents/go/go1.9.1"
export GOPATH="$HOME/Documents/go/gocoding:$HOME/Documents/go/api"
export PATH="$PATH:$GOROOT/bin"

# Nexus
export PATH="$PATH:$HOME/Documents/software/nexus-3.7.1-02-unix/nexus-3.7.1-02/bin"

# Custom
alias ext="cd ~/Downloads && adb root && adb pull /data/data/com.android.providers.media.module/databases/external.db && sqlitebrowser external.db"
alias aria2="aria2c --enable-rpc --rpc-listen-all --rpc-allow-origin-all  --file-allocation=none --max-connection-per-server=10 --max-concurrent-downloads=5 --continue -d /home/tustar/Downloads"
alias sqldebug="adb shell setprop log.tag.SQLiteLog V && adb shell setprop log.tag.SQLiteStatements V && adb shell setprop log.tag.SQLiteQueryBuilder V"

# Vps
alias vps="ssh root@47.104.233.42"
# jarsigner
alias sign="sh $HOME/Documents/tools/sign.sh"
alias cert="sh $HOME/Documents/tools/cert.sh"
alias setupwizard="sh $HOME/Documents/tools/setupwizard.sh"

# Nodejs
NODE_HOME="$HOME/Documents/software/node"
export PATH="$PATH:$NODE_HOME/bin"

# Sqlite debug

