; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_free-space-tree-tests.c_test_merge_right.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_free-space-tree-tests.c_test_merge_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_block_group_cache = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.btrfs_path = type { i32 }
%struct.free_space_extent = type { i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c"could not remove free space\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"could not add free space\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_fs_info*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, i32)* @test_merge_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_merge_right(%struct.btrfs_trans_handle* %0, %struct.btrfs_fs_info* %1, %struct.btrfs_block_group_cache* %2, %struct.btrfs_path* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_fs_info*, align 8
  %9 = alloca %struct.btrfs_block_group_cache*, align 8
  %10 = alloca %struct.btrfs_path*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [1 x %struct.free_space_extent], align 16
  %13 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store %struct.btrfs_fs_info* %1, %struct.btrfs_fs_info** %8, align 8
  store %struct.btrfs_block_group_cache* %2, %struct.btrfs_block_group_cache** %9, align 8
  store %struct.btrfs_path* %3, %struct.btrfs_path** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = getelementptr inbounds [1 x %struct.free_space_extent], [1 x %struct.free_space_extent]* %12, i64 0, i64 0
  %15 = getelementptr inbounds %struct.free_space_extent, %struct.free_space_extent* %14, i32 0, i32 0
  %16 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %17 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %15, align 16
  %24 = getelementptr inbounds %struct.free_space_extent, %struct.free_space_extent* %14, i32 0, i32 1
  %25 = load i32, i32* %11, align 4
  %26 = mul nsw i32 2, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %24, align 8
  %28 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %29 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %30 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %31 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %32 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %36 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @__remove_from_free_space_tree(%struct.btrfs_trans_handle* %28, %struct.btrfs_block_group_cache* %29, %struct.btrfs_path* %30, i64 %34, i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %5
  %43 = call i32 @test_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %6, align 4
  br label %91

45:                                               ; preds = %5
  %46 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %47 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %48 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %49 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %50 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = mul nsw i32 2, %53
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %52, %55
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @__add_to_free_space_tree(%struct.btrfs_trans_handle* %46, %struct.btrfs_block_group_cache* %47, %struct.btrfs_path* %48, i64 %56, i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %45
  %62 = call i32 @test_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* %13, align 4
  store i32 %63, i32* %6, align 4
  br label %91

64:                                               ; preds = %45
  %65 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %66 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %67 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %68 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %69 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @__add_to_free_space_tree(%struct.btrfs_trans_handle* %65, %struct.btrfs_block_group_cache* %66, %struct.btrfs_path* %67, i64 %74, i32 %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %64
  %80 = call i32 @test_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %6, align 4
  br label %91

82:                                               ; preds = %64
  %83 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %84 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %85 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %86 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %87 = getelementptr inbounds [1 x %struct.free_space_extent], [1 x %struct.free_space_extent]* %12, i64 0, i64 0
  %88 = getelementptr inbounds [1 x %struct.free_space_extent], [1 x %struct.free_space_extent]* %12, i64 0, i64 0
  %89 = call i32 @ARRAY_SIZE(%struct.free_space_extent* %88)
  %90 = call i32 @check_free_space_extents(%struct.btrfs_trans_handle* %83, %struct.btrfs_fs_info* %84, %struct.btrfs_block_group_cache* %85, %struct.btrfs_path* %86, %struct.free_space_extent* %87, i32 %89)
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %82, %79, %61, %42
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32 @__remove_from_free_space_tree(%struct.btrfs_trans_handle*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, i64, i32) #1

declare dso_local i32 @test_err(i8*) #1

declare dso_local i32 @__add_to_free_space_tree(%struct.btrfs_trans_handle*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, i64, i32) #1

declare dso_local i32 @check_free_space_extents(%struct.btrfs_trans_handle*, %struct.btrfs_fs_info*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, %struct.free_space_extent*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.free_space_extent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
