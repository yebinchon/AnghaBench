; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_pci_legacy.c_vp_config_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_pci_legacy.c_vp_config_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_pci_device = type { i64 }

@VIRTIO_MSI_CONFIG_VECTOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_pci_device*, i32)* @vp_config_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp_config_vector(%struct.virtio_pci_device* %0, i32 %1) #0 {
  %3 = alloca %struct.virtio_pci_device*, align 8
  %4 = alloca i32, align 4
  store %struct.virtio_pci_device* %0, %struct.virtio_pci_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %7 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @VIRTIO_MSI_CONFIG_VECTOR, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @iowrite16(i32 %5, i64 %10)
  %12 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %13 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @VIRTIO_MSI_CONFIG_VECTOR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @ioread16(i64 %16)
  ret i32 %17
}

declare dso_local i32 @iowrite16(i32, i64) #1

declare dso_local i32 @ioread16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
