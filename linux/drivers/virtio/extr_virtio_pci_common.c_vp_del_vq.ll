; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_pci_common.c_vp_del_vq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_pci_common.c_vp_del_vq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i64, i32 }
%struct.virtio_pci_device = type { i32 (%struct.virtio_pci_vq_info*)*, i32, %struct.virtio_pci_vq_info** }
%struct.virtio_pci_vq_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*)* @vp_del_vq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vp_del_vq(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca %struct.virtio_pci_device*, align 8
  %4 = alloca %struct.virtio_pci_vq_info*, align 8
  %5 = alloca i64, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %6 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %7 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.virtio_pci_device* @to_vp_device(i32 %8)
  store %struct.virtio_pci_device* %9, %struct.virtio_pci_device** %3, align 8
  %10 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %11 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %10, i32 0, i32 2
  %12 = load %struct.virtio_pci_vq_info**, %struct.virtio_pci_vq_info*** %11, align 8
  %13 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %14 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %12, i64 %15
  %17 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %16, align 8
  store %struct.virtio_pci_vq_info* %17, %struct.virtio_pci_vq_info** %4, align 8
  %18 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %19 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %18, i32 0, i32 1
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %4, align 8
  %23 = getelementptr inbounds %struct.virtio_pci_vq_info, %struct.virtio_pci_vq_info* %22, i32 0, i32 0
  %24 = call i32 @list_del(i32* %23)
  %25 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %26 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %25, i32 0, i32 1
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %30 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %29, i32 0, i32 0
  %31 = load i32 (%struct.virtio_pci_vq_info*)*, i32 (%struct.virtio_pci_vq_info*)** %30, align 8
  %32 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %4, align 8
  %33 = call i32 %31(%struct.virtio_pci_vq_info* %32)
  %34 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %4, align 8
  %35 = call i32 @kfree(%struct.virtio_pci_vq_info* %34)
  ret void
}

declare dso_local %struct.virtio_pci_device* @to_vp_device(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.virtio_pci_vq_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
