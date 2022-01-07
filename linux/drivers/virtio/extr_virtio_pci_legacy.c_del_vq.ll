; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_pci_legacy.c_del_vq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_pci_legacy.c_del_vq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_pci_vq_info = type { %struct.virtqueue* }
%struct.virtqueue = type { i32, i32 }
%struct.virtio_pci_device = type { i64, i64 }

@VIRTIO_PCI_QUEUE_SEL = common dso_local global i64 0, align 8
@VIRTIO_MSI_NO_VECTOR = common dso_local global i32 0, align 4
@VIRTIO_MSI_QUEUE_VECTOR = common dso_local global i64 0, align 8
@VIRTIO_PCI_ISR = common dso_local global i64 0, align 8
@VIRTIO_PCI_QUEUE_PFN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_pci_vq_info*)* @del_vq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @del_vq(%struct.virtio_pci_vq_info* %0) #0 {
  %2 = alloca %struct.virtio_pci_vq_info*, align 8
  %3 = alloca %struct.virtqueue*, align 8
  %4 = alloca %struct.virtio_pci_device*, align 8
  store %struct.virtio_pci_vq_info* %0, %struct.virtio_pci_vq_info** %2, align 8
  %5 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %2, align 8
  %6 = getelementptr inbounds %struct.virtio_pci_vq_info, %struct.virtio_pci_vq_info* %5, i32 0, i32 0
  %7 = load %struct.virtqueue*, %struct.virtqueue** %6, align 8
  store %struct.virtqueue* %7, %struct.virtqueue** %3, align 8
  %8 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %9 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.virtio_pci_device* @to_vp_device(i32 %10)
  store %struct.virtio_pci_device* %11, %struct.virtio_pci_device** %4, align 8
  %12 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %13 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %4, align 8
  %16 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VIRTIO_PCI_QUEUE_SEL, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @iowrite16(i32 %14, i64 %19)
  %21 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %4, align 8
  %22 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %1
  %26 = load i32, i32* @VIRTIO_MSI_NO_VECTOR, align 4
  %27 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %4, align 8
  %28 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @VIRTIO_MSI_QUEUE_VECTOR, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @iowrite16(i32 %26, i64 %31)
  %33 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %4, align 8
  %34 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VIRTIO_PCI_ISR, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @ioread8(i64 %37)
  br label %39

39:                                               ; preds = %25, %1
  %40 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %4, align 8
  %41 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @VIRTIO_PCI_QUEUE_PFN, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @iowrite32(i32 0, i64 %44)
  %46 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %47 = call i32 @vring_del_virtqueue(%struct.virtqueue* %46)
  ret void
}

declare dso_local %struct.virtio_pci_device* @to_vp_device(i32) #1

declare dso_local i32 @iowrite16(i32, i64) #1

declare dso_local i32 @ioread8(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @vring_del_virtqueue(%struct.virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
