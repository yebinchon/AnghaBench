; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_super.c_v9fs_mount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_super.c_v9fs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.file_system_type = type { i32 }
%struct.super_block = type { i64, %struct.dentry*, i32, i32* }
%struct.inode = type { i64, %struct.dentry*, i32, i32* }
%struct.v9fs_session_info = type { i64, %struct.dentry*, i32, i32* }
%struct.p9_fid = type { i64, %struct.dentry*, i32, i32* }
%struct.p9_stat_dotl = type { i64, %struct.dentry*, i32, i32* }
%struct.p9_wstat = type { i64, %struct.dentry*, i32, i32* }
%struct.TYPE_4__ = type { i8* }

@S_IRWXUGO = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4
@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@v9fs_set_super = common dso_local global i32 0, align 4
@CACHE_LOOSE = common dso_local global i64 0, align 8
@CACHE_FSCACHE = common dso_local global i64 0, align 8
@v9fs_cached_dentry_operations = common dso_local global i32 0, align 4
@v9fs_dentry_operations = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@P9_STATS_BASIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c" simple set mount, return 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)* @v9fs_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @v9fs_mount(%struct.file_system_type* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.file_system_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.v9fs_session_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.p9_fid*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.p9_stat_dotl*, align 8
  %18 = alloca %struct.p9_wstat*, align 8
  store %struct.file_system_type* %0, %struct.file_system_type** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.super_block* null, %struct.super_block** %10, align 8
  store %struct.inode* null, %struct.inode** %11, align 8
  store %struct.dentry* null, %struct.dentry** %12, align 8
  store %struct.v9fs_session_info* null, %struct.v9fs_session_info** %13, align 8
  %19 = load i32, i32* @S_IRWXUGO, align 4
  %20 = load i32, i32* @S_ISVTX, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %22 = load i32, i32* @P9_DEBUG_VFS, align 4
  %23 = call i32 @p9_debug(i32 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.v9fs_session_info* @kzalloc(i32 32, i32 %24)
  store %struct.v9fs_session_info* %25, %struct.v9fs_session_info** %13, align 8
  %26 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %13, align 8
  %27 = icmp ne %struct.v9fs_session_info* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.dentry* @ERR_PTR(i32 %30)
  store %struct.dentry* %31, %struct.dentry** %5, align 8
  br label %222

32:                                               ; preds = %4
  %33 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %13, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call %struct.v9fs_session_info* @v9fs_session_init(%struct.v9fs_session_info* %33, i8* %34, i8* %35)
  %37 = bitcast %struct.v9fs_session_info* %36 to %struct.p9_fid*
  store %struct.p9_fid* %37, %struct.p9_fid** %15, align 8
  %38 = load %struct.p9_fid*, %struct.p9_fid** %15, align 8
  %39 = bitcast %struct.p9_fid* %38 to %struct.v9fs_session_info*
  %40 = call i64 @IS_ERR(%struct.v9fs_session_info* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %32
  %43 = load %struct.p9_fid*, %struct.p9_fid** %15, align 8
  %44 = bitcast %struct.p9_fid* %43 to %struct.v9fs_session_info*
  %45 = call i32 @PTR_ERR(%struct.v9fs_session_info* %44)
  store i32 %45, i32* %16, align 4
  br label %208

46:                                               ; preds = %32
  %47 = load %struct.file_system_type*, %struct.file_system_type** %6, align 8
  %48 = load i32, i32* @v9fs_set_super, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %13, align 8
  %51 = call %struct.v9fs_session_info* @sget(%struct.file_system_type* %47, i32* null, i32 %48, i32 %49, %struct.v9fs_session_info* %50)
  %52 = bitcast %struct.v9fs_session_info* %51 to %struct.super_block*
  store %struct.super_block* %52, %struct.super_block** %10, align 8
  %53 = load %struct.super_block*, %struct.super_block** %10, align 8
  %54 = bitcast %struct.super_block* %53 to %struct.v9fs_session_info*
  %55 = call i64 @IS_ERR(%struct.v9fs_session_info* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %46
  %58 = load %struct.super_block*, %struct.super_block** %10, align 8
  %59 = bitcast %struct.super_block* %58 to %struct.v9fs_session_info*
  %60 = call i32 @PTR_ERR(%struct.v9fs_session_info* %59)
  store i32 %60, i32* %16, align 4
  br label %202

61:                                               ; preds = %46
  %62 = load %struct.super_block*, %struct.super_block** %10, align 8
  %63 = bitcast %struct.super_block* %62 to %struct.v9fs_session_info*
  %64 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %13, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @v9fs_fill_super(%struct.v9fs_session_info* %63, %struct.v9fs_session_info* %64, i32 %65)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %213

70:                                               ; preds = %61
  %71 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %13, align 8
  %72 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @CACHE_LOOSE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %13, align 8
  %78 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @CACHE_FSCACHE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76, %70
  %83 = load %struct.super_block*, %struct.super_block** %10, align 8
  %84 = getelementptr inbounds %struct.super_block, %struct.super_block* %83, i32 0, i32 3
  store i32* @v9fs_cached_dentry_operations, i32** %84, align 8
  br label %88

85:                                               ; preds = %76
  %86 = load %struct.super_block*, %struct.super_block** %10, align 8
  %87 = getelementptr inbounds %struct.super_block, %struct.super_block* %86, i32 0, i32 3
  store i32* @v9fs_dentry_operations, i32** %87, align 8
  br label %88

88:                                               ; preds = %85, %82
  %89 = load %struct.super_block*, %struct.super_block** %10, align 8
  %90 = bitcast %struct.super_block* %89 to %struct.v9fs_session_info*
  %91 = load i32, i32* @S_IFDIR, align 4
  %92 = load i32, i32* %14, align 4
  %93 = or i32 %91, %92
  %94 = call %struct.v9fs_session_info* @v9fs_get_inode(%struct.v9fs_session_info* %90, i32 %93, i32 0)
  %95 = bitcast %struct.v9fs_session_info* %94 to %struct.inode*
  store %struct.inode* %95, %struct.inode** %11, align 8
  %96 = load %struct.inode*, %struct.inode** %11, align 8
  %97 = bitcast %struct.inode* %96 to %struct.v9fs_session_info*
  %98 = call i64 @IS_ERR(%struct.v9fs_session_info* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %88
  %101 = load %struct.inode*, %struct.inode** %11, align 8
  %102 = bitcast %struct.inode* %101 to %struct.v9fs_session_info*
  %103 = call i32 @PTR_ERR(%struct.v9fs_session_info* %102)
  store i32 %103, i32* %16, align 4
  br label %213

104:                                              ; preds = %88
  %105 = load %struct.inode*, %struct.inode** %11, align 8
  %106 = bitcast %struct.inode* %105 to %struct.v9fs_session_info*
  %107 = call %struct.dentry* @d_make_root(%struct.v9fs_session_info* %106)
  store %struct.dentry* %107, %struct.dentry** %12, align 8
  %108 = load %struct.dentry*, %struct.dentry** %12, align 8
  %109 = icmp ne %struct.dentry* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %104
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %16, align 4
  br label %213

113:                                              ; preds = %104
  %114 = load %struct.dentry*, %struct.dentry** %12, align 8
  %115 = load %struct.super_block*, %struct.super_block** %10, align 8
  %116 = getelementptr inbounds %struct.super_block, %struct.super_block* %115, i32 0, i32 1
  store %struct.dentry* %114, %struct.dentry** %116, align 8
  %117 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %13, align 8
  %118 = call i64 @v9fs_proto_dotl(%struct.v9fs_session_info* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %149

120:                                              ; preds = %113
  store %struct.p9_stat_dotl* null, %struct.p9_stat_dotl** %17, align 8
  %121 = load %struct.p9_fid*, %struct.p9_fid** %15, align 8
  %122 = bitcast %struct.p9_fid* %121 to %struct.v9fs_session_info*
  %123 = load i32, i32* @P9_STATS_BASIC, align 4
  %124 = call %struct.v9fs_session_info* @p9_client_getattr_dotl(%struct.v9fs_session_info* %122, i32 %123)
  %125 = bitcast %struct.v9fs_session_info* %124 to %struct.p9_stat_dotl*
  store %struct.p9_stat_dotl* %125, %struct.p9_stat_dotl** %17, align 8
  %126 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %17, align 8
  %127 = bitcast %struct.p9_stat_dotl* %126 to %struct.v9fs_session_info*
  %128 = call i64 @IS_ERR(%struct.v9fs_session_info* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %120
  %131 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %17, align 8
  %132 = bitcast %struct.p9_stat_dotl* %131 to %struct.v9fs_session_info*
  %133 = call i32 @PTR_ERR(%struct.v9fs_session_info* %132)
  store i32 %133, i32* %16, align 4
  br label %213

134:                                              ; preds = %120
  %135 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %17, align 8
  %136 = getelementptr inbounds %struct.p9_stat_dotl, %struct.p9_stat_dotl* %135, i32 0, i32 2
  %137 = call i8* @v9fs_qid2ino(i32* %136)
  %138 = load %struct.dentry*, %struct.dentry** %12, align 8
  %139 = call %struct.TYPE_4__* @d_inode(%struct.dentry* %138)
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  store i8* %137, i8** %140, align 8
  %141 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %17, align 8
  %142 = bitcast %struct.p9_stat_dotl* %141 to %struct.v9fs_session_info*
  %143 = load %struct.dentry*, %struct.dentry** %12, align 8
  %144 = call %struct.TYPE_4__* @d_inode(%struct.dentry* %143)
  %145 = call i32 @v9fs_stat2inode_dotl(%struct.v9fs_session_info* %142, %struct.TYPE_4__* %144, i32 0)
  %146 = load %struct.p9_stat_dotl*, %struct.p9_stat_dotl** %17, align 8
  %147 = bitcast %struct.p9_stat_dotl* %146 to %struct.v9fs_session_info*
  %148 = call i32 @kfree(%struct.v9fs_session_info* %147)
  br label %182

149:                                              ; preds = %113
  store %struct.p9_wstat* null, %struct.p9_wstat** %18, align 8
  %150 = load %struct.p9_fid*, %struct.p9_fid** %15, align 8
  %151 = bitcast %struct.p9_fid* %150 to %struct.v9fs_session_info*
  %152 = call %struct.v9fs_session_info* @p9_client_stat(%struct.v9fs_session_info* %151)
  %153 = bitcast %struct.v9fs_session_info* %152 to %struct.p9_wstat*
  store %struct.p9_wstat* %153, %struct.p9_wstat** %18, align 8
  %154 = load %struct.p9_wstat*, %struct.p9_wstat** %18, align 8
  %155 = bitcast %struct.p9_wstat* %154 to %struct.v9fs_session_info*
  %156 = call i64 @IS_ERR(%struct.v9fs_session_info* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %149
  %159 = load %struct.p9_wstat*, %struct.p9_wstat** %18, align 8
  %160 = bitcast %struct.p9_wstat* %159 to %struct.v9fs_session_info*
  %161 = call i32 @PTR_ERR(%struct.v9fs_session_info* %160)
  store i32 %161, i32* %16, align 4
  br label %213

162:                                              ; preds = %149
  %163 = load %struct.p9_wstat*, %struct.p9_wstat** %18, align 8
  %164 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %163, i32 0, i32 2
  %165 = call i8* @v9fs_qid2ino(i32* %164)
  %166 = load %struct.dentry*, %struct.dentry** %12, align 8
  %167 = call %struct.TYPE_4__* @d_inode(%struct.dentry* %166)
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  store i8* %165, i8** %168, align 8
  %169 = load %struct.p9_wstat*, %struct.p9_wstat** %18, align 8
  %170 = bitcast %struct.p9_wstat* %169 to %struct.v9fs_session_info*
  %171 = load %struct.dentry*, %struct.dentry** %12, align 8
  %172 = call %struct.TYPE_4__* @d_inode(%struct.dentry* %171)
  %173 = load %struct.super_block*, %struct.super_block** %10, align 8
  %174 = bitcast %struct.super_block* %173 to %struct.v9fs_session_info*
  %175 = call i32 @v9fs_stat2inode(%struct.v9fs_session_info* %170, %struct.TYPE_4__* %172, %struct.v9fs_session_info* %174, i32 0)
  %176 = load %struct.p9_wstat*, %struct.p9_wstat** %18, align 8
  %177 = bitcast %struct.p9_wstat* %176 to %struct.v9fs_session_info*
  %178 = call i32 @p9stat_free(%struct.v9fs_session_info* %177)
  %179 = load %struct.p9_wstat*, %struct.p9_wstat** %18, align 8
  %180 = bitcast %struct.p9_wstat* %179 to %struct.v9fs_session_info*
  %181 = call i32 @kfree(%struct.v9fs_session_info* %180)
  br label %182

182:                                              ; preds = %162, %134
  %183 = load %struct.inode*, %struct.inode** %11, align 8
  %184 = bitcast %struct.inode* %183 to %struct.v9fs_session_info*
  %185 = load %struct.p9_fid*, %struct.p9_fid** %15, align 8
  %186 = bitcast %struct.p9_fid* %185 to %struct.v9fs_session_info*
  %187 = call i32 @v9fs_get_acl(%struct.v9fs_session_info* %184, %struct.v9fs_session_info* %186)
  store i32 %187, i32* %16, align 4
  %188 = load i32, i32* %16, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %182
  br label %213

191:                                              ; preds = %182
  %192 = load %struct.dentry*, %struct.dentry** %12, align 8
  %193 = load %struct.p9_fid*, %struct.p9_fid** %15, align 8
  %194 = bitcast %struct.p9_fid* %193 to %struct.v9fs_session_info*
  %195 = call i32 @v9fs_fid_add(%struct.dentry* %192, %struct.v9fs_session_info* %194)
  %196 = load i32, i32* @P9_DEBUG_VFS, align 4
  %197 = call i32 @p9_debug(i32 %196, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %198 = load %struct.super_block*, %struct.super_block** %10, align 8
  %199 = getelementptr inbounds %struct.super_block, %struct.super_block* %198, i32 0, i32 1
  %200 = load %struct.dentry*, %struct.dentry** %199, align 8
  %201 = call %struct.dentry* @dget(%struct.dentry* %200)
  store %struct.dentry* %201, %struct.dentry** %5, align 8
  br label %222

202:                                              ; preds = %57
  %203 = load %struct.p9_fid*, %struct.p9_fid** %15, align 8
  %204 = bitcast %struct.p9_fid* %203 to %struct.v9fs_session_info*
  %205 = call i32 @p9_client_clunk(%struct.v9fs_session_info* %204)
  %206 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %13, align 8
  %207 = call i32 @v9fs_session_close(%struct.v9fs_session_info* %206)
  br label %208

208:                                              ; preds = %202, %42
  %209 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %13, align 8
  %210 = call i32 @kfree(%struct.v9fs_session_info* %209)
  %211 = load i32, i32* %16, align 4
  %212 = call %struct.dentry* @ERR_PTR(i32 %211)
  store %struct.dentry* %212, %struct.dentry** %5, align 8
  br label %222

213:                                              ; preds = %190, %158, %130, %110, %100, %69
  %214 = load %struct.p9_fid*, %struct.p9_fid** %15, align 8
  %215 = bitcast %struct.p9_fid* %214 to %struct.v9fs_session_info*
  %216 = call i32 @p9_client_clunk(%struct.v9fs_session_info* %215)
  %217 = load %struct.super_block*, %struct.super_block** %10, align 8
  %218 = bitcast %struct.super_block* %217 to %struct.v9fs_session_info*
  %219 = call i32 @deactivate_locked_super(%struct.v9fs_session_info* %218)
  %220 = load i32, i32* %16, align 4
  %221 = call %struct.dentry* @ERR_PTR(i32 %220)
  store %struct.dentry* %221, %struct.dentry** %5, align 8
  br label %222

222:                                              ; preds = %213, %208, %191, %28
  %223 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %223
}

declare dso_local i32 @p9_debug(i32, i8*) #1

declare dso_local %struct.v9fs_session_info* @kzalloc(i32, i32) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.v9fs_session_info* @v9fs_session_init(%struct.v9fs_session_info*, i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.v9fs_session_info*) #1

declare dso_local i32 @PTR_ERR(%struct.v9fs_session_info*) #1

declare dso_local %struct.v9fs_session_info* @sget(%struct.file_system_type*, i32*, i32, i32, %struct.v9fs_session_info*) #1

declare dso_local i32 @v9fs_fill_super(%struct.v9fs_session_info*, %struct.v9fs_session_info*, i32) #1

declare dso_local %struct.v9fs_session_info* @v9fs_get_inode(%struct.v9fs_session_info*, i32, i32) #1

declare dso_local %struct.dentry* @d_make_root(%struct.v9fs_session_info*) #1

declare dso_local i64 @v9fs_proto_dotl(%struct.v9fs_session_info*) #1

declare dso_local %struct.v9fs_session_info* @p9_client_getattr_dotl(%struct.v9fs_session_info*, i32) #1

declare dso_local i8* @v9fs_qid2ino(i32*) #1

declare dso_local %struct.TYPE_4__* @d_inode(%struct.dentry*) #1

declare dso_local i32 @v9fs_stat2inode_dotl(%struct.v9fs_session_info*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @kfree(%struct.v9fs_session_info*) #1

declare dso_local %struct.v9fs_session_info* @p9_client_stat(%struct.v9fs_session_info*) #1

declare dso_local i32 @v9fs_stat2inode(%struct.v9fs_session_info*, %struct.TYPE_4__*, %struct.v9fs_session_info*, i32) #1

declare dso_local i32 @p9stat_free(%struct.v9fs_session_info*) #1

declare dso_local i32 @v9fs_get_acl(%struct.v9fs_session_info*, %struct.v9fs_session_info*) #1

declare dso_local i32 @v9fs_fid_add(%struct.dentry*, %struct.v9fs_session_info*) #1

declare dso_local %struct.dentry* @dget(%struct.dentry*) #1

declare dso_local i32 @p9_client_clunk(%struct.v9fs_session_info*) #1

declare dso_local i32 @v9fs_session_close(%struct.v9fs_session_info*) #1

declare dso_local i32 @deactivate_locked_super(%struct.v9fs_session_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
