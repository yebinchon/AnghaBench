; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_async-thread.c_btrfs_destroy_workqueue.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_async-thread.c_btrfs_destroy_workqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_workqueue = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_destroy_workqueue(%struct.btrfs_workqueue* %0) #0 {
  %2 = alloca %struct.btrfs_workqueue*, align 8
  store %struct.btrfs_workqueue* %0, %struct.btrfs_workqueue** %2, align 8
  %3 = load %struct.btrfs_workqueue*, %struct.btrfs_workqueue** %2, align 8
  %4 = icmp ne %struct.btrfs_workqueue* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %23

6:                                                ; preds = %1
  %7 = load %struct.btrfs_workqueue*, %struct.btrfs_workqueue** %2, align 8
  %8 = getelementptr inbounds %struct.btrfs_workqueue, %struct.btrfs_workqueue* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.btrfs_workqueue*, %struct.btrfs_workqueue** %2, align 8
  %13 = getelementptr inbounds %struct.btrfs_workqueue, %struct.btrfs_workqueue* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @__btrfs_destroy_workqueue(i64 %14)
  br label %16

16:                                               ; preds = %11, %6
  %17 = load %struct.btrfs_workqueue*, %struct.btrfs_workqueue** %2, align 8
  %18 = getelementptr inbounds %struct.btrfs_workqueue, %struct.btrfs_workqueue* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @__btrfs_destroy_workqueue(i64 %19)
  %21 = load %struct.btrfs_workqueue*, %struct.btrfs_workqueue** %2, align 8
  %22 = call i32 @kfree(%struct.btrfs_workqueue* %21)
  br label %23

23:                                               ; preds = %16, %5
  ret void
}

declare dso_local i32 @__btrfs_destroy_workqueue(i64) #1

declare dso_local i32 @kfree(%struct.btrfs_workqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
