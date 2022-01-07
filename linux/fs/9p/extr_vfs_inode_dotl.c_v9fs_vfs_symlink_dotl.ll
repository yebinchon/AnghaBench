; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode_dotl.c_v9fs_vfs_symlink_dotl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode_dotl.c_v9fs_vfs_symlink_dotl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.p9_qid = type { i32 }
%struct.p9_fid = type { i32, i32 }
%struct.v9fs_session_info = type { i64 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%lu,%s,%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"fid lookup failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"p9_client_symlink failed %d\0A\00", align 1
@CACHE_LOOSE = common dso_local global i64 0, align 8
@CACHE_FSCACHE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"p9_client_walk failed %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"inode creation failed %d\0A\00", align 1
@S_IFLNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @v9fs_vfs_symlink_dotl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_vfs_symlink_dotl(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.p9_qid, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.p9_fid*, align 8
  %14 = alloca %struct.p9_fid*, align 8
  %15 = alloca %struct.v9fs_session_info*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.p9_fid* null, %struct.p9_fid** %14, align 8
  %16 = load %struct.dentry*, %struct.dentry** %6, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %10, align 8
  %20 = load i32, i32* @P9_DEBUG_VFS, align 4
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %10, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %24, i8* %25)
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = bitcast %struct.inode* %27 to %struct.p9_fid*
  %29 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.p9_fid* %28)
  store %struct.v9fs_session_info* %29, %struct.v9fs_session_info** %15, align 8
  %30 = load %struct.dentry*, %struct.dentry** %6, align 8
  %31 = call %struct.p9_fid* @v9fs_parent_fid(%struct.dentry* %30)
  store %struct.p9_fid* %31, %struct.p9_fid** %13, align 8
  %32 = load %struct.p9_fid*, %struct.p9_fid** %13, align 8
  %33 = call i64 @IS_ERR(%struct.p9_fid* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %3
  %36 = load %struct.p9_fid*, %struct.p9_fid** %13, align 8
  %37 = call i32 @PTR_ERR(%struct.p9_fid* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* @P9_DEBUG_VFS, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %140

42:                                               ; preds = %3
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = bitcast %struct.inode* %43 to %struct.p9_fid*
  %45 = call i32 @v9fs_get_fsgid_for_create(%struct.p9_fid* %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.p9_fid*, %struct.p9_fid** %13, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @p9_client_symlink(%struct.p9_fid* %46, i8* %47, i8* %48, i32 %49, %struct.p9_qid* %11)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  %54 = load i32, i32* @P9_DEBUG_VFS, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %132

57:                                               ; preds = %42
  %58 = load %struct.inode*, %struct.inode** %5, align 8
  %59 = bitcast %struct.inode* %58 to %struct.p9_fid*
  %60 = call i32 @v9fs_invalidate_inode_attr(%struct.p9_fid* %59)
  %61 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %15, align 8
  %62 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CACHE_LOOSE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %57
  %67 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %15, align 8
  %68 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CACHE_FSCACHE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %111

72:                                               ; preds = %66, %57
  %73 = load %struct.p9_fid*, %struct.p9_fid** %13, align 8
  %74 = call %struct.p9_fid* @p9_client_walk(%struct.p9_fid* %73, i32 1, i8** %10, i32 1)
  store %struct.p9_fid* %74, %struct.p9_fid** %14, align 8
  %75 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %76 = call i64 @IS_ERR(%struct.p9_fid* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %80 = call i32 @PTR_ERR(%struct.p9_fid* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* @P9_DEBUG_VFS, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  store %struct.p9_fid* null, %struct.p9_fid** %14, align 8
  br label %132

84:                                               ; preds = %72
  %85 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %15, align 8
  %86 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %87 = load %struct.inode*, %struct.inode** %5, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call %struct.p9_fid* @v9fs_get_new_inode_from_fid(%struct.v9fs_session_info* %85, %struct.p9_fid* %86, i32 %89)
  %91 = bitcast %struct.p9_fid* %90 to %struct.inode*
  store %struct.inode* %91, %struct.inode** %12, align 8
  %92 = load %struct.inode*, %struct.inode** %12, align 8
  %93 = bitcast %struct.inode* %92 to %struct.p9_fid*
  %94 = call i64 @IS_ERR(%struct.p9_fid* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %84
  %97 = load %struct.inode*, %struct.inode** %12, align 8
  %98 = bitcast %struct.inode* %97 to %struct.p9_fid*
  %99 = call i32 @PTR_ERR(%struct.p9_fid* %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* @P9_DEBUG_VFS, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  br label %132

103:                                              ; preds = %84
  %104 = load %struct.dentry*, %struct.dentry** %6, align 8
  %105 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %106 = call i32 @v9fs_fid_add(%struct.dentry* %104, %struct.p9_fid* %105)
  %107 = load %struct.dentry*, %struct.dentry** %6, align 8
  %108 = load %struct.inode*, %struct.inode** %12, align 8
  %109 = bitcast %struct.inode* %108 to %struct.p9_fid*
  %110 = call i32 @d_instantiate(%struct.dentry* %107, %struct.p9_fid* %109)
  store %struct.p9_fid* null, %struct.p9_fid** %14, align 8
  store i32 0, i32* %8, align 4
  br label %131

111:                                              ; preds = %66
  %112 = load %struct.inode*, %struct.inode** %5, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @S_IFLNK, align 4
  %116 = call %struct.p9_fid* @v9fs_get_inode(i32 %114, i32 %115, i32 0)
  %117 = bitcast %struct.p9_fid* %116 to %struct.inode*
  store %struct.inode* %117, %struct.inode** %12, align 8
  %118 = load %struct.inode*, %struct.inode** %12, align 8
  %119 = bitcast %struct.inode* %118 to %struct.p9_fid*
  %120 = call i64 @IS_ERR(%struct.p9_fid* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %111
  %123 = load %struct.inode*, %struct.inode** %12, align 8
  %124 = bitcast %struct.inode* %123 to %struct.p9_fid*
  %125 = call i32 @PTR_ERR(%struct.p9_fid* %124)
  store i32 %125, i32* %8, align 4
  br label %132

126:                                              ; preds = %111
  %127 = load %struct.dentry*, %struct.dentry** %6, align 8
  %128 = load %struct.inode*, %struct.inode** %12, align 8
  %129 = bitcast %struct.inode* %128 to %struct.p9_fid*
  %130 = call i32 @d_instantiate(%struct.dentry* %127, %struct.p9_fid* %129)
  br label %131

131:                                              ; preds = %126, %103
  br label %132

132:                                              ; preds = %131, %122, %96, %78, %53
  %133 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %134 = icmp ne %struct.p9_fid* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %137 = call i32 @p9_client_clunk(%struct.p9_fid* %136)
  br label %138

138:                                              ; preds = %135, %132
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %138, %35
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @p9_debug(i32, i8*, i32, ...) #1

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.p9_fid*) #1

declare dso_local %struct.p9_fid* @v9fs_parent_fid(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_fid*) #1

declare dso_local i32 @v9fs_get_fsgid_for_create(%struct.p9_fid*) #1

declare dso_local i32 @p9_client_symlink(%struct.p9_fid*, i8*, i8*, i32, %struct.p9_qid*) #1

declare dso_local i32 @v9fs_invalidate_inode_attr(%struct.p9_fid*) #1

declare dso_local %struct.p9_fid* @p9_client_walk(%struct.p9_fid*, i32, i8**, i32) #1

declare dso_local %struct.p9_fid* @v9fs_get_new_inode_from_fid(%struct.v9fs_session_info*, %struct.p9_fid*, i32) #1

declare dso_local i32 @v9fs_fid_add(%struct.dentry*, %struct.p9_fid*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.p9_fid*) #1

declare dso_local %struct.p9_fid* @v9fs_get_inode(i32, i32, i32) #1

declare dso_local i32 @p9_client_clunk(%struct.p9_fid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
