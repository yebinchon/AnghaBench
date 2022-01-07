; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-host.c_dw_pci_setup_msi_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-host.c_dw_pci_setup_msi_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }
%struct.msi_msg = type { i32, i32, i64 }
%struct.pcie_port = type { i64 }
%struct.dw_pcie = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"msi#%d address_hi %#x address_lo %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*, %struct.msi_msg*)* @dw_pci_setup_msi_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_pci_setup_msi_msg(%struct.irq_data* %0, %struct.msi_msg* %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca %struct.msi_msg*, align 8
  %5 = alloca %struct.pcie_port*, align 8
  %6 = alloca %struct.dw_pcie*, align 8
  %7 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store %struct.msi_msg* %1, %struct.msi_msg** %4, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %9 = call %struct.pcie_port* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.pcie_port* %9, %struct.pcie_port** %5, align 8
  %10 = load %struct.pcie_port*, %struct.pcie_port** %5, align 8
  %11 = call %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port* %10)
  store %struct.dw_pcie* %11, %struct.dw_pcie** %6, align 8
  %12 = load %struct.pcie_port*, %struct.pcie_port** %5, align 8
  %13 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @lower_32_bits(i64 %15)
  %17 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %18 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @upper_32_bits(i64 %19)
  %21 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %22 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %24 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %27 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  %28 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %29 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %32 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %36 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %39 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37, i32 %40)
  ret void
}

declare dso_local %struct.pcie_port* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port*) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
