; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_destroy_marked_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_destroy_marked_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i64 }
%struct.extent_io_tree = type { i32 }
%struct.extent_buffer = type { i32 }

@EXTENT_BUFFER_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, %struct.extent_io_tree*, i32)* @btrfs_destroy_marked_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_destroy_marked_extents(%struct.btrfs_fs_info* %0, %struct.extent_io_tree* %1, i32 %2) #0 {
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.extent_io_tree*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.extent_buffer*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store %struct.extent_io_tree* %1, %struct.extent_io_tree** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %9, align 8
  br label %11

11:                                               ; preds = %3, %55
  %12 = load %struct.extent_io_tree*, %struct.extent_io_tree** %5, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @find_first_extent_bit(%struct.extent_io_tree* %12, i64 %13, i64* %9, i64* %10, i32 %14, i32* null)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %56

19:                                               ; preds = %11
  %20 = load %struct.extent_io_tree*, %struct.extent_io_tree** %5, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @clear_extent_bits(%struct.extent_io_tree* %20, i64 %21, i64 %22, i32 %23)
  br label %25

25:                                               ; preds = %52, %40, %19
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp sle i64 %26, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %25
  %30 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call %struct.extent_buffer* @find_extent_buffer(%struct.btrfs_fs_info* %30, i64 %31)
  store %struct.extent_buffer* %32, %struct.extent_buffer** %8, align 8
  %33 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %34 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %9, align 8
  %38 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %39 = icmp ne %struct.extent_buffer* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %29
  br label %25

41:                                               ; preds = %29
  %42 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %43 = call i32 @wait_on_extent_buffer_writeback(%struct.extent_buffer* %42)
  %44 = load i32, i32* @EXTENT_BUFFER_DIRTY, align 4
  %45 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %46 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %45, i32 0, i32 0
  %47 = call i64 @test_and_clear_bit(i32 %44, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %51 = call i32 @clear_extent_buffer_dirty(%struct.extent_buffer* %50)
  br label %52

52:                                               ; preds = %49, %41
  %53 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %54 = call i32 @free_extent_buffer_stale(%struct.extent_buffer* %53)
  br label %25

55:                                               ; preds = %25
  br label %11

56:                                               ; preds = %18
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @find_first_extent_bit(%struct.extent_io_tree*, i64, i64*, i64*, i32, i32*) #1

declare dso_local i32 @clear_extent_bits(%struct.extent_io_tree*, i64, i64, i32) #1

declare dso_local %struct.extent_buffer* @find_extent_buffer(%struct.btrfs_fs_info*, i64) #1

declare dso_local i32 @wait_on_extent_buffer_writeback(%struct.extent_buffer*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @clear_extent_buffer_dirty(%struct.extent_buffer*) #1

declare dso_local i32 @free_extent_buffer_stale(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
