; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_old_root_level.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_old_root_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.tree_mod_elem = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.extent_buffer = type { i32 }

@MOD_LOG_ROOT_REPLACE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_old_root_level(%struct.btrfs_root* %0, i32 %1) #0 {
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tree_mod_elem*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.extent_buffer*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %9 = call %struct.extent_buffer* @btrfs_root_node(%struct.btrfs_root* %8)
  store %struct.extent_buffer* %9, %struct.extent_buffer** %7, align 8
  %10 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.tree_mod_elem* @__tree_mod_log_oldest_root(%struct.extent_buffer* %10, i32 %11)
  store %struct.tree_mod_elem* %12, %struct.tree_mod_elem** %5, align 8
  %13 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %5, align 8
  %14 = icmp ne %struct.tree_mod_elem* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %5, align 8
  %17 = getelementptr inbounds %struct.tree_mod_elem, %struct.tree_mod_elem* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MOD_LOG_ROOT_REPLACE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %5, align 8
  %23 = getelementptr inbounds %struct.tree_mod_elem, %struct.tree_mod_elem* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %6, align 4
  br label %29

26:                                               ; preds = %15, %2
  %27 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %28 = call i32 @btrfs_header_level(%struct.extent_buffer* %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %31 = call i32 @free_extent_buffer(%struct.extent_buffer* %30)
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local %struct.extent_buffer* @btrfs_root_node(%struct.btrfs_root*) #1

declare dso_local %struct.tree_mod_elem* @__tree_mod_log_oldest_root(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
