; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_add_new_free_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_add_new_free_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }

@EXTENT_DIRTY = common dso_local global i32 0, align 4
@EXTENT_UPTODATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @add_new_free_space(%struct.btrfs_block_group_cache* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.btrfs_block_group_cache*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %14 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %13, i32 0, i32 0
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  store %struct.btrfs_fs_info* %15, %struct.btrfs_fs_info** %7, align 8
  store i64 0, i64* %11, align 8
  br label %16

16:                                               ; preds = %64, %3
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %65

20:                                               ; preds = %16
  %21 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %22 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* @EXTENT_DIRTY, align 4
  %26 = load i32, i32* @EXTENT_UPTODATE, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @find_first_extent_bit(i32 %23, i64 %24, i64* %8, i64* %9, i32 %27, i32* null)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %65

32:                                               ; preds = %20
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp sle i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i64, i64* %9, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %5, align 8
  br label %64

39:                                               ; preds = %32
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %39
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %43
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %5, align 8
  %50 = sub nsw i64 %48, %49
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %11, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* %11, align 8
  %54 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @btrfs_add_free_space(%struct.btrfs_block_group_cache* %54, i64 %55, i64 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @BUG_ON(i32 %58)
  %60 = load i64, i64* %9, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %5, align 8
  br label %63

62:                                               ; preds = %43, %39
  br label %65

63:                                               ; preds = %47
  br label %64

64:                                               ; preds = %63, %36
  br label %16

65:                                               ; preds = %62, %31, %16
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* %6, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %65
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* %5, align 8
  %72 = sub nsw i64 %70, %71
  store i64 %72, i64* %10, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* %11, align 8
  %75 = add nsw i64 %74, %73
  store i64 %75, i64* %11, align 8
  %76 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @btrfs_add_free_space(%struct.btrfs_block_group_cache* %76, i64 %77, i64 %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @BUG_ON(i32 %80)
  br label %82

82:                                               ; preds = %69, %65
  %83 = load i64, i64* %11, align 8
  ret i64 %83
}

declare dso_local i32 @find_first_extent_bit(i32, i64, i64*, i64*, i32, i32*) #1

declare dso_local i32 @btrfs_add_free_space(%struct.btrfs_block_group_cache*, i64, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
