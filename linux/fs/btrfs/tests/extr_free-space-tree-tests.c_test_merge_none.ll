; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_free-space-tree-tests.c_test_merge_none.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_free-space-tree-tests.c_test_merge_none.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_fs_info*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, i32)* @test_merge_none to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_merge_none(%struct.btrfs_trans_handle* %0, %struct.btrfs_fs_info* %1, %struct.btrfs_block_group_cache* %2, %struct.btrfs_path* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_fs_info*, align 8
  %9 = alloca %struct.btrfs_block_group_cache*, align 8
  %10 = alloca %struct.btrfs_path*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [3 x %struct.free_space_extent], align 16
  %13 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store %struct.btrfs_fs_info* %1, %struct.btrfs_fs_info** %8, align 8
  store %struct.btrfs_block_group_cache* %2, %struct.btrfs_block_group_cache** %9, align 8
  store %struct.btrfs_path* %3, %struct.btrfs_path** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = getelementptr inbounds [3 x %struct.free_space_extent], [3 x %struct.free_space_extent]* %12, i64 0, i64 0
  %15 = getelementptr inbounds %struct.free_space_extent, %struct.free_space_extent* %14, i32 0, i32 0
  %16 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %17 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %15, align 16
  %21 = getelementptr inbounds %struct.free_space_extent, %struct.free_space_extent* %14, i32 0, i32 1
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %21, align 8
  %24 = getelementptr inbounds %struct.free_space_extent, %struct.free_space_extent* %14, i64 1
  %25 = getelementptr inbounds %struct.free_space_extent, %struct.free_space_extent* %24, i32 0, i32 0
  %26 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %27 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = mul nsw i32 2, %30
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %29, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %25, align 16
  %35 = getelementptr inbounds %struct.free_space_extent, %struct.free_space_extent* %24, i32 0, i32 1
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %35, align 8
  %38 = getelementptr inbounds %struct.free_space_extent, %struct.free_space_extent* %24, i64 1
  %39 = getelementptr inbounds %struct.free_space_extent, %struct.free_space_extent* %38, i32 0, i32 0
  %40 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %41 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = mul nsw i32 4, %44
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %43, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %39, align 16
  %49 = getelementptr inbounds %struct.free_space_extent, %struct.free_space_extent* %38, i32 0, i32 1
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %49, align 8
  %52 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %53 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %54 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %55 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %56 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %60 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @__remove_from_free_space_tree(%struct.btrfs_trans_handle* %52, %struct.btrfs_block_group_cache* %53, %struct.btrfs_path* %54, i64 %58, i32 %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %5
  %67 = call i32 @test_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %6, align 4
  br label %131

69:                                               ; preds = %5
  %70 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %71 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %72 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %73 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %74 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @__add_to_free_space_tree(%struct.btrfs_trans_handle* %70, %struct.btrfs_block_group_cache* %71, %struct.btrfs_path* %72, i64 %76, i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %69
  %82 = call i32 @test_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %6, align 4
  br label %131

84:                                               ; preds = %69
  %85 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %86 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %87 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %88 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %89 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = mul nsw i32 4, %92
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %91, %94
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @__add_to_free_space_tree(%struct.btrfs_trans_handle* %85, %struct.btrfs_block_group_cache* %86, %struct.btrfs_path* %87, i64 %95, i32 %96)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %84
  %101 = call i32 @test_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %6, align 4
  br label %131

103:                                              ; preds = %84
  %104 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %105 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %106 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %107 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %108 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = mul nsw i32 2, %111
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %110, %113
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @__add_to_free_space_tree(%struct.btrfs_trans_handle* %104, %struct.btrfs_block_group_cache* %105, %struct.btrfs_path* %106, i64 %114, i32 %115)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %103
  %120 = call i32 @test_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %121 = load i32, i32* %13, align 4
  store i32 %121, i32* %6, align 4
  br label %131

122:                                              ; preds = %103
  %123 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %124 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %125 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %126 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %127 = getelementptr inbounds [3 x %struct.free_space_extent], [3 x %struct.free_space_extent]* %12, i64 0, i64 0
  %128 = getelementptr inbounds [3 x %struct.free_space_extent], [3 x %struct.free_space_extent]* %12, i64 0, i64 0
  %129 = call i32 @ARRAY_SIZE(%struct.free_space_extent* %128)
  %130 = call i32 @check_free_space_extents(%struct.btrfs_trans_handle* %123, %struct.btrfs_fs_info* %124, %struct.btrfs_block_group_cache* %125, %struct.btrfs_path* %126, %struct.free_space_extent* %127, i32 %129)
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %122, %119, %100, %81, %66
  %132 = load i32, i32* %6, align 4
  ret i32 %132
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
