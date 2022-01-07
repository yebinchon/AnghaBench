; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent-tree.c___btrfs_free_reserved_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent-tree.c___btrfs_free_reserved_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_block_group_cache = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Unable to find block group for %llu\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@DISCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, i32, i32, i32, i32)* @__btrfs_free_reserved_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__btrfs_free_reserved_extent(%struct.btrfs_fs_info* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_block_group_cache*, align 8
  %13 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.btrfs_block_group_cache* @btrfs_lookup_block_group(%struct.btrfs_fs_info* %14, i32 %15)
  store %struct.btrfs_block_group_cache* %16, %struct.btrfs_block_group_cache** %12, align 8
  %17 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %12, align 8
  %18 = icmp ne %struct.btrfs_block_group_cache* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %5
  %20 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @btrfs_err(%struct.btrfs_fs_info* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @ENOSPC, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %60

25:                                               ; preds = %5
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %12, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @pin_down_extent(%struct.btrfs_block_group_cache* %29, i32 %30, i32 %31, i32 1)
  br label %56

33:                                               ; preds = %25
  %34 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %35 = load i32, i32* @DISCARD, align 4
  %36 = call i64 @btrfs_test_opt(%struct.btrfs_fs_info* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @btrfs_discard_extent(%struct.btrfs_fs_info* %39, i32 %40, i32 %41, i32* null)
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %12, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @btrfs_add_free_space(%struct.btrfs_block_group_cache* %44, i32 %45, i32 %46)
  %48 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %12, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @btrfs_free_reserved_bytes(%struct.btrfs_block_group_cache* %48, i32 %49, i32 %50)
  %52 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @trace_btrfs_reserved_extent_free(%struct.btrfs_fs_info* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %43, %28
  %57 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %12, align 8
  %58 = call i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache* %57)
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %56, %19
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.btrfs_block_group_cache* @btrfs_lookup_block_group(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @btrfs_err(%struct.btrfs_fs_info*, i8*, i32) #1

declare dso_local i32 @pin_down_extent(%struct.btrfs_block_group_cache*, i32, i32, i32) #1

declare dso_local i64 @btrfs_test_opt(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @btrfs_discard_extent(%struct.btrfs_fs_info*, i32, i32, i32*) #1

declare dso_local i32 @btrfs_add_free_space(%struct.btrfs_block_group_cache*, i32, i32) #1

declare dso_local i32 @btrfs_free_reserved_bytes(%struct.btrfs_block_group_cache*, i32, i32) #1

declare dso_local i32 @trace_btrfs_reserved_extent_free(%struct.btrfs_fs_info*, i32, i32) #1

declare dso_local i32 @btrfs_put_block_group(%struct.btrfs_block_group_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
