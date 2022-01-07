; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_vring_transport_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_vring_transport_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32 }

@VIRTIO_TRANSPORT_F_START = common dso_local global i32 0, align 4
@VIRTIO_TRANSPORT_F_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vring_transport_features(%struct.virtio_device* %0) #0 {
  %2 = alloca %struct.virtio_device*, align 8
  %3 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %2, align 8
  %4 = load i32, i32* @VIRTIO_TRANSPORT_F_START, align 4
  store i32 %4, i32* %3, align 4
  br label %5

5:                                                ; preds = %22, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @VIRTIO_TRANSPORT_F_END, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %5
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %17 [
    i32 128, label %11
    i32 129, label %12
    i32 130, label %13
    i32 133, label %14
    i32 131, label %15
    i32 132, label %16
  ]

11:                                               ; preds = %9
  br label %21

12:                                               ; preds = %9
  br label %21

13:                                               ; preds = %9
  br label %21

14:                                               ; preds = %9
  br label %21

15:                                               ; preds = %9
  br label %21

16:                                               ; preds = %9
  br label %21

17:                                               ; preds = %9
  %18 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @__virtio_clear_bit(%struct.virtio_device* %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %16, %15, %14, %13, %12, %11
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %3, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %5

25:                                               ; preds = %5
  ret void
}

declare dso_local i32 @__virtio_clear_bit(%struct.virtio_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
