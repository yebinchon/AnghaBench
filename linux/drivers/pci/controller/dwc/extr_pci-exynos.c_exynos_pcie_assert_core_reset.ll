; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-exynos.c_exynos_pcie_assert_core_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-exynos.c_exynos_pcie_assert_core_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_pcie = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PCIE_CORE_RESET = common dso_local global i32 0, align 4
@PCIE_CORE_RESET_ENABLE = common dso_local global i32 0, align 4
@PCIE_PWR_RESET = common dso_local global i32 0, align 4
@PCIE_STICKY_RESET = common dso_local global i32 0, align 4
@PCIE_NONSTICKY_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_pcie*)* @exynos_pcie_assert_core_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_pcie_assert_core_reset(%struct.exynos_pcie* %0) #0 {
  %2 = alloca %struct.exynos_pcie*, align 8
  %3 = alloca i32, align 4
  store %struct.exynos_pcie* %0, %struct.exynos_pcie** %2, align 8
  %4 = load %struct.exynos_pcie*, %struct.exynos_pcie** %2, align 8
  %5 = getelementptr inbounds %struct.exynos_pcie, %struct.exynos_pcie* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PCIE_CORE_RESET, align 4
  %10 = call i32 @exynos_pcie_readl(i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @PCIE_CORE_RESET_ENABLE, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load %struct.exynos_pcie*, %struct.exynos_pcie** %2, align 8
  %16 = getelementptr inbounds %struct.exynos_pcie, %struct.exynos_pcie* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @PCIE_CORE_RESET, align 4
  %22 = call i32 @exynos_pcie_writel(i32 %19, i32 %20, i32 %21)
  %23 = load %struct.exynos_pcie*, %struct.exynos_pcie** %2, align 8
  %24 = getelementptr inbounds %struct.exynos_pcie, %struct.exynos_pcie* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PCIE_PWR_RESET, align 4
  %29 = call i32 @exynos_pcie_writel(i32 %27, i32 0, i32 %28)
  %30 = load %struct.exynos_pcie*, %struct.exynos_pcie** %2, align 8
  %31 = getelementptr inbounds %struct.exynos_pcie, %struct.exynos_pcie* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PCIE_STICKY_RESET, align 4
  %36 = call i32 @exynos_pcie_writel(i32 %34, i32 0, i32 %35)
  %37 = load %struct.exynos_pcie*, %struct.exynos_pcie** %2, align 8
  %38 = getelementptr inbounds %struct.exynos_pcie, %struct.exynos_pcie* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PCIE_NONSTICKY_RESET, align 4
  %43 = call i32 @exynos_pcie_writel(i32 %41, i32 0, i32 %42)
  ret void
}

declare dso_local i32 @exynos_pcie_readl(i32, i32) #1

declare dso_local i32 @exynos_pcie_writel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
