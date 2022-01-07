; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_btrfs_start_trans_remove_block_group.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_btrfs_start_trans_remove_block_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_fs_info = type { i32, %struct.extent_map_tree }
%struct.extent_map_tree = type { i32 }
%struct.extent_map = type { i64, %struct.map_lookup* }
%struct.map_lookup = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btrfs_trans_handle* @btrfs_start_trans_remove_block_group(%struct.btrfs_fs_info* %0, i64 %1) #0 {
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.extent_map_tree*, align 8
  %6 = alloca %struct.extent_map*, align 8
  %7 = alloca %struct.map_lookup*, align 8
  %8 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %10 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %9, i32 0, i32 1
  store %struct.extent_map_tree* %10, %struct.extent_map_tree** %5, align 8
  %11 = load %struct.extent_map_tree*, %struct.extent_map_tree** %5, align 8
  %12 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %11, i32 0, i32 0
  %13 = call i32 @read_lock(i32* %12)
  %14 = load %struct.extent_map_tree*, %struct.extent_map_tree** %5, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree* %14, i64 %15, i32 1)
  store %struct.extent_map* %16, %struct.extent_map** %6, align 8
  %17 = load %struct.extent_map_tree*, %struct.extent_map_tree** %5, align 8
  %18 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %17, i32 0, i32 0
  %19 = call i32 @read_unlock(i32* %18)
  %20 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %21 = icmp ne %struct.extent_map* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %24 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %22, %2
  %29 = phi i1 [ false, %2 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %33 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %32, i32 0, i32 1
  %34 = load %struct.map_lookup*, %struct.map_lookup** %33, align 8
  store %struct.map_lookup* %34, %struct.map_lookup** %7, align 8
  %35 = load %struct.map_lookup*, %struct.map_lookup** %7, align 8
  %36 = getelementptr inbounds %struct.map_lookup, %struct.map_lookup* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 3, %37
  store i32 %38, i32* %8, align 4
  %39 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %40 = call i32 @free_extent_map(%struct.extent_map* %39)
  %41 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %42 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call %struct.btrfs_trans_handle* @btrfs_start_transaction_fallback_global_rsv(i32 %43, i32 %44, i32 1)
  ret %struct.btrfs_trans_handle* %45
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree*, i64, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction_fallback_global_rsv(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
