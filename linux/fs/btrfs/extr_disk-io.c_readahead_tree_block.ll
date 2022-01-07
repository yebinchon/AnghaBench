; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_readahead_tree_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_readahead_tree_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.extent_buffer = type { i32 }

@WAIT_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @readahead_tree_block(%struct.btrfs_fs_info* %0, i32 %1) #0 {
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.extent_buffer*, align 8
  %6 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.extent_buffer* null, %struct.extent_buffer** %5, align 8
  %7 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.extent_buffer* @btrfs_find_create_tree_block(%struct.btrfs_fs_info* %7, i32 %8)
  store %struct.extent_buffer* %9, %struct.extent_buffer** %5, align 8
  %10 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %11 = call i64 @IS_ERR(%struct.extent_buffer* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %26

14:                                               ; preds = %2
  %15 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %16 = load i32, i32* @WAIT_NONE, align 4
  %17 = call i32 @read_extent_buffer_pages(%struct.extent_buffer* %15, i32 %16, i32 0)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %22 = call i32 @free_extent_buffer_stale(%struct.extent_buffer* %21)
  br label %26

23:                                               ; preds = %14
  %24 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %25 = call i32 @free_extent_buffer(%struct.extent_buffer* %24)
  br label %26

26:                                               ; preds = %13, %23, %20
  ret void
}

declare dso_local %struct.extent_buffer* @btrfs_find_create_tree_block(%struct.btrfs_fs_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.extent_buffer*) #1

declare dso_local i32 @read_extent_buffer_pages(%struct.extent_buffer*, i32, i32) #1

declare dso_local i32 @free_extent_buffer_stale(%struct.extent_buffer*) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
