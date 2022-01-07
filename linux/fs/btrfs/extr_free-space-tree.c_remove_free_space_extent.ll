; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_remove_free_space_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_remove_free_space_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_root* }
%struct.btrfs_root = type { i32 }
%struct.btrfs_block_group_cache = type { i32 }
%struct.btrfs_path = type { i32*, i32* }
%struct.btrfs_key = type { i64, i64, i64 }

@BTRFS_FREE_SPACE_EXTENT_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, i64, i64)* @remove_free_space_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_free_space_extent(%struct.btrfs_trans_handle* %0, %struct.btrfs_block_group_cache* %1, %struct.btrfs_path* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.btrfs_block_group_cache*, align 8
  %8 = alloca %struct.btrfs_path*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.btrfs_root*, align 8
  %12 = alloca %struct.btrfs_key, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %6, align 8
  store %struct.btrfs_block_group_cache* %1, %struct.btrfs_block_group_cache** %7, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %18 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %19 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %21, align 8
  store %struct.btrfs_root* %22, %struct.btrfs_root** %11, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = add nsw i64 %23, %24
  store i64 %25, i64* %15, align 8
  store i32 -1, i32* %16, align 4
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  store i64 -1, i64* %28, align 8
  %29 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 2
  store i64 -1, i64* %29, align 8
  %30 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %31 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %32 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %33 = call i32 @btrfs_search_prev_slot(%struct.btrfs_trans_handle* %30, %struct.btrfs_root* %31, %struct.btrfs_key* %12, %struct.btrfs_path* %32, i32 -1, i32 1)
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %17, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %5
  br label %138

37:                                               ; preds = %5
  %38 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %39 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %44 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @btrfs_item_key_to_cpu(i32 %42, %struct.btrfs_key* %12, i32 %47)
  %49 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @BTRFS_FREE_SPACE_EXTENT_KEY, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @ASSERT(i32 %53)
  %55 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %13, align 8
  %57 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %58, %60
  store i64 %61, i64* %14, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %13, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %37
  %66 = load i64, i64* %15, align 8
  %67 = load i64, i64* %14, align 8
  %68 = icmp sle i64 %66, %67
  br label %69

69:                                               ; preds = %65, %37
  %70 = phi i1 [ false, %37 ], [ %68, %65 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 @ASSERT(i32 %71)
  %73 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %74 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %75 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %76 = call i32 @btrfs_del_item(%struct.btrfs_trans_handle* %73, %struct.btrfs_root* %74, %struct.btrfs_path* %75)
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  br label %138

80:                                               ; preds = %69
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %13, align 8
  %83 = icmp sgt i64 %81, %82
  br i1 %83, label %84, label %105

84:                                               ; preds = %80
  %85 = load i64, i64* %13, align 8
  %86 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 0
  store i64 %85, i64* %86, align 8
  %87 = load i64, i64* @BTRFS_FREE_SPACE_EXTENT_KEY, align 8
  %88 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  store i64 %87, i64* %88, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* %13, align 8
  %91 = sub nsw i64 %89, %90
  %92 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 2
  store i64 %91, i64* %92, align 8
  %93 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %94 = call i32 @btrfs_release_path(%struct.btrfs_path* %93)
  %95 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %96 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %97 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %98 = call i32 @btrfs_insert_empty_item(%struct.btrfs_trans_handle* %95, %struct.btrfs_root* %96, %struct.btrfs_path* %97, %struct.btrfs_key* %12, i32 0)
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %17, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %84
  br label %138

102:                                              ; preds = %84
  %103 = load i32, i32* %16, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %16, align 4
  br label %105

105:                                              ; preds = %102, %80
  %106 = load i64, i64* %15, align 8
  %107 = load i64, i64* %14, align 8
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %109, label %130

109:                                              ; preds = %105
  %110 = load i64, i64* %15, align 8
  %111 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 0
  store i64 %110, i64* %111, align 8
  %112 = load i64, i64* @BTRFS_FREE_SPACE_EXTENT_KEY, align 8
  %113 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  store i64 %112, i64* %113, align 8
  %114 = load i64, i64* %14, align 8
  %115 = load i64, i64* %15, align 8
  %116 = sub nsw i64 %114, %115
  %117 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 2
  store i64 %116, i64* %117, align 8
  %118 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %119 = call i32 @btrfs_release_path(%struct.btrfs_path* %118)
  %120 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %121 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  %122 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %123 = call i32 @btrfs_insert_empty_item(%struct.btrfs_trans_handle* %120, %struct.btrfs_root* %121, %struct.btrfs_path* %122, %struct.btrfs_key* %12, i32 0)
  store i32 %123, i32* %17, align 4
  %124 = load i32, i32* %17, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %109
  br label %138

127:                                              ; preds = %109
  %128 = load i32, i32* %16, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %16, align 4
  br label %130

130:                                              ; preds = %127, %105
  %131 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %132 = call i32 @btrfs_release_path(%struct.btrfs_path* %131)
  %133 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %134 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %7, align 8
  %135 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %136 = load i32, i32* %16, align 4
  %137 = call i32 @update_free_space_extent_count(%struct.btrfs_trans_handle* %133, %struct.btrfs_block_group_cache* %134, %struct.btrfs_path* %135, i32 %136)
  store i32 %137, i32* %17, align 4
  br label %138

138:                                              ; preds = %130, %126, %101, %79, %36
  %139 = load i32, i32* %17, align 4
  ret i32 %139
}

declare dso_local i32 @btrfs_search_prev_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_item_key_to_cpu(i32, %struct.btrfs_key*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @btrfs_del_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_insert_empty_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @update_free_space_extent_count(%struct.btrfs_trans_handle*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
