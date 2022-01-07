; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_dpc.c_dpc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_dpc.c_dpc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_device = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.dpc_dev = type { i64 }

@PCI_EXP_DPC_CTL = common dso_local global i64 0, align 8
@PCI_EXP_DPC_CTL_EN_FATAL = common dso_local global i32 0, align 4
@PCI_EXP_DPC_CTL_INT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcie_device*)* @dpc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpc_remove(%struct.pcie_device* %0) #0 {
  %2 = alloca %struct.pcie_device*, align 8
  %3 = alloca %struct.dpc_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.pcie_device* %0, %struct.pcie_device** %2, align 8
  %6 = load %struct.pcie_device*, %struct.pcie_device** %2, align 8
  %7 = call %struct.dpc_dev* @get_service_data(%struct.pcie_device* %6)
  store %struct.dpc_dev* %7, %struct.dpc_dev** %3, align 8
  %8 = load %struct.pcie_device*, %struct.pcie_device** %2, align 8
  %9 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %8, i32 0, i32 0
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %4, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = load %struct.dpc_dev*, %struct.dpc_dev** %3, align 8
  %13 = getelementptr inbounds %struct.dpc_dev, %struct.dpc_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PCI_EXP_DPC_CTL, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @pci_read_config_word(%struct.pci_dev* %11, i64 %16, i32* %5)
  %18 = load i32, i32* @PCI_EXP_DPC_CTL_EN_FATAL, align 4
  %19 = load i32, i32* @PCI_EXP_DPC_CTL_INT_EN, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = load %struct.dpc_dev*, %struct.dpc_dev** %3, align 8
  %26 = getelementptr inbounds %struct.dpc_dev, %struct.dpc_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PCI_EXP_DPC_CTL, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @pci_write_config_word(%struct.pci_dev* %24, i64 %29, i32 %30)
  ret void
}

declare dso_local %struct.dpc_dev* @get_service_data(%struct.pcie_device*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
