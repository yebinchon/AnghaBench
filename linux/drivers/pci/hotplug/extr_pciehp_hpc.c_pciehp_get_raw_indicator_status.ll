; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_hpc.c_pciehp_get_raw_indicator_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_hpc.c_pciehp_get_raw_indicator_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hotplug_slot = type { i32 }
%struct.controller = type { i32 }
%struct.pci_dev = type { i32 }

@PCI_EXP_SLTCTL = common dso_local global i32 0, align 4
@PCI_EXP_SLTCTL_AIC = common dso_local global i32 0, align 4
@PCI_EXP_SLTCTL_PIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pciehp_get_raw_indicator_status(%struct.hotplug_slot* %0, i32* %1) #0 {
  %3 = alloca %struct.hotplug_slot*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.controller*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.hotplug_slot* %0, %struct.hotplug_slot** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.hotplug_slot*, %struct.hotplug_slot** %3, align 8
  %9 = call %struct.controller* @to_ctrl(%struct.hotplug_slot* %8)
  store %struct.controller* %9, %struct.controller** %5, align 8
  %10 = load %struct.controller*, %struct.controller** %5, align 8
  %11 = call %struct.pci_dev* @ctrl_dev(%struct.controller* %10)
  store %struct.pci_dev* %11, %struct.pci_dev** %6, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %13 = call i32 @pci_config_pm_runtime_get(%struct.pci_dev* %12)
  %14 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %15 = load i32, i32* @PCI_EXP_SLTCTL, align 4
  %16 = call i32 @pcie_capability_read_word(%struct.pci_dev* %14, i32 %15, i32* %7)
  %17 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %18 = call i32 @pci_config_pm_runtime_put(%struct.pci_dev* %17)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @PCI_EXP_SLTCTL_AIC, align 4
  %21 = load i32, i32* @PCI_EXP_SLTCTL_PIC, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = ashr i32 %23, 6
  %25 = load i32*, i32** %4, align 8
  store i32 %24, i32* %25, align 4
  ret i32 0
}

declare dso_local %struct.controller* @to_ctrl(%struct.hotplug_slot*) #1

declare dso_local %struct.pci_dev* @ctrl_dev(%struct.controller*) #1

declare dso_local i32 @pci_config_pm_runtime_get(%struct.pci_dev*) #1

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_config_pm_runtime_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
