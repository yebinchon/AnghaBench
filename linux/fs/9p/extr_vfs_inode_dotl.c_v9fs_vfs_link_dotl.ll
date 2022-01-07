; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode_dotl.c_v9fs_vfs_link_dotl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode_dotl.c_v9fs_vfs_link_dotl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.p9_fid = type { i32 }
%struct.v9fs_session_info = type { i64 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"dir ino: %lu, old_name: %pd, new_name: %pd\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"p9_client_link failed %d\0A\00", align 1
@CACHE_LOOSE = common dso_local global i64 0, align 8
@CACHE_FSCACHE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @v9fs_vfs_link_dotl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_vfs_link_dotl(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.p9_fid*, align 8
  %10 = alloca %struct.p9_fid*, align 8
  %11 = alloca %struct.v9fs_session_info*, align 8
  %12 = alloca %struct.p9_fid*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %13 = load i32, i32* @P9_DEBUG_VFS, align 4
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dentry*, %struct.dentry** %5, align 8
  %18 = load %struct.dentry*, %struct.dentry** %7, align 8
  %19 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %13, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %16, %struct.dentry* %17, %struct.dentry* %18)
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode* %20)
  store %struct.v9fs_session_info* %21, %struct.v9fs_session_info** %11, align 8
  %22 = load %struct.dentry*, %struct.dentry** %7, align 8
  %23 = call %struct.p9_fid* @v9fs_parent_fid(%struct.dentry* %22)
  store %struct.p9_fid* %23, %struct.p9_fid** %9, align 8
  %24 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %25 = call i64 @IS_ERR(%struct.p9_fid* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %29 = call i32 @PTR_ERR(%struct.p9_fid* %28)
  store i32 %29, i32* %4, align 4
  br label %91

30:                                               ; preds = %3
  %31 = load %struct.dentry*, %struct.dentry** %5, align 8
  %32 = call %struct.p9_fid* @v9fs_fid_lookup(%struct.dentry* %31)
  store %struct.p9_fid* %32, %struct.p9_fid** %10, align 8
  %33 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %34 = call i64 @IS_ERR(%struct.p9_fid* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %38 = call i32 @PTR_ERR(%struct.p9_fid* %37)
  store i32 %38, i32* %4, align 4
  br label %91

39:                                               ; preds = %30
  %40 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %41 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %42 = load %struct.dentry*, %struct.dentry** %7, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @p9_client_link(%struct.p9_fid* %40, %struct.p9_fid* %41, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %39
  %50 = load i32, i32* @P9_DEBUG_VFS, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %91

54:                                               ; preds = %39
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = call i32 @v9fs_invalidate_inode_attr(%struct.inode* %55)
  %57 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %11, align 8
  %58 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CACHE_LOOSE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %54
  %63 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %11, align 8
  %64 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CACHE_FSCACHE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %62, %54
  %69 = load %struct.dentry*, %struct.dentry** %5, align 8
  %70 = call %struct.p9_fid* @v9fs_fid_lookup(%struct.dentry* %69)
  store %struct.p9_fid* %70, %struct.p9_fid** %12, align 8
  %71 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %72 = call i64 @IS_ERR(%struct.p9_fid* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %76 = call i32 @PTR_ERR(%struct.p9_fid* %75)
  store i32 %76, i32* %4, align 4
  br label %91

77:                                               ; preds = %68
  %78 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %79 = load %struct.dentry*, %struct.dentry** %5, align 8
  %80 = call i32 @d_inode(%struct.dentry* %79)
  %81 = call i32 @v9fs_refresh_inode_dotl(%struct.p9_fid* %78, i32 %80)
  br label %82

82:                                               ; preds = %77, %62
  %83 = load %struct.dentry*, %struct.dentry** %5, align 8
  %84 = call i32 @d_inode(%struct.dentry* %83)
  %85 = call i32 @ihold(i32 %84)
  %86 = load %struct.dentry*, %struct.dentry** %7, align 8
  %87 = load %struct.dentry*, %struct.dentry** %5, align 8
  %88 = call i32 @d_inode(%struct.dentry* %87)
  %89 = call i32 @d_instantiate(%struct.dentry* %86, i32 %88)
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %82, %74, %49, %36, %27
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @p9_debug(i32, i8*, i32, ...) #1

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode*) #1

declare dso_local %struct.p9_fid* @v9fs_parent_fid(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_fid*) #1

declare dso_local %struct.p9_fid* @v9fs_fid_lookup(%struct.dentry*) #1

declare dso_local i32 @p9_client_link(%struct.p9_fid*, %struct.p9_fid*, i32) #1

declare dso_local i32 @v9fs_invalidate_inode_attr(%struct.inode*) #1

declare dso_local i32 @v9fs_refresh_inode_dotl(%struct.p9_fid*, i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @ihold(i32) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
