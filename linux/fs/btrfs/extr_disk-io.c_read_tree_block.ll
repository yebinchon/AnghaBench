; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_read_tree_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_read_tree_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_key = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.extent_buffer* @read_tree_block(%struct.btrfs_fs_info* %0, i32 %1, i32 %2, i32 %3, %struct.btrfs_key* %4) #0 {
  %6 = alloca %struct.extent_buffer*, align 8
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.btrfs_key*, align 8
  %12 = alloca %struct.extent_buffer*, align 8
  %13 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.btrfs_key* %4, %struct.btrfs_key** %11, align 8
  store %struct.extent_buffer* null, %struct.extent_buffer** %12, align 8
  %14 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.extent_buffer* @btrfs_find_create_tree_block(%struct.btrfs_fs_info* %14, i32 %15)
  store %struct.extent_buffer* %16, %struct.extent_buffer** %12, align 8
  %17 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %18 = call i64 @IS_ERR(%struct.extent_buffer* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  store %struct.extent_buffer* %21, %struct.extent_buffer** %6, align 8
  br label %37

22:                                               ; preds = %5
  %23 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.btrfs_key*, %struct.btrfs_key** %11, align 8
  %27 = call i32 @btree_read_extent_buffer_pages(%struct.extent_buffer* %23, i32 %24, i32 %25, %struct.btrfs_key* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %32 = call i32 @free_extent_buffer_stale(%struct.extent_buffer* %31)
  %33 = load i32, i32* %13, align 4
  %34 = call %struct.extent_buffer* @ERR_PTR(i32 %33)
  store %struct.extent_buffer* %34, %struct.extent_buffer** %6, align 8
  br label %37

35:                                               ; preds = %22
  %36 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  store %struct.extent_buffer* %36, %struct.extent_buffer** %6, align 8
  br label %37

37:                                               ; preds = %35, %30, %20
  %38 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  ret %struct.extent_buffer* %38
}

declare dso_local %struct.extent_buffer* @btrfs_find_create_tree_block(%struct.btrfs_fs_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.extent_buffer*) #1

declare dso_local i32 @btree_read_extent_buffer_pages(%struct.extent_buffer*, i32, i32, %struct.btrfs_key*) #1

declare dso_local i32 @free_extent_buffer_stale(%struct.extent_buffer*) #1

declare dso_local %struct.extent_buffer* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
