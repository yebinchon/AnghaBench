; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_alloc_tree_block_no_bg_flush.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_alloc_tree_block_no_bg_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32 }
%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_2__, %struct.btrfs_fs_info* }
%struct.TYPE_2__ = type { i32 }
%struct.btrfs_fs_info = type { %struct.btrfs_root*, %struct.btrfs_root*, %struct.btrfs_root*, %struct.btrfs_root* }
%struct.btrfs_disk_key = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.extent_buffer* (%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32, %struct.btrfs_disk_key*, i32, i32, i32)* @alloc_tree_block_no_bg_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.extent_buffer* @alloc_tree_block_no_bg_flush(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, i32 %2, %struct.btrfs_disk_key* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.btrfs_trans_handle*, align 8
  %9 = alloca %struct.btrfs_root*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.btrfs_disk_key*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.btrfs_fs_info*, align 8
  %16 = alloca %struct.extent_buffer*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %8, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.btrfs_disk_key* %3, %struct.btrfs_disk_key** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %18 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %17, i32 0, i32 1
  %19 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %18, align 8
  store %struct.btrfs_fs_info* %19, %struct.btrfs_fs_info** %15, align 8
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %21 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %15, align 8
  %22 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %21, i32 0, i32 3
  %23 = load %struct.btrfs_root*, %struct.btrfs_root** %22, align 8
  %24 = icmp eq %struct.btrfs_root* %20, %23
  br i1 %24, label %43, label %25

25:                                               ; preds = %7
  %26 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %27 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %15, align 8
  %28 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %27, i32 0, i32 2
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %28, align 8
  %30 = icmp eq %struct.btrfs_root* %26, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %25
  %32 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %33 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %15, align 8
  %34 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %33, i32 0, i32 1
  %35 = load %struct.btrfs_root*, %struct.btrfs_root** %34, align 8
  %36 = icmp eq %struct.btrfs_root* %32, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %39 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %15, align 8
  %40 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %39, i32 0, i32 0
  %41 = load %struct.btrfs_root*, %struct.btrfs_root** %40, align 8
  %42 = icmp eq %struct.btrfs_root* %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37, %31, %25, %7
  %44 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %45 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %37
  %47 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %48 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %51 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.btrfs_disk_key*, %struct.btrfs_disk_key** %11, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call %struct.extent_buffer* @btrfs_alloc_tree_block(%struct.btrfs_trans_handle* %47, %struct.btrfs_root* %48, i32 %49, i32 %53, %struct.btrfs_disk_key* %54, i32 %55, i32 %56, i32 %57)
  store %struct.extent_buffer* %58, %struct.extent_buffer** %16, align 8
  %59 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %60 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  %61 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  ret %struct.extent_buffer* %61
}

declare dso_local %struct.extent_buffer* @btrfs_alloc_tree_block(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32, i32, %struct.btrfs_disk_key*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
