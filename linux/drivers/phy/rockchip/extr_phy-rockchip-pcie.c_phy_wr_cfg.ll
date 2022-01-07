; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-pcie.c_phy_wr_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-pcie.c_phy_wr_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pcie_phy = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@PHY_CFG_DATA_MASK = common dso_local global i32 0, align 4
@PHY_CFG_DATA_SHIFT = common dso_local global i32 0, align 4
@PHY_CFG_ADDR_MASK = common dso_local global i32 0, align 4
@PHY_CFG_ADDR_SHIFT = common dso_local global i32 0, align 4
@PHY_CFG_WR_ENABLE = common dso_local global i32 0, align 4
@PHY_CFG_WR_MASK = common dso_local global i32 0, align 4
@PHY_CFG_WR_SHIFT = common dso_local global i32 0, align 4
@PHY_CFG_WR_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rockchip_pcie_phy*, i32, i32)* @phy_wr_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_wr_cfg(%struct.rockchip_pcie_phy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rockchip_pcie_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rockchip_pcie_phy* %0, %struct.rockchip_pcie_phy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %4, align 8
  %8 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %4, align 8
  %11 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @PHY_CFG_DATA_MASK, align 4
  %17 = load i32, i32* @PHY_CFG_DATA_SHIFT, align 4
  %18 = call i32 @HIWORD_UPDATE(i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @PHY_CFG_ADDR_MASK, align 4
  %21 = load i32, i32* @PHY_CFG_ADDR_SHIFT, align 4
  %22 = call i32 @HIWORD_UPDATE(i32 %19, i32 %20, i32 %21)
  %23 = or i32 %18, %22
  %24 = call i32 @regmap_write(i32 %9, i32 %14, i32 %23)
  %25 = call i32 @udelay(i32 1)
  %26 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %4, align 8
  %27 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %4, align 8
  %30 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PHY_CFG_WR_ENABLE, align 4
  %35 = load i32, i32* @PHY_CFG_WR_MASK, align 4
  %36 = load i32, i32* @PHY_CFG_WR_SHIFT, align 4
  %37 = call i32 @HIWORD_UPDATE(i32 %34, i32 %35, i32 %36)
  %38 = call i32 @regmap_write(i32 %28, i32 %33, i32 %37)
  %39 = call i32 @udelay(i32 1)
  %40 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %4, align 8
  %41 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %4, align 8
  %44 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PHY_CFG_WR_DISABLE, align 4
  %49 = load i32, i32* @PHY_CFG_WR_MASK, align 4
  %50 = load i32, i32* @PHY_CFG_WR_SHIFT, align 4
  %51 = call i32 @HIWORD_UPDATE(i32 %48, i32 %49, i32 %50)
  %52 = call i32 @regmap_write(i32 %42, i32 %47, i32 %51)
  ret void
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @HIWORD_UPDATE(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
