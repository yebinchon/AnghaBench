; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_virtqueue_disable_cb_packed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_virtqueue_disable_cb_packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32 }
%struct.vring_virtqueue = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@VRING_PACKED_EVENT_FLAG_DISABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*)* @virtqueue_disable_cb_packed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtqueue_disable_cb_packed(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca %struct.vring_virtqueue*, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %4 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %5 = call %struct.vring_virtqueue* @to_vvq(%struct.virtqueue* %4)
  store %struct.vring_virtqueue* %5, %struct.vring_virtqueue** %3, align 8
  %6 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %7 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @VRING_PACKED_EVENT_FLAG_DISABLE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load i64, i64* @VRING_PACKED_EVENT_FLAG_DISABLE, align 8
  %14 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %15 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i64 %13, i64* %16, align 8
  %17 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %18 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @cpu_to_le16(i64 %20)
  %22 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %23 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %21, i32* %27, align 4
  br label %28

28:                                               ; preds = %12, %1
  ret void
}

declare dso_local %struct.vring_virtqueue* @to_vvq(%struct.virtqueue*) #1

declare dso_local i32 @cpu_to_le16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
