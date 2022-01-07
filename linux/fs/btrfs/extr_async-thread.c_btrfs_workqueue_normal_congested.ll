; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_async-thread.c_btrfs_workqueue_normal_congested.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_async-thread.c_btrfs_workqueue_normal_congested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_workqueue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@NO_THRESHOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_workqueue_normal_congested(%struct.btrfs_workqueue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_workqueue*, align 8
  store %struct.btrfs_workqueue* %0, %struct.btrfs_workqueue** %3, align 8
  %4 = load %struct.btrfs_workqueue*, %struct.btrfs_workqueue** %3, align 8
  %5 = getelementptr inbounds %struct.btrfs_workqueue, %struct.btrfs_workqueue* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @NO_THRESHOLD, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

12:                                               ; preds = %1
  %13 = load %struct.btrfs_workqueue*, %struct.btrfs_workqueue** %3, align 8
  %14 = getelementptr inbounds %struct.btrfs_workqueue, %struct.btrfs_workqueue* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = call i32 @atomic_read(i32* %16)
  %18 = load %struct.btrfs_workqueue*, %struct.btrfs_workqueue** %3, align 8
  %19 = getelementptr inbounds %struct.btrfs_workqueue, %struct.btrfs_workqueue* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %22, 2
  %24 = icmp sgt i32 %17, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %12, %11
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
