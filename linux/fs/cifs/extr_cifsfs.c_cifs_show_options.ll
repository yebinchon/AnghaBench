; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsfs.c_cifs_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsfs.c_cifs_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dentry = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.cifs_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cifs_tcon = type { i32, i32, %struct.TYPE_8__*, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i64*, i64*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64* }
%struct.sockaddr = type { i64 }
%struct.sockaddr_in = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"vers\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c",nolease\00", align 1
@CIFS_MOUNT_MULTIUSER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c",multiuser\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@AF_UNSPEC = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c",srcaddr=%pI6c\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c",srcaddr=%pI4\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c",srcaddr=BAD-AF:%i\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c",uid=%u\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@CIFS_MOUNT_OVERR_UID = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c",forceuid\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c",noforceuid\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c",gid=%u\00", align 1
@CIFS_MOUNT_OVERR_GID = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c",forcegid\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c",noforcegid\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c",file_mode=0%ho,dir_mode=0%ho\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c",seal\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c",nocase\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c",locallease\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c",hard\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c",soft\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c",persistenthandles\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c",resilienthandles\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c",posix\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c",unix\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c",nounix\00", align 1
@CIFS_MOUNT_NO_DFS = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [7 x i8] c",nodfs\00", align 1
@CIFS_MOUNT_POSIX_PATHS = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [12 x i8] c",posixpaths\00", align 1
@CIFS_MOUNT_SET_UID = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [9 x i8] c",setuids\00", align 1
@CIFS_MOUNT_UID_FROM_ACL = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [12 x i8] c",idsfromsid\00", align 1
@CIFS_MOUNT_SERVER_INUM = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [11 x i8] c",serverino\00", align 1
@CIFS_MOUNT_RWPIDFORWARD = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [14 x i8] c",rwpidforward\00", align 1
@CIFS_MOUNT_NOPOSIXBRL = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [11 x i8] c",forcemand\00", align 1
@CIFS_MOUNT_NO_XATTR = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [14 x i8] c",nouser_xattr\00", align 1
@CIFS_MOUNT_MAP_SPECIAL_CHR = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [10 x i8] c",mapchars\00", align 1
@CIFS_MOUNT_MAP_SFM_CHR = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [10 x i8] c",mapposix\00", align 1
@CIFS_MOUNT_UNX_EMUL = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [5 x i8] c",sfu\00", align 1
@CIFS_MOUNT_NO_BRL = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [7 x i8] c",nobrl\00", align 1
@CIFS_MOUNT_NO_HANDLE_CACHE = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [15 x i8] c",nohandlecache\00", align 1
@CIFS_MOUNT_MODE_FROM_SID = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [13 x i8] c",modefromsid\00", align 1
@CIFS_MOUNT_CIFS_ACL = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [9 x i8] c",cifsacl\00", align 1
@CIFS_MOUNT_DYNPERM = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [9 x i8] c",dynperm\00", align 1
@SB_POSIXACL = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [5 x i8] c",acl\00", align 1
@CIFS_MOUNT_MF_SYMLINKS = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [12 x i8] c",mfsymlinks\00", align 1
@CIFS_MOUNT_FSCACHE = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [5 x i8] c",fsc\00", align 1
@CIFS_MOUNT_NOSSYNC = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [14 x i8] c",nostrictsync\00", align 1
@CIFS_MOUNT_NO_PERM = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [8 x i8] c",noperm\00", align 1
@CIFS_MOUNT_CIFS_BACKUPUID = common dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [14 x i8] c",backupuid=%u\00", align 1
@CIFS_MOUNT_CIFS_BACKUPGID = common dso_local global i32 0, align 4
@.str.47 = private unnamed_addr constant [14 x i8] c",backupgid=%u\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c",rsize=%u\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c",wsize=%u\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c",bsize=%u\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c",esize=%u\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c",echo_interval=%lu\00", align 1
@HZ = common dso_local global i32 0, align 4
@SMB2_MAX_CREDITS_AVAILABLE = common dso_local global i32 0, align 4
@.str.53 = private unnamed_addr constant [16 x i8] c",max_credits=%u\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c",snapshot=%llu\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c",handletimeout=%u\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c",actimeo=%lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dentry*)* @cifs_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_show_options(%struct.seq_file* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.cifs_sb_info*, align 8
  %6 = alloca %struct.cifs_tcon*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = call %struct.cifs_sb_info* @CIFS_SB(%struct.TYPE_10__* %12)
  store %struct.cifs_sb_info* %13, %struct.cifs_sb_info** %5, align 8
  %14 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %15 = call %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info* %14)
  store %struct.cifs_tcon* %15, %struct.cifs_tcon** %6, align 8
  %16 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %17 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %16, i32 0, i32 2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 4
  %22 = bitcast i32* %21 to %struct.sockaddr*
  store %struct.sockaddr* %22, %struct.sockaddr** %7, align 8
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %25 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %24, i32 0, i32 2
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = call i32 @seq_show_option(%struct.seq_file* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64* %32)
  %34 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %35 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %36 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %35, i32 0, i32 2
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = call i32 @cifs_show_security(%struct.seq_file* %34, %struct.TYPE_8__* %37)
  %39 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %40 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %41 = call i32 @cifs_show_cache_flavor(%struct.seq_file* %39, %struct.cifs_sb_info* %40)
  %42 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %43 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %42, i32 0, i32 11
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %2
  %47 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %48 = call i32 @seq_puts(%struct.seq_file* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %2
  %50 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %51 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CIFS_MOUNT_MULTIUSER, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %58 = call i32 @seq_puts(%struct.seq_file* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %75

59:                                               ; preds = %49
  %60 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %61 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %60, i32 0, i32 2
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = icmp ne i64* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %68 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %69 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %68, i32 0, i32 2
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = call i32 @seq_show_option(%struct.seq_file* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64* %72)
  br label %74

74:                                               ; preds = %66, %59
  br label %75

75:                                               ; preds = %74, %56
  %76 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %77 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %76, i32 0, i32 2
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = icmp ne i64* %80, null
  br i1 %81, label %82, label %99

82:                                               ; preds = %75
  %83 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %84 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %83, i32 0, i32 2
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %82
  %92 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %93 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %94 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %93, i32 0, i32 2
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i64*, i64** %96, align 8
  %98 = call i32 @seq_show_option(%struct.seq_file* %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64* %97)
  br label %99

99:                                               ; preds = %91, %82, %75
  %100 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %101 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @AF_UNSPEC, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %143

105:                                              ; preds = %99
  %106 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %107 = bitcast %struct.sockaddr* %106 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %107, %struct.sockaddr_in** %8, align 8
  %108 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %109 = bitcast %struct.sockaddr* %108 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %109, %struct.sockaddr_in6** %9, align 8
  %110 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %111 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @AF_INET6, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %105
  %116 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %117 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %118 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %117, i32 0, i32 0
  %119 = ptrtoint i32* %118 to i32
  %120 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %116, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %119)
  br label %142

121:                                              ; preds = %105
  %122 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %123 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @AF_INET, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %121
  %128 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %129 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %130 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = ptrtoint i32* %131 to i32
  %133 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %132)
  br label %141

