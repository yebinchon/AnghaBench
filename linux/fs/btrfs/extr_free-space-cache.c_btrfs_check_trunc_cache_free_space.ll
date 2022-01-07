; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_btrfs_check_trunc_cache_free_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_btrfs_check_trunc_cache_free_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_block_rsv = type { i64, i32 }

@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_check_trunc_cache_free_space(%struct.btrfs_fs_info* %0, %struct.btrfs_block_rsv* %1) #0 {
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.btrfs_block_rsv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  store %struct.btrfs_block_rsv* %1, %struct.btrfs_block_rsv** %4, align 8
  %7 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %8 = call i64 @btrfs_calc_insert_metadata_size(%struct.btrfs_fs_info* %7, i32 1)
  %9 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %10 = call i64 @btrfs_calc_metadata_size(%struct.btrfs_fs_info* %9, i32 1)
  %11 = add nsw i64 %8, %10
  store i64 %11, i64* %5, align 8
  %12 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %4, align 8
  %13 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %12, i32 0, i32 1
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %4, align 8
  %16 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOSPC, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %24

23:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %4, align 8
  %26 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %25, i32 0, i32 1
  %27 = call i32 @spin_unlock(i32* %26)
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local i64 @btrfs_calc_insert_metadata_size(%struct.btrfs_fs_info*, i32) #1

declare dso_local i64 @btrfs_calc_metadata_size(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
