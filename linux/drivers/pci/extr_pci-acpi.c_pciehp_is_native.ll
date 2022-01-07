; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_pciehp_is_native.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_pciehp_is_native.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_host_bridge = type { i32 }

@CONFIG_HOTPLUG_PCI_PCIE = common dso_local global i32 0, align 4
@PCI_EXP_SLTCAP = common dso_local global i32 0, align 4
@PCI_EXP_SLTCAP_HPC = common dso_local global i32 0, align 4
@pcie_ports_native = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pciehp_is_native(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_host_bridge*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load i32, i32* @CONFIG_HOTPLUG_PCI_PCIE, align 4
  %7 = call i32 @IS_ENABLED(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

10:                                               ; preds = %1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = load i32, i32* @PCI_EXP_SLTCAP, align 4
  %13 = call i32 @pcie_capability_read_dword(%struct.pci_dev* %11, i32 %12, i32* %5)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @PCI_EXP_SLTCAP_HPC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %31

19:                                               ; preds = %10
  %20 = load i64, i64* @pcie_ports_native, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %31

23:                                               ; preds = %19
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.pci_host_bridge* @pci_find_host_bridge(i32 %26)
  store %struct.pci_host_bridge* %27, %struct.pci_host_bridge** %4, align 8
  %28 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %4, align 8
  %29 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %23, %22, %18, %9
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @pcie_capability_read_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local %struct.pci_host_bridge* @pci_find_host_bridge(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