134:                                              ; preds = %121
  %135 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %136 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %137 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = trunc i64 %138 to i32
  %140 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %135, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %134, %127
  br label %142

142:                                              ; preds = %141, %115
  br label %143

143:                                              ; preds = %142, %99
  %144 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %145 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %146 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %145, i32 0, i32 11
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @from_kuid_munged(i32* @init_user_ns, i32 %147)
  %149 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %144, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %148)
  %150 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %151 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @CIFS_MOUNT_OVERR_UID, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %143
  %157 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %158 = call i32 @seq_puts(%struct.seq_file* %157, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %162

159:                                              ; preds = %143
  %160 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %161 = call i32 @seq_puts(%struct.seq_file* %160, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %162

162:                                              ; preds = %159, %156
  %163 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %164 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %165 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %164, i32 0, i32 10
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @from_kgid_munged(i32* @init_user_ns, i32 %166)
  %168 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %163, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %167)
  %169 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %170 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @CIFS_MOUNT_OVERR_GID, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %162
  %176 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %177 = call i32 @seq_puts(%struct.seq_file* %176, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  br label %181

178:                                              ; preds = %162
  %179 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %180 = call i32 @seq_puts(%struct.seq_file* %179, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  br label %181

181:                                              ; preds = %178, %175
  %182 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %183 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %184 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %183, i32 0, i32 2
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = call i32 @cifs_show_address(%struct.seq_file* %182, %struct.TYPE_9__* %187)
  %189 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %190 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %202, label %193

193:                                              ; preds = %181
  %194 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %195 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %196 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %195, i32 0, i32 9
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %199 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %198, i32 0, i32 8
  %200 = load i32, i32* %199, align 4
  %201 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %194, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 %197, i32 %200)
  br label %202

202:                                              ; preds = %193, %181
  %203 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %204 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %205 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %204, i32 0, i32 7
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @cifs_show_nls(%struct.seq_file* %203, i32 %206)
  %208 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %209 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %208, i32 0, i32 10
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %202
  %213 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %214 = call i32 @seq_puts(%struct.seq_file* %213, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  br label %215

215:                                              ; preds = %212, %202
  %216 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %217 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %216, i32 0, i32 9
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %215
  %221 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %222 = call i32 @seq_puts(%struct.seq_file* %221, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  br label %223

223:                                              ; preds = %220, %215
  %224 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %225 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %224, i32 0, i32 8
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %223
  %229 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %230 = call i32 @seq_puts(%struct.seq_file* %229, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  br label %231

231:                                              ; preds = %228, %223
  %232 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %233 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %232, i32 0, i32 7
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %231
  %237 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %238 = call i32 @seq_puts(%struct.seq_file* %237, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  br label %242

239:                                              ; preds = %231
  %240 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %241 = call i32 @seq_puts(%struct.seq_file* %240, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  br label %242

242:                                              ; preds = %239, %236
  %243 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %244 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %243, i32 0, i32 6
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %242
  %248 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %249 = call i32 @seq_puts(%struct.seq_file* %248, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0))
  br label %259

250:                                              ; preds = %242
  %251 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %252 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %251, i32 0, i32 5
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %250
  %256 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %257 = call i32 @seq_puts(%struct.seq_file* %256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0))
  br label %258

258:                                              ; preds = %255, %250
  br label %259

259:                                              ; preds = %258, %247
  %260 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %261 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %260, i32 0, i32 4
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %259
  %265 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %266 = call i32 @seq_puts(%struct.seq_file* %265, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0))
  br label %279

267:                                              ; preds = %259
  %268 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %269 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %268, i32 0, i32 3
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %267
  %273 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %274 = call i32 @seq_puts(%struct.seq_file* %273, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  br label %278

275:                                              ; preds = %267
  %276 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %277 = call i32 @seq_puts(%struct.seq_file* %276, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0))
  br label %278

278:                                              ; preds = %275, %272
  br label %279

279:                                              ; preds = %278, %264
  %280 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %281 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @CIFS_MOUNT_NO_DFS, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %279
  %287 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %288 = call i32 @seq_puts(%struct.seq_file* %287, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0))
  br label %289

289:                                              ; preds = %286, %279
  %290 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %291 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @CIFS_MOUNT_POSIX_PATHS, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %289
  %297 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %298 = call i32 @seq_puts(%struct.seq_file* %297, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0))
  br label %299

299:                                              ; preds = %296, %289
  %300 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %301 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @CIFS_MOUNT_SET_UID, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %299
  %307 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %308 = call i32 @seq_puts(%struct.seq_file* %307, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0))
  br label %309

309:                                              ; preds = %306, %299
  %310 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %311 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @CIFS_MOUNT_UID_FROM_ACL, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %319

316:                                              ; preds = %309
  %317 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %318 = call i32 @seq_puts(%struct.seq_file* %317, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0))
  br label %319

