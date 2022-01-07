; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_port_get_pex_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_port_get_pex_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tegra_pcie_soc* }
%struct.tegra_pcie_soc = type { i64 }

@AFI_PEX0_CTRL = common dso_local global i64 0, align 8
@AFI_PEX1_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tegra_pcie_port*)* @tegra_pcie_port_get_pex_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tegra_pcie_port_get_pex_ctrl(%struct.tegra_pcie_port* %0) #0 {
  %2 = alloca %struct.tegra_pcie_port*, align 8
  %3 = alloca %struct.tegra_pcie_soc*, align 8
  %4 = alloca i64, align 8
  store %struct.tegra_pcie_port* %0, %struct.tegra_pcie_port** %2, align 8
  %5 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %6 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %8, align 8
  store %struct.tegra_pcie_soc* %9, %struct.tegra_pcie_soc** %3, align 8
  store i64 0, i64* %4, align 8
  %10 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %2, align 8
  %11 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %21 [
    i32 0, label %13
    i32 1, label %15
    i32 2, label %17
  ]

13:                                               ; preds = %1
  %14 = load i64, i64* @AFI_PEX0_CTRL, align 8
  store i64 %14, i64* %4, align 8
  br label %21

15:                                               ; preds = %1
  %16 = load i64, i64* @AFI_PEX1_CTRL, align 8
  store i64 %16, i64* %4, align 8
  br label %21

17:                                               ; preds = %1
  %18 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %3, align 8
  %19 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %4, align 8
  br label %21

21:                                               ; preds = %1, %17, %15, %13
  %22 = load i64, i64* %4, align 8
  ret i64 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
