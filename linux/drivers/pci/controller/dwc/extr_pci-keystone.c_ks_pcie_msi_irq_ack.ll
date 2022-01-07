; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-keystone.c_ks_pcie_msi_irq_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-keystone.c_ks_pcie_msi_irq_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.pcie_port = type { i32 }
%struct.keystone_pcie = type { i32 }
%struct.dw_pcie = type { i32 }

@IRQ_EOI = common dso_local global i32 0, align 4
@MSI_IRQ_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @ks_pcie_msi_irq_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks_pcie_msi_irq_ack(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.pcie_port*, align 8
  %4 = alloca %struct.keystone_pcie*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dw_pcie*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %10 = call %struct.pcie_port* @irq_data_get_irq_chip_data(%struct.irq_data* %9)
  store %struct.pcie_port* %10, %struct.pcie_port** %3, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %12 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %15 = call %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port* %14)
  store %struct.dw_pcie* %15, %struct.dw_pcie** %6, align 8
  %16 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %17 = call %struct.keystone_pcie* @to_keystone_pcie(%struct.dw_pcie* %16)
  store %struct.keystone_pcie* %17, %struct.keystone_pcie** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = srem i32 %18, 8
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = ashr i32 %20, 3
  store i32 %21, i32* %8, align 4
  %22 = load %struct.keystone_pcie*, %struct.keystone_pcie** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @MSI_IRQ_STATUS(i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @BIT(i32 %25)
  %27 = call i32 @ks_pcie_app_writel(%struct.keystone_pcie* %22, i32 %24, i64 %26)
  %28 = load %struct.keystone_pcie*, %struct.keystone_pcie** %4, align 8
  %29 = load i32, i32* @IRQ_EOI, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @MSI_IRQ_OFFSET, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @ks_pcie_app_writel(%struct.keystone_pcie* %28, i32 %29, i64 %33)
  ret void
}

declare dso_local %struct.pcie_port* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port*) #1

declare dso_local %struct.keystone_pcie* @to_keystone_pcie(%struct.dw_pcie*) #1

declare dso_local i32 @ks_pcie_app_writel(%struct.keystone_pcie*, i32, i64) #1

declare dso_local i32 @MSI_IRQ_STATUS(i32) #1

declare dso_local i64 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
