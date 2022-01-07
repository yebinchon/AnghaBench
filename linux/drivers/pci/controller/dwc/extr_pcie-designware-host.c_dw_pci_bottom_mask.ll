; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-host.c_dw_pci_bottom_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-host.c_dw_pci_bottom_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.pcie_port = type { i32, i32* }

@MAX_MSI_IRQS_PER_CTRL = common dso_local global i32 0, align 4
@MSI_REG_CTRL_BLOCK_SIZE = common dso_local global i32 0, align 4
@PCIE_MSI_INTR0_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @dw_pci_bottom_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_pci_bottom_mask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.pcie_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = call %struct.pcie_port* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.pcie_port* %9, %struct.pcie_port** %3, align 8
  %10 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %11 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %10, i32 0, i32 0
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @raw_spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %15 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MAX_MSI_IRQS_PER_CTRL, align 4
  %18 = udiv i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @MSI_REG_CTRL_BLOCK_SIZE, align 4
  %21 = mul i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %23 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MAX_MSI_IRQS_PER_CTRL, align 4
  %26 = urem i32 %24, %25
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @BIT(i32 %27)
  %29 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %30 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %28
  store i32 %36, i32* %34, align 4
  %37 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %38 = load i64, i64* @PCIE_MSI_INTR0_MASK, align 8
  %39 = load i32, i32* %4, align 4
  %40 = zext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %43 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dw_pcie_wr_own_conf(%struct.pcie_port* %37, i64 %41, i32 4, i32 %48)
  %50 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %51 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %50, i32 0, i32 0
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @raw_spin_unlock_irqrestore(i32* %51, i64 %52)
  ret void
}

declare dso_local %struct.pcie_port* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dw_pcie_wr_own_conf(%struct.pcie_port*, i64, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
