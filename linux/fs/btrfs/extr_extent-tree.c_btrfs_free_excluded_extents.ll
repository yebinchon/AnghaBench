; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent-tree.c_btrfs_free_excluded_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent-tree.c_btrfs_free_excluded_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { %struct.TYPE_2__, %struct.btrfs_fs_info* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.btrfs_fs_info = type { i32* }

@EXTENT_UPTODATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_free_excluded_extents(%struct.btrfs_block_group_cache* %0) #0 {
  %2 = alloca %struct.btrfs_block_group_cache*, align 8
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %2, align 8
  %6 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %7 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %6, i32 0, i32 1
  %8 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  store %struct.btrfs_fs_info* %8, %struct.btrfs_fs_info** %3, align 8
  %9 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %10 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %15 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %13, %17
  %19 = sub nsw i64 %18, 1
  store i64 %19, i64* %5, align 8
  %20 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %21 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i32, i32* @EXTENT_UPTODATE, align 4
  %27 = call i32 @clear_extent_bits(i32* %23, i64 %24, i64 %25, i32 %26)
  %28 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %29 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i32, i32* @EXTENT_UPTODATE, align 4
  %35 = call i32 @clear_extent_bits(i32* %31, i64 %32, i64 %33, i32 %34)
  ret void
}

declare dso_local i32 @clear_extent_bits(i32*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
