; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_free_space_set_bits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_free_space_set_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i64, i64, i64 }

@BTRFS_FREE_SPACE_BITMAP_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_block_group_cache*, %struct.btrfs_path*, i64*, i64*, i32)* @free_space_set_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_space_set_bits(%struct.btrfs_block_group_cache* %0, %struct.btrfs_path* %1, i64* %2, i64* %3, i32 %4) #0 {
  %6 = alloca %struct.btrfs_block_group_cache*, align 8
  %7 = alloca %struct.btrfs_path*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.btrfs_fs_info*, align 8
  %12 = alloca %struct.extent_buffer*, align 8
  %13 = alloca %struct.btrfs_key, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %6, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 %4, i32* %10, align 4
  %20 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %21 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %20, i32 0, i32 0
  %22 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %21, align 8
  store %struct.btrfs_fs_info* %22, %struct.btrfs_fs_info** %11, align 8
  %23 = load i64*, i64** %8, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** %9, align 8
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %24, %26
  store i64 %27, i64* %14, align 8
  %28 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %29 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %28, i32 0, i32 1
  %30 = load %struct.extent_buffer**, %struct.extent_buffer*** %29, align 8
  %31 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %30, i64 0
  %32 = load %struct.extent_buffer*, %struct.extent_buffer** %31, align 8
  store %struct.extent_buffer* %32, %struct.extent_buffer** %12, align 8
  %33 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %34 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %35 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %33, %struct.btrfs_key* %13, i32 %38)
  %40 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @BTRFS_FREE_SPACE_BITMAP_KEY, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @ASSERT(i32 %44)
  %46 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %15, align 8
  %48 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %49, %51
  store i64 %52, i64* %16, align 8
  %53 = load i64*, i64** %8, align 8
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %15, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %5
  %58 = load i64*, i64** %8, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %16, align 8
  %61 = icmp slt i64 %59, %60
  br label %62

62:                                               ; preds = %57, %5
  %63 = phi i1 [ false, %5 ], [ %61, %57 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @ASSERT(i32 %64)
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* %15, align 8
  %68 = icmp sgt i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @ASSERT(i32 %69)
  %71 = load i64, i64* %14, align 8
  %72 = load i64, i64* %16, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %62
  %75 = load i64, i64* %16, align 8
  store i64 %75, i64* %14, align 8
  br label %76

76:                                               ; preds = %74, %62
  %77 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %78 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %79 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @btrfs_item_ptr_offset(%struct.extent_buffer* %77, i32 %82)
  store i64 %83, i64* %17, align 8
  %84 = load i64*, i64** %8, align 8
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %15, align 8
  %87 = sub nsw i64 %85, %86
  %88 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %89 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @div_u64(i64 %87, i32 %90)
  store i64 %91, i64* %18, align 8
  %92 = load i64, i64* %14, align 8
  %93 = load i64, i64* %15, align 8
  %94 = sub nsw i64 %92, %93
  %95 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %96 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @div_u64(i64 %94, i32 %97)
  store i64 %98, i64* %19, align 8
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %76
  %102 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %103 = load i64, i64* %17, align 8
  %104 = load i64, i64* %18, align 8
  %105 = load i64, i64* %19, align 8
  %106 = load i64, i64* %18, align 8
  %107 = sub i64 %105, %106
  %108 = call i32 @extent_buffer_bitmap_set(%struct.extent_buffer* %102, i64 %103, i64 %104, i64 %107)
  br label %117

109:                                              ; preds = %76
  %110 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %111 = load i64, i64* %17, align 8
  %112 = load i64, i64* %18, align 8
  %113 = load i64, i64* %19, align 8
  %114 = load i64, i64* %18, align 8
  %115 = sub i64 %113, %114
  %116 = call i32 @extent_buffer_bitmap_clear(%struct.extent_buffer* %110, i64 %111, i64 %112, i64 %115)
  br label %117

117:                                              ; preds = %109, %101
  %118 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %119 = call i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer* %118)
  %120 = load i64, i64* %14, align 8
  %121 = load i64*, i64** %8, align 8
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %120, %122
  %124 = load i64*, i64** %9, align 8
  %125 = load i64, i64* %124, align 8
  %126 = sub nsw i64 %125, %123
  store i64 %126, i64* %124, align 8
  %127 = load i64, i64* %14, align 8
  %128 = load i64*, i64** %8, align 8
  store i64 %127, i64* %128, align 8
  ret void
}

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @btrfs_item_ptr_offset(%struct.extent_buffer*, i32) #1

declare dso_local i64 @div_u64(i64, i32) #1

declare dso_local i32 @extent_buffer_bitmap_set(%struct.extent_buffer*, i64, i64, i64) #1

declare dso_local i32 @extent_buffer_bitmap_clear(%struct.extent_buffer*, i64, i64, i64) #1

declare dso_local i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
