; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_pci_common.c_vp_synchronize_vectors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_pci_common.c_vp_synchronize_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32 }
%struct.virtio_pci_device = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vp_synchronize_vectors(%struct.virtio_device* %0) #0 {
  %2 = alloca %struct.virtio_device*, align 8
  %3 = alloca %struct.virtio_pci_device*, align 8
  %4 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %2, align 8
  %5 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %6 = call %struct.virtio_pci_device* @to_vp_device(%struct.virtio_device* %5)
  store %struct.virtio_pci_device* %6, %struct.virtio_pci_device** %3, align 8
  %7 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %8 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %13 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @synchronize_irq(i32 %16)
  br label %18

18:                                               ; preds = %11, %1
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %32, %18
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %22 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %27 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @pci_irq_vector(%struct.TYPE_2__* %28, i32 %29)
  %31 = call i32 @synchronize_irq(i32 %30)
  br label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %19

35:                                               ; preds = %19
  ret void
}

declare dso_local %struct.virtio_pci_device* @to_vp_device(%struct.virtio_device*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @pci_irq_vector(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
