; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_btrfs_must_commit_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_btrfs_must_commit_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_inode = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_inode*)* @btrfs_must_commit_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_must_commit_transaction(%struct.btrfs_trans_handle* %0, %struct.btrfs_inode* %1) #0 {
  %3 = alloca %struct.btrfs_trans_handle*, align 8
  %4 = alloca %struct.btrfs_inode*, align 8
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %3, align 8
  store %struct.btrfs_inode* %1, %struct.btrfs_inode** %4, align 8
  %7 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %8 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  store %struct.btrfs_fs_info* %11, %struct.btrfs_fs_info** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %13 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %16 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %19 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %24 = call i32 @btrfs_set_log_full_commit(%struct.btrfs_trans_handle* %23)
  store i32 1, i32* %6, align 4
  br label %25

25:                                               ; preds = %22, %2
  %26 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %27 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %26, i32 0, i32 1
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @btrfs_set_log_full_commit(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
