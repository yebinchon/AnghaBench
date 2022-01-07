; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-inode.c_btrfs_balance_delayed_items.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-inode.c_btrfs_balance_delayed_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, %struct.btrfs_delayed_root* }
%struct.btrfs_delayed_root = type { i32, i32, i32 }

@BTRFS_DELAYED_BACKGROUND = common dso_local global i32 0, align 4
@BTRFS_DELAYED_WRITEBACK = common dso_local global i32 0, align 4
@BTRFS_DELAYED_BATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_balance_delayed_items(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca %struct.btrfs_fs_info*, align 8
  %3 = alloca %struct.btrfs_delayed_root*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %2, align 8
  %6 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %7 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %6, i32 0, i32 1
  %8 = load %struct.btrfs_delayed_root*, %struct.btrfs_delayed_root** %7, align 8
  store %struct.btrfs_delayed_root* %8, %struct.btrfs_delayed_root** %3, align 8
  %9 = load %struct.btrfs_delayed_root*, %struct.btrfs_delayed_root** %3, align 8
  %10 = getelementptr inbounds %struct.btrfs_delayed_root, %struct.btrfs_delayed_root* %9, i32 0, i32 2
  %11 = call i32 @atomic_read(i32* %10)
  %12 = load i32, i32* @BTRFS_DELAYED_BACKGROUND, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %16 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @btrfs_workqueue_normal_congested(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %1
  br label %50

21:                                               ; preds = %14
  %22 = load %struct.btrfs_delayed_root*, %struct.btrfs_delayed_root** %3, align 8
  %23 = getelementptr inbounds %struct.btrfs_delayed_root, %struct.btrfs_delayed_root* %22, i32 0, i32 2
  %24 = call i32 @atomic_read(i32* %23)
  %25 = load i32, i32* @BTRFS_DELAYED_WRITEBACK, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %21
  %28 = load %struct.btrfs_delayed_root*, %struct.btrfs_delayed_root** %3, align 8
  %29 = getelementptr inbounds %struct.btrfs_delayed_root, %struct.btrfs_delayed_root* %28, i32 0, i32 1
  %30 = call i32 @atomic_read(i32* %29)
  store i32 %30, i32* %4, align 4
  %31 = load %struct.btrfs_delayed_root*, %struct.btrfs_delayed_root** %3, align 8
  %32 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %33 = call i32 @btrfs_wq_run_delayed_node(%struct.btrfs_delayed_root* %31, %struct.btrfs_fs_info* %32, i32 0)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %50

37:                                               ; preds = %27
  %38 = load %struct.btrfs_delayed_root*, %struct.btrfs_delayed_root** %3, align 8
  %39 = getelementptr inbounds %struct.btrfs_delayed_root, %struct.btrfs_delayed_root* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.btrfs_delayed_root*, %struct.btrfs_delayed_root** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @could_end_wait(%struct.btrfs_delayed_root* %41, i32 %42)
  %44 = call i32 @wait_event_interruptible(i32 %40, i32 %43)
  br label %50

45:                                               ; preds = %21
  %46 = load %struct.btrfs_delayed_root*, %struct.btrfs_delayed_root** %3, align 8
  %47 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %48 = load i32, i32* @BTRFS_DELAYED_BATCH, align 4
  %49 = call i32 @btrfs_wq_run_delayed_node(%struct.btrfs_delayed_root* %46, %struct.btrfs_fs_info* %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %37, %36, %20
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @btrfs_workqueue_normal_congested(i32) #1

declare dso_local i32 @btrfs_wq_run_delayed_node(%struct.btrfs_delayed_root*, %struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @could_end_wait(%struct.btrfs_delayed_root*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
