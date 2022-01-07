; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_lock_root_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_lock_root_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32 }
%struct.btrfs_root = type { %struct.extent_buffer* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.extent_buffer* @btrfs_lock_root_node(%struct.btrfs_root* %0) #0 {
  %2 = alloca %struct.btrfs_root*, align 8
  %3 = alloca %struct.extent_buffer*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %2, align 8
  br label %4

4:                                                ; preds = %1, %15
  %5 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %6 = call %struct.extent_buffer* @btrfs_root_node(%struct.btrfs_root* %5)
  store %struct.extent_buffer* %6, %struct.extent_buffer** %3, align 8
  %7 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %8 = call i32 @btrfs_tree_lock(%struct.extent_buffer* %7)
  %9 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %10 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %11 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %10, i32 0, i32 0
  %12 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %13 = icmp eq %struct.extent_buffer* %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %20

15:                                               ; preds = %4
  %16 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %17 = call i32 @btrfs_tree_unlock(%struct.extent_buffer* %16)
  %18 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %19 = call i32 @free_extent_buffer(%struct.extent_buffer* %18)
  br label %4

20:                                               ; preds = %14
  %21 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  ret %struct.extent_buffer* %21
}

declare dso_local %struct.extent_buffer* @btrfs_root_node(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_tree_lock(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_tree_unlock(%struct.extent_buffer*) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