319:                                              ; preds = %316, %309
  %320 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %321 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @CIFS_MOUNT_SERVER_INUM, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %329

326:                                              ; preds = %319
  %327 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %328 = call i32 @seq_puts(%struct.seq_file* %327, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0))
  br label %329

329:                                              ; preds = %326, %319
  %330 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %331 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @CIFS_MOUNT_RWPIDFORWARD, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %339

336:                                              ; preds = %329
  %337 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %338 = call i32 @seq_puts(%struct.seq_file* %337, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0))
  br label %339

339:                                              ; preds = %336, %329
  %340 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %341 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* @CIFS_MOUNT_NOPOSIXBRL, align 4
  %344 = and i32 %342, %343
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %349

346:                                              ; preds = %339
  %347 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %348 = call i32 @seq_puts(%struct.seq_file* %347, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0))
  br label %349

349:                                              ; preds = %346, %339
  %350 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %351 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* @CIFS_MOUNT_NO_XATTR, align 4
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %359

356:                                              ; preds = %349
  %357 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %358 = call i32 @seq_puts(%struct.seq_file* %357, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0))
  br label %359

359:                                              ; preds = %356, %349
  %360 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %361 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @CIFS_MOUNT_MAP_SPECIAL_CHR, align 4
  %364 = and i32 %362, %363
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %369

