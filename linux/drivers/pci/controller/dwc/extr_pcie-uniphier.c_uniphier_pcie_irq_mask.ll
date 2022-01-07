; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-uniphier.c_uniphier_pcie_irq_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-uniphier.c_uniphier_pcie_irq_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.pcie_port = type { i32 }
%struct.dw_pcie = type { i32 }
%struct.uniphier_pcie_priv = type { i64 }

@PCL_RCV_INTX = common dso_local global i64 0, align 8
@PCL_RCV_INTX_ALL_MASK = common dso_local global i32 0, align 4
@PCL_RCV_INTX_MASK_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @uniphier_pcie_irq_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniphier_pcie_irq_mask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.pcie_port*, align 8
  %4 = alloca %struct.dw_pcie*, align 8
  %5 = alloca %struct.uniphier_pcie_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.pcie_port* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.pcie_port* %8, %struct.pcie_port** %3, align 8
  %9 = load %struct.pcie_port*, %struct.pcie_port** %3, align 8
  %10 = call %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port* %9)
  store %struct.dw_pcie* %10, %struct.dw_pcie** %4, align 8
  %11 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %12 = call %struct.uniphier_pcie_priv* @to_uniphier_pcie(%struct.dw_pcie* %11)
  store %struct.uniphier_pcie_priv* %12, %struct.uniphier_pcie_priv** %5, align 8
  %13 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %5, align 8
  %14 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PCL_RCV_INTX, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @PCL_RCV_INTX_ALL_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %24 = call i64 @irqd_to_hwirq(%struct.irq_data* %23)
  %25 = load i64, i64* @PCL_RCV_INTX_MASK_SHIFT, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @BIT(i64 %26)
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %5, align 8
  %32 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PCL_RCV_INTX, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  ret void
}

declare dso_local %struct.pcie_port* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port*) #1

declare dso_local %struct.uniphier_pcie_priv* @to_uniphier_pcie(%struct.dw_pcie*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i64 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
