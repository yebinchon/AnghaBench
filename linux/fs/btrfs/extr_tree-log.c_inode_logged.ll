; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_inode_logged.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_inode_logged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.btrfs_inode = type { i64, i64, i32 }

@BTRFS_INODE_NEEDS_FULL_SYNC = common dso_local global i32 0, align 4
@BTRFS_FS_LOG_RECOVERING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_inode*)* @inode_logged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inode_logged(%struct.btrfs_trans_handle* %0, %struct.btrfs_inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_inode*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.btrfs_inode* %1, %struct.btrfs_inode** %5, align 8
  %6 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %7 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %10 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %38

14:                                               ; preds = %2
  %15 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %16 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %19 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %14
  %23 = load i32, i32* @BTRFS_INODE_NEEDS_FULL_SYNC, align 4
  %24 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %25 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %24, i32 0, i32 2
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load i32, i32* @BTRFS_FS_LOG_RECOVERING, align 4
  %30 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %31 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i64 @test_bit(i32 %29, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %38

37:                                               ; preds = %28, %22, %14
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %36, %13
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
