; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-exynos.c_exynos_pcie_msi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-exynos.c_exynos_pcie_msi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_pcie = type { %struct.TYPE_2__*, %struct.dw_pcie* }
%struct.TYPE_2__ = type { i32 }
%struct.dw_pcie = type { %struct.pcie_port }
%struct.pcie_port = type { i32 }

@PCIE_IRQ_EN_LEVEL = common dso_local global i32 0, align 4
@IRQ_MSI_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_pcie*)* @exynos_pcie_msi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_pcie_msi_init(%struct.exynos_pcie* %0) #0 {
  %2 = alloca %struct.exynos_pcie*, align 8
  %3 = alloca %struct.dw_pcie*, align 8
  %4 = alloca %struct.pcie_port*, align 8
  %5 = alloca i32, align 4
  store %struct.exynos_pcie* %0, %struct.exynos_pcie** %2, align 8
  %6 = load %struct.exynos_pcie*, %struct.exynos_pcie** %2, align 8
  %7 = getelementptr inbounds %struct.exynos_pcie, %struct.exynos_pcie* %6, i32 0, i32 1
  %8 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  store %struct.dw_pcie* %8, %struct.dw_pcie** %3, align 8
  %9 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %10 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %9, i32 0, i32 0
  store %struct.pcie_port* %10, %struct.pcie_port** %4, align 8
  %11 = load %struct.pcie_port*, %struct.pcie_port** %4, align 8
  %12 = call i32 @dw_pcie_msi_init(%struct.pcie_port* %11)
  %13 = load %struct.exynos_pcie*, %struct.exynos_pcie** %2, align 8
  %14 = getelementptr inbounds %struct.exynos_pcie, %struct.exynos_pcie* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PCIE_IRQ_EN_LEVEL, align 4
  %19 = call i32 @exynos_pcie_readl(i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @IRQ_MSI_ENABLE, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.exynos_pcie*, %struct.exynos_pcie** %2, align 8
  %24 = getelementptr inbounds %struct.exynos_pcie, %struct.exynos_pcie* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @PCIE_IRQ_EN_LEVEL, align 4
  %30 = call i32 @exynos_pcie_writel(i32 %27, i32 %28, i32 %29)
  ret void
}

declare dso_local i32 @dw_pcie_msi_init(%struct.pcie_port*) #1

declare dso_local i32 @exynos_pcie_readl(i32, i32) #1

declare dso_local i32 @exynos_pcie_writel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
