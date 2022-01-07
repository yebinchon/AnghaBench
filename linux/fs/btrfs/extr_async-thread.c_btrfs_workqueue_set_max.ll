; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_async-thread.c_btrfs_workqueue_set_max.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_async-thread.c_btrfs_workqueue_set_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_workqueue = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_workqueue_set_max(%struct.btrfs_workqueue* %0, i32 %1) #0 {
  %3 = alloca %struct.btrfs_workqueue*, align 8
  %4 = alloca i32, align 4
  store %struct.btrfs_workqueue* %0, %struct.btrfs_workqueue** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.btrfs_workqueue*, %struct.btrfs_workqueue** %3, align 8
  %6 = icmp ne %struct.btrfs_workqueue* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %24

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.btrfs_workqueue*, %struct.btrfs_workqueue** %3, align 8
  %11 = getelementptr inbounds %struct.btrfs_workqueue, %struct.btrfs_workqueue* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 %9, i32* %13, align 4
  %14 = load %struct.btrfs_workqueue*, %struct.btrfs_workqueue** %3, align 8
  %15 = getelementptr inbounds %struct.btrfs_workqueue, %struct.btrfs_workqueue* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %8
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.btrfs_workqueue*, %struct.btrfs_workqueue** %3, align 8
  %21 = getelementptr inbounds %struct.btrfs_workqueue, %struct.btrfs_workqueue* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  br label %24

24:                                               ; preds = %7, %18, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
