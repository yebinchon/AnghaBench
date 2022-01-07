; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos-pcie.c_exynos5440_pcie_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos-pcie.c_exynos5440_pcie_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.exynos_pcie_phy = type { i32, i32 }

@PCIE_PHY_DCC_FEEDBACK = common dso_local global i32 0, align 4
@PCIE_PHY_IMPEDANCE = common dso_local global i32 0, align 4
@PCIE_PHY_PLL_DIV_0 = common dso_local global i32 0, align 4
@PCIE_PHY_PLL_DIV_1 = common dso_local global i32 0, align 4
@PCIE_PHY_TRSV0_DRV_LVL = common dso_local global i32 0, align 4
@PCIE_PHY_TRSV0_EMP_LVL = common dso_local global i32 0, align 4
@PCIE_PHY_PLL_BIAS = common dso_local global i32 0, align 4
@PCIE_PHY_TRSV0_RXCDR = common dso_local global i32 0, align 4
@PCIE_PHY_TRSV1_RXCDR = common dso_local global i32 0, align 4
@PCIE_PHY_TRSV2_RXCDR = common dso_local global i32 0, align 4
@PCIE_PHY_TRSV3_RXCDR = common dso_local global i32 0, align 4
@PCIE_PHY_TRSV1_EMP_LVL = common dso_local global i32 0, align 4
@PCIE_PHY_TRSV2_EMP_LVL = common dso_local global i32 0, align 4
@PCIE_PHY_TRSV3_EMP_LVL = common dso_local global i32 0, align 4
@PCIE_PHY_TRSV0_LVCC = common dso_local global i32 0, align 4
@PCIE_PHY_TRSV1_LVCC = common dso_local global i32 0, align 4
@PCIE_PHY_TRSV2_LVCC = common dso_local global i32 0, align 4
@PCIE_PHY_TRSV3_LVCC = common dso_local global i32 0, align 4
@PCIE_PHY_COMMON_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @exynos5440_pcie_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos5440_pcie_phy_init(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.exynos_pcie_phy*, align 8
  store %struct.phy* %0, %struct.phy** %2, align 8
  %4 = load %struct.phy*, %struct.phy** %2, align 8
  %5 = call %struct.exynos_pcie_phy* @phy_get_drvdata(%struct.phy* %4)
  store %struct.exynos_pcie_phy* %5, %struct.exynos_pcie_phy** %3, align 8
  %6 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %7 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PCIE_PHY_DCC_FEEDBACK, align 4
  %10 = call i32 @exynos_pcie_phy_writel(i32 %8, i32 41, i32 %9)
  %11 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %12 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PCIE_PHY_IMPEDANCE, align 4
  %15 = call i32 @exynos_pcie_phy_writel(i32 %13, i32 213, i32 %14)
  %16 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %17 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PCIE_PHY_PLL_DIV_0, align 4
  %20 = call i32 @exynos_pcie_phy_writel(i32 %18, i32 20, i32 %19)
  %21 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %22 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PCIE_PHY_PLL_DIV_1, align 4
  %25 = call i32 @exynos_pcie_phy_writel(i32 %23, i32 18, i32 %24)
  %26 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %27 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PCIE_PHY_TRSV0_DRV_LVL, align 4
  %30 = call i32 @exynos_pcie_phy_writel(i32 %28, i32 127, i32 %29)
  %31 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %32 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PCIE_PHY_TRSV0_EMP_LVL, align 4
  %35 = call i32 @exynos_pcie_phy_writel(i32 %33, i32 0, i32 %34)
  %36 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %37 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PCIE_PHY_PLL_BIAS, align 4
  %40 = call i32 @exynos_pcie_phy_writel(i32 %38, i32 231, i32 %39)
  %41 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %42 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PCIE_PHY_TRSV0_RXCDR, align 4
  %45 = call i32 @exynos_pcie_phy_writel(i32 %43, i32 130, i32 %44)
  %46 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %47 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PCIE_PHY_TRSV1_RXCDR, align 4
  %50 = call i32 @exynos_pcie_phy_writel(i32 %48, i32 130, i32 %49)
  %51 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %52 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @PCIE_PHY_TRSV2_RXCDR, align 4
  %55 = call i32 @exynos_pcie_phy_writel(i32 %53, i32 130, i32 %54)
  %56 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %57 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PCIE_PHY_TRSV3_RXCDR, align 4
  %60 = call i32 @exynos_pcie_phy_writel(i32 %58, i32 130, i32 %59)
  %61 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %62 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @PCIE_PHY_TRSV0_EMP_LVL, align 4
  %65 = call i32 @exynos_pcie_phy_writel(i32 %63, i32 57, i32 %64)
  %66 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %67 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @PCIE_PHY_TRSV1_EMP_LVL, align 4
  %70 = call i32 @exynos_pcie_phy_writel(i32 %68, i32 57, i32 %69)
  %71 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %72 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PCIE_PHY_TRSV2_EMP_LVL, align 4
  %75 = call i32 @exynos_pcie_phy_writel(i32 %73, i32 57, i32 %74)
  %76 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %77 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @PCIE_PHY_TRSV3_EMP_LVL, align 4
  %80 = call i32 @exynos_pcie_phy_writel(i32 %78, i32 57, i32 %79)
  %81 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %82 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @PCIE_PHY_TRSV0_LVCC, align 4
  %85 = call i32 @exynos_pcie_phy_writel(i32 %83, i32 32, i32 %84)
  %86 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %87 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @PCIE_PHY_TRSV1_LVCC, align 4
  %90 = call i32 @exynos_pcie_phy_writel(i32 %88, i32 160, i32 %89)
  %91 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %92 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @PCIE_PHY_TRSV2_LVCC, align 4
  %95 = call i32 @exynos_pcie_phy_writel(i32 %93, i32 160, i32 %94)
  %96 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %97 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @PCIE_PHY_TRSV3_LVCC, align 4
  %100 = call i32 @exynos_pcie_phy_writel(i32 %98, i32 160, i32 %99)
  %101 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %102 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @PCIE_PHY_COMMON_RESET, align 4
  %105 = call i32 @exynos_pcie_phy_writel(i32 %103, i32 1, i32 %104)
  %106 = call i32 @udelay(i32 500)
  %107 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %3, align 8
  %108 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @PCIE_PHY_COMMON_RESET, align 4
  %111 = call i32 @exynos_pcie_phy_writel(i32 %109, i32 0, i32 %110)
  ret i32 0
}

declare dso_local %struct.exynos_pcie_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @exynos_pcie_phy_writel(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
