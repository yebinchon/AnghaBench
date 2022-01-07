; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_btrfs_wait_tree_log_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_btrfs_wait_tree_log_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.TYPE_2__, %struct.extent_io_tree, %struct.btrfs_fs_info* }
%struct.TYPE_2__ = type { i64 }
%struct.extent_io_tree = type { i32 }
%struct.btrfs_fs_info = type { i32 }

@BTRFS_TREE_LOG_OBJECTID = common dso_local global i64 0, align 8
@EXTENT_DIRTY = common dso_local global i32 0, align 4
@BTRFS_FS_LOG1_ERR = common dso_local global i32 0, align 4
@EXTENT_NEW = common dso_local global i32 0, align 4
@BTRFS_FS_LOG2_ERR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_wait_tree_log_extents(%struct.btrfs_root* %0, i32 %1) #0 {
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca %struct.extent_io_tree*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %10 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %9, i32 0, i32 2
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  store %struct.btrfs_fs_info* %11, %struct.btrfs_fs_info** %5, align 8
  %12 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %13 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %12, i32 0, i32 1
  store %struct.extent_io_tree* %13, %struct.extent_io_tree** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %15 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BTRFS_TREE_LOG_OBJECTID, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %23 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %24 = call i32 @__btrfs_wait_marked_extents(%struct.btrfs_fs_info* %22, %struct.extent_io_tree* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @EXTENT_DIRTY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %2
  %30 = load i32, i32* @BTRFS_FS_LOG1_ERR, align 4
  %31 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %32 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %31, i32 0, i32 0
  %33 = call i64 @test_and_clear_bit(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 1, i32* %7, align 4
  br label %36

36:                                               ; preds = %35, %29, %2
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @EXTENT_NEW, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i32, i32* @BTRFS_FS_LOG2_ERR, align 4
  %43 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %44 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %43, i32 0, i32 0
  %45 = call i64 @test_and_clear_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 1, i32* %7, align 4
  br label %48

48:                                               ; preds = %47, %41, %36
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %54, %51, %48
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @__btrfs_wait_marked_extents(%struct.btrfs_fs_info*, %struct.extent_io_tree*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
