; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_reopen_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_reopen_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifsFileInfo = type { i32, i32, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.cifs_tcon = type { i64, %struct.TYPE_6__, %struct.TYPE_9__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TCP_Server_Info* }
%struct.TCP_Server_Info = type { %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i32 (i32, %struct.cifs_open_parms*, i32*, i32*)*, i32 (%struct.cifsFileInfo*, %struct.TYPE_8__*, i32)*, i64 (i32)*, i32 (%struct.inode*, %struct.TYPE_8__*)* }
%struct.cifs_open_parms = type { i32, i32, i32, i32, i8*, %struct.TYPE_8__*, %struct.cifs_sb_info*, %struct.cifs_tcon* }
%struct.inode = type { i32, i32 }
%struct.cifsInodeInfo = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@FILE_OPEN = common dso_local global i32 0, align 4
@CREATE_NOT_DIR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"inode = 0x%p file flags 0x%x for %s\0A\00", align 1
@REQ_OPLOCK = common dso_local global i32 0, align 4
@CIFS_UNIX_POSIX_PATH_OPS_CAP = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"posix reopen succeeded\0A\00", align 1
@CREATE_OPEN_BACKUP_INTENT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"cifs_reopen returned 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"oplock: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Reset oplock val from read to None due to mand locks\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifsFileInfo*, i32)* @cifs_reopen_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_reopen_file(%struct.cifsFileInfo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cifsFileInfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cifs_sb_info*, align 8
  %10 = alloca %struct.cifs_tcon*, align 8
  %11 = alloca %struct.TCP_Server_Info*, align 8
  %12 = alloca %struct.cifsInodeInfo*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.cifs_open_parms, align 8
  %19 = alloca i32, align 4
  store %struct.cifsFileInfo* %0, %struct.cifsFileInfo** %4, align 8
  store i32 %1, i32* %5, align 4
  %20 = load i32, i32* @EACCES, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  store i8* null, i8** %14, align 8
  %22 = load i32, i32* @FILE_OPEN, align 4
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* @CREATE_NOT_DIR, align 4
  store i32 %23, i32* %17, align 4
  %24 = call i32 (...) @get_xid()
  store i32 %24, i32* %7, align 4
  %25 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %26 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %25, i32 0, i32 3
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %29 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %2
  %33 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %34 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %33, i32 0, i32 3
  %35 = call i32 @mutex_unlock(i32* %34)
  store i32 0, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @free_xid(i32 %36)
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %310

39:                                               ; preds = %2
  %40 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %41 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.inode* @d_inode(i32 %42)
  store %struct.inode* %43, %struct.inode** %13, align 8
  %44 = load %struct.inode*, %struct.inode** %13, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.cifs_sb_info* @CIFS_SB(i32 %46)
  store %struct.cifs_sb_info* %47, %struct.cifs_sb_info** %9, align 8
  %48 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %49 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.cifs_tcon* @tlink_tcon(i32 %50)
  store %struct.cifs_tcon* %51, %struct.cifs_tcon** %10, align 8
  %52 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %53 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %52, i32 0, i32 2
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %55, align 8
  store %struct.TCP_Server_Info* %56, %struct.TCP_Server_Info** %11, align 8
  %57 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %58 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @build_path_from_dentry(i32 %59)
  store i8* %60, i8** %14, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %39
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  %66 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %67 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %66, i32 0, i32 3
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @free_xid(i32 %69)
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %310

72:                                               ; preds = %39
  %73 = load i32, i32* @FYI, align 4
  %74 = load %struct.inode*, %struct.inode** %13, align 8
  %75 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %76 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %14, align 8
  %79 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.inode* %74, i32 %77, i8* %78)
  %80 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %81 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %80, i32 0, i32 2
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %83, align 8
  %85 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %72
  %89 = load i32, i32* @REQ_OPLOCK, align 4
  store i32 %89, i32* %8, align 4
  br label %91

90:                                               ; preds = %72
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %90, %88
  %92 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %93 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %142

