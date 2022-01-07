; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_free-space-tree-tests.c_test_merge_both.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_free-space-tree-tests.c_test_merge_both.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_fs_info*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, i32)* @test_merge_both to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_merge_both(%struct.btrfs_trans_handle* %0, %struct.btrfs_fs_info* %1, %struct.btrfs_block_group_cache* %2, %struct.btrfs_path* %3, i32 %4) #0 {
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
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %15, align 16
  %21 = getelementptr inbounds %struct.free_space_extent, %struct.free_space_extent* %14, i32 0, i32 1
  %22 = load i32, i32* %11, align 4
  %23 = mul nsw i32 3, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %21, align 8
  %25 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %26 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %27 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %28 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %29 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %33 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @__remove_from_free_space_tree(%struct.btrfs_trans_handle* %25, %struct.btrfs_block_group_cache* %26, %struct.btrfs_path* %27, i64 %31, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %5
  %40 = call i32 @test_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %6, align 4
  br label %103

42:                                               ; preds = %5
  %43 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %44 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %45 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %46 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %47 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @__add_to_free_space_tree(%struct.btrfs_trans_handle* %43, %struct.btrfs_block_group_cache* %44, %struct.btrfs_path* %45, i64 %49, i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = call i32 @test_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %6, align 4
  br label %103

57:                                               ; preds = %42
  %58 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %59 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %60 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %61 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %62 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = mul nsw i32 2, %65
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %64, %67
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @__add_to_free_space_tree(%struct.btrfs_trans_handle* %58, %struct.btrfs_block_group_cache* %59, %struct.btrfs_path* %60, i64 %68, i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %57
  %74 = call i32 @test_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %6, align 4
  br label %103

76:                                               ; preds = %57
  %77 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %78 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %79 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %80 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %81 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @__add_to_free_space_tree(%struct.btrfs_trans_handle* %77, %struct.btrfs_block_group_cache* %78, %struct.btrfs_path* %79, i64 %86, i32 %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %76
  %92 = call i32 @test_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* %13, align 4
  store i32 %93, i32* %6, align 4
  br label %103

94:                                               ; preds = %76
  %95 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %96 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %97 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %98 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %99 = getelementptr inbounds [1 x %struct.free_space_extent], [1 x %struct.free_space_extent]* %12, i64 0, i64 0
  %100 = getelementptr inbounds [1 x %struct.free_space_extent], [1 x %struct.free_space_extent]* %12, i64 0, i64 0
  %101 = call i32 @ARRAY_SIZE(%struct.free_space_extent* %100)
  %102 = call i32 @check_free_space_extents(%struct.btrfs_trans_handle* %95, %struct.btrfs_fs_info* %96, %struct.btrfs_block_group_cache* %97, %struct.btrfs_path* %98, %struct.free_space_extent* %99, i32 %101)
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %94, %91, %73, %54, %39
  %104 = load i32, i32* %6, align 4
  ret i32 %104
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
