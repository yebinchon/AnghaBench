; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_input.c_virtinput_recv_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_input.c_virtinput_recv_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.virtio_input* }
%struct.virtio_input = type { i32, i32 }
%struct.virtio_input_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*)* @virtinput_recv_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtinput_recv_status(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca %struct.virtio_input*, align 8
  %4 = alloca %struct.virtio_input_event*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %7 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %8 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.virtio_input*, %struct.virtio_input** %10, align 8
  store %struct.virtio_input* %11, %struct.virtio_input** %3, align 8
  %12 = load %struct.virtio_input*, %struct.virtio_input** %3, align 8
  %13 = getelementptr inbounds %struct.virtio_input, %struct.virtio_input* %12, i32 0, i32 0
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  br label %16

16:                                               ; preds = %22, %1
  %17 = load %struct.virtio_input*, %struct.virtio_input** %3, align 8
  %18 = getelementptr inbounds %struct.virtio_input, %struct.virtio_input* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.virtio_input_event* @virtqueue_get_buf(i32 %19, i32* %6)
  store %struct.virtio_input_event* %20, %struct.virtio_input_event** %4, align 8
  %21 = icmp ne %struct.virtio_input_event* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.virtio_input_event*, %struct.virtio_input_event** %4, align 8
  %24 = call i32 @kfree(%struct.virtio_input_event* %23)
  br label %16

25:                                               ; preds = %16
  %26 = load %struct.virtio_input*, %struct.virtio_input** %3, align 8
  %27 = getelementptr inbounds %struct.virtio_input, %struct.virtio_input* %26, i32 0, i32 0
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.virtio_input_event* @virtqueue_get_buf(i32, i32*) #1

declare dso_local i32 @kfree(%struct.virtio_input_event*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
