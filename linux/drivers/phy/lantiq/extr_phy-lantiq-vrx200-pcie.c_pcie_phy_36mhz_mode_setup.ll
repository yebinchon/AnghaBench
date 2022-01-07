; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/lantiq/extr_phy-lantiq-vrx200-pcie.c_pcie_phy_36mhz_mode_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/lantiq/extr_phy-lantiq-vrx200-pcie.c_pcie_phy_36mhz_mode_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.ltq_vrx200_pcie_phy_priv = type { i32 }

@PCIE_PHY_PLL_CTRL3 = common dso_local global i32 0, align 4
@PCIE_PHY_PLL_CTRL3_EXT_MMD_DIV_RATIO_EN = common dso_local global i32 0, align 4
@PCIE_PHY_PLL_CTRL3_EXT_MMD_DIV_RATIO_MASK = common dso_local global i32 0, align 4
@PCIE_PHY_PLL_CTRL2 = common dso_local global i32 0, align 4
@PCIE_PHY_PLL_CTRL2_PLL_SDM_EN = common dso_local global i32 0, align 4
@PCIE_PHY_PLL_CTRL2_CONST_SDM_EN = common dso_local global i32 0, align 4
@PCIE_PHY_PLL_A_CTRL3 = common dso_local global i32 0, align 4
@PCIE_PHY_PLL_A_CTRL3_MMD_MASK = common dso_local global i32 0, align 4
@PCIE_PHY_PLL_A_CTRL2 = common dso_local global i32 0, align 4
@PCIE_PHY_PLL_A_CTRL2_LF_MODE_EN = common dso_local global i32 0, align 4
@PCIE_PHY_PLL_CTRL1 = common dso_local global i32 0, align 4
@PCIE_PHY_PLL_CTRL2_CONST_SDM_MASK = common dso_local global i32 0, align 4
@PCIE_PHY_PLL_CTRL7 = common dso_local global i32 0, align 4
@PCIE_PHY_PLL_CTRL6 = common dso_local global i32 0, align 4
@PCIE_PHY_PLL_CTRL5 = common dso_local global i32 0, align 4
@PCIE_PHY_PLL_CTRL4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy*)* @pcie_phy_36mhz_mode_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcie_phy_36mhz_mode_setup(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.ltq_vrx200_pcie_phy_priv*, align 8
  store %struct.phy* %0, %struct.phy** %2, align 8
  %4 = load %struct.phy*, %struct.phy** %2, align 8
  %5 = call %struct.ltq_vrx200_pcie_phy_priv* @phy_get_drvdata(%struct.phy* %4)
  store %struct.ltq_vrx200_pcie_phy_priv* %5, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %6 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PCIE_PHY_PLL_CTRL3, align 4
  %10 = load i32, i32* @PCIE_PHY_PLL_CTRL3_EXT_MMD_DIV_RATIO_EN, align 4
  %11 = call i32 @regmap_update_bits(i32 %8, i32 %9, i32 %10, i32 0)
  %12 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %13 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PCIE_PHY_PLL_CTRL3, align 4
  %16 = load i32, i32* @PCIE_PHY_PLL_CTRL3_EXT_MMD_DIV_RATIO_MASK, align 4
  %17 = call i32 @regmap_update_bits(i32 %14, i32 %15, i32 %16, i32 0)
  %18 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %19 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PCIE_PHY_PLL_CTRL2, align 4
  %22 = load i32, i32* @PCIE_PHY_PLL_CTRL2_PLL_SDM_EN, align 4
  %23 = load i32, i32* @PCIE_PHY_PLL_CTRL2_PLL_SDM_EN, align 4
  %24 = call i32 @regmap_update_bits(i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %26 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PCIE_PHY_PLL_CTRL2, align 4
  %29 = load i32, i32* @PCIE_PHY_PLL_CTRL2_CONST_SDM_EN, align 4
  %30 = load i32, i32* @PCIE_PHY_PLL_CTRL2_CONST_SDM_EN, align 4
  %31 = call i32 @regmap_update_bits(i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %33 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PCIE_PHY_PLL_A_CTRL3, align 4
  %36 = load i32, i32* @PCIE_PHY_PLL_A_CTRL3_MMD_MASK, align 4
  %37 = load i32, i32* @PCIE_PHY_PLL_A_CTRL3_MMD_MASK, align 4
  %38 = call i32 @FIELD_PREP(i32 %37, i32 1)
  %39 = call i32 @regmap_update_bits(i32 %34, i32 %35, i32 %36, i32 %38)
  %40 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %41 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PCIE_PHY_PLL_A_CTRL2, align 4
  %44 = load i32, i32* @PCIE_PHY_PLL_A_CTRL2_LF_MODE_EN, align 4
  %45 = call i32 @regmap_update_bits(i32 %42, i32 %43, i32 %44, i32 0)
  %46 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %47 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PCIE_PHY_PLL_CTRL1, align 4
  %50 = call i32 @regmap_write(i32 %48, i32 %49, i32 14564)
  %51 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %52 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @PCIE_PHY_PLL_CTRL2, align 4
  %55 = load i32, i32* @PCIE_PHY_PLL_CTRL2_CONST_SDM_MASK, align 4
  %56 = load i32, i32* @PCIE_PHY_PLL_CTRL2_CONST_SDM_MASK, align 4
  %57 = call i32 @FIELD_PREP(i32 %56, i32 238)
  %58 = call i32 @regmap_update_bits(i32 %53, i32 %54, i32 %55, i32 %57)
  %59 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %60 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PCIE_PHY_PLL_CTRL7, align 4
  %63 = call i32 @regmap_write(i32 %61, i32 %62, i32 2)
  %64 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %65 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @PCIE_PHY_PLL_CTRL6, align 4
  %68 = call i32 @regmap_write(i32 %66, i32 %67, i32 14852)
  %69 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %70 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @PCIE_PHY_PLL_CTRL5, align 4
  %73 = call i32 @regmap_write(i32 %71, i32 %72, i32 64227)
  %74 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %75 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PCIE_PHY_PLL_CTRL4, align 4
  %78 = call i32 @regmap_write(i32 %76, i32 %77, i32 7026)
  ret void
}

declare dso_local %struct.ltq_vrx200_pcie_phy_priv* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
