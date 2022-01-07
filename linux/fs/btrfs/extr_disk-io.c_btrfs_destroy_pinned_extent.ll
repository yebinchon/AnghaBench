; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_destroy_pinned_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_destroy_pinned_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.extent_io_tree*, i32 }
%struct.extent_io_tree = type { i32 }
%struct.extent_state = type { i32 }

@EXTENT_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, %struct.extent_io_tree*)* @btrfs_destroy_pinned_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_destroy_pinned_extent(%struct.btrfs_fs_info* %0, %struct.extent_io_tree* %1) #0 {
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.extent_io_tree*, align 8
  %5 = alloca %struct.extent_io_tree*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.extent_state*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  store %struct.extent_io_tree* %1, %struct.extent_io_tree** %4, align 8
  store i32 1, i32* %9, align 4
  %11 = load %struct.extent_io_tree*, %struct.extent_io_tree** %4, align 8
  store %struct.extent_io_tree* %11, %struct.extent_io_tree** %5, align 8
  br label %12

12:                                               ; preds = %61, %2
  br label %13

13:                                               ; preds = %12, %26
  store %struct.extent_state* null, %struct.extent_state** %10, align 8
  %14 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %15 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.extent_io_tree*, %struct.extent_io_tree** %5, align 8
  %18 = load i32, i32* @EXTENT_DIRTY, align 4
  %19 = call i32 @find_first_extent_bit(%struct.extent_io_tree* %17, i32 0, i32* %6, i32* %7, i32 %18, %struct.extent_state** %10)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  %23 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %24 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %23, i32 0, i32 1
  %25 = call i32 @mutex_unlock(i32* %24)
  br label %41

26:                                               ; preds = %13
  %27 = load %struct.extent_io_tree*, %struct.extent_io_tree** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @clear_extent_dirty(%struct.extent_io_tree* %27, i32 %28, i32 %29, %struct.extent_state** %10)
  %31 = load %struct.extent_state*, %struct.extent_state** %10, align 8
  %32 = call i32 @free_extent_state(%struct.extent_state* %31)
  %33 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @btrfs_error_unpin_extent_range(%struct.btrfs_fs_info* %33, i32 %34, i32 %35)
  %37 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %38 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %37, i32 0, i32 1
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = call i32 (...) @cond_resched()
  br label %13

41:                                               ; preds = %22
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %41
  %45 = load %struct.extent_io_tree*, %struct.extent_io_tree** %5, align 8
  %46 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %47 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %46, i32 0, i32 0
  %48 = load %struct.extent_io_tree*, %struct.extent_io_tree** %47, align 8
  %49 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %48, i64 0
  %50 = icmp eq %struct.extent_io_tree* %45, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %53 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %52, i32 0, i32 0
  %54 = load %struct.extent_io_tree*, %struct.extent_io_tree** %53, align 8
  %55 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %54, i64 1
  store %struct.extent_io_tree* %55, %struct.extent_io_tree** %5, align 8
  br label %61

56:                                               ; preds = %44
  %57 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %58 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %57, i32 0, i32 0
  %59 = load %struct.extent_io_tree*, %struct.extent_io_tree** %58, align 8
  %60 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %59, i64 0
  store %struct.extent_io_tree* %60, %struct.extent_io_tree** %5, align 8
  br label %61

61:                                               ; preds = %56, %51
  store i32 0, i32* %9, align 4
  br label %12

62:                                               ; preds = %41
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @find_first_extent_bit(%struct.extent_io_tree*, i32, i32*, i32*, i32, %struct.extent_state**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @clear_extent_dirty(%struct.extent_io_tree*, i32, i32, %struct.extent_state**) #1

declare dso_local i32 @free_extent_state(%struct.extent_state*) #1

declare dso_local i32 @btrfs_error_unpin_extent_range(%struct.btrfs_fs_info*, i32, i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
