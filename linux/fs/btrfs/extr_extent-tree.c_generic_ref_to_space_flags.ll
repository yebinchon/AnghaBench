; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent-tree.c_generic_ref_to_space_flags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent-tree.c_generic_ref_to_space_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_ref = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@BTRFS_REF_METADATA = common dso_local global i64 0, align 8
@BTRFS_CHUNK_TREE_OBJECTID = common dso_local global i64 0, align 8
@BTRFS_BLOCK_GROUP_SYSTEM = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_METADATA = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_ref*)* @generic_ref_to_space_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_ref_to_space_flags(%struct.btrfs_ref* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_ref*, align 8
  store %struct.btrfs_ref* %0, %struct.btrfs_ref** %3, align 8
  %4 = load %struct.btrfs_ref*, %struct.btrfs_ref** %3, align 8
  %5 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @BTRFS_REF_METADATA, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.btrfs_ref*, %struct.btrfs_ref** %3, align 8
  %11 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BTRFS_CHUNK_TREE_OBJECTID, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* @BTRFS_BLOCK_GROUP_SYSTEM, align 4
  store i32 %17, i32* %2, align 4
  br label %22

18:                                               ; preds = %9
  %19 = load i32, i32* @BTRFS_BLOCK_GROUP_METADATA, align 4
  store i32 %19, i32* %2, align 4
  br label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @BTRFS_BLOCK_GROUP_DATA, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %20, %18, %16
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