366:                                              ; preds = %359
  %367 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %368 = call i32 @seq_puts(%struct.seq_file* %367, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0))
  br label %369

369:                                              ; preds = %366, %359
  %370 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %371 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* @CIFS_MOUNT_MAP_SFM_CHR, align 4
  %374 = and i32 %372, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %379

376:                                              ; preds = %369
  %377 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %378 = call i32 @seq_puts(%struct.seq_file* %377, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0))
  br label %379

379:                                              ; preds = %376, %369
  %380 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %381 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* @CIFS_MOUNT_UNX_EMUL, align 4
  %384 = and i32 %382, %383
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %389

386:                                              ; preds = %379
  %387 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %388 = call i32 @seq_puts(%struct.seq_file* %387, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0))
  br label %389

389:                                              ; preds = %386, %379
  %390 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %391 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 4
  %393 = load i32, i32* @CIFS_MOUNT_NO_BRL, align 4
  %394 = and i32 %392, %393
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %399

396:                                              ; preds = %389
  %397 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %398 = call i32 @seq_puts(%struct.seq_file* %397, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0))
  br label %399

399:                                              ; preds = %396, %389
  %400 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %401 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = load i32, i32* @CIFS_MOUNT_NO_HANDLE_CACHE, align 4
  %404 = and i32 %402, %403
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %409

406:                                              ; preds = %399
  %407 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %408 = call i32 @seq_puts(%struct.seq_file* %407, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0))
  br label %409

409:                                              ; preds = %406, %399
  %410 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %411 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 4
  %413 = load i32, i32* @CIFS_MOUNT_MODE_FROM_SID, align 4
  %414 = and i32 %412, %413
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %419

416:                                              ; preds = %409
  %417 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %418 = call i32 @seq_puts(%struct.seq_file* %417, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0))
  br label %419

419:                                              ; preds = %416, %409
  %420 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %421 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 4
  %423 = load i32, i32* @CIFS_MOUNT_CIFS_ACL, align 4
  %424 = and i32 %422, %423
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %429

426:                                              ; preds = %419
  %427 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %428 = call i32 @seq_puts(%struct.seq_file* %427, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i64 0, i64 0))
  br label %429

429:                                              ; preds = %426, %419
  %430 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %431 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 4
  %433 = load i32, i32* @CIFS_MOUNT_DYNPERM, align 4
  %434 = and i32 %432, %433
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %439

436:                                              ; preds = %429
  %437 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %438 = call i32 @seq_puts(%struct.seq_file* %437, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0))
  br label %439

