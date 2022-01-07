; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_duplicate_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_duplicate_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i64*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_duplicate_item(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_path* %2, %struct.btrfs_key* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca %struct.btrfs_path*, align 8
  %9 = alloca %struct.btrfs_key*, align 8
  %10 = alloca %struct.extent_buffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %6, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %7, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %8, align 8
  store %struct.btrfs_key* %3, %struct.btrfs_key** %9, align 8
  %13 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %14 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %13, i32 0, i32 1
  %15 = load %struct.extent_buffer**, %struct.extent_buffer*** %14, align 8
  %16 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %15, i64 0
  %17 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  store %struct.extent_buffer* %17, %struct.extent_buffer** %10, align 8
  %18 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %19 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %20 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @btrfs_item_size_nr(%struct.extent_buffer* %18, i64 %23)
  store i64 %24, i64* %12, align 8
  %25 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %26 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %27 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %28 = load i64, i64* %12, align 8
  %29 = add i64 %28, 4
  %30 = call i32 @setup_leaf_for_split(%struct.btrfs_trans_handle* %25, %struct.btrfs_root* %26, %struct.btrfs_path* %27, i64 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %5, align 4
  br label %72

35:                                               ; preds = %4
  %36 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %37 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %43 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %44 = load %struct.btrfs_key*, %struct.btrfs_key** %9, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  %47 = add i64 %46, 4
  %48 = call i32 @setup_items_for_insert(%struct.btrfs_root* %42, %struct.btrfs_path* %43, %struct.btrfs_key* %44, i64* %12, i64 %45, i64 %47, i32 1)
  %49 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %50 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %49, i32 0, i32 1
  %51 = load %struct.extent_buffer**, %struct.extent_buffer*** %50, align 8
  %52 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %51, i64 0
  %53 = load %struct.extent_buffer*, %struct.extent_buffer** %52, align 8
  store %struct.extent_buffer* %53, %struct.extent_buffer** %10, align 8
  %54 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %55 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %56 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %57 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @btrfs_item_ptr_offset(%struct.extent_buffer* %55, i64 %60)
  %62 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %63 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %64 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %67, 1
  %69 = call i32 @btrfs_item_ptr_offset(%struct.extent_buffer* %62, i64 %68)
  %70 = load i64, i64* %12, align 8
  %71 = call i32 @memcpy_extent_buffer(%struct.extent_buffer* %54, i32 %61, i32 %69, i64 %70)
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %35, %33
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i64 @btrfs_item_size_nr(%struct.extent_buffer*, i64) #1

declare dso_local i32 @setup_leaf_for_split(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i64) #1

declare dso_local i32 @setup_items_for_insert(%struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_key*, i64*, i64, i64, i32) #1

declare dso_local i32 @memcpy_extent_buffer(%struct.extent_buffer*, i32, i32, i64) #1

declare dso_local i32 @btrfs_item_ptr_offset(%struct.extent_buffer*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
