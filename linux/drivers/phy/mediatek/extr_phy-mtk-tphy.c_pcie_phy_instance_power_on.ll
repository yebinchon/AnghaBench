; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/mediatek/extr_phy-mtk-tphy.c_pcie_phy_instance_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/mediatek/extr_phy-mtk-tphy.c_pcie_phy_instance_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_tphy = type { i32 }
%struct.mtk_phy_instance = type { %struct.u3phy_banks }
%struct.u3phy_banks = type { i64 }

@U3P_U3_CHIP_GPIO_CTLD = common dso_local global i64 0, align 8
@P3C_FORCE_IP_SW_RST = common dso_local global i32 0, align 4
@P3C_REG_IP_SW_RST = common dso_local global i32 0, align 4
@U3P_U3_CHIP_GPIO_CTLE = common dso_local global i64 0, align 8
@P3C_RG_SWRST_U3_PHYD_FORCE_EN = common dso_local global i32 0, align 4
@P3C_RG_SWRST_U3_PHYD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_tphy*, %struct.mtk_phy_instance*)* @pcie_phy_instance_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcie_phy_instance_power_on(%struct.mtk_tphy* %0, %struct.mtk_phy_instance* %1) #0 {
  %3 = alloca %struct.mtk_tphy*, align 8
  %4 = alloca %struct.mtk_phy_instance*, align 8
  %5 = alloca %struct.u3phy_banks*, align 8
  %6 = alloca i32, align 4
  store %struct.mtk_tphy* %0, %struct.mtk_tphy** %3, align 8
  store %struct.mtk_phy_instance* %1, %struct.mtk_phy_instance** %4, align 8
  %7 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %4, align 8
  %8 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %7, i32 0, i32 0
  store %struct.u3phy_banks* %8, %struct.u3phy_banks** %5, align 8
  %9 = load %struct.u3phy_banks*, %struct.u3phy_banks** %5, align 8
  %10 = getelementptr inbounds %struct.u3phy_banks, %struct.u3phy_banks* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @U3P_U3_CHIP_GPIO_CTLD, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @P3C_FORCE_IP_SW_RST, align 4
  %16 = load i32, i32* @P3C_REG_IP_SW_RST, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.u3phy_banks*, %struct.u3phy_banks** %5, align 8
  %23 = getelementptr inbounds %struct.u3phy_banks, %struct.u3phy_banks* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @U3P_U3_CHIP_GPIO_CTLD, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %21, i64 %26)
  %28 = load %struct.u3phy_banks*, %struct.u3phy_banks** %5, align 8
  %29 = getelementptr inbounds %struct.u3phy_banks, %struct.u3phy_banks* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @U3P_U3_CHIP_GPIO_CTLE, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @readl(i64 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @P3C_RG_SWRST_U3_PHYD_FORCE_EN, align 4
  %35 = load i32, i32* @P3C_RG_SWRST_U3_PHYD, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.u3phy_banks*, %struct.u3phy_banks** %5, align 8
  %42 = getelementptr inbounds %struct.u3phy_banks, %struct.u3phy_banks* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @U3P_U3_CHIP_GPIO_CTLE, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
