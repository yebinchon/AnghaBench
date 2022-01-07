; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_reada.c_btree_readahead_hook.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_reada.c_btree_readahead_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32, i32 }
%struct.reada_extent = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btree_readahead_hook(%struct.extent_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.extent_buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.reada_extent*, align 8
  store %struct.extent_buffer* %0, %struct.extent_buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %9 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %8, i32 0, i32 1
  %10 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  store %struct.btrfs_fs_info* %10, %struct.btrfs_fs_info** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %12 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %15 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %14, i32 0, i32 1
  %16 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %17 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @PAGE_SHIFT, align 4
  %20 = ashr i32 %18, %19
  %21 = call %struct.reada_extent* @radix_tree_lookup(i32* %15, i32 %20)
  store %struct.reada_extent* %21, %struct.reada_extent** %7, align 8
  %22 = load %struct.reada_extent*, %struct.reada_extent** %7, align 8
  %23 = icmp ne %struct.reada_extent* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.reada_extent*, %struct.reada_extent** %7, align 8
  %26 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %24, %2
  %30 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %31 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock(i32* %31)
  %33 = load %struct.reada_extent*, %struct.reada_extent** %7, align 8
  %34 = icmp ne %struct.reada_extent* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  store i32 -1, i32* %6, align 4
  br label %45

36:                                               ; preds = %29
  %37 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %38 = load %struct.reada_extent*, %struct.reada_extent** %7, align 8
  %39 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @__readahead_hook(%struct.btrfs_fs_info* %37, %struct.reada_extent* %38, %struct.extent_buffer* %39, i32 %40)
  %42 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %43 = load %struct.reada_extent*, %struct.reada_extent** %7, align 8
  %44 = call i32 @reada_extent_put(%struct.btrfs_fs_info* %42, %struct.reada_extent* %43)
  br label %45

45:                                               ; preds = %36, %35
  %46 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %47 = call i32 @reada_start_machine(%struct.btrfs_fs_info* %46)
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.reada_extent* @radix_tree_lookup(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__readahead_hook(%struct.btrfs_fs_info*, %struct.reada_extent*, %struct.extent_buffer*, i32) #1

declare dso_local i32 @reada_extent_put(%struct.btrfs_fs_info*, %struct.reada_extent*) #1

declare dso_local i32 @reada_start_machine(%struct.btrfs_fs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
