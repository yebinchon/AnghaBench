; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_write_one_cache_group.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_write_one_cache_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { %struct.btrfs_root* }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_block_group_cache = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_path*, %struct.btrfs_block_group_cache*)* @write_one_cache_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_one_cache_group(%struct.btrfs_trans_handle* %0, %struct.btrfs_path* %1, %struct.btrfs_block_group_cache* %2) #0 {
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_path*, align 8
  %6 = alloca %struct.btrfs_block_group_cache*, align 8
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_root*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.extent_buffer*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %5, align 8
  store %struct.btrfs_block_group_cache* %2, %struct.btrfs_block_group_cache** %6, align 8
  %12 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %13 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %12, i32 0, i32 0
  %14 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %13, align 8
  store %struct.btrfs_fs_info* %14, %struct.btrfs_fs_info** %7, align 8
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %16 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %15, i32 0, i32 0
  %17 = load %struct.btrfs_root*, %struct.btrfs_root** %16, align 8
  store %struct.btrfs_root* %17, %struct.btrfs_root** %9, align 8
  %18 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %20 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %21 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %20, i32 0, i32 1
  %22 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %23 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %18, %struct.btrfs_root* %19, i32* %21, %struct.btrfs_path* %22, i32 0, i32 1)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %26
  br label %53

33:                                               ; preds = %3
  %34 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %35 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %34, i32 0, i32 1
  %36 = load %struct.extent_buffer**, %struct.extent_buffer*** %35, align 8
  %37 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %36, i64 0
  %38 = load %struct.extent_buffer*, %struct.extent_buffer** %37, align 8
  store %struct.extent_buffer* %38, %struct.extent_buffer** %11, align 8
  %39 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %40 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %41 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @btrfs_item_ptr_offset(%struct.extent_buffer* %39, i32 %44)
  store i64 %45, i64* %10, align 8
  %46 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %47 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %48 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %47, i32 0, i32 0
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @write_extent_buffer(%struct.extent_buffer* %46, i32* %48, i64 %49, i32 4)
  %51 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %52 = call i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer* %51)
  br label %53

53:                                               ; preds = %33, %32
  %54 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %55 = call i32 @btrfs_release_path(%struct.btrfs_path* %54)
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local i32 @btrfs_search_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i64 @btrfs_item_ptr_offset(%struct.extent_buffer*, i32) #1

declare dso_local i32 @write_extent_buffer(%struct.extent_buffer*, i32*, i64, i32) #1

declare dso_local i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
