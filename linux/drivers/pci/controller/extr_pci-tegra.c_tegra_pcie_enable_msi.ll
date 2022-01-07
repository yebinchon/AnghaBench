; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_enable_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_enable_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie = type { %struct.tegra_msi, %struct.tegra_pcie_soc* }
%struct.tegra_msi = type { i32 }
%struct.tegra_pcie_soc = type { i32 }

@AFI_MSI_FPCI_BAR_ST = common dso_local global i32 0, align 4
@AFI_MSI_AXI_BAR_ST = common dso_local global i32 0, align 4
@AFI_MSI_BAR_SZ = common dso_local global i32 0, align 4
@AFI_MSI_EN_VEC0 = common dso_local global i32 0, align 4
@AFI_MSI_EN_VEC1 = common dso_local global i32 0, align 4
@AFI_MSI_EN_VEC2 = common dso_local global i32 0, align 4
@AFI_MSI_EN_VEC3 = common dso_local global i32 0, align 4
@AFI_MSI_EN_VEC4 = common dso_local global i32 0, align 4
@AFI_MSI_EN_VEC5 = common dso_local global i32 0, align 4
@AFI_MSI_EN_VEC6 = common dso_local global i32 0, align 4
@AFI_MSI_EN_VEC7 = common dso_local global i32 0, align 4
@AFI_INTR_MASK = common dso_local global i32 0, align 4
@AFI_INTR_MASK_MSI_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_pcie*)* @tegra_pcie_enable_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_pcie_enable_msi(%struct.tegra_pcie* %0) #0 {
  %2 = alloca %struct.tegra_pcie*, align 8
  %3 = alloca %struct.tegra_pcie_soc*, align 8
  %4 = alloca %struct.tegra_msi*, align 8
  %5 = alloca i32, align 4
  store %struct.tegra_pcie* %0, %struct.tegra_pcie** %2, align 8
  %6 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %7 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %6, i32 0, i32 1
  %8 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %7, align 8
  store %struct.tegra_pcie_soc* %8, %struct.tegra_pcie_soc** %3, align 8
  %9 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %10 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %9, i32 0, i32 0
  store %struct.tegra_msi* %10, %struct.tegra_msi** %4, align 8
  %11 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %12 = load %struct.tegra_msi*, %struct.tegra_msi** %4, align 8
  %13 = getelementptr inbounds %struct.tegra_msi, %struct.tegra_msi* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %3, align 8
  %16 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %14, %17
  %19 = load i32, i32* @AFI_MSI_FPCI_BAR_ST, align 4
  %20 = call i32 @afi_writel(%struct.tegra_pcie* %11, i32 %18, i32 %19)
  %21 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %22 = load %struct.tegra_msi*, %struct.tegra_msi** %4, align 8
  %23 = getelementptr inbounds %struct.tegra_msi, %struct.tegra_msi* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AFI_MSI_AXI_BAR_ST, align 4
  %26 = call i32 @afi_writel(%struct.tegra_pcie* %21, i32 %24, i32 %25)
  %27 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %28 = load i32, i32* @AFI_MSI_BAR_SZ, align 4
  %29 = call i32 @afi_writel(%struct.tegra_pcie* %27, i32 1, i32 %28)
  %30 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %31 = load i32, i32* @AFI_MSI_EN_VEC0, align 4
  %32 = call i32 @afi_writel(%struct.tegra_pcie* %30, i32 -1, i32 %31)
  %33 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %34 = load i32, i32* @AFI_MSI_EN_VEC1, align 4
  %35 = call i32 @afi_writel(%struct.tegra_pcie* %33, i32 -1, i32 %34)
  %36 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %37 = load i32, i32* @AFI_MSI_EN_VEC2, align 4
  %38 = call i32 @afi_writel(%struct.tegra_pcie* %36, i32 -1, i32 %37)
  %39 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %40 = load i32, i32* @AFI_MSI_EN_VEC3, align 4
  %41 = call i32 @afi_writel(%struct.tegra_pcie* %39, i32 -1, i32 %40)
  %42 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %43 = load i32, i32* @AFI_MSI_EN_VEC4, align 4
  %44 = call i32 @afi_writel(%struct.tegra_pcie* %42, i32 -1, i32 %43)
  %45 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %46 = load i32, i32* @AFI_MSI_EN_VEC5, align 4
  %47 = call i32 @afi_writel(%struct.tegra_pcie* %45, i32 -1, i32 %46)
  %48 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %49 = load i32, i32* @AFI_MSI_EN_VEC6, align 4
  %50 = call i32 @afi_writel(%struct.tegra_pcie* %48, i32 -1, i32 %49)
  %51 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %52 = load i32, i32* @AFI_MSI_EN_VEC7, align 4
  %53 = call i32 @afi_writel(%struct.tegra_pcie* %51, i32 -1, i32 %52)
  %54 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %55 = load i32, i32* @AFI_INTR_MASK, align 4
  %56 = call i32 @afi_readl(%struct.tegra_pcie* %54, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* @AFI_INTR_MASK_MSI_MASK, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @AFI_INTR_MASK, align 4
  %63 = call i32 @afi_writel(%struct.tegra_pcie* %60, i32 %61, i32 %62)
  ret void
}

declare dso_local i32 @afi_writel(%struct.tegra_pcie*, i32, i32) #1

declare dso_local i32 @afi_readl(%struct.tegra_pcie*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
