; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-emmc.c_rockchip_emmc_phy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-emmc.c_rockchip_emmc_phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.rockchip_emmc_phy = type { i32, i64, i32 }

@GRF_EMMCPHY_CON6 = common dso_local global i64 0, align 8
@PHYCTRL_DR_MASK = common dso_local global i32 0, align 4
@PHYCTRL_DR_SHIFT = common dso_local global i32 0, align 4
@GRF_EMMCPHY_CON0 = common dso_local global i64 0, align 8
@PHYCTRL_OTAPDLYENA = common dso_local global i32 0, align 4
@PHYCTRL_OTAPDLYENA_MASK = common dso_local global i32 0, align 4
@PHYCTRL_OTAPDLYENA_SHIFT = common dso_local global i32 0, align 4
@PHYCTRL_OTAPDLYSEL_MASK = common dso_local global i32 0, align 4
@PHYCTRL_OTAPDLYSEL_SHIFT = common dso_local global i32 0, align 4
@PHYCTRL_PDB_PWR_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @rockchip_emmc_phy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_emmc_phy_power_on(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.rockchip_emmc_phy*, align 8
  store %struct.phy* %0, %struct.phy** %2, align 8
  %4 = load %struct.phy*, %struct.phy** %2, align 8
  %5 = call %struct.rockchip_emmc_phy* @phy_get_drvdata(%struct.phy* %4)
  store %struct.rockchip_emmc_phy* %5, %struct.rockchip_emmc_phy** %3, align 8
  %6 = load %struct.rockchip_emmc_phy*, %struct.rockchip_emmc_phy** %3, align 8
  %7 = getelementptr inbounds %struct.rockchip_emmc_phy, %struct.rockchip_emmc_phy* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.rockchip_emmc_phy*, %struct.rockchip_emmc_phy** %3, align 8
  %10 = getelementptr inbounds %struct.rockchip_emmc_phy, %struct.rockchip_emmc_phy* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @GRF_EMMCPHY_CON6, align 8
  %13 = add nsw i64 %11, %12
  %14 = load %struct.rockchip_emmc_phy*, %struct.rockchip_emmc_phy** %3, align 8
  %15 = getelementptr inbounds %struct.rockchip_emmc_phy, %struct.rockchip_emmc_phy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PHYCTRL_DR_MASK, align 4
  %18 = load i32, i32* @PHYCTRL_DR_SHIFT, align 4
  %19 = call i32 @HIWORD_UPDATE(i32 %16, i32 %17, i32 %18)
  %20 = call i32 @regmap_write(i32 %8, i64 %13, i32 %19)
  %21 = load %struct.rockchip_emmc_phy*, %struct.rockchip_emmc_phy** %3, align 8
  %22 = getelementptr inbounds %struct.rockchip_emmc_phy, %struct.rockchip_emmc_phy* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.rockchip_emmc_phy*, %struct.rockchip_emmc_phy** %3, align 8
  %25 = getelementptr inbounds %struct.rockchip_emmc_phy, %struct.rockchip_emmc_phy* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @GRF_EMMCPHY_CON0, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i32, i32* @PHYCTRL_OTAPDLYENA, align 4
  %30 = load i32, i32* @PHYCTRL_OTAPDLYENA_MASK, align 4
  %31 = load i32, i32* @PHYCTRL_OTAPDLYENA_SHIFT, align 4
  %32 = call i32 @HIWORD_UPDATE(i32 %29, i32 %30, i32 %31)
  %33 = call i32 @regmap_write(i32 %23, i64 %28, i32 %32)
  %34 = load %struct.rockchip_emmc_phy*, %struct.rockchip_emmc_phy** %3, align 8
  %35 = getelementptr inbounds %struct.rockchip_emmc_phy, %struct.rockchip_emmc_phy* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.rockchip_emmc_phy*, %struct.rockchip_emmc_phy** %3, align 8
  %38 = getelementptr inbounds %struct.rockchip_emmc_phy, %struct.rockchip_emmc_phy* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @GRF_EMMCPHY_CON0, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i32, i32* @PHYCTRL_OTAPDLYSEL_MASK, align 4
  %43 = load i32, i32* @PHYCTRL_OTAPDLYSEL_SHIFT, align 4
  %44 = call i32 @HIWORD_UPDATE(i32 4, i32 %42, i32 %43)
  %45 = call i32 @regmap_write(i32 %36, i64 %41, i32 %44)
  %46 = load %struct.phy*, %struct.phy** %2, align 8
  %47 = load i32, i32* @PHYCTRL_PDB_PWR_ON, align 4
  %48 = call i32 @rockchip_emmc_phy_power(%struct.phy* %46, i32 %47)
  ret i32 %48
}

declare dso_local %struct.rockchip_emmc_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @HIWORD_UPDATE(i32, i32, i32) #1

declare dso_local i32 @rockchip_emmc_phy_power(%struct.phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
