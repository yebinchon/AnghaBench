; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_input.c_virtinput_queue_evtbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_input.c_virtinput_queue_evtbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_input = type { i32 }
%struct.virtio_input_event = type { i32 }
%struct.scatterlist = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_input*, %struct.virtio_input_event*)* @virtinput_queue_evtbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtinput_queue_evtbuf(%struct.virtio_input* %0, %struct.virtio_input_event* %1) #0 {
  %3 = alloca %struct.virtio_input*, align 8
  %4 = alloca %struct.virtio_input_event*, align 8
  %5 = alloca [1 x %struct.scatterlist], align 4
  store %struct.virtio_input* %0, %struct.virtio_input** %3, align 8
  store %struct.virtio_input_event* %1, %struct.virtio_input_event** %4, align 8
  %6 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %5, i64 0, i64 0
  %7 = load %struct.virtio_input_event*, %struct.virtio_input_event** %4, align 8
  %8 = call i32 @sg_init_one(%struct.scatterlist* %6, %struct.virtio_input_event* %7, i32 4)
  %9 = load %struct.virtio_input*, %struct.virtio_input** %3, align 8
  %10 = getelementptr inbounds %struct.virtio_input, %struct.virtio_input* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %5, i64 0, i64 0
  %13 = load %struct.virtio_input_event*, %struct.virtio_input_event** %4, align 8
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call i32 @virtqueue_add_inbuf(i32 %11, %struct.scatterlist* %12, i32 1, %struct.virtio_input_event* %13, i32 %14)
  ret void
}

declare dso_local i32 @sg_init_one(%struct.scatterlist*, %struct.virtio_input_event*, i32) #1

declare dso_local i32 @virtqueue_add_inbuf(i32, %struct.scatterlist*, i32, %struct.virtio_input_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
