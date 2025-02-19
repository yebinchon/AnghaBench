; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-pcie.c_phy_rd_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-pcie.c_phy_rd_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pcie_phy = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@PHY_CFG_RD_MASK = common dso_local global i32 0, align 4
@PHY_CFG_ADDR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_pcie_phy*, i32)* @phy_rd_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_rd_cfg(%struct.rockchip_pcie_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.rockchip_pcie_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rockchip_pcie_phy* %0, %struct.rockchip_pcie_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %3, align 8
  %7 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %3, align 8
  %10 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @PHY_CFG_RD_MASK, align 4
  %16 = load i32, i32* @PHY_CFG_ADDR_SHIFT, align 4
  %17 = call i32 @HIWORD_UPDATE(i32 %14, i32 %15, i32 %16)
  %18 = call i32 @regmap_write(i32 %8, i32 %13, i32 %17)
  %19 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %3, align 8
  %20 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %3, align 8
  %23 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @regmap_read(i32 %21, i32 %26, i32* %5)
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @HIWORD_UPDATE(i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