439:                                              ; preds = %436, %429
  %440 = load %struct.dentry*, %struct.dentry** %4, align 8
  %441 = getelementptr inbounds %struct.dentry, %struct.dentry* %440, i32 0, i32 0
  %442 = load %struct.TYPE_10__*, %struct.TYPE_10__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 4
  %445 = load i32, i32* @SB_POSIXACL, align 4
  %446 = and i32 %444, %445
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %451

448:                                              ; preds = %439
  %449 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %450 = call i32 @seq_puts(%struct.seq_file* %449, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0))
  br label %451

451:                                              ; preds = %448, %439
  %452 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %453 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 4
  %455 = load i32, i32* @CIFS_MOUNT_MF_SYMLINKS, align 4
  %456 = and i32 %454, %455
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %461

458:                                              ; preds = %451
  %459 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %460 = call i32 @seq_puts(%struct.seq_file* %459, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0))
  br label %461

461:                                              ; preds = %458, %451
  %462 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %463 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 4
  %465 = load i32, i32* @CIFS_MOUNT_FSCACHE, align 4
  %466 = and i32 %464, %465
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %471

468:                                              ; preds = %461
  %469 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %470 = call i32 @seq_puts(%struct.seq_file* %469, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0))
  br label %471

471:                                              ; preds = %468, %461
  %472 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %473 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 4
  %475 = load i32, i32* @CIFS_MOUNT_NOSSYNC, align 4
  %476 = and i32 %474, %475
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %481

478:                                              ; preds = %471
  %479 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %480 = call i32 @seq_puts(%struct.seq_file* %479, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i64 0, i64 0))
  br label %481

481:                                              ; preds = %478, %471
  %482 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %483 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 4
  %485 = load i32, i32* @CIFS_MOUNT_NO_PERM, align 4
  %486 = and i32 %484, %485
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %491

488:                                              ; preds = %481
  %489 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %490 = call i32 @seq_puts(%struct.seq_file* %489, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0))
  br label %491

491:                                              ; preds = %488, %481
  %492 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %493 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 4
  %495 = load i32, i32* @CIFS_MOUNT_CIFS_BACKUPUID, align 4
  %496 = and i32 %494, %495
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %505

498:                                              ; preds = %491
  %499 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %500 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %501 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %500, i32 0, i32 6
  %502 = load i32, i32* %501, align 4
  %503 = call i32 @from_kuid_munged(i32* @init_user_ns, i32 %502)
  %504 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %499, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i64 0, i64 0), i32 %503)
  br label %505

505:                                              ; preds = %498, %491
  %506 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %507 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 4
  %509 = load i32, i32* @CIFS_MOUNT_CIFS_BACKUPGID, align 4
  %510 = and i32 %508, %509
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %519

512:                                              ; preds = %505
  %513 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %514 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %515 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %514, i32 0, i32 5
  %516 = load i32, i32* %515, align 4
  %517 = call i32 @from_kgid_munged(i32* @init_user_ns, i32 %516)
  %518 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %513, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i64 0, i64 0), i32 %517)
  br label %519

519:                                              ; preds = %512, %505
  %520 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %521 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %522 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %521, i32 0, i32 1
  %523 = load i32, i32* %522, align 4
  %524 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %520, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i64 0, i64 0), i32 %523)
  %525 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %526 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %527 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %526, i32 0, i32 2
  %528 = load i32, i32* %527, align 4
  %529 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %525, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i64 0, i64 0), i32 %528)
  %530 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %531 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %532 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %531, i32 0, i32 3
  %533 = load i32, i32* %532, align 4
  %534 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %530, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i64 0, i64 0), i32 %533)
  %535 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %536 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %535, i32 0, i32 2
  %537 = load %struct.TYPE_8__*, %struct.TYPE_8__** %536, align 8
  %538 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %537, i32 0, i32 2
  %539 = load %struct.TYPE_9__*, %struct.TYPE_9__** %538, align 8
  %540 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %539, i32 0, i32 0
  %541 = load i32, i32* %540, align 8
  %542 = icmp ne i32 %541, 0
  br i1 %542, label %543, label %553

