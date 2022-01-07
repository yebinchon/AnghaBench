; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/lantiq/extr_phy-lantiq-vrx200-pcie.c_ltq_vrx200_pcie_phy_common_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/lantiq/extr_phy-lantiq-vrx200-pcie.c_ltq_vrx200_pcie_phy_common_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.ltq_vrx200_pcie_phy_priv = type { i32 }

@PCIE_PHY_PLL_A_CTRL1 = common dso_local global i32 0, align 4
@PCIE_PHY_PLL_A_CTRL2 = common dso_local global i32 0, align 4
@PCIE_PHY_PLL_A_CTRL3 = common dso_local global i32 0, align 4
@PCIE_PHY_RX1_EI = common dso_local global i32 0, align 4
@PCIE_PHY_RX1_A_CTRL = common dso_local global i32 0, align 4
@PCIE_PHY_TX1_CTRL1 = common dso_local global i32 0, align 4
@PCIE_PHY_TX1_CTRL1_FORCE_EN = common dso_local global i32 0, align 4
@PCIE_PHY_TX1_A_CTRL2 = common dso_local global i32 0, align 4
@PCIE_PHY_TX1_CTRL3 = common dso_local global i32 0, align 4
@PCIE_PHY_TX1_A_CTRL1 = common dso_local global i32 0, align 4
@PCIE_PHY_TX2_A_CTRL2 = common dso_local global i32 0, align 4
@PCIE_PHY_TX1_CTRL2 = common dso_local global i32 0, align 4
@PCIE_PHY_TX2_CTRL2 = common dso_local global i32 0, align 4
@PCIE_PHY_RX1_CDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy*)* @ltq_vrx200_pcie_phy_common_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ltq_vrx200_pcie_phy_common_setup(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.ltq_vrx200_pcie_phy_priv*, align 8
  store %struct.phy* %0, %struct.phy** %2, align 8
  %4 = load %struct.phy*, %struct.phy** %2, align 8
  %5 = call %struct.ltq_vrx200_pcie_phy_priv* @phy_get_drvdata(%struct.phy* %4)
  store %struct.ltq_vrx200_pcie_phy_priv* %5, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %6 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PCIE_PHY_PLL_A_CTRL1, align 4
  %10 = call i32 @regmap_write(i32 %8, i32 %9, i32 4622)
  %11 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %12 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PCIE_PHY_PLL_A_CTRL2, align 4
  %15 = call i32 @regmap_write(i32 %13, i32 %14, i32 14807)
  %16 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %17 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PCIE_PHY_PLL_A_CTRL3, align 4
  %20 = call i32 @regmap_write(i32 %18, i32 %19, i32 2304)
  %21 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %22 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PCIE_PHY_RX1_EI, align 4
  %25 = call i32 @regmap_write(i32 %23, i32 %24, i32 4)
  %26 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %27 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PCIE_PHY_RX1_A_CTRL, align 4
  %30 = call i32 @regmap_write(i32 %28, i32 %29, i32 26627)
  %31 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %32 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PCIE_PHY_TX1_CTRL1, align 4
  %35 = load i32, i32* @PCIE_PHY_TX1_CTRL1_FORCE_EN, align 4
  %36 = load i32, i32* @PCIE_PHY_TX1_CTRL1_FORCE_EN, align 4
  %37 = call i32 @regmap_update_bits(i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %39 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PCIE_PHY_TX1_A_CTRL2, align 4
  %42 = call i32 @regmap_write(i32 %40, i32 %41, i32 1798)
  %43 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %44 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PCIE_PHY_TX1_CTRL3, align 4
  %47 = call i32 @regmap_write(i32 %45, i32 %46, i32 8191)
  %48 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %49 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PCIE_PHY_TX1_A_CTRL1, align 4
  %52 = call i32 @regmap_write(i32 %50, i32 %51, i32 2064)
  %53 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %54 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PCIE_PHY_TX2_A_CTRL2, align 4
  %57 = call i32 @regmap_update_bits(i32 %55, i32 %56, i32 32512, i32 18176)
  %58 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %59 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PCIE_PHY_TX1_CTRL2, align 4
  %62 = call i32 @regmap_write(i32 %60, i32 %61, i32 11776)
  %63 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %64 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @PCIE_PHY_TX2_CTRL2, align 4
  %67 = call i32 @regmap_write(i32 %65, i32 %66, i32 12438)
  %68 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %69 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @PCIE_PHY_TX2_A_CTRL2, align 4
  %72 = call i32 @regmap_write(i32 %70, i32 %71, i32 18183)
  %73 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %74 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @PCIE_PHY_RX1_CDR, align 4
  %77 = call i32 @regmap_write(i32 %75, i32 %76, i32 565)
  ret void
}

declare dso_local %struct.ltq_vrx200_pcie_phy_priv* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
