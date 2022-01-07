; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_imx6_pcie_reset_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_imx6_pcie_reset_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx6_pcie = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IMX6_PCIE_FLAG_IMX6_PHY = common dso_local global i32 0, align 4
@PHY_RX_OVRD_IN_LO = common dso_local global i32 0, align 4
@PHY_RX_OVRD_IN_LO_RX_DATA_EN = common dso_local global i32 0, align 4
@PHY_RX_OVRD_IN_LO_RX_PLL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx6_pcie*)* @imx6_pcie_reset_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx6_pcie_reset_phy(%struct.imx6_pcie* %0) #0 {
  %2 = alloca %struct.imx6_pcie*, align 8
  %3 = alloca i32, align 4
  store %struct.imx6_pcie* %0, %struct.imx6_pcie** %2, align 8
  %4 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %5 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IMX6_PCIE_FLAG_IMX6_PHY, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %40

13:                                               ; preds = %1
  %14 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %15 = load i32, i32* @PHY_RX_OVRD_IN_LO, align 4
  %16 = call i32 @pcie_phy_read(%struct.imx6_pcie* %14, i32 %15, i32* %3)
  %17 = load i32, i32* @PHY_RX_OVRD_IN_LO_RX_DATA_EN, align 4
  %18 = load i32, i32* @PHY_RX_OVRD_IN_LO_RX_PLL_EN, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %23 = load i32, i32* @PHY_RX_OVRD_IN_LO, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @pcie_phy_write(%struct.imx6_pcie* %22, i32 %23, i32 %24)
  %26 = call i32 @usleep_range(i32 2000, i32 3000)
  %27 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %28 = load i32, i32* @PHY_RX_OVRD_IN_LO, align 4
  %29 = call i32 @pcie_phy_read(%struct.imx6_pcie* %27, i32 %28, i32* %3)
  %30 = load i32, i32* @PHY_RX_OVRD_IN_LO_RX_DATA_EN, align 4
  %31 = load i32, i32* @PHY_RX_OVRD_IN_LO_RX_PLL_EN, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load %struct.imx6_pcie*, %struct.imx6_pcie** %2, align 8
  %37 = load i32, i32* @PHY_RX_OVRD_IN_LO, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @pcie_phy_write(%struct.imx6_pcie* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @pcie_phy_read(%struct.imx6_pcie*, i32, i32*) #1

declare dso_local i32 @pcie_phy_write(%struct.imx6_pcie*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
