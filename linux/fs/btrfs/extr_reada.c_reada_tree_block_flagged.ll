; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_reada.c_reada_tree_block_flagged.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_reada.c_reada_tree_block_flagged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.extent_buffer = type { i32 }

@EXTENT_BUFFER_READAHEAD = common dso_local global i32 0, align 4
@WAIT_PAGE_LOCK = common dso_local global i32 0, align 4
@EXTENT_BUFFER_CORRUPT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, i32, i32, %struct.extent_buffer**)* @reada_tree_block_flagged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reada_tree_block_flagged(%struct.btrfs_fs_info* %0, i32 %1, i32 %2, %struct.extent_buffer** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.extent_buffer**, align 8
  %10 = alloca %struct.extent_buffer*, align 8
  %11 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.extent_buffer** %3, %struct.extent_buffer*** %9, align 8
  store %struct.extent_buffer* null, %struct.extent_buffer** %10, align 8
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.extent_buffer* @btrfs_find_create_tree_block(%struct.btrfs_fs_info* %12, i32 %13)
  store %struct.extent_buffer* %14, %struct.extent_buffer** %10, align 8
  %15 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %16 = call i64 @IS_ERR(%struct.extent_buffer* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %57

19:                                               ; preds = %4
  %20 = load i32, i32* @EXTENT_BUFFER_READAHEAD, align 4
  %21 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %22 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %21, i32 0, i32 0
  %23 = call i32 @set_bit(i32 %20, i32* %22)
  %24 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %25 = load i32, i32* @WAIT_PAGE_LOCK, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @read_extent_buffer_pages(%struct.extent_buffer* %24, i32 %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %32 = call i32 @free_extent_buffer_stale(%struct.extent_buffer* %31)
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %5, align 4
  br label %57

34:                                               ; preds = %19
  %35 = load i32, i32* @EXTENT_BUFFER_CORRUPT, align 4
  %36 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %37 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %36, i32 0, i32 0
  %38 = call i64 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %42 = call i32 @free_extent_buffer_stale(%struct.extent_buffer* %41)
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %57

45:                                               ; preds = %34
  %46 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %47 = call i64 @extent_buffer_uptodate(%struct.extent_buffer* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %51 = load %struct.extent_buffer**, %struct.extent_buffer*** %9, align 8
  store %struct.extent_buffer* %50, %struct.extent_buffer** %51, align 8
  br label %55

52:                                               ; preds = %45
  %53 = load %struct.extent_buffer*, %struct.extent_buffer** %10, align 8
  %54 = call i32 @free_extent_buffer(%struct.extent_buffer* %53)
  br label %55

55:                                               ; preds = %52, %49
  br label %56

56:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %40, %30, %18
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.extent_buffer* @btrfs_find_create_tree_block(%struct.btrfs_fs_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.extent_buffer*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @read_extent_buffer_pages(%struct.extent_buffer*, i32, i32) #1

declare dso_local i32 @free_extent_buffer_stale(%struct.extent_buffer*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @extent_buffer_uptodate(%struct.extent_buffer*) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
