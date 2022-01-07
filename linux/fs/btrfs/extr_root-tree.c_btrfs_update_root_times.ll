; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_root-tree.c_btrfs_update_root_times.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_root-tree.c_btrfs_update_root_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32, %struct.btrfs_root_item }
%struct.btrfs_root_item = type { i32 }
%struct.timespec64 = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_update_root_times(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1) #0 {
  %3 = alloca %struct.btrfs_trans_handle*, align 8
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.btrfs_root_item*, align 8
  %6 = alloca %struct.timespec64, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %3, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %4, align 8
  %7 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %8 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %7, i32 0, i32 1
  store %struct.btrfs_root_item* %8, %struct.btrfs_root_item** %5, align 8
  %9 = call i32 @ktime_get_real_ts64(%struct.timespec64* %6)
  %10 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %11 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %5, align 8
  %14 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %15 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @btrfs_set_root_ctransid(%struct.btrfs_root_item* %13, i32 %16)
  %18 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %5, align 8
  %19 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %6, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @btrfs_set_stack_timespec_sec(i32* %19, i32 %21)
  %23 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %5, align 8
  %24 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @btrfs_set_stack_timespec_nsec(i32* %24, i32 %26)
  %28 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %29 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock(i32* %29)
  ret void
}

declare dso_local i32 @ktime_get_real_ts64(%struct.timespec64*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @btrfs_set_root_ctransid(%struct.btrfs_root_item*, i32) #1

declare dso_local i32 @btrfs_set_stack_timespec_sec(i32*, i32) #1

declare dso_local i32 @btrfs_set_stack_timespec_nsec(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
