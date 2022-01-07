; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode_dotl.c_v9fs_vfs_mknod_dotl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode_dotl.c_v9fs_vfs_mknod_dotl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.v9fs_session_info = type { i64 }
%struct.p9_fid = type { i32, i32 }
%struct.p9_qid = type { i32 }
%struct.posix_acl = type { i32 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c" %lu,%pd mode: %hx MAJOR: %u MINOR: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"fid lookup failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to get acl values in mknod %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"p9_client_walk failed %d\0A\00", align 1
@CACHE_LOOSE = common dso_local global i64 0, align 8
@CACHE_FSCACHE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"inode creation failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @v9fs_vfs_mknod_dotl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_vfs_mknod_dotl(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.v9fs_session_info*, align 8
  %14 = alloca %struct.p9_fid*, align 8
  %15 = alloca %struct.p9_fid*, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.p9_qid, align 4
  %18 = alloca %struct.posix_acl*, align 8
  %19 = alloca %struct.posix_acl*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.p9_fid* null, %struct.p9_fid** %14, align 8
  store %struct.p9_fid* null, %struct.p9_fid** %15, align 8
  store %struct.posix_acl* null, %struct.posix_acl** %18, align 8
  store %struct.posix_acl* null, %struct.posix_acl** %19, align 8
  %20 = load i32, i32* @P9_DEBUG_VFS, align 4
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dentry*, %struct.dentry** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @MAJOR(i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @MINOR(i32 %28)
  %30 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %23, %struct.dentry* %24, i32 %25, i32 %27, i32 %29)
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = bitcast %struct.inode* %31 to %struct.p9_fid*
  %33 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.p9_fid* %32)
  store %struct.v9fs_session_info* %33, %struct.v9fs_session_info** %13, align 8
  %34 = load %struct.dentry*, %struct.dentry** %6, align 8
  %35 = call %struct.p9_fid* @v9fs_parent_fid(%struct.dentry* %34)
  store %struct.p9_fid* %35, %struct.p9_fid** %15, align 8
  %36 = load %struct.p9_fid*, %struct.p9_fid** %15, align 8
  %37 = call i64 @IS_ERR(%struct.p9_fid* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %4
  %40 = load %struct.p9_fid*, %struct.p9_fid** %15, align 8
  %41 = call i32 @PTR_ERR(%struct.p9_fid* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @P9_DEBUG_VFS, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  store %struct.p9_fid* null, %struct.p9_fid** %15, align 8
  br label %161

45:                                               ; preds = %4
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = bitcast %struct.inode* %46 to %struct.p9_fid*
  %48 = call i32 @v9fs_get_fsgid_for_create(%struct.p9_fid* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %12, align 4
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = bitcast %struct.inode* %50 to %struct.p9_fid*
  %52 = call i32 @v9fs_acl_mode(%struct.p9_fid* %51, i32* %12, %struct.posix_acl** %18, %struct.posix_acl** %19)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = load i32, i32* @P9_DEBUG_VFS, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %56, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %161

59:                                               ; preds = %45
  %60 = load %struct.dentry*, %struct.dentry** %6, align 8
  %61 = getelementptr inbounds %struct.dentry, %struct.dentry* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %11, align 8
  %64 = load %struct.p9_fid*, %struct.p9_fid** %15, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @p9_client_mknod_dotl(%struct.p9_fid* %64, i8* %65, i32 %66, i32 %67, i32 %68, %struct.p9_qid* %17)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %59
  br label %161

73:                                               ; preds = %59
  %74 = load %struct.inode*, %struct.inode** %5, align 8
  %75 = bitcast %struct.inode* %74 to %struct.p9_fid*
  %76 = call i32 @v9fs_invalidate_inode_attr(%struct.p9_fid* %75)
  %77 = load %struct.p9_fid*, %struct.p9_fid** %15, align 8
  %78 = call %struct.p9_fid* @p9_client_walk(%struct.p9_fid* %77, i32 1, i8** %11, i32 1)
  store %struct.p9_fid* %78, %struct.p9_fid** %14, align 8
  %79 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %80 = call i64 @IS_ERR(%struct.p9_fid* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %73
  %83 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %84 = call i32 @PTR_ERR(%struct.p9_fid* %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* @P9_DEBUG_VFS, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  store %struct.p9_fid* null, %struct.p9_fid** %14, align 8
  br label %161

88:                                               ; preds = %73
  %89 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %13, align 8
  %90 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @CACHE_LOOSE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %13, align 8
  %96 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @CACHE_FSCACHE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %133

100:                                              ; preds = %94, %88
  %101 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %13, align 8
  %102 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %103 = load %struct.inode*, %struct.inode** %5, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call %struct.p9_fid* @v9fs_get_new_inode_from_fid(%struct.v9fs_session_info* %101, %struct.p9_fid* %102, i32 %105)
  %107 = bitcast %struct.p9_fid* %106 to %struct.inode*
  store %struct.inode* %107, %struct.inode** %16, align 8
  %108 = load %struct.inode*, %struct.inode** %16, align 8
  %109 = bitcast %struct.inode* %108 to %struct.p9_fid*
  %110 = call i64 @IS_ERR(%struct.p9_fid* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %100
  %113 = load %struct.inode*, %struct.inode** %16, align 8
  %114 = bitcast %struct.inode* %113 to %struct.p9_fid*
  %115 = call i32 @PTR_ERR(%struct.p9_fid* %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* @P9_DEBUG_VFS, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %116, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  br label %161

119:                                              ; preds = %100
  %120 = load %struct.inode*, %struct.inode** %16, align 8
  %121 = bitcast %struct.inode* %120 to %struct.p9_fid*
  %122 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %123 = load %struct.posix_acl*, %struct.posix_acl** %18, align 8
  %124 = load %struct.posix_acl*, %struct.posix_acl** %19, align 8
  %125 = call i32 @v9fs_set_create_acl(%struct.p9_fid* %121, %struct.p9_fid* %122, %struct.posix_acl* %123, %struct.posix_acl* %124)
  %126 = load %struct.dentry*, %struct.dentry** %6, align 8
  %127 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %128 = call i32 @v9fs_fid_add(%struct.dentry* %126, %struct.p9_fid* %127)
  %129 = load %struct.dentry*, %struct.dentry** %6, align 8
  %130 = load %struct.inode*, %struct.inode** %16, align 8
  %131 = bitcast %struct.inode* %130 to %struct.p9_fid*
  %132 = call i32 @d_instantiate(%struct.dentry* %129, %struct.p9_fid* %131)
  store %struct.p9_fid* null, %struct.p9_fid** %14, align 8
  store i32 0, i32* %9, align 4
  br label %160

133:                                              ; preds = %94
  %134 = load %struct.inode*, %struct.inode** %5, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* %8, align 4
  %139 = call %struct.p9_fid* @v9fs_get_inode(i32 %136, i32 %137, i32 %138)
  %140 = bitcast %struct.p9_fid* %139 to %struct.inode*
  store %struct.inode* %140, %struct.inode** %16, align 8
  %141 = load %struct.inode*, %struct.inode** %16, align 8
  %142 = bitcast %struct.inode* %141 to %struct.p9_fid*
  %143 = call i64 @IS_ERR(%struct.p9_fid* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %133
  %146 = load %struct.inode*, %struct.inode** %16, align 8
  %147 = bitcast %struct.inode* %146 to %struct.p9_fid*
  %148 = call i32 @PTR_ERR(%struct.p9_fid* %147)
  store i32 %148, i32* %9, align 4
  br label %161

149:                                              ; preds = %133
  %150 = load %struct.inode*, %struct.inode** %16, align 8
  %151 = bitcast %struct.inode* %150 to %struct.p9_fid*
  %152 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %153 = load %struct.posix_acl*, %struct.posix_acl** %18, align 8
  %154 = load %struct.posix_acl*, %struct.posix_acl** %19, align 8
  %155 = call i32 @v9fs_set_create_acl(%struct.p9_fid* %151, %struct.p9_fid* %152, %struct.posix_acl* %153, %struct.posix_acl* %154)
  %156 = load %struct.dentry*, %struct.dentry** %6, align 8
  %157 = load %struct.inode*, %struct.inode** %16, align 8
  %158 = bitcast %struct.inode* %157 to %struct.p9_fid*
  %159 = call i32 @d_instantiate(%struct.dentry* %156, %struct.p9_fid* %158)
  br label %160

160:                                              ; preds = %149, %119
  br label %161

161:                                              ; preds = %160, %145, %112, %82, %72, %55, %39
  %162 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %163 = icmp ne %struct.p9_fid* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %166 = call i32 @p9_client_clunk(%struct.p9_fid* %165)
  br label %167

167:                                              ; preds = %164, %161
  %168 = load %struct.posix_acl*, %struct.posix_acl** %18, align 8
  %169 = load %struct.posix_acl*, %struct.posix_acl** %19, align 8
  %170 = call i32 @v9fs_put_acl(%struct.posix_acl* %168, %struct.posix_acl* %169)
  %171 = load i32, i32* %9, align 4
  ret i32 %171
}

declare dso_local i32 @p9_debug(i32, i8*, i32, ...) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.p9_fid*) #1

declare dso_local %struct.p9_fid* @v9fs_parent_fid(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_fid*) #1

declare dso_local i32 @v9fs_get_fsgid_for_create(%struct.p9_fid*) #1

declare dso_local i32 @v9fs_acl_mode(%struct.p9_fid*, i32*, %struct.posix_acl**, %struct.posix_acl**) #1

declare dso_local i32 @p9_client_mknod_dotl(%struct.p9_fid*, i8*, i32, i32, i32, %struct.p9_qid*) #1

declare dso_local i32 @v9fs_invalidate_inode_attr(%struct.p9_fid*) #1

declare dso_local %struct.p9_fid* @p9_client_walk(%struct.p9_fid*, i32, i8**, i32) #1

declare dso_local %struct.p9_fid* @v9fs_get_new_inode_from_fid(%struct.v9fs_session_info*, %struct.p9_fid*, i32) #1

declare dso_local i32 @v9fs_set_create_acl(%struct.p9_fid*, %struct.p9_fid*, %struct.posix_acl*, %struct.posix_acl*) #1

declare dso_local i32 @v9fs_fid_add(%struct.dentry*, %struct.p9_fid*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.p9_fid*) #1

declare dso_local %struct.p9_fid* @v9fs_get_inode(i32, i32, i32) #1

declare dso_local i32 @p9_client_clunk(%struct.p9_fid*) #1

declare dso_local i32 @v9fs_put_acl(%struct.posix_acl*, %struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
