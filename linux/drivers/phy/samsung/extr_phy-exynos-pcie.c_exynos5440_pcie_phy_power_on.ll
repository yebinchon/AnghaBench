; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos-pcie.c_exynos5440_pcie_phy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos-pcie.c_exynos5440_pcie_phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.exynos_pcie_phy = type { i32, i32 }

@PCIE_PHY_COMMON_RESET = common dso_local global i32 0, align 4
@PCIE_PHY_CMN_REG = common dso_local global i32 0, align 4
@PCIE_PHY_TRSVREG_RESET = common dso_local global i32 0, align 4
@PCIE_PHY_TRSV_RESET = common dso_local global i32 0, align 4
@PCIE_PHY_COMMON_POWER = common dso_local global i32 0, align 4
@PCIE_PHY_COMMON_PD_CMN = common dso_local global i32 0, align 4
@PCIE_PHY_TRSV0_POWER = common dso_local global i32 0, align 4
@PCIE_PHY_TRSV0_PD_TSV = common dso_local global i32 0, align 4
@PCIE_PHY_TRSV1_POWER = common dso_local global i32 0, align 4
@PCIE_PHY_TRSV1_PD_TSV = common dso_local global i32 0, align 4
@PCIE_PHY_TRSV2_POWER = common dso_local global i32 0, align 4
@PCIE_PHY_TRSV2_PD_TSV = common dso_local global i32 0, align 4
@PCIE_PHY_TRSV3_POWER = common dso_local global i32 0, align 4
@PCIE_PHY_TRSV3_PD_TSV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @exynos5440_pcie_phy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos5440_pcie_phy_power_on(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.exynos_pcie_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %2, align 8
  %5 = load %struct.phy*, %struct.phy** %2, align 8
  %6 = call %struct.exynos_pcie_phy* @phy_get_drvdata(%struct.phy* %5)
  store %struct.exynos_pcie_phy* %6, %struct.exynos_pcie_phy** %3, align 8
  %7 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %8 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PCIE_PHY_COMMON_RESET, align 4
  %11 = call i32 @exynos_pcie_phy_writel(i32 %9, i32 0, i32 %10)
  %12 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %13 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PCIE_PHY_CMN_REG, align 4
  %16 = call i32 @exynos_pcie_phy_writel(i32 %14, i32 0, i32 %15)
  %17 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %18 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PCIE_PHY_TRSVREG_RESET, align 4
  %21 = call i32 @exynos_pcie_phy_writel(i32 %19, i32 0, i32 %20)
  %22 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %23 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PCIE_PHY_TRSV_RESET, align 4
  %26 = call i32 @exynos_pcie_phy_writel(i32 %24, i32 0, i32 %25)
  %27 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %28 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PCIE_PHY_COMMON_POWER, align 4
  %31 = call i32 @exynos_pcie_phy_readl(i32 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @PCIE_PHY_COMMON_PD_CMN, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %37 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @PCIE_PHY_COMMON_POWER, align 4
  %41 = call i32 @exynos_pcie_phy_writel(i32 %38, i32 %39, i32 %40)
  %42 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %43 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @PCIE_PHY_TRSV0_POWER, align 4
  %46 = call i32 @exynos_pcie_phy_readl(i32 %44, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @PCIE_PHY_TRSV0_PD_TSV, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %52 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @PCIE_PHY_TRSV0_POWER, align 4
  %56 = call i32 @exynos_pcie_phy_writel(i32 %53, i32 %54, i32 %55)
  %57 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %58 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PCIE_PHY_TRSV1_POWER, align 4
  %61 = call i32 @exynos_pcie_phy_readl(i32 %59, i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* @PCIE_PHY_TRSV1_PD_TSV, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %4, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %4, align 4
  %66 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %67 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @PCIE_PHY_TRSV1_POWER, align 4
  %71 = call i32 @exynos_pcie_phy_writel(i32 %68, i32 %69, i32 %70)
  %72 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %73 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @PCIE_PHY_TRSV2_POWER, align 4
  %76 = call i32 @exynos_pcie_phy_readl(i32 %74, i32 %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* @PCIE_PHY_TRSV2_PD_TSV, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %4, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %4, align 4
  %81 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %82 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @PCIE_PHY_TRSV2_POWER, align 4
  %86 = call i32 @exynos_pcie_phy_writel(i32 %83, i32 %84, i32 %85)
  %87 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %88 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @PCIE_PHY_TRSV3_POWER, align 4
  %91 = call i32 @exynos_pcie_phy_readl(i32 %89, i32 %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* @PCIE_PHY_TRSV3_PD_TSV, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %4, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %4, align 4
  %96 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %97 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @PCIE_PHY_TRSV3_POWER, align 4
  %101 = call i32 @exynos_pcie_phy_writel(i32 %98, i32 %99, i32 %100)
  ret i32 0
}

declare dso_local %struct.exynos_pcie_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @exynos_pcie_phy_writel(i32, i32, i32) #1

declare dso_local i32 @exynos_pcie_phy_readl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
