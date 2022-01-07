; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode_dotl.c_v9fs_vfs_atomic_open_dotl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode_dotl.c_v9fs_vfs_atomic_open_dotl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.dentry = type { i32, %struct.TYPE_2__ }
%struct.file = type { i32, %struct.p9_fid* }
%struct.p9_fid = type { i32, %struct.TYPE_2__ }
%struct.p9_qid = type { i32 }
%struct.v9fs_inode = type { i32, i8* }
%struct.v9fs_session_info = type { i64 }
%struct.posix_acl = type { i32 }

@O_CREAT = common dso_local global i32 0, align 4
@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"name:%s flags:0x%x mode:0x%hx\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"fid lookup failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"p9_client_walk failed %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to get acl values in creat %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"p9_client_open_dotl failed in creat %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"inode creation failed %d\0A\00", align 1
@CACHE_LOOSE = common dso_local global i64 0, align 8
@CACHE_FSCACHE = common dso_local global i64 0, align 8
@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@generic_file_open = common dso_local global i32 0, align 4
@FMODE_CREATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i32)* @v9fs_vfs_atomic_open_dotl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_vfs_atomic_open_dotl(%struct.inode* %0, %struct.dentry* %1, %struct.file* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.p9_qid, align 4
  %17 = alloca %struct.inode*, align 8
  %18 = alloca %struct.p9_fid*, align 8
  %19 = alloca %struct.v9fs_inode*, align 8
  %20 = alloca %struct.p9_fid*, align 8
  %21 = alloca %struct.p9_fid*, align 8
  %22 = alloca %struct.p9_fid*, align 8
  %23 = alloca %struct.v9fs_session_info*, align 8
  %24 = alloca %struct.posix_acl*, align 8
  %25 = alloca %struct.posix_acl*, align 8
  %26 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.file* %2, %struct.file** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i8* null, i8** %15, align 8
  store %struct.p9_fid* null, %struct.p9_fid** %18, align 8
  store %struct.posix_acl* null, %struct.posix_acl** %24, align 8
  store %struct.posix_acl* null, %struct.posix_acl** %25, align 8
  store %struct.dentry* null, %struct.dentry** %26, align 8
  %27 = load %struct.dentry*, %struct.dentry** %8, align 8
  %28 = bitcast %struct.dentry* %27 to %struct.p9_fid*
  %29 = call i64 @d_in_lookup(%struct.p9_fid* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %5
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = bitcast %struct.inode* %32 to %struct.p9_fid*
  %34 = load %struct.dentry*, %struct.dentry** %8, align 8
  %35 = bitcast %struct.dentry* %34 to %struct.p9_fid*
  %36 = call %struct.p9_fid* @v9fs_vfs_lookup(%struct.p9_fid* %33, %struct.p9_fid* %35, i32 0)
  %37 = bitcast %struct.p9_fid* %36 to %struct.dentry*
  store %struct.dentry* %37, %struct.dentry** %26, align 8
  %38 = load %struct.dentry*, %struct.dentry** %26, align 8
  %39 = bitcast %struct.dentry* %38 to %struct.p9_fid*
  %40 = call i64 @IS_ERR(%struct.p9_fid* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = load %struct.dentry*, %struct.dentry** %26, align 8
  %44 = bitcast %struct.dentry* %43 to %struct.p9_fid*
  %45 = call i32 @PTR_ERR(%struct.p9_fid* %44)
  store i32 %45, i32* %6, align 4
  br label %288

46:                                               ; preds = %31
  %47 = load %struct.dentry*, %struct.dentry** %26, align 8
  %48 = icmp ne %struct.dentry* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load %struct.dentry*, %struct.dentry** %26, align 8
  store %struct.dentry* %50, %struct.dentry** %8, align 8
  br label %51

51:                                               ; preds = %49, %46
  br label %52

52:                                               ; preds = %51, %5
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @O_CREAT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.dentry*, %struct.dentry** %8, align 8
  %59 = bitcast %struct.dentry* %58 to %struct.p9_fid*
  %60 = call i64 @d_really_is_positive(%struct.p9_fid* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57, %52
  %63 = load %struct.file*, %struct.file** %9, align 8
  %64 = load %struct.dentry*, %struct.dentry** %26, align 8
  %65 = bitcast %struct.dentry* %64 to %struct.p9_fid*
  %66 = call i32 @finish_no_open(%struct.file* %63, %struct.p9_fid* %65)
  store i32 %66, i32* %6, align 4
  br label %288

67:                                               ; preds = %57
  %68 = load %struct.inode*, %struct.inode** %7, align 8
  %69 = bitcast %struct.inode* %68 to %struct.p9_fid*
  %70 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.p9_fid* %69)
  store %struct.v9fs_session_info* %70, %struct.v9fs_session_info** %23, align 8
  %71 = load %struct.dentry*, %struct.dentry** %8, align 8
  %72 = getelementptr inbounds %struct.dentry, %struct.dentry* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %15, align 8
  %75 = load i32, i32* @P9_DEBUG_VFS, align 4
  %76 = load i8*, i8** %15, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 (i32, i8*, ...) @p9_debug(i32 %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %76, i32 %77, i32 %78)
  %80 = load %struct.dentry*, %struct.dentry** %8, align 8
  %81 = bitcast %struct.dentry* %80 to %struct.p9_fid*
  %82 = call %struct.p9_fid* @v9fs_parent_fid(%struct.p9_fid* %81)
  store %struct.p9_fid* %82, %struct.p9_fid** %20, align 8
  %83 = load %struct.p9_fid*, %struct.p9_fid** %20, align 8
  %84 = call i64 @IS_ERR(%struct.p9_fid* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %67
  %87 = load %struct.p9_fid*, %struct.p9_fid** %20, align 8
  %88 = call i32 @PTR_ERR(%struct.p9_fid* %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* @P9_DEBUG_VFS, align 4
  %90 = load i32, i32* %12, align 4
  %91 = call i32 (i32, i8*, ...) @p9_debug(i32 %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %266

92:                                               ; preds = %67
  %93 = load %struct.p9_fid*, %struct.p9_fid** %20, align 8
  %94 = call %struct.p9_fid* @clone_fid(%struct.p9_fid* %93)
  store %struct.p9_fid* %94, %struct.p9_fid** %21, align 8
  %95 = load %struct.p9_fid*, %struct.p9_fid** %21, align 8
  %96 = call i64 @IS_ERR(%struct.p9_fid* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %92
  %99 = load %struct.p9_fid*, %struct.p9_fid** %21, align 8
  %100 = call i32 @PTR_ERR(%struct.p9_fid* %99)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* @P9_DEBUG_VFS, align 4
  %102 = load i32, i32* %12, align 4
  %103 = call i32 (i32, i8*, ...) @p9_debug(i32 %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  br label %266

104:                                              ; preds = %92
  %105 = load %struct.inode*, %struct.inode** %7, align 8
  %106 = bitcast %struct.inode* %105 to %struct.p9_fid*
  %107 = call i32 @v9fs_get_fsgid_for_create(%struct.p9_fid* %106)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %14, align 4
  %109 = load %struct.inode*, %struct.inode** %7, align 8
  %110 = bitcast %struct.inode* %109 to %struct.p9_fid*
  %111 = call i32 @v9fs_acl_mode(%struct.p9_fid* %110, i32* %14, %struct.posix_acl** %25, %struct.posix_acl** %24)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %104
  %115 = load i32, i32* @P9_DEBUG_VFS, align 4
  %116 = load i32, i32* %12, align 4
  %117 = call i32 (i32, i8*, ...) @p9_debug(i32 %115, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  br label %274

118:                                              ; preds = %104
  %119 = load %struct.p9_fid*, %struct.p9_fid** %21, align 8
  %120 = load i8*, i8** %15, align 8
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @v9fs_open_to_dotl_flags(i32 %121)
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @p9_client_create_dotl(%struct.p9_fid* %119, i8* %120, i32 %122, i32 %123, i32 %124, %struct.p9_qid* %16)
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %118
  %129 = load i32, i32* @P9_DEBUG_VFS, align 4
  %130 = load i32, i32* %12, align 4
  %131 = call i32 (i32, i8*, ...) @p9_debug(i32 %129, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  br label %274

132:                                              ; preds = %118
  %133 = load %struct.inode*, %struct.inode** %7, align 8
  %134 = bitcast %struct.inode* %133 to %struct.p9_fid*
  %135 = call i32 @v9fs_invalidate_inode_attr(%struct.p9_fid* %134)
  %136 = load %struct.p9_fid*, %struct.p9_fid** %20, align 8
  %137 = call %struct.p9_fid* @p9_client_walk(%struct.p9_fid* %136, i32 1, i8** %15, i32 1)
  store %struct.p9_fid* %137, %struct.p9_fid** %18, align 8
  %138 = load %struct.p9_fid*, %struct.p9_fid** %18, align 8
  %139 = call i64 @IS_ERR(%struct.p9_fid* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %132
  %142 = load %struct.p9_fid*, %struct.p9_fid** %18, align 8
  %143 = call i32 @PTR_ERR(%struct.p9_fid* %142)
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* @P9_DEBUG_VFS, align 4
  %145 = load i32, i32* %12, align 4
  %146 = call i32 (i32, i8*, ...) @p9_debug(i32 %144, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %145)
  store %struct.p9_fid* null, %struct.p9_fid** %18, align 8
  br label %274

147:                                              ; preds = %132
  %148 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %23, align 8
  %149 = load %struct.p9_fid*, %struct.p9_fid** %18, align 8
  %150 = load %struct.inode*, %struct.inode** %7, align 8
  %151 = getelementptr inbounds %struct.inode, %struct.inode* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call %struct.p9_fid* @v9fs_get_new_inode_from_fid(%struct.v9fs_session_info* %148, %struct.p9_fid* %149, i32 %152)
  %154 = bitcast %struct.p9_fid* %153 to %struct.inode*
  store %struct.inode* %154, %struct.inode** %17, align 8
  %155 = load %struct.inode*, %struct.inode** %17, align 8
  %156 = bitcast %struct.inode* %155 to %struct.p9_fid*
  %157 = call i64 @IS_ERR(%struct.p9_fid* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %147
  %160 = load %struct.inode*, %struct.inode** %17, align 8
  %161 = bitcast %struct.inode* %160 to %struct.p9_fid*
  %162 = call i32 @PTR_ERR(%struct.p9_fid* %161)
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* @P9_DEBUG_VFS, align 4
  %164 = load i32, i32* %12, align 4
  %165 = call i32 (i32, i8*, ...) @p9_debug(i32 %163, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %164)
  br label %274

166:                                              ; preds = %147
  %167 = load %struct.inode*, %struct.inode** %17, align 8
  %168 = bitcast %struct.inode* %167 to %struct.p9_fid*
  %169 = load %struct.p9_fid*, %struct.p9_fid** %18, align 8
  %170 = load %struct.posix_acl*, %struct.posix_acl** %25, align 8
  %171 = load %struct.posix_acl*, %struct.posix_acl** %24, align 8
  %172 = call i32 @v9fs_set_create_acl(%struct.p9_fid* %168, %struct.p9_fid* %169, %struct.posix_acl* %170, %struct.posix_acl* %171)
  %173 = load %struct.dentry*, %struct.dentry** %8, align 8
  %174 = bitcast %struct.dentry* %173 to %struct.p9_fid*
  %175 = load %struct.p9_fid*, %struct.p9_fid** %18, align 8
  %176 = call i32 @v9fs_fid_add(%struct.p9_fid* %174, %struct.p9_fid* %175)
  %177 = load %struct.dentry*, %struct.dentry** %8, align 8
  %178 = bitcast %struct.dentry* %177 to %struct.p9_fid*
  %179 = load %struct.inode*, %struct.inode** %17, align 8
  %180 = bitcast %struct.inode* %179 to %struct.p9_fid*
  %181 = call i32 @d_instantiate(%struct.p9_fid* %178, %struct.p9_fid* %180)
  %182 = load %struct.inode*, %struct.inode** %17, align 8
  %183 = bitcast %struct.inode* %182 to %struct.p9_fid*
  %184 = call %struct.v9fs_inode* @V9FS_I(%struct.p9_fid* %183)
  store %struct.v9fs_inode* %184, %struct.v9fs_inode** %19, align 8
  %185 = load %struct.v9fs_inode*, %struct.v9fs_inode** %19, align 8
  %186 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %185, i32 0, i32 0
  %187 = call i32 @mutex_lock(i32* %186)
  %188 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %23, align 8
  %189 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @CACHE_LOOSE, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %199, label %193

193:                                              ; preds = %166
  %194 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %23, align 8
  %195 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @CACHE_FSCACHE, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %228

199:                                              ; preds = %193, %166
  %200 = load %struct.v9fs_inode*, %struct.v9fs_inode** %19, align 8
  %201 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %200, i32 0, i32 1
  %202 = load i8*, i8** %201, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %228, label %204

204:                                              ; preds = %199
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* @O_ACCMODE, align 4
  %207 = and i32 %205, %206
  %208 = load i32, i32* @O_RDONLY, align 4
  %209 = icmp ne i32 %207, %208
  br i1 %209, label %210, label %228

210:                                              ; preds = %204
  %211 = load %struct.dentry*, %struct.dentry** %8, align 8
  %212 = bitcast %struct.dentry* %211 to %struct.p9_fid*
  %213 = call %struct.p9_fid* @v9fs_writeback_fid(%struct.p9_fid* %212)
  store %struct.p9_fid* %213, %struct.p9_fid** %22, align 8
  %214 = load %struct.p9_fid*, %struct.p9_fid** %22, align 8
  %215 = call i64 @IS_ERR(%struct.p9_fid* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %210
  %218 = load %struct.p9_fid*, %struct.p9_fid** %22, align 8
  %219 = call i32 @PTR_ERR(%struct.p9_fid* %218)
  store i32 %219, i32* %12, align 4
  %220 = load %struct.v9fs_inode*, %struct.v9fs_inode** %19, align 8
  %221 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %220, i32 0, i32 0
  %222 = call i32 @mutex_unlock(i32* %221)
  br label %281

223:                                              ; preds = %210
  %224 = load %struct.p9_fid*, %struct.p9_fid** %22, align 8
  %225 = bitcast %struct.p9_fid* %224 to i8*
  %226 = load %struct.v9fs_inode*, %struct.v9fs_inode** %19, align 8
  %227 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %226, i32 0, i32 1
  store i8* %225, i8** %227, align 8
  br label %228

228:                                              ; preds = %223, %204, %199, %193
  %229 = load %struct.v9fs_inode*, %struct.v9fs_inode** %19, align 8
  %230 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %229, i32 0, i32 0
  %231 = call i32 @mutex_unlock(i32* %230)
  %232 = load %struct.file*, %struct.file** %9, align 8
  %233 = load %struct.dentry*, %struct.dentry** %8, align 8
  %234 = bitcast %struct.dentry* %233 to %struct.p9_fid*
  %235 = load i32, i32* @generic_file_open, align 4
  %236 = call i32 @finish_open(%struct.file* %232, %struct.p9_fid* %234, i32 %235)
  store i32 %236, i32* %12, align 4
  %237 = load i32, i32* %12, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %228
  br label %281

240:                                              ; preds = %228
  %241 = load %struct.p9_fid*, %struct.p9_fid** %21, align 8
  %242 = load %struct.file*, %struct.file** %9, align 8
  %243 = getelementptr inbounds %struct.file, %struct.file* %242, i32 0, i32 1
  store %struct.p9_fid* %241, %struct.p9_fid** %243, align 8
  %244 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %23, align 8
  %245 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @CACHE_LOOSE, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %255, label %249

249:                                              ; preds = %240
  %250 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %23, align 8
  %251 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @CACHE_FSCACHE, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %260

255:                                              ; preds = %249, %240
  %256 = load %struct.inode*, %struct.inode** %17, align 8
  %257 = bitcast %struct.inode* %256 to %struct.p9_fid*
  %258 = load %struct.file*, %struct.file** %9, align 8
  %259 = call i32 @v9fs_cache_inode_set_cookie(%struct.p9_fid* %257, %struct.file* %258)
  br label %260

260:                                              ; preds = %255, %249
  %261 = load i32, i32* @FMODE_CREATED, align 4
  %262 = load %struct.file*, %struct.file** %9, align 8
  %263 = getelementptr inbounds %struct.file, %struct.file* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 8
  br label %266

266:                                              ; preds = %287, %260, %98, %86
  %267 = load %struct.posix_acl*, %struct.posix_acl** %25, align 8
  %268 = load %struct.posix_acl*, %struct.posix_acl** %24, align 8
  %269 = call i32 @v9fs_put_acl(%struct.posix_acl* %267, %struct.posix_acl* %268)
  %270 = load %struct.dentry*, %struct.dentry** %26, align 8
  %271 = bitcast %struct.dentry* %270 to %struct.p9_fid*
  %272 = call i32 @dput(%struct.p9_fid* %271)
  %273 = load i32, i32* %12, align 4
  store i32 %273, i32* %6, align 4
  br label %288

274:                                              ; preds = %159, %141, %128, %114
  %275 = load %struct.p9_fid*, %struct.p9_fid** %18, align 8
  %276 = icmp ne %struct.p9_fid* %275, null
  br i1 %276, label %277, label %280

277:                                              ; preds = %274
  %278 = load %struct.p9_fid*, %struct.p9_fid** %18, align 8
  %279 = call i32 @p9_client_clunk(%struct.p9_fid* %278)
  br label %280

280:                                              ; preds = %277, %274
  br label %281

281:                                              ; preds = %280, %239, %217
  %282 = load %struct.p9_fid*, %struct.p9_fid** %21, align 8
  %283 = icmp ne %struct.p9_fid* %282, null
  br i1 %283, label %284, label %287

284:                                              ; preds = %281
  %285 = load %struct.p9_fid*, %struct.p9_fid** %21, align 8
  %286 = call i32 @p9_client_clunk(%struct.p9_fid* %285)
  br label %287

287:                                              ; preds = %284, %281
  br label %266

288:                                              ; preds = %266, %62, %42
  %289 = load i32, i32* %6, align 4
  ret i32 %289
}

declare dso_local i64 @d_in_lookup(%struct.p9_fid*) #1

declare dso_local %struct.p9_fid* @v9fs_vfs_lookup(%struct.p9_fid*, %struct.p9_fid*, i32) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_fid*) #1

declare dso_local i64 @d_really_is_positive(%struct.p9_fid*) #1

declare dso_local i32 @finish_no_open(%struct.file*, %struct.p9_fid*) #1

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.p9_fid*) #1

declare dso_local i32 @p9_debug(i32, i8*, ...) #1

declare dso_local %struct.p9_fid* @v9fs_parent_fid(%struct.p9_fid*) #1

declare dso_local %struct.p9_fid* @clone_fid(%struct.p9_fid*) #1

declare dso_local i32 @v9fs_get_fsgid_for_create(%struct.p9_fid*) #1

declare dso_local i32 @v9fs_acl_mode(%struct.p9_fid*, i32*, %struct.posix_acl**, %struct.posix_acl**) #1

declare dso_local i32 @p9_client_create_dotl(%struct.p9_fid*, i8*, i32, i32, i32, %struct.p9_qid*) #1

declare dso_local i32 @v9fs_open_to_dotl_flags(i32) #1

declare dso_local i32 @v9fs_invalidate_inode_attr(%struct.p9_fid*) #1

declare dso_local %struct.p9_fid* @p9_client_walk(%struct.p9_fid*, i32, i8**, i32) #1

declare dso_local %struct.p9_fid* @v9fs_get_new_inode_from_fid(%struct.v9fs_session_info*, %struct.p9_fid*, i32) #1

declare dso_local i32 @v9fs_set_create_acl(%struct.p9_fid*, %struct.p9_fid*, %struct.posix_acl*, %struct.posix_acl*) #1

declare dso_local i32 @v9fs_fid_add(%struct.p9_fid*, %struct.p9_fid*) #1

declare dso_local i32 @d_instantiate(%struct.p9_fid*, %struct.p9_fid*) #1

declare dso_local %struct.v9fs_inode* @V9FS_I(%struct.p9_fid*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.p9_fid* @v9fs_writeback_fid(%struct.p9_fid*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @finish_open(%struct.file*, %struct.p9_fid*, i32) #1

declare dso_local i32 @v9fs_cache_inode_set_cookie(%struct.p9_fid*, %struct.file*) #1

declare dso_local i32 @v9fs_put_acl(%struct.posix_acl*, %struct.posix_acl*) #1

declare dso_local i32 @dput(%struct.p9_fid*) #1

declare dso_local i32 @p9_client_clunk(%struct.p9_fid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
