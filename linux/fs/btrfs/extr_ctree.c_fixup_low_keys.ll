; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_fixup_low_keys.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_fixup_low_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_disk_key = type { i32 }

@BTRFS_MAX_LEVEL = common dso_local global i32 0, align 4
@MOD_LOG_KEY_REPLACE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_path*, %struct.btrfs_disk_key*, i32)* @fixup_low_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_low_keys(%struct.btrfs_path* %0, %struct.btrfs_disk_key* %1, i32 %2) #0 {
  %4 = alloca %struct.btrfs_path*, align 8
  %5 = alloca %struct.btrfs_disk_key*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.extent_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.btrfs_path* %0, %struct.btrfs_path** %4, align 8
  store %struct.btrfs_disk_key* %1, %struct.btrfs_disk_key** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %66, %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @BTRFS_MAX_LEVEL, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %69

16:                                               ; preds = %12
  %17 = load %struct.btrfs_path*, %struct.btrfs_path** %4, align 8
  %18 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.btrfs_path*, %struct.btrfs_path** %4, align 8
  %25 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %24, i32 0, i32 1
  %26 = load %struct.extent_buffer**, %struct.extent_buffer*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %26, i64 %28
  %30 = load %struct.extent_buffer*, %struct.extent_buffer** %29, align 8
  %31 = icmp ne %struct.extent_buffer* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %16
  br label %69

33:                                               ; preds = %16
  %34 = load %struct.btrfs_path*, %struct.btrfs_path** %4, align 8
  %35 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %34, i32 0, i32 1
  %36 = load %struct.extent_buffer**, %struct.extent_buffer*** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %36, i64 %38
  %40 = load %struct.extent_buffer*, %struct.extent_buffer** %39, align 8
  store %struct.extent_buffer* %40, %struct.extent_buffer** %8, align 8
  %41 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @MOD_LOG_KEY_REPLACE, align 4
  %44 = load i32, i32* @GFP_ATOMIC, align 4
  %45 = call i32 @tree_mod_log_insert_key(%struct.extent_buffer* %41, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  %50 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %51 = load %struct.btrfs_disk_key*, %struct.btrfs_disk_key** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @btrfs_set_node_key(%struct.extent_buffer* %50, %struct.btrfs_disk_key* %51, i32 %52)
  %54 = load %struct.btrfs_path*, %struct.btrfs_path** %4, align 8
  %55 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %54, i32 0, i32 1
  %56 = load %struct.extent_buffer**, %struct.extent_buffer*** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %56, i64 %58
  %60 = load %struct.extent_buffer*, %struct.extent_buffer** %59, align 8
  %61 = call i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer* %60)
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %33
  br label %69

65:                                               ; preds = %33
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %12

69:                                               ; preds = %64, %32, %12
  ret void
}

declare dso_local i32 @tree_mod_log_insert_key(%struct.extent_buffer*, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_set_node_key(%struct.extent_buffer*, %struct.btrfs_disk_key*, i32) #1

declare dso_local i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
