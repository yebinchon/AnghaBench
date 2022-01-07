; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_process_one_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_process_one_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.extent_buffer = type { i32, i32 }
%struct.walk_control = type { i64, i64, i64 }

@MIXED_GROUPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, %struct.extent_buffer*, %struct.walk_control*, i32, i32)* @process_one_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_one_buffer(%struct.btrfs_root* %0, %struct.extent_buffer* %1, %struct.walk_control* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca %struct.extent_buffer*, align 8
  %9 = alloca %struct.walk_control*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_fs_info*, align 8
  %13 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %7, align 8
  store %struct.extent_buffer* %1, %struct.extent_buffer** %8, align 8
  store %struct.walk_control* %2, %struct.walk_control** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %15 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %14, i32 0, i32 0
  %16 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %15, align 8
  store %struct.btrfs_fs_info* %16, %struct.btrfs_fs_info** %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %18 = load i32, i32* @MIXED_GROUPS, align 4
  %19 = call i64 @btrfs_fs_incompat(%struct.btrfs_fs_info* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %5
  %22 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @btrfs_read_buffer(%struct.extent_buffer* %22, i32 %23, i32 %24, i32* null)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %6, align 4
  br label %84

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %5
  %32 = load %struct.walk_control*, %struct.walk_control** %9, align 8
  %33 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %38 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %39 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %42 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @btrfs_pin_extent_for_log_replay(%struct.btrfs_fs_info* %37, i32 %40, i32 %43)
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %36, %31
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %82, label %48

48:                                               ; preds = %45
  %49 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @btrfs_buffer_uptodate(%struct.extent_buffer* %49, i32 %50, i32 0)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %82

53:                                               ; preds = %48
  %54 = load %struct.walk_control*, %struct.walk_control** %9, align 8
  %55 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %60 = call i64 @btrfs_header_level(%struct.extent_buffer* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %64 = call i32 @btrfs_exclude_logged_extents(%struct.extent_buffer* %63)
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %62, %58, %53
  %66 = load %struct.walk_control*, %struct.walk_control** %9, align 8
  %67 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %72 = call i32 @btrfs_write_tree_block(%struct.extent_buffer* %71)
  br label %73

73:                                               ; preds = %70, %65
  %74 = load %struct.walk_control*, %struct.walk_control** %9, align 8
  %75 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %80 = call i32 @btrfs_wait_tree_block_writeback(%struct.extent_buffer* %79)
  br label %81

81:                                               ; preds = %78, %73
  br label %82

82:                                               ; preds = %81, %48, %45
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %82, %28
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i64 @btrfs_fs_incompat(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @btrfs_read_buffer(%struct.extent_buffer*, i32, i32, i32*) #1

declare dso_local i32 @btrfs_pin_extent_for_log_replay(%struct.btrfs_fs_info*, i32, i32) #1

declare dso_local i64 @btrfs_buffer_uptodate(%struct.extent_buffer*, i32, i32) #1

declare dso_local i64 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_exclude_logged_extents(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_write_tree_block(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_wait_tree_block_writeback(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
