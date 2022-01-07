; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_free-space-tree-tests.c_test_remove_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_free-space-tree-tests.c_test_remove_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_block_group_cache = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.btrfs_path = type { i32 }
%struct.free_space_extent = type { i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"could not remove free space\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_fs_info*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, i64)* @test_remove_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_remove_end(%struct.btrfs_trans_handle* %0, %struct.btrfs_fs_info* %1, %struct.btrfs_block_group_cache* %2, %struct.btrfs_path* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_fs_info*, align 8
  %9 = alloca %struct.btrfs_block_group_cache*, align 8
  %10 = alloca %struct.btrfs_path*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [1 x %struct.free_space_extent], align 16
  %13 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store %struct.btrfs_fs_info* %1, %struct.btrfs_fs_info** %8, align 8
  store %struct.btrfs_block_group_cache* %2, %struct.btrfs_block_group_cache** %9, align 8
  store %struct.btrfs_path* %3, %struct.btrfs_path** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = getelementptr inbounds [1 x %struct.free_space_extent], [1 x %struct.free_space_extent]* %12, i64 0, i64 0
  %15 = getelementptr inbounds %struct.free_space_extent, %struct.free_space_extent* %14, i32 0, i32 0
  %16 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %17 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %15, align 16
  %20 = getelementptr inbounds %struct.free_space_extent, %struct.free_space_extent* %14, i32 0, i32 1
  %21 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %22 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %11, align 8
  %26 = sub nsw i64 %24, %25
  store i64 %26, i64* %20, align 8
  %27 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %28 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %29 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %30 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %31 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %35 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %33, %37
  %39 = load i64, i64* %11, align 8
  %40 = sub nsw i64 %38, %39
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @__remove_from_free_space_tree(%struct.btrfs_trans_handle* %27, %struct.btrfs_block_group_cache* %28, %struct.btrfs_path* %29, i64 %40, i64 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %5
  %46 = call i32 @test_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %6, align 4
  br label %57

48:                                               ; preds = %5
  %49 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %50 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %51 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %52 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %53 = getelementptr inbounds [1 x %struct.free_space_extent], [1 x %struct.free_space_extent]* %12, i64 0, i64 0
  %54 = getelementptr inbounds [1 x %struct.free_space_extent], [1 x %struct.free_space_extent]* %12, i64 0, i64 0
  %55 = call i32 @ARRAY_SIZE(%struct.free_space_extent* %54)
  %56 = call i32 @check_free_space_extents(%struct.btrfs_trans_handle* %49, %struct.btrfs_fs_info* %50, %struct.btrfs_block_group_cache* %51, %struct.btrfs_path* %52, %struct.free_space_extent* %53, i32 %55)
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %48, %45
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @__remove_from_free_space_tree(%struct.btrfs_trans_handle*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, i64, i64) #1

declare dso_local i32 @test_err(i8*) #1

declare dso_local i32 @check_free_space_extents(%struct.btrfs_trans_handle*, %struct.btrfs_fs_info*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, %struct.free_space_extent*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.free_space_extent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
