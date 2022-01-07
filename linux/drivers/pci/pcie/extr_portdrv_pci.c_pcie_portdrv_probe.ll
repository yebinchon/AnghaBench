; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_portdrv_pci.c_pcie_portdrv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_portdrv_pci.c_pcie_portdrv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }

@PCI_EXP_TYPE_ROOT_PORT = common dso_local global i64 0, align 8
@PCI_EXP_TYPE_UPSTREAM = common dso_local global i64 0, align 8
@PCI_EXP_TYPE_DOWNSTREAM = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@DPM_FLAG_NEVER_SKIP = common dso_local global i32 0, align 4
@DPM_FLAG_SMART_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @pcie_portdrv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcie_portdrv_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = call i32 @pci_is_pcie(%struct.pci_dev* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = call i64 @pci_pcie_type(%struct.pci_dev* %11)
  %13 = load i64, i64* @PCI_EXP_TYPE_ROOT_PORT, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = call i64 @pci_pcie_type(%struct.pci_dev* %16)
  %18 = load i64, i64* @PCI_EXP_TYPE_UPSTREAM, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = call i64 @pci_pcie_type(%struct.pci_dev* %21)
  %23 = load i64, i64* @PCI_EXP_TYPE_DOWNSTREAM, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %2
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %64

28:                                               ; preds = %20, %15, %10
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = call i32 @pcie_port_device_register(%struct.pci_dev* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %64

35:                                               ; preds = %28
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = call i32 @pci_save_state(%struct.pci_dev* %36)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = load i32, i32* @DPM_FLAG_NEVER_SKIP, align 4
  %41 = load i32, i32* @DPM_FLAG_SMART_SUSPEND, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @dev_pm_set_driver_flags(i32* %39, i32 %42)
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = call i64 @pci_bridge_d3_possible(%struct.pci_dev* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %35
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = call i32 @pm_runtime_set_autosuspend_delay(i32* %49, i32 100)
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 0
  %53 = call i32 @pm_runtime_use_autosuspend(i32* %52)
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 0
  %56 = call i32 @pm_runtime_mark_last_busy(i32* %55)
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 0
  %59 = call i32 @pm_runtime_put_autosuspend(i32* %58)
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = call i32 @pm_runtime_allow(i32* %61)
  br label %63

63:                                               ; preds = %47, %35
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %33, %25
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i64 @pci_pcie_type(%struct.pci_dev*) #1

declare dso_local i32 @pcie_port_device_register(%struct.pci_dev*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @dev_pm_set_driver_flags(i32*, i32) #1

declare dso_local i64 @pci_bridge_d3_possible(%struct.pci_dev*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

declare dso_local i32 @pm_runtime_allow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
