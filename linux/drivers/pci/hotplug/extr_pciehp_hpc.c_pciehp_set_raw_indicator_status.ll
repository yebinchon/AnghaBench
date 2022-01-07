; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_hpc.c_pciehp_set_raw_indicator_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_hpc.c_pciehp_set_raw_indicator_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hotplug_slot = type { i32 }
%struct.controller = type { i32 }
%struct.pci_dev = type { i32 }

@PCI_EXP_SLTCTL_AIC = common dso_local global i32 0, align 4
@PCI_EXP_SLTCTL_PIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pciehp_set_raw_indicator_status(%struct.hotplug_slot* %0, i32 %1) #0 {
  %3 = alloca %struct.hotplug_slot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.controller*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  store %struct.hotplug_slot* %0, %struct.hotplug_slot** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hotplug_slot*, %struct.hotplug_slot** %3, align 8
  %8 = call %struct.controller* @to_ctrl(%struct.hotplug_slot* %7)
  store %struct.controller* %8, %struct.controller** %5, align 8
  %9 = load %struct.controller*, %struct.controller** %5, align 8
  %10 = call %struct.pci_dev* @ctrl_dev(%struct.controller* %9)
  store %struct.pci_dev* %10, %struct.pci_dev** %6, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %12 = call i32 @pci_config_pm_runtime_get(%struct.pci_dev* %11)
  %13 = load %struct.controller*, %struct.controller** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = shl i32 %14, 6
  %16 = load i32, i32* @PCI_EXP_SLTCTL_AIC, align 4
  %17 = load i32, i32* @PCI_EXP_SLTCTL_PIC, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @pcie_write_cmd_nowait(%struct.controller* %13, i32 %15, i32 %18)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %21 = call i32 @pci_config_pm_runtime_put(%struct.pci_dev* %20)
  ret i32 0
}

declare dso_local %struct.controller* @to_ctrl(%struct.hotplug_slot*) #1

declare dso_local %struct.pci_dev* @ctrl_dev(%struct.controller*) #1

declare dso_local i32 @pci_config_pm_runtime_get(%struct.pci_dev*) #1

declare dso_local i32 @pcie_write_cmd_nowait(%struct.controller*, i32, i32) #1

declare dso_local i32 @pci_config_pm_runtime_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
