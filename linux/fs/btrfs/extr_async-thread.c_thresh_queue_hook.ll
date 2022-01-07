; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_async-thread.c_thresh_queue_hook.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_async-thread.c_thresh_queue_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__btrfs_workqueue = type { i64, i32 }

@NO_THRESHOLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.__btrfs_workqueue*)* @thresh_queue_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thresh_queue_hook(%struct.__btrfs_workqueue* %0) #0 {
  %2 = alloca %struct.__btrfs_workqueue*, align 8
  store %struct.__btrfs_workqueue* %0, %struct.__btrfs_workqueue** %2, align 8
  %3 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %2, align 8
  %4 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @NO_THRESHOLD, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %13

9:                                                ; preds = %1
  %10 = load %struct.__btrfs_workqueue*, %struct.__btrfs_workqueue** %2, align 8
  %11 = getelementptr inbounds %struct.__btrfs_workqueue, %struct.__btrfs_workqueue* %10, i32 0, i32 1
  %12 = call i32 @atomic_inc(i32* %11)
  br label %13

13:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
