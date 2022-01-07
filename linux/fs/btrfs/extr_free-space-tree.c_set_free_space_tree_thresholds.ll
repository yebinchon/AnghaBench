; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_set_free_space_tree_thresholds.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_set_free_space_tree_thresholds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { i32, i32, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@BTRFS_FREE_SPACE_BITMAP_BITS = common dso_local global i32 0, align 4
@BTRFS_FREE_SPACE_BITMAP_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_free_space_tree_thresholds(%struct.btrfs_block_group_cache* %0) #0 {
  %2 = alloca %struct.btrfs_block_group_cache*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %2, align 8
  %7 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %8 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @BTRFS_FREE_SPACE_BITMAP_BITS, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %3, align 4
  %14 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %15 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = add i64 %17, %19
  %21 = sub i64 %20, 1
  %22 = load i32, i32* %3, align 4
  %23 = call i8* @div_u64(i64 %21, i32 %22)
  %24 = ptrtoint i8* %23 to i64
  store i64 %24, i64* %5, align 8
  %25 = load i32, i32* @BTRFS_FREE_SPACE_BITMAP_SIZE, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 4, %26
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %4, align 8
  %30 = mul i64 %28, %29
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i8* @div_u64(i64 %31, i32 4)
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %35 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %37 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %38, 100
  br i1 %39, label %40, label %47

40:                                               ; preds = %1
  %41 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %42 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 100
  %45 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %46 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %50

47:                                               ; preds = %1
  %48 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %2, align 8
  %49 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %40
  ret void
}

declare dso_local i8* @div_u64(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
