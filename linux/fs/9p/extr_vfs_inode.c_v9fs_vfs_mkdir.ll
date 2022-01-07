; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_vfs_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_vfs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.p9_fid = type { i32 }
%struct.v9fs_session_info = type { i32 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"name %pd\0A\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@P9_OREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @v9fs_vfs_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_vfs_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.p9_fid*, align 8
  %10 = alloca %struct.v9fs_session_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @P9_DEBUG_VFS, align 4
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = call i32 @p9_debug(i32 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.dentry* %12)
  store i32 0, i32* %7, align 4
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode* %14)
  store %struct.v9fs_session_info* %15, %struct.v9fs_session_info** %10, align 8
  %16 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %10, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @S_IFDIR, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @unixmode2p9mode(%struct.v9fs_session_info* %16, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %10, align 8
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = load %struct.dentry*, %struct.dentry** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @P9_OREAD, align 4
  %26 = call %struct.p9_fid* @v9fs_create(%struct.v9fs_session_info* %21, %struct.inode* %22, %struct.dentry* %23, i32* null, i32 %24, i32 %25)
  store %struct.p9_fid* %26, %struct.p9_fid** %9, align 8
  %27 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %28 = call i64 @IS_ERR(%struct.p9_fid* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %32 = call i32 @PTR_ERR(%struct.p9_fid* %31)
  store i32 %32, i32* %7, align 4
  store %struct.p9_fid* null, %struct.p9_fid** %9, align 8
  br label %38

33:                                               ; preds = %3
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = call i32 @inc_nlink(%struct.inode* %34)
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = call i32 @v9fs_invalidate_inode_attr(%struct.inode* %36)
  br label %38

38:                                               ; preds = %33, %30
  %39 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %40 = icmp ne %struct.p9_fid* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %43 = call i32 @p9_client_clunk(%struct.p9_fid* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i32 @p9_debug(i32, i8*, %struct.dentry*) #1

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode*) #1

declare dso_local i32 @unixmode2p9mode(%struct.v9fs_session_info*, i32) #1

declare dso_local %struct.p9_fid* @v9fs_create(%struct.v9fs_session_info*, %struct.inode*, %struct.dentry*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_fid*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @v9fs_invalidate_inode_attr(%struct.inode*) #1

declare dso_local i32 @p9_client_clunk(%struct.p9_fid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
