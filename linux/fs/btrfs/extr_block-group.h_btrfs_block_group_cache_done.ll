; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.h_btrfs_block_group_cache_done.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.h_btrfs_block_group_cache_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { i64 }

@BTRFS_CACHE_FINISHED = common dso_local global i64 0, align 8
@BTRFS_CACHE_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_block_group_cache*)* @btrfs_block_group_cache_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_block_group_cache_done(%struct.btrfs_block_group_cache* %0) #0 {
  %2 = alloca %struct.btrfs_block_group_cache*, align 8
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %2, align 8
  %3 = call i32 (...) @smp_mb()
  %4 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %5 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @BTRFS_CACHE_FINISHED, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %11 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BTRFS_CACHE_ERROR, align 8
  %14 = icmp eq i64 %12, %13
  br label %15

15:                                               ; preds = %9, %1
  %16 = phi i1 [ true, %1 ], [ %14, %9 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
}

declare dso_local i32 @smp_mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
