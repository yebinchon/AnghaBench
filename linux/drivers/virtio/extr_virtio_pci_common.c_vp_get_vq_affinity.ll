; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_pci_common.c_vp_get_vq_affinity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_pci_common.c_vp_get_vq_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }
%struct.virtio_device = type { i32 }
%struct.virtio_pci_device = type { %struct.TYPE_2__**, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@VIRTIO_MSI_NO_VECTOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cpumask* @vp_get_vq_affinity(%struct.virtio_device* %0, i32 %1) #0 {
  %3 = alloca %struct.cpumask*, align 8
  %4 = alloca %struct.virtio_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.virtio_pci_device*, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.virtio_device*, %struct.virtio_device** %4, align 8
  %8 = call %struct.virtio_pci_device* @to_vp_device(%struct.virtio_device* %7)
  store %struct.virtio_pci_device* %8, %struct.virtio_pci_device** %6, align 8
  %9 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %6, align 8
  %10 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %6, align 8
  %15 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %16, i64 %18
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VIRTIO_MSI_NO_VECTOR, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %13, %2
  store %struct.cpumask* null, %struct.cpumask** %3, align 8
  br label %40

26:                                               ; preds = %13
  %27 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %6, align 8
  %28 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %6, align 8
  %31 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call %struct.cpumask* @pci_irq_get_affinity(i32 %29, i64 %38)
  store %struct.cpumask* %39, %struct.cpumask** %3, align 8
  br label %40

40:                                               ; preds = %26, %25
  %41 = load %struct.cpumask*, %struct.cpumask** %3, align 8
  ret %struct.cpumask* %41
}

declare dso_local %struct.virtio_pci_device* @to_vp_device(%struct.virtio_device*) #1

declare dso_local %struct.cpumask* @pci_irq_get_affinity(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
