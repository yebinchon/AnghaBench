; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_btrfs_mark_bg_unused.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_btrfs_mark_bg_unused.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { i32, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_mark_bg_unused(%struct.btrfs_block_group_cache* %0) #0 {
  %2 = alloca %struct.btrfs_block_group_cache*, align 8
  %3 = alloca %struct.btrfs_fs_info*, align 8
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %2, align 8
  %4 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %5 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %4, i32 0, i32 1
  %6 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  store %struct.btrfs_fs_info* %6, %struct.btrfs_fs_info** %3, align 8
  %7 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %8 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %11 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %10, i32 0, i32 0
  %12 = call i64 @list_empty(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %16 = call i32 @btrfs_get_block_group(%struct.btrfs_block_group_cache* %15)
  %17 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %18 = call i32 @trace_btrfs_add_unused_block_group(%struct.btrfs_block_group_cache* %17)
  %19 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %20 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %19, i32 0, i32 0
  %21 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %22 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %21, i32 0, i32 1
  %23 = call i32 @list_add_tail(i32* %20, i32* %22)
  br label %24

24:                                               ; preds = %14, %1
  %25 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %26 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @btrfs_get_block_group(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @trace_btrfs_add_unused_block_group(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
