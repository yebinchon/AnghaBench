; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_pci_common.c_virtio_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_pci_common.c_virtio_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.virtio_pci_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @virtio_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtio_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.virtio_pci_device*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.virtio_pci_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.virtio_pci_device* %6, %struct.virtio_pci_device** %3, align 8
  %7 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %8 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call %struct.device* @get_device(i32* %9)
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = call i32 @pci_disable_sriov(%struct.pci_dev* %11)
  %13 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %14 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %13, i32 0, i32 1
  %15 = call i32 @unregister_virtio_device(%struct.TYPE_2__* %14)
  %16 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %17 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %22 = call i32 @virtio_pci_legacy_remove(%struct.virtio_pci_device* %21)
  br label %26

23:                                               ; preds = %1
  %24 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %25 = call i32 @virtio_pci_modern_remove(%struct.virtio_pci_device* %24)
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %28 = call i32 @pci_disable_device(%struct.pci_dev* %27)
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i32 @put_device(%struct.device* %29)
  ret void
}

declare dso_local %struct.virtio_pci_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.device* @get_device(i32*) #1

declare dso_local i32 @pci_disable_sriov(%struct.pci_dev*) #1

declare dso_local i32 @unregister_virtio_device(%struct.TYPE_2__*) #1

declare dso_local i32 @virtio_pci_legacy_remove(%struct.virtio_pci_device*) #1

declare dso_local i32 @virtio_pci_modern_remove(%struct.virtio_pci_device*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
