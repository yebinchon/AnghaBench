; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_free-space-tree-tests.c_test_remove_middle.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_free-space-tree-tests.c_test_remove_middle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_block_group_cache = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.btrfs_path = type { i32 }
%struct.free_space_extent = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"could not remove free space\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_fs_info*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, i32)* @test_remove_middle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_remove_middle(%struct.btrfs_trans_handle* %0, %struct.btrfs_fs_info* %1, %struct.btrfs_block_group_cache* %2, %struct.btrfs_path* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_fs_info*, align 8
  %9 = alloca %struct.btrfs_block_group_cache*, align 8
  %10 = alloca %struct.btrfs_path*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [2 x %struct.free_space_extent], align 16
  %13 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store %struct.btrfs_fs_info* %1, %struct.btrfs_fs_info** %8, align 8
  store %struct.btrfs_block_group_cache* %2, %struct.btrfs_block_group_cache** %9, align 8
  store %struct.btrfs_path* %3, %struct.btrfs_path** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = getelementptr inbounds [2 x %struct.free_space_extent], [2 x %struct.free_space_extent]* %12, i64 0, i64 0
  %15 = getelementptr inbounds %struct.free_space_extent, %struct.free_space_extent* %14, i32 0, i32 0
  %16 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %17 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %15, align 8
  %20 = getelementptr inbounds %struct.free_space_extent, %struct.free_space_extent* %14, i32 0, i32 1
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.free_space_extent, %struct.free_space_extent* %14, i64 1
  %23 = getelementptr inbounds %struct.free_space_extent, %struct.free_space_extent* %22, i32 0, i32 0
  %24 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %25 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %11, align 4
  %29 = mul nsw i32 2, %28
  %30 = add nsw i32 %27, %29
  store i32 %30, i32* %23, align 8
  %31 = getelementptr inbounds %struct.free_space_extent, %struct.free_space_extent* %22, i32 0, i32 1
  %32 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %33 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %11, align 4
  %37 = mul nsw i32 2, %36
  %38 = sub nsw i32 %35, %37
  store i32 %38, i32* %31, align 4
  %39 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %40 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %41 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %42 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %43 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @__remove_from_free_space_tree(%struct.btrfs_trans_handle* %39, %struct.btrfs_block_group_cache* %40, %struct.btrfs_path* %41, i32 %47, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %5
  %53 = call i32 @test_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %6, align 4
  br label %64

55:                                               ; preds = %5
  %56 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %57 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %58 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %59 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %60 = getelementptr inbounds [2 x %struct.free_space_extent], [2 x %struct.free_space_extent]* %12, i64 0, i64 0
  %61 = getelementptr inbounds [2 x %struct.free_space_extent], [2 x %struct.free_space_extent]* %12, i64 0, i64 0
  %62 = call i32 @ARRAY_SIZE(%struct.free_space_extent* %61)
  %63 = call i32 @check_free_space_extents(%struct.btrfs_trans_handle* %56, %struct.btrfs_fs_info* %57, %struct.btrfs_block_group_cache* %58, %struct.btrfs_path* %59, %struct.free_space_extent* %60, i32 %62)
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %55, %52
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @__remove_from_free_space_tree(%struct.btrfs_trans_handle*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @test_err(i8*) #1

declare dso_local i32 @check_free_space_extents(%struct.btrfs_trans_handle*, %struct.btrfs_fs_info*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, %struct.free_space_extent*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.free_space_extent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