96:                                               ; preds = %91
  %97 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %98 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %97, i32 0, i32 2
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = call i64 @cap_unix(%struct.TYPE_9__* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %142

102:                                              ; preds = %96
  %103 = load i32, i32* @CIFS_UNIX_POSIX_PATH_OPS_CAP, align 4
  %104 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %105 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @le64_to_cpu(i32 %107)
  %109 = and i32 %103, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %142

111:                                              ; preds = %102
  %112 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %113 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @O_CREAT, align 4
  %116 = load i32, i32* @O_EXCL, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @O_TRUNC, align 4
  %119 = or i32 %117, %118
  %120 = xor i32 %119, -1
  %121 = and i32 %114, %120
  store i32 %121, i32* %19, align 4
  %122 = load i8*, i8** %14, align 8
  %123 = load %struct.inode*, %struct.inode** %13, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %127 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %19, align 4
  %130 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %131 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @cifs_posix_open(i8* %122, i32* null, i32 %125, i32 %128, i32 %129, i32* %8, i32* %132, i32 %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %111
  %138 = load i32, i32* @FYI, align 4
  %139 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %138, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %140 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %18, i32 0, i32 0
  store i32 1, i32* %140, align 8
  br label %226

141:                                              ; preds = %111
  br label %142

142:                                              ; preds = %141, %102, %96, %91
  %143 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %144 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @cifs_convert_flags(i32 %145)
  store i32 %146, i32* %15, align 4
  %147 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %148 = call i64 @backup_cred(%struct.cifs_sb_info* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %142
  %151 = load i32, i32* @CREATE_OPEN_BACKUP_INTENT, align 4
  %152 = load i32, i32* %17, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %17, align 4
  br label %154

154:                                              ; preds = %150, %142
  %155 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %11, align 8
  %156 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %155, i32 0, i32 0
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 3
  %159 = load i32 (%struct.inode*, %struct.TYPE_8__*)*, i32 (%struct.inode*, %struct.TYPE_8__*)** %158, align 8
  %160 = icmp ne i32 (%struct.inode*, %struct.TYPE_8__*)* %159, null
  br i1 %160, label %161, label %171

161:                                              ; preds = %154
  %162 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %11, align 8
  %163 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %162, i32 0, i32 0
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 3
  %166 = load i32 (%struct.inode*, %struct.TYPE_8__*)*, i32 (%struct.inode*, %struct.TYPE_8__*)** %165, align 8
  %167 = load %struct.inode*, %struct.inode** %13, align 8
  %168 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %169 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %168, i32 0, i32 2
  %170 = call i32 %166(%struct.inode* %167, %struct.TYPE_8__* %169)
  br label %171

171:                                              ; preds = %161, %154
  %172 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %173 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %18, i32 0, i32 7
  store %struct.cifs_tcon* %172, %struct.cifs_tcon** %173, align 8
  %174 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %175 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %18, i32 0, i32 6
  store %struct.cifs_sb_info* %174, %struct.cifs_sb_info** %175, align 8
  %176 = load i32, i32* %15, align 4
  %177 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %18, i32 0, i32 1
  store i32 %176, i32* %177, align 4
  %178 = load i32, i32* %17, align 4
  %179 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %18, i32 0, i32 2
  store i32 %178, i32* %179, align 8
  %180 = load i32, i32* %16, align 4
  %181 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %18, i32 0, i32 3
  store i32 %180, i32* %181, align 4
  %182 = load i8*, i8** %14, align 8
  %183 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %18, i32 0, i32 4
  store i8* %182, i8** %183, align 8
  %184 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %185 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %18, i32 0, i32 5
  store %struct.TYPE_8__* %185, %struct.TYPE_8__** %186, align 8
  %187 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %18, i32 0, i32 0
  store i32 1, i32* %187, align 8
  %188 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %11, align 8
  %189 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %188, i32 0, i32 0
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  %192 = load i32 (i32, %struct.cifs_open_parms*, i32*, i32*)*, i32 (i32, %struct.cifs_open_parms*, i32*, i32*)** %191, align 8
  %193 = load i32, i32* %7, align 4
  %194 = call i32 %192(i32 %193, %struct.cifs_open_parms* %18, i32* %8, i32* null)
  store i32 %194, i32* %6, align 4
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* @ENOENT, align 4
  %197 = sub nsw i32 0, %196
  %198 = icmp eq i32 %195, %197
  br i1 %198, label %199, label %212

199:                                              ; preds = %171
  %200 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %18, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %212

203:                                              ; preds = %199
  %204 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %11, align 8
  %205 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %204, i32 0, i32 0
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = load i32 (i32, %struct.cifs_open_parms*, i32*, i32*)*, i32 (i32, %struct.cifs_open_parms*, i32*, i32*)** %207, align 8
  %209 = load i32, i32* %7, align 4
  %210 = call i32 %208(i32 %209, %struct.cifs_open_parms* %18, i32* %8, i32* null)
  store i32 %210, i32* %6, align 4
  %211 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %18, i32 0, i32 0
  store i32 1, i32* %211, align 8
  br label %212

212:                                              ; preds = %203, %199, %171
  %213 = load i32, i32* %6, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %225

215:                                              ; preds = %212
  %216 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %217 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %216, i32 0, i32 3
  %218 = call i32 @mutex_unlock(i32* %217)
  %219 = load i32, i32* @FYI, align 4
  %220 = load i32, i32* %6, align 4
  %221 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %219, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %220)
  %222 = load i32, i32* @FYI, align 4
  %223 = load i32, i32* %8, align 4
  %224 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %222, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %223)
  br label %304

225:                                              ; preds = %212
  br label %226

226:                                              ; preds = %225, %137
  %227 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %228 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %227, i32 0, i32 0
  store i32 0, i32* %228, align 4
  %229 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %230 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %229, i32 0, i32 3
  %231 = call i32 @mutex_unlock(i32* %230)
  %232 = load %struct.inode*, %struct.inode** %13, align 8
  %233 = call %struct.cifsInodeInfo* @CIFS_I(%struct.inode* %232)
  store %struct.cifsInodeInfo* %233, %struct.cifsInodeInfo** %12, align 8
  %234 = load i32, i32* %5, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %270

236:                                              ; preds = %226
  %237 = load %struct.inode*, %struct.inode** %13, align 8
  %238 = getelementptr inbounds %struct.inode, %struct.inode* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @filemap_write_and_wait(i32 %239)
  store i32 %240, i32* %6, align 4
  %241 = load i32, i32* %6, align 4
  %242 = call i32 @is_interrupt_error(i32 %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %250, label %244

244:                                              ; preds = %236
  %245 = load %struct.inode*, %struct.inode** %13, align 8
  %246 = getelementptr inbounds %struct.inode, %struct.inode* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %6, align 4
  %249 = call i32 @mapping_set_error(i32 %247, i32 %248)
  br label %250

250:                                              ; preds = %244, %236
  %251 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %252 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %250
  %256 = load i8*, i8** %14, align 8
  %257 = load %struct.inode*, %struct.inode** %13, align 8
  %258 = getelementptr inbounds %struct.inode, %struct.inode* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* %7, align 4
  %261 = call i32 @cifs_get_inode_info_unix(%struct.inode** %13, i8* %256, i32 %259, i32 %260)
  store i32 %261, i32* %6, align 4
  br label %269

262:                                              ; preds = %250
  %263 = load i8*, i8** %14, align 8
  %264 = load %struct.inode*, %struct.inode** %13, align 8
  %265 = getelementptr inbounds %struct.inode, %struct.inode* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* %7, align 4
  %268 = call i32 @cifs_get_inode_info(%struct.inode** %13, i8* %263, i32* null, i32 %266, i32 %267, i32* null)
  store i32 %268, i32* %6, align 4
  br label %269

269:                                              ; preds = %262, %255
  br label %270

270:                                              ; preds = %269, %226
  %271 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %11, align 8
  %272 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %271, i32 0, i32 0
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 2
  %275 = load i64 (i32)*, i64 (i32)** %274, align 8
  %276 = load i32, i32* %8, align 4
  %277 = call i64 %275(i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %286

279:                                              ; preds = %270
  %280 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %12, align 8
  %281 = call i64 @cifs_has_mand_locks(%struct.cifsInodeInfo* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %279
  %284 = load i32, i32* @FYI, align 4
  %285 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %284, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %286

286:                                              ; preds = %283, %279, %270
  %287 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %11, align 8
  %288 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %287, i32 0, i32 0
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 1
  %291 = load i32 (%struct.cifsFileInfo*, %struct.TYPE_8__*, i32)*, i32 (%struct.cifsFileInfo*, %struct.TYPE_8__*, i32)** %290, align 8
  %292 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %293 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %294 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %293, i32 0, i32 2
  %295 = load i32, i32* %8, align 4
  %296 = call i32 %291(%struct.cifsFileInfo* %292, %struct.TYPE_8__* %294, i32 %295)
  %297 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %18, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %286
  %301 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %302 = call i32 @cifs_relock_file(%struct.cifsFileInfo* %301)
  br label %303

303:                                              ; preds = %300, %286
  br label %304

304:                                              ; preds = %303, %215
  %305 = load i8*, i8** %14, align 8
  %306 = call i32 @kfree(i8* %305)
  %307 = load i32, i32* %7, align 4
  %308 = call i32 @free_xid(i32 %307)
  %309 = load i32, i32* %6, align 4
  store i32 %309, i32* %3, align 4
  br label %310

310:                                              ; preds = %304, %63, %32
  %311 = load i32, i32* %3, align 4
  ret i32 %311
}

declare dso_local i32 @get_xid(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @free_xid(i32) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(i32) #1

declare dso_local i8* @build_path_from_dentry(i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i64 @cap_unix(%struct.TYPE_9__*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @cifs_posix_open(i8*, i32*, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @cifs_convert_flags(i32) #1

declare dso_local i64 @backup_cred(%struct.cifs_sb_info*) #1

declare dso_local %struct.cifsInodeInfo* @CIFS_I(%struct.inode*) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local i32 @is_interrupt_error(i32) #1

declare dso_local i32 @mapping_set_error(i32, i32) #1

declare dso_local i32 @cifs_get_inode_info_unix(%struct.inode**, i8*, i32, i32) #1

declare dso_local i32 @cifs_get_inode_info(%struct.inode**, i8*, i32*, i32, i32, i32*) #1

declare dso_local i64 @cifs_has_mand_locks(%struct.cifsInodeInfo*) #1

declare dso_local i32 @cifs_relock_file(%struct.cifsFileInfo*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
