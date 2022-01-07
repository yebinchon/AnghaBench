; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_btrfs_put_block_group_trimming.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_btrfs_put_block_group_trimming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { i32, %struct.TYPE_2__, i32, i64, i32, %struct.btrfs_fs_info* }
%struct.TYPE_2__ = type { i32 }
%struct.btrfs_fs_info = type { i32, %struct.extent_map_tree }
%struct.extent_map_tree = type { i32 }
%struct.extent_map = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_put_block_group_trimming(%struct.btrfs_block_group_cache* %0) #0 {
  %2 = alloca %struct.btrfs_block_group_cache*, align 8
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.extent_map_tree*, align 8
  %5 = alloca %struct.extent_map*, align 8
  %6 = alloca i32, align 4
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %2, align 8
  %7 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %8 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %7, i32 0, i32 5
  %9 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  store %struct.btrfs_fs_info* %9, %struct.btrfs_fs_info** %3, align 8
  %10 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %11 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %10, i32 0, i32 2
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %14 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %13, i32 0, i32 4
  %15 = call i64 @atomic_dec_and_test(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %19 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %1
  %23 = phi i1 [ false, %1 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %26 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %25, i32 0, i32 2
  %27 = call i32 @spin_unlock(i32* %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %67

30:                                               ; preds = %22
  %31 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %32 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %35 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %34, i32 0, i32 1
  store %struct.extent_map_tree* %35, %struct.extent_map_tree** %4, align 8
  %36 = load %struct.extent_map_tree*, %struct.extent_map_tree** %4, align 8
  %37 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %36, i32 0, i32 0
  %38 = call i32 @write_lock(i32* %37)
  %39 = load %struct.extent_map_tree*, %struct.extent_map_tree** %4, align 8
  %40 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %41 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree* %39, i32 %43, i32 1)
  store %struct.extent_map* %44, %struct.extent_map** %5, align 8
  %45 = load %struct.extent_map*, %struct.extent_map** %5, align 8
  %46 = icmp ne %struct.extent_map* %45, null
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  %50 = load %struct.extent_map_tree*, %struct.extent_map_tree** %4, align 8
  %51 = load %struct.extent_map*, %struct.extent_map** %5, align 8
  %52 = call i32 @remove_extent_mapping(%struct.extent_map_tree* %50, %struct.extent_map* %51)
  %53 = load %struct.extent_map_tree*, %struct.extent_map_tree** %4, align 8
  %54 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %53, i32 0, i32 0
  %55 = call i32 @write_unlock(i32* %54)
  %56 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %57 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load %struct.extent_map*, %struct.extent_map** %5, align 8
  %60 = call i32 @free_extent_map(%struct.extent_map* %59)
  %61 = load %struct.extent_map*, %struct.extent_map** %5, align 8
  %62 = call i32 @free_extent_map(%struct.extent_map* %61)
  %63 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %64 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @__btrfs_remove_free_space_cache(i32 %65)
  br label %67

67:                                               ; preds = %30, %22
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @remove_extent_mapping(%struct.extent_map_tree*, %struct.extent_map*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

declare dso_local i32 @__btrfs_remove_free_space_cache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
