; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_update_free_space_extent_count.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_update_free_space_extent_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_block_group_cache = type { i64, i64 }
%struct.btrfs_path = type { i32* }
%struct.btrfs_free_space_info = type { i32 }

@BTRFS_FREE_SPACE_USING_BITMAPS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, i32)* @update_free_space_extent_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_free_space_extent_count(%struct.btrfs_trans_handle* %0, %struct.btrfs_block_group_cache* %1, %struct.btrfs_path* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.btrfs_block_group_cache*, align 8
  %8 = alloca %struct.btrfs_path*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_free_space_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %6, align 8
  store %struct.btrfs_block_group_cache* %1, %struct.btrfs_block_group_cache** %7, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %98

17:                                               ; preds = %4
  %18 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %19 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %20 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %21 = call %struct.btrfs_free_space_info* @search_free_space_info(%struct.btrfs_trans_handle* %18, %struct.btrfs_block_group_cache* %19, %struct.btrfs_path* %20, i32 1)
  store %struct.btrfs_free_space_info* %21, %struct.btrfs_free_space_info** %10, align 8
  %22 = load %struct.btrfs_free_space_info*, %struct.btrfs_free_space_info** %10, align 8
  %23 = call i64 @IS_ERR(%struct.btrfs_free_space_info* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load %struct.btrfs_free_space_info*, %struct.btrfs_free_space_info** %10, align 8
  %27 = call i32 @PTR_ERR(%struct.btrfs_free_space_info* %26)
  store i32 %27, i32* %13, align 4
  br label %96

28:                                               ; preds = %17
  %29 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %30 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.btrfs_free_space_info*, %struct.btrfs_free_space_info** %10, align 8
  %35 = call i64 @btrfs_free_space_flags(i32 %33, %struct.btrfs_free_space_info* %34)
  store i64 %35, i64* %11, align 8
  %36 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %37 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.btrfs_free_space_info*, %struct.btrfs_free_space_info** %10, align 8
  %42 = call i64 @btrfs_free_space_extent_count(i32 %40, %struct.btrfs_free_space_info* %41)
  store i64 %42, i64* %12, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %12, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* %12, align 8
  %47 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %48 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.btrfs_free_space_info*, %struct.btrfs_free_space_info** %10, align 8
  %53 = load i64, i64* %12, align 8
  %54 = call i32 @btrfs_set_free_space_extent_count(i32 %51, %struct.btrfs_free_space_info* %52, i64 %53)
  %55 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %56 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @btrfs_mark_buffer_dirty(i32 %59)
  %61 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %62 = call i32 @btrfs_release_path(%struct.btrfs_path* %61)
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* @BTRFS_FREE_SPACE_USING_BITMAPS, align 8
  %65 = and i64 %63, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %28
  %68 = load i64, i64* %12, align 8
  %69 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %70 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %68, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %75 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %76 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %77 = call i32 @convert_free_space_to_bitmaps(%struct.btrfs_trans_handle* %74, %struct.btrfs_block_group_cache* %75, %struct.btrfs_path* %76)
  store i32 %77, i32* %13, align 4
  br label %95

78:                                               ; preds = %67, %28
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* @BTRFS_FREE_SPACE_USING_BITMAPS, align 8
  %81 = and i64 %79, %80
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %78
  %84 = load i64, i64* %12, align 8
  %85 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %86 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp slt i64 %84, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %91 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %92 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %93 = call i32 @convert_free_space_to_extents(%struct.btrfs_trans_handle* %90, %struct.btrfs_block_group_cache* %91, %struct.btrfs_path* %92)
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %89, %83, %78
  br label %95

95:                                               ; preds = %94, %73
  br label %96

96:                                               ; preds = %95, %25
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %96, %16
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local %struct.btrfs_free_space_info* @search_free_space_info(%struct.btrfs_trans_handle*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_free_space_info*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_free_space_info*) #1

declare dso_local i64 @btrfs_free_space_flags(i32, %struct.btrfs_free_space_info*) #1

declare dso_local i64 @btrfs_free_space_extent_count(i32, %struct.btrfs_free_space_info*) #1

declare dso_local i32 @btrfs_set_free_space_extent_count(i32, %struct.btrfs_free_space_info*, i64) #1

declare dso_local i32 @btrfs_mark_buffer_dirty(i32) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @convert_free_space_to_bitmaps(%struct.btrfs_trans_handle*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*) #1

declare dso_local i32 @convert_free_space_to_extents(%struct.btrfs_trans_handle*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
