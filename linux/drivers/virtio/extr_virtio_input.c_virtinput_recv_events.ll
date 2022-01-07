; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_input.c_virtinput_recv_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_input.c_virtinput_recv_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.virtio_input* }
%struct.virtio_input = type { i32, i32, i32, i64 }
%struct.virtio_input_event = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*)* @virtinput_recv_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtinput_recv_events(%struct.virtqueue* %0) #0 {
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
  %16 = load %struct.virtio_input*, %struct.virtio_input** %3, align 8
  %17 = getelementptr inbounds %struct.virtio_input, %struct.virtio_input* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %58

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %27, %20
  %22 = load %struct.virtio_input*, %struct.virtio_input** %3, align 8
  %23 = getelementptr inbounds %struct.virtio_input, %struct.virtio_input* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.virtio_input_event* @virtqueue_get_buf(i32 %24, i32* %6)
  store %struct.virtio_input_event* %25, %struct.virtio_input_event** %4, align 8
  %26 = icmp ne %struct.virtio_input_event* %25, null
  br i1 %26, label %27, label %55

27:                                               ; preds = %21
  %28 = load %struct.virtio_input*, %struct.virtio_input** %3, align 8
  %29 = getelementptr inbounds %struct.virtio_input, %struct.virtio_input* %28, i32 0, i32 0
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load %struct.virtio_input*, %struct.virtio_input** %3, align 8
  %33 = getelementptr inbounds %struct.virtio_input, %struct.virtio_input* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.virtio_input_event*, %struct.virtio_input_event** %4, align 8
  %36 = getelementptr inbounds %struct.virtio_input_event, %struct.virtio_input_event* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le16_to_cpu(i32 %37)
  %39 = load %struct.virtio_input_event*, %struct.virtio_input_event** %4, align 8
  %40 = getelementptr inbounds %struct.virtio_input_event, %struct.virtio_input_event* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le16_to_cpu(i32 %41)
  %43 = load %struct.virtio_input_event*, %struct.virtio_input_event** %4, align 8
  %44 = getelementptr inbounds %struct.virtio_input_event, %struct.virtio_input_event* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  %47 = call i32 @input_event(i32 %34, i32 %38, i32 %42, i32 %46)
  %48 = load %struct.virtio_input*, %struct.virtio_input** %3, align 8
  %49 = getelementptr inbounds %struct.virtio_input, %struct.virtio_input* %48, i32 0, i32 0
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @spin_lock_irqsave(i32* %49, i64 %50)
  %52 = load %struct.virtio_input*, %struct.virtio_input** %3, align 8
  %53 = load %struct.virtio_input_event*, %struct.virtio_input_event** %4, align 8
  %54 = call i32 @virtinput_queue_evtbuf(%struct.virtio_input* %52, %struct.virtio_input_event* %53)
  br label %21

55:                                               ; preds = %21
  %56 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %57 = call i32 @virtqueue_kick(%struct.virtqueue* %56)
  br label %58

58:                                               ; preds = %55, %1
  %59 = load %struct.virtio_input*, %struct.virtio_input** %3, align 8
  %60 = getelementptr inbounds %struct.virtio_input, %struct.virtio_input* %59, i32 0, i32 0
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.virtio_input_event* @virtqueue_get_buf(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @input_event(i32, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @virtinput_queue_evtbuf(%struct.virtio_input*, %struct.virtio_input_event*) #1

declare dso_local i32 @virtqueue_kick(%struct.virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
