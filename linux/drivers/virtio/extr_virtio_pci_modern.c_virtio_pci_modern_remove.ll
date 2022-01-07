; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_pci_modern.c_virtio_pci_modern_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_pci_modern.c_virtio_pci_modern_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_pci_device = type { i32, i32, i32, i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @virtio_pci_modern_remove(%struct.virtio_pci_device* %0) #0 {
  %2 = alloca %struct.virtio_pci_device*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.virtio_pci_device* %0, %struct.virtio_pci_device** %2, align 8
  %4 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %2, align 8
  %5 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %4, i32 0, i32 5
  %6 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %6, %struct.pci_dev** %3, align 8
  %7 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %2, align 8
  %8 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %2, align 8
  %14 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @pci_iounmap(%struct.pci_dev* %12, i32 %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %2, align 8
  %19 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %2, align 8
  %25 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pci_iounmap(%struct.pci_dev* %23, i32 %26)
  br label %28

28:                                               ; preds = %22, %17
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %2, align 8
  %31 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @pci_iounmap(%struct.pci_dev* %29, i32 %32)
  %34 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %35 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %2, align 8
  %36 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pci_iounmap(%struct.pci_dev* %34, i32 %37)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %40 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %2, align 8
  %41 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @pci_release_selected_regions(%struct.pci_dev* %39, i32 %42)
  ret void
}

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_release_selected_regions(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
