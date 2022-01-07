; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-pci.c_dwc3_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-pci.c_dwc3_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i32 }
%struct.dwc3_pci = type { i32, i32, %struct.pci_dev* }

@PCI_DEVICE_ID_INTEL_BYT = common dso_local global i64 0, align 8
@platform_bytcr_gpios = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @dwc3_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.dwc3_pci*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.dwc3_pci* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.dwc3_pci* %6, %struct.dwc3_pci** %3, align 8
  %7 = load %struct.dwc3_pci*, %struct.dwc3_pci** %3, align 8
  %8 = getelementptr inbounds %struct.dwc3_pci, %struct.dwc3_pci* %7, i32 0, i32 2
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PCI_DEVICE_ID_INTEL_BYT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @gpiod_remove_lookup_table(i32* @platform_bytcr_gpios)
  br label %17

17:                                               ; preds = %15, %1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 1
  %20 = call i32 @device_init_wakeup(i32* %19, i32 0)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 1
  %23 = call i32 @pm_runtime_get(i32* %22)
  %24 = load %struct.dwc3_pci*, %struct.dwc3_pci** %3, align 8
  %25 = getelementptr inbounds %struct.dwc3_pci, %struct.dwc3_pci* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @platform_device_unregister(i32 %26)
  ret void
}

declare dso_local %struct.dwc3_pci* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @gpiod_remove_lookup_table(i32*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @pm_runtime_get(i32*) #1

declare dso_local i32 @platform_device_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
