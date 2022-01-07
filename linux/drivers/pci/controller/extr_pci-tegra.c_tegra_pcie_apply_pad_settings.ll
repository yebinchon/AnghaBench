; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_apply_pad_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_apply_pad_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie = type { %struct.tegra_pcie_soc* }
%struct.tegra_pcie_soc = type { i32, i32, i32 }

@PADS_REFCLK_CFG0 = common dso_local global i32 0, align 4
@PADS_REFCLK_CFG1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_pcie*)* @tegra_pcie_apply_pad_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_pcie_apply_pad_settings(%struct.tegra_pcie* %0) #0 {
  %2 = alloca %struct.tegra_pcie*, align 8
  %3 = alloca %struct.tegra_pcie_soc*, align 8
  store %struct.tegra_pcie* %0, %struct.tegra_pcie** %2, align 8
  %4 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %5 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %4, i32 0, i32 0
  %6 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %5, align 8
  store %struct.tegra_pcie_soc* %6, %struct.tegra_pcie_soc** %3, align 8
  %7 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %8 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PADS_REFCLK_CFG0, align 4
  %12 = call i32 @pads_writel(%struct.tegra_pcie* %7, i32 %10, i32 %11)
  %13 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %3, align 8
  %14 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 2
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %19 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %3, align 8
  %20 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PADS_REFCLK_CFG1, align 4
  %23 = call i32 @pads_writel(%struct.tegra_pcie* %18, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @pads_writel(%struct.tegra_pcie*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
