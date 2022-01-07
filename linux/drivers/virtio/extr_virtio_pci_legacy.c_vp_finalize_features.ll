; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_pci_legacy.c_vp_finalize_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_pci_legacy.c_vp_finalize_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i64 }
%struct.virtio_pci_device = type { i64 }

@VIRTIO_PCI_GUEST_FEATURES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_device*)* @vp_finalize_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp_finalize_features(%struct.virtio_device* %0) #0 {
  %2 = alloca %struct.virtio_device*, align 8
  %3 = alloca %struct.virtio_pci_device*, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %2, align 8
  %4 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %5 = call %struct.virtio_pci_device* @to_vp_device(%struct.virtio_device* %4)
  store %struct.virtio_pci_device* %5, %struct.virtio_pci_device** %3, align 8
  %6 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %7 = call i32 @vring_transport_features(%struct.virtio_device* %6)
  %8 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %9 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %12 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %18 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %21 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VIRTIO_PCI_GUEST_FEATURES, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @iowrite32(i64 %19, i64 %24)
  ret i32 0
}

declare dso_local %struct.virtio_pci_device* @to_vp_device(%struct.virtio_device*) #1

declare dso_local i32 @vring_transport_features(%struct.virtio_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @iowrite32(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
