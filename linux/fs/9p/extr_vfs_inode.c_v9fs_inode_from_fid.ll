; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_inode_from_fid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_inode_from_fid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.v9fs_session_info = type { i32 }
%struct.p9_fid = type { i32 }
%struct.super_block = type { i32 }
%struct.p9_wstat = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @v9fs_inode_from_fid(%struct.v9fs_session_info* %0, %struct.p9_fid* %1, %struct.super_block* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.v9fs_session_info*, align 8
  %7 = alloca %struct.p9_fid*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.p9_wstat*, align 8
  %11 = alloca %struct.inode*, align 8
  store %struct.v9fs_session_info* %0, %struct.v9fs_session_info** %6, align 8
  store %struct.p9_fid* %1, %struct.p9_fid** %7, align 8
  store %struct.super_block* %2, %struct.super_block** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.inode* null, %struct.inode** %11, align 8
  %12 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  %13 = call %struct.p9_wstat* @p9_client_stat(%struct.p9_fid* %12)
  store %struct.p9_wstat* %13, %struct.p9_wstat** %10, align 8
  %14 = load %struct.p9_wstat*, %struct.p9_wstat** %10, align 8
  %15 = call i64 @IS_ERR(%struct.p9_wstat* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load %struct.p9_wstat*, %struct.p9_wstat** %10, align 8
  %19 = call %struct.inode* @ERR_CAST(%struct.p9_wstat* %18)
  store %struct.inode* %19, %struct.inode** %5, align 8
  br label %32

20:                                               ; preds = %4
  %21 = load %struct.super_block*, %struct.super_block** %8, align 8
  %22 = load %struct.p9_wstat*, %struct.p9_wstat** %10, align 8
  %23 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %22, i32 0, i32 0
  %24 = load %struct.p9_wstat*, %struct.p9_wstat** %10, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call %struct.inode* @v9fs_qid_iget(%struct.super_block* %21, i32* %23, %struct.p9_wstat* %24, i32 %25)
  store %struct.inode* %26, %struct.inode** %11, align 8
  %27 = load %struct.p9_wstat*, %struct.p9_wstat** %10, align 8
  %28 = call i32 @p9stat_free(%struct.p9_wstat* %27)
  %29 = load %struct.p9_wstat*, %struct.p9_wstat** %10, align 8
  %30 = call i32 @kfree(%struct.p9_wstat* %29)
  %31 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %31, %struct.inode** %5, align 8
  br label %32

32:                                               ; preds = %20, %17
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  ret %struct.inode* %33
}

declare dso_local %struct.p9_wstat* @p9_client_stat(%struct.p9_fid*) #1

declare dso_local i64 @IS_ERR(%struct.p9_wstat*) #1

declare dso_local %struct.inode* @ERR_CAST(%struct.p9_wstat*) #1

declare dso_local %struct.inode* @v9fs_qid_iget(%struct.super_block*, i32*, %struct.p9_wstat*, i32) #1

declare dso_local i32 @p9stat_free(%struct.p9_wstat*) #1

declare dso_local i32 @kfree(%struct.p9_wstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
