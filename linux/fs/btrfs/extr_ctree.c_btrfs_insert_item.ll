; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_insert_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_insert_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_key = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_insert_item(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_key* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca %struct.btrfs_key*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.btrfs_path*, align 8
  %14 = alloca %struct.extent_buffer*, align 8
  %15 = alloca i64, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %8, align 8
  store %struct.btrfs_key* %2, %struct.btrfs_key** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %16, %struct.btrfs_path** %13, align 8
  %17 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %18 = icmp ne %struct.btrfs_path* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %55

22:                                               ; preds = %5
  %23 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %24 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %25 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %26 = load %struct.btrfs_key*, %struct.btrfs_key** %9, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @btrfs_insert_empty_item(%struct.btrfs_trans_handle* %23, %struct.btrfs_root* %24, %struct.btrfs_path* %25, %struct.btrfs_key* %26, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %51, label %31

31:                                               ; preds = %22
  %32 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %33 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %32, i32 0, i32 1
  %34 = load %struct.extent_buffer**, %struct.extent_buffer*** %33, align 8
  %35 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %34, i64 0
  %36 = load %struct.extent_buffer*, %struct.extent_buffer** %35, align 8
  store %struct.extent_buffer* %36, %struct.extent_buffer** %14, align 8
  %37 = load %struct.extent_buffer*, %struct.extent_buffer** %14, align 8
  %38 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %39 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @btrfs_item_ptr_offset(%struct.extent_buffer* %37, i32 %42)
  store i64 %43, i64* %15, align 8
  %44 = load %struct.extent_buffer*, %struct.extent_buffer** %14, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load i64, i64* %15, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @write_extent_buffer(%struct.extent_buffer* %44, i8* %45, i64 %46, i32 %47)
  %49 = load %struct.extent_buffer*, %struct.extent_buffer** %14, align 8
  %50 = call i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer* %49)
  br label %51

51:                                               ; preds = %31, %22
  %52 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %53 = call i32 @btrfs_free_path(%struct.btrfs_path* %52)
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %51, %19
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_insert_empty_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_key*, i32) #1

declare dso_local i64 @btrfs_item_ptr_offset(%struct.extent_buffer*, i32) #1

declare dso_local i32 @write_extent_buffer(%struct.extent_buffer*, i8*, i64, i32) #1

declare dso_local i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
