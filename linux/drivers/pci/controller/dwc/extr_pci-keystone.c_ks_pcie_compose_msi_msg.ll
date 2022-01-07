; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-keystone.c_ks_pcie_compose_msi_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-keystone.c_ks_pcie_compose_msi_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }
%struct.msi_msg = type { i32, i32, i64 }
%struct.pcie_port = type { i32 }
%struct.keystone_pcie = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.dw_pcie = type { i32 }

@MSI_IRQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"msi#%d address_hi %#x address_lo %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*, %struct.msi_msg*)* @ks_pcie_compose_msi_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks_pcie_compose_msi_msg(%struct.irq_data* %0, %struct.msi_msg* %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca %struct.msi_msg*, align 8
  %5 = alloca %struct.pcie_port*, align 8
  %6 = alloca %struct.keystone_pcie*, align 8
  %7 = alloca %struct.dw_pcie*, align 8
  %8 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store %struct.msi_msg* %1, %struct.msi_msg** %4, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %10 = call %struct.pcie_port* @irq_data_get_irq_chip_data(%struct.irq_data* %9)
  store %struct.pcie_port* %10, %struct.pcie_port** %5, align 8
  %11 = load %struct.pcie_port*, %struct.pcie_port** %5, align 8
  %12 = call %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port* %11)
  store %struct.dw_pcie* %12, %struct.dw_pcie** %7, align 8
  %13 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %14 = call %struct.keystone_pcie* @to_keystone_pcie(%struct.dw_pcie* %13)
  store %struct.keystone_pcie* %14, %struct.keystone_pcie** %6, align 8
  %15 = load %struct.keystone_pcie*, %struct.keystone_pcie** %6, align 8
  %16 = getelementptr inbounds %struct.keystone_pcie, %struct.keystone_pcie* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MSI_IRQ, align 8
  %20 = add nsw i64 %18, %19
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @lower_32_bits(i64 %21)
  %23 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %24 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @upper_32_bits(i64 %25)
  %27 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %28 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %30 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %33 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  %35 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %38 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %42 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %45 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dev_dbg(i32 %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43, i32 %46)
  ret void
}

declare dso_local %struct.pcie_port* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port*) #1

declare dso_local %struct.keystone_pcie* @to_keystone_pcie(%struct.dw_pcie*) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
