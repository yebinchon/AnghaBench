; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/freescale/extr_phy-fsl-imx8-mipi-dphy.c_mixel_dphy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/freescale/extr_phy-fsl-imx8-mipi-dphy.c_mixel_dphy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.mixel_dphy_priv = type { i32, i32 }

@PWR_ON = common dso_local global i32 0, align 4
@DPHY_PD_PLL = common dso_local global i32 0, align 4
@DPHY_LOCK = common dso_local global i32 0, align 4
@PLL_LOCK_SLEEP = common dso_local global i32 0, align 4
@PLL_LOCK_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not get DPHY lock (%d)!\0A\00", align 1
@DPHY_PD_DPHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @mixel_dphy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixel_dphy_power_on(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.mixel_dphy_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %7 = load %struct.phy*, %struct.phy** %3, align 8
  %8 = call %struct.mixel_dphy_priv* @phy_get_drvdata(%struct.phy* %7)
  store %struct.mixel_dphy_priv* %8, %struct.mixel_dphy_priv** %4, align 8
  %9 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %4, align 8
  %10 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @clk_prepare_enable(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %49

17:                                               ; preds = %1
  %18 = load %struct.phy*, %struct.phy** %3, align 8
  %19 = load i32, i32* @PWR_ON, align 4
  %20 = load i32, i32* @DPHY_PD_PLL, align 4
  %21 = call i32 @phy_write(%struct.phy* %18, i32 %19, i32 %20)
  %22 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %4, align 8
  %23 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DPHY_LOCK, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @PLL_LOCK_SLEEP, align 4
  %29 = load i32, i32* @PLL_LOCK_TIMEOUT, align 4
  %30 = call i32 @regmap_read_poll_timeout(i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %17
  %34 = load %struct.phy*, %struct.phy** %3, align 8
  %35 = getelementptr inbounds %struct.phy, %struct.phy* %34, i32 0, i32 0
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %43

38:                                               ; preds = %17
  %39 = load %struct.phy*, %struct.phy** %3, align 8
  %40 = load i32, i32* @PWR_ON, align 4
  %41 = load i32, i32* @DPHY_PD_DPHY, align 4
  %42 = call i32 @phy_write(%struct.phy* %39, i32 %40, i32 %41)
  store i32 0, i32* %2, align 4
  br label %49

43:                                               ; preds = %33
  %44 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %4, align 8
  %45 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @clk_disable_unprepare(i32 %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %43, %38, %15
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.mixel_dphy_priv* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @phy_write(%struct.phy*, i32, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
