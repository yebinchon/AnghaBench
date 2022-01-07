; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_u132_ring_requeue_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_u132_ring_requeue_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.u132 = type { i32 }
%struct.u132_ring = type { i32 }

@workqueue = common dso_local global i32 0, align 4
@u132_hcd_delete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.u132*, %struct.u132_ring*, i32)* @u132_ring_requeue_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u132_ring_requeue_work(%struct.u132* %0, %struct.u132_ring* %1, i32 %2) #0 {
  %4 = alloca %struct.u132*, align 8
  %5 = alloca %struct.u132_ring*, align 8
  %6 = alloca i32, align 4
  store %struct.u132* %0, %struct.u132** %4, align 8
  store %struct.u132_ring* %1, %struct.u132_ring** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ugt i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = load i32, i32* @workqueue, align 4
  %11 = load %struct.u132_ring*, %struct.u132_ring** %5, align 8
  %12 = getelementptr inbounds %struct.u132_ring, %struct.u132_ring* %11, i32 0, i32 0
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @queue_delayed_work(i32 %10, i32* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %31

17:                                               ; preds = %9
  br label %26

18:                                               ; preds = %3
  %19 = load i32, i32* @workqueue, align 4
  %20 = load %struct.u132_ring*, %struct.u132_ring** %5, align 8
  %21 = getelementptr inbounds %struct.u132_ring, %struct.u132_ring* %20, i32 0, i32 0
  %22 = call i64 @queue_delayed_work(i32 %19, i32* %21, i32 0)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %31

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %17
  %27 = load %struct.u132*, %struct.u132** %4, align 8
  %28 = getelementptr inbounds %struct.u132, %struct.u132* %27, i32 0, i32 0
  %29 = load i32, i32* @u132_hcd_delete, align 4
  %30 = call i32 @kref_put(i32* %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %24, %16
  ret void
}

declare dso_local i64 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
