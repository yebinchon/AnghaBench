; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_virtqueue_poll_packed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_virtqueue_poll_packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32 }
%struct.vring_virtqueue = type { i32 }

@VRING_PACKED_EVENT_F_WRAP_CTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtqueue*, i32)* @virtqueue_poll_packed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtqueue_poll_packed(%struct.virtqueue* %0, i32 %1) #0 {
  %3 = alloca %struct.virtqueue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vring_virtqueue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.virtqueue* %0, %struct.virtqueue** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %9 = call %struct.vring_virtqueue* @to_vvq(%struct.virtqueue* %8)
  store %struct.vring_virtqueue* %9, %struct.vring_virtqueue** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @VRING_PACKED_EVENT_F_WRAP_CTR, align 4
  %12 = ashr i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @VRING_PACKED_EVENT_F_WRAP_CTR, align 4
  %15 = shl i32 1, %14
  %16 = xor i32 %15, -1
  %17 = and i32 %13, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @is_used_desc_packed(%struct.vring_virtqueue* %18, i32 %19, i32 %20)
  ret i32 %21
}

declare dso_local %struct.vring_virtqueue* @to_vvq(%struct.virtqueue*) #1

declare dso_local i32 @is_used_desc_packed(%struct.vring_virtqueue*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
