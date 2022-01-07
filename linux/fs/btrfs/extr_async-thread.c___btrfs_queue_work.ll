; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_async-thread.c___btrfs_queue_work.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_async-thread.c___btrfs_queue_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__btrfs_workqueue = type { i32, i32, i32 }
%struct.btrfs_work = type { i32, i32, i64, %struct.__btrfs_workqueue* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.__btrfs_workqueue*, %struct.btrfs_work*)* @__btrfs_queue_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__btrfs_queue_work(%struct.__btrfs_workqueue* %0, %struct.btrfs_work* %1) #0 {
  %3 = alloca %struct.__btrfs_workqueue*, align 8
  %4 = alloca %struct.btrfs_work*, align 8
  %5 = alloca i64, align 8
  store %struct.__btrfs_workqueue* %0, %struct.__btrfs_workqueue** %3, align 8
  store %struct.btrfs_work* %1, %struct.btrfs_work** %4, align 8
  %6 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %3, align 8
  %7 = load %struct.btrfs_work*, %struct.btrfs_work** %4, align 8
  %8 = getelementptr inbounds %struct.btrfs_work, %struct.btrfs_work* %7, i32 0, i32 3
  store %struct.__btrfs_workqueue* %6, %struct.__btrfs_workqueue** %8, align 8
  %9 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %3, align 8
  %10 = call i32 @thresh_queue_hook(%struct.__btrfs_workqueue* %9)
  %11 = load %struct.btrfs_work*, %struct.btrfs_work** %4, align 8
  %12 = getelementptr inbounds %struct.btrfs_work, %struct.btrfs_work* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %3, align 8
  %17 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %16, i32 0, i32 1
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.btrfs_work*, %struct.btrfs_work** %4, align 8
  %21 = getelementptr inbounds %struct.btrfs_work, %struct.btrfs_work* %20, i32 0, i32 1
  %22 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %3, align 8
  %23 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %22, i32 0, i32 2
  %24 = call i32 @list_add_tail(i32* %21, i32* %23)
  %25 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %3, align 8
  %26 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %25, i32 0, i32 1
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  br label %29

29:                                               ; preds = %15, %2
  %30 = load %struct.btrfs_work*, %struct.btrfs_work** %4, align 8
  %31 = call i32 @trace_btrfs_work_queued(%struct.btrfs_work* %30)
  %32 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %3, align 8
  %33 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.btrfs_work*, %struct.btrfs_work** %4, align 8
  %36 = getelementptr inbounds %struct.btrfs_work, %struct.btrfs_work* %35, i32 0, i32 0
  %37 = call i32 @queue_work(i32 %34, i32* %36)
  ret void
}

declare dso_local i32 @thresh_queue_hook(%struct.__btrfs_workqueue*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @trace_btrfs_work_queued(%struct.btrfs_work*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
