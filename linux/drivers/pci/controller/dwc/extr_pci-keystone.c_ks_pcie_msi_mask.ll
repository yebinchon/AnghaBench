; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-keystone.c_ks_pcie_msi_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-keystone.c_ks_pcie_msi_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.pcie_port = type { i32 }
%struct.keystone_pcie = type { i32 }
%struct.dw_pcie = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @ks_pcie_msi_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks_pcie_msi_mask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.pcie_port*, align 8
  %4 = alloca %struct.keystone_pcie*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dw_pcie*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %10 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %11 = call %struct.pcie_port* @irq_data_get_irq_chip_data(%struct.irq_data* %10)
  store %struct.pcie_port* %11, %struct.pcie_port** %3, align 8
  %12 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %13 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %16 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %15, i32 0, i32 0
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @raw_spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %20 = call %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port* %19)
  store %struct.dw_pcie* %20, %struct.dw_pcie** %6, align 8
  %21 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %22 = call %struct.keystone_pcie* @to_keystone_pcie(%struct.dw_pcie* %21)
  store %struct.keystone_pcie* %22, %struct.keystone_pcie** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = srem i32 %23, 8
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %5, align 4
  %26 = ashr i32 %25, 3
  store i32 %26, i32* %9, align 4
  %27 = load %struct.keystone_pcie*, %struct.keystone_pcie** %4, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @MSI_IRQ_ENABLE_CLR(i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @BIT(i32 %30)
  %32 = call i32 @ks_pcie_app_writel(%struct.keystone_pcie* %27, i32 %29, i32 %31)
  %33 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %34 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %33, i32 0, i32 0
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @raw_spin_unlock_irqrestore(i32* %34, i64 %35)
  ret void
}

declare dso_local %struct.pcie_port* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port*) #1

declare dso_local %struct.keystone_pcie* @to_keystone_pcie(%struct.dw_pcie*) #1

declare dso_local i32 @ks_pcie_app_writel(%struct.keystone_pcie*, i32, i32) #1

declare dso_local i32 @MSI_IRQ_ENABLE_CLR(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