543:                                              ; preds = %519
  %544 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %545 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %546 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %545, i32 0, i32 2
  %547 = load %struct.TYPE_8__*, %struct.TYPE_8__** %546, align 8
  %548 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %547, i32 0, i32 2
  %549 = load %struct.TYPE_9__*, %struct.TYPE_9__** %548, align 8
  %550 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %549, i32 0, i32 0
  %551 = load i32, i32* %550, align 8
  %552 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %544, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0), i32 %551)
  br label %553

553:                                              ; preds = %543, %519
  %554 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %555 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %556 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %555, i32 0, i32 2
  %557 = load %struct.TYPE_8__*, %struct.TYPE_8__** %556, align 8
  %558 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %557, i32 0, i32 2
  %559 = load %struct.TYPE_9__*, %struct.TYPE_9__** %558, align 8
  %560 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %559, i32 0, i32 1
  %561 = load i32, i32* %560, align 4
  %562 = load i32, i32* @HZ, align 4
  %563 = sdiv i32 %561, %562
  %564 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %554, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i64 0, i64 0), i32 %563)
  %565 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %566 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %565, i32 0, i32 2
  %567 = load %struct.TYPE_8__*, %struct.TYPE_8__** %566, align 8
  %568 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %567, i32 0, i32 2
  %569 = load %struct.TYPE_9__*, %struct.TYPE_9__** %568, align 8
  %570 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %569, i32 0, i32 2
  %571 = load i32, i32* %570, align 8
  %572 = load i32, i32* @SMB2_MAX_CREDITS_AVAILABLE, align 4
  %573 = icmp ne i32 %571, %572
  br i1 %573, label %574, label %584

574:                                              ; preds = %553
  %575 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %576 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %577 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %576, i32 0, i32 2
  %578 = load %struct.TYPE_8__*, %struct.TYPE_8__** %577, align 8
  %579 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %578, i32 0, i32 2
  %580 = load %struct.TYPE_9__*, %struct.TYPE_9__** %579, align 8
  %581 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %580, i32 0, i32 2
  %582 = load i32, i32* %581, align 8
  %583 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %575, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i64 0, i64 0), i32 %582)
  br label %584

584:                                              ; preds = %574, %553
  %585 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %586 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %585, i32 0, i32 0
  %587 = load i32, i32* %586, align 8
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %589, label %595

589:                                              ; preds = %584
  %590 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %591 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %592 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %591, i32 0, i32 0
  %593 = load i32, i32* %592, align 8
  %594 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %590, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i64 0, i64 0), i32 %593)
  br label %595

595:                                              ; preds = %589, %584
  %596 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %597 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %596, i32 0, i32 1
  %598 = load i32, i32* %597, align 4
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %600, label %606

600:                                              ; preds = %595
  %601 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %602 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %603 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %602, i32 0, i32 1
  %604 = load i32, i32* %603, align 4
  %605 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %601, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.55, i64 0, i64 0), i32 %604)
  br label %606

606:                                              ; preds = %600, %595
  %607 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %608 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %609 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %608, i32 0, i32 4
  %610 = load i32, i32* %609, align 4
  %611 = load i32, i32* @HZ, align 4
  %612 = sdiv i32 %610, %611
  %613 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %607, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i32 %612)
  ret i32 0
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(%struct.TYPE_10__*) #1

declare dso_local %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info*) #1

declare dso_local i32 @seq_show_option(%struct.seq_file*, i8*, i64*) #1

declare dso_local i32 @cifs_show_security(%struct.seq_file*, %struct.TYPE_8__*) #1

declare dso_local i32 @cifs_show_cache_flavor(%struct.seq_file*, %struct.cifs_sb_info*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @from_kuid_munged(i32*, i32) #1

declare dso_local i32 @from_kgid_munged(i32*, i32) #1

declare dso_local i32 @cifs_show_address(%struct.seq_file*, %struct.TYPE_9__*) #1

declare dso_local i32 @cifs_show_nls(%struct.seq_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
