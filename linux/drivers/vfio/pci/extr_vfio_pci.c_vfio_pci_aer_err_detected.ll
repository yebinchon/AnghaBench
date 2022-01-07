; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_aer_err_detected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_aer_err_detected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.vfio_pci_device = type { i32, i64 }
%struct.vfio_device = type { i32 }

@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_CAN_RECOVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @vfio_pci_aer_err_detected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_pci_aer_err_detected(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vfio_pci_device*, align 8
  %7 = alloca %struct.vfio_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = call %struct.vfio_device* @vfio_device_get_from_dev(i32* %9)
  store %struct.vfio_device* %10, %struct.vfio_device** %7, align 8
  %11 = load %struct.vfio_device*, %struct.vfio_device** %7, align 8
  %12 = icmp eq %struct.vfio_device* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %14, i32* %3, align 4
  br label %44

15:                                               ; preds = %2
  %16 = load %struct.vfio_device*, %struct.vfio_device** %7, align 8
  %17 = call %struct.vfio_pci_device* @vfio_device_data(%struct.vfio_device* %16)
  store %struct.vfio_pci_device* %17, %struct.vfio_pci_device** %6, align 8
  %18 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %19 = icmp eq %struct.vfio_pci_device* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.vfio_device*, %struct.vfio_device** %7, align 8
  %22 = call i32 @vfio_device_put(%struct.vfio_device* %21)
  %23 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %23, i32* %3, align 4
  br label %44

24:                                               ; preds = %15
  %25 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %26 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %29 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %34 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @eventfd_signal(i64 %35, i32 1)
  br label %37

37:                                               ; preds = %32, %24
  %38 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %39 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load %struct.vfio_device*, %struct.vfio_device** %7, align 8
  %42 = call i32 @vfio_device_put(%struct.vfio_device* %41)
  %43 = load i32, i32* @PCI_ERS_RESULT_CAN_RECOVER, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %37, %20, %13
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.vfio_device* @vfio_device_get_from_dev(i32*) #1

declare dso_local %struct.vfio_pci_device* @vfio_device_data(%struct.vfio_device*) #1

declare dso_local i32 @vfio_device_put(%struct.vfio_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @eventfd_signal(i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
