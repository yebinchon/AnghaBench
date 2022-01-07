; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos-pcie.c_exynos5440_pcie_phy_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos-pcie.c_exynos5440_pcie_phy_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.exynos_pcie_phy = type { i64 }

@PCIE_PHY_PLL_LOCKED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"PLL Locked: 0x%x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @exynos5440_pcie_phy_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos5440_pcie_phy_power_off(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.exynos_pcie_phy*, align 8
  %5 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %6 = load %struct.phy*, %struct.phy** %3, align 8
  %7 = call %struct.exynos_pcie_phy* @phy_get_drvdata(%struct.phy* %6)
  store %struct.exynos_pcie_phy* %7, %struct.exynos_pcie_phy** %4, align 8
  %8 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %4, align 8
  %9 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PCIE_PHY_PLL_LOCKED, align 8
  %12 = add nsw i64 %10, %11
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i64 @readl_poll_timeout(i64 %12, i32 %13, i32 %16, i32 1, i32 500)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.phy*, %struct.phy** %3, align 8
  %21 = getelementptr inbounds %struct.phy, %struct.phy* %20, i32 0, i32 0
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @ETIMEDOUT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %97

26:                                               ; preds = %1
  %27 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %4, align 8
  %28 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @PCIE_PHY_COMMON_POWER, align 4
  %31 = call i32 @exynos_pcie_phy_readl(i64 %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @PCIE_PHY_COMMON_PD_CMN, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %4, align 8
  %36 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @PCIE_PHY_COMMON_POWER, align 4
  %40 = call i32 @exynos_pcie_phy_writel(i64 %37, i32 %38, i32 %39)
  %41 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %4, align 8
  %42 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @PCIE_PHY_TRSV0_POWER, align 4
  %45 = call i32 @exynos_pcie_phy_readl(i64 %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @PCIE_PHY_TRSV0_PD_TSV, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %4, align 8
  %50 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @PCIE_PHY_TRSV0_POWER, align 4
  %54 = call i32 @exynos_pcie_phy_writel(i64 %51, i32 %52, i32 %53)
  %55 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %4, align 8
  %56 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @PCIE_PHY_TRSV1_POWER, align 4
  %59 = call i32 @exynos_pcie_phy_readl(i64 %57, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* @PCIE_PHY_TRSV1_PD_TSV, align 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %4, align 8
  %64 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @PCIE_PHY_TRSV1_POWER, align 4
  %68 = call i32 @exynos_pcie_phy_writel(i64 %65, i32 %66, i32 %67)
  %69 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %4, align 8
  %70 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @PCIE_PHY_TRSV2_POWER, align 4
  %73 = call i32 @exynos_pcie_phy_readl(i64 %71, i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* @PCIE_PHY_TRSV2_PD_TSV, align 4
  %75 = load i32, i32* %5, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %5, align 4
  %77 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %4, align 8
  %78 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @PCIE_PHY_TRSV2_POWER, align 4
  %82 = call i32 @exynos_pcie_phy_writel(i64 %79, i32 %80, i32 %81)
  %83 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %4, align 8
  %84 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @PCIE_PHY_TRSV3_POWER, align 4
  %87 = call i32 @exynos_pcie_phy_readl(i64 %85, i32 %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* @PCIE_PHY_TRSV3_PD_TSV, align 4
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %5, align 4
  %91 = load %struct.exynos_pcie_phy*, %struct.exynos_pcie_phy** %4, align 8
  %92 = getelementptr inbounds %struct.exynos_pcie_phy, %struct.exynos_pcie_phy* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @PCIE_PHY_TRSV3_POWER, align 4
  %96 = call i32 @exynos_pcie_phy_writel(i64 %93, i32 %94, i32 %95)
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %26, %19
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.exynos_pcie_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i64 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @exynos_pcie_phy_readl(i64, i32) #1

declare dso_local i32 @exynos_pcie_phy_writel(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
