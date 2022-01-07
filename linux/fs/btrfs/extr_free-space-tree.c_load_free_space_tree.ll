; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_load_free_space_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-tree.c_load_free_space_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_caching_control = type { %struct.btrfs_block_group_cache* }
%struct.btrfs_block_group_cache = type { i32 }
%struct.btrfs_free_space_info = type { i32 }
%struct.btrfs_path = type { i32, i32, i32*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@READA_FORWARD = common dso_local global i32 0, align 4
@BTRFS_FREE_SPACE_USING_BITMAPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_free_space_tree(%struct.btrfs_caching_control* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_caching_control*, align 8
  %4 = alloca %struct.btrfs_block_group_cache*, align 8
  %5 = alloca %struct.btrfs_free_space_info*, align 8
  %6 = alloca %struct.btrfs_path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.btrfs_caching_control* %0, %struct.btrfs_caching_control** %3, align 8
  %10 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %3, align 8
  %11 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %10, i32 0, i32 0
  %12 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %11, align 8
  store %struct.btrfs_block_group_cache* %12, %struct.btrfs_block_group_cache** %4, align 8
  %13 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %13, %struct.btrfs_path** %6, align 8
  %14 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %15 = icmp ne %struct.btrfs_path* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %70

19:                                               ; preds = %1
  %20 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %21 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %23 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = load i32, i32* @READA_FORWARD, align 4
  %25 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %26 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %28 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %29 = call %struct.btrfs_free_space_info* @search_free_space_info(i32* null, %struct.btrfs_block_group_cache* %27, %struct.btrfs_path* %28, i32 0)
  store %struct.btrfs_free_space_info* %29, %struct.btrfs_free_space_info** %5, align 8
  %30 = load %struct.btrfs_free_space_info*, %struct.btrfs_free_space_info** %5, align 8
  %31 = call i64 @IS_ERR(%struct.btrfs_free_space_info* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %19
  %34 = load %struct.btrfs_free_space_info*, %struct.btrfs_free_space_info** %5, align 8
  %35 = call i32 @PTR_ERR(%struct.btrfs_free_space_info* %34)
  store i32 %35, i32* %9, align 4
  br label %66

36:                                               ; preds = %19
  %37 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %38 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.btrfs_free_space_info*, %struct.btrfs_free_space_info** %5, align 8
  %43 = call i32 @btrfs_free_space_extent_count(i32 %41, %struct.btrfs_free_space_info* %42)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %45 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.btrfs_free_space_info*, %struct.btrfs_free_space_info** %5, align 8
  %50 = call i32 @btrfs_free_space_flags(i32 %48, %struct.btrfs_free_space_info* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @BTRFS_FREE_SPACE_USING_BITMAPS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %36
  %56 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %3, align 8
  %57 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @load_free_space_bitmaps(%struct.btrfs_caching_control* %56, %struct.btrfs_path* %57, i32 %58)
  store i32 %59, i32* %9, align 4
  br label %65

60:                                               ; preds = %36
  %61 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %3, align 8
  %62 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @load_free_space_extents(%struct.btrfs_caching_control* %61, %struct.btrfs_path* %62, i32 %63)
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %60, %55
  br label %66

66:                                               ; preds = %65, %33
  %67 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %68 = call i32 @btrfs_free_path(%struct.btrfs_path* %67)
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %66, %16
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local %struct.btrfs_free_space_info* @search_free_space_info(i32*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_free_space_info*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_free_space_info*) #1

declare dso_local i32 @btrfs_free_space_extent_count(i32, %struct.btrfs_free_space_info*) #1

declare dso_local i32 @btrfs_free_space_flags(i32, %struct.btrfs_free_space_info*) #1

declare dso_local i32 @load_free_space_bitmaps(%struct.btrfs_caching_control*, %struct.btrfs_path*, i32) #1

declare dso_local i32 @load_free_space_extents(%struct.btrfs_caching_control*, %struct.btrfs_path*, i32) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
