; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_virtqueue_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_virtqueue_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32 }
%struct.vring_virtqueue = type { i32, i32 (%struct.virtqueue.0*)* }
%struct.virtqueue.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @virtqueue_notify(%struct.virtqueue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtqueue*, align 8
  %4 = alloca %struct.vring_virtqueue*, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %3, align 8
  %5 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %6 = call %struct.vring_virtqueue* @to_vvq(%struct.virtqueue* %5)
  store %struct.vring_virtqueue* %6, %struct.vring_virtqueue** %4, align 8
  %7 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %8 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

13:                                               ; preds = %1
  %14 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %15 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %14, i32 0, i32 1
  %16 = load i32 (%struct.virtqueue.0*)*, i32 (%struct.virtqueue.0*)** %15, align 8
  %17 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %18 = bitcast %struct.virtqueue* %17 to %struct.virtqueue.0*
  %19 = call i32 %16(%struct.virtqueue.0* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %23 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  store i32 0, i32* %2, align 4
  br label %25

24:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %21, %12
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.vring_virtqueue* @to_vvq(%struct.virtqueue*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
