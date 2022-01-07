; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5-usbdrd.c_exynos5420_usbdrd_phy_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5-usbdrd.c_exynos5420_usbdrd_phy_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos5_usbdrd_phy = type { i32, i32 }

@LOSLEVEL_OVRD_IN_LOS_BIAS_5420 = common dso_local global i32 0, align 4
@LOSLEVEL_OVRD_IN_EN = common dso_local global i32 0, align 4
@LOSLEVEL_OVRD_IN_LOS_LEVEL_DEFAULT = common dso_local global i32 0, align 4
@EXYNOS5_DRD_PHYSS_LOSLEVEL_OVRD_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Failed setting Loss-of-Signal level for SuperSpeed\0A\00", align 1
@TX_VBOOSTLEVEL_OVRD_IN_VBOOST_5420 = common dso_local global i32 0, align 4
@EXYNOS5_DRD_PHYSS_TX_VBOOSTLEVEL_OVRD_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Failed setting Tx-Vboost-Level for SuperSpeed\0A\00", align 1
@LANE0_TX_DEBUG_RXDET_MEAS_TIME_48M_50M_52M = common dso_local global i32 0, align 4
@LANE0_TX_DEBUG_RXDET_MEAS_TIME_19M2_20M = common dso_local global i32 0, align 4
@LANE0_TX_DEBUG_RXDET_MEAS_TIME_24M = common dso_local global i32 0, align 4
@EXYNOS5_DRD_PHYSS_LANE0_TX_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Fail to set RxDet measurement time for SuperSpeed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos5_usbdrd_phy*)* @exynos5420_usbdrd_phy_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos5420_usbdrd_phy_calibrate(%struct.exynos5_usbdrd_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.exynos5_usbdrd_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.exynos5_usbdrd_phy* %0, %struct.exynos5_usbdrd_phy** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @LOSLEVEL_OVRD_IN_LOS_BIAS_5420, align 4
  %7 = load i32, i32* @LOSLEVEL_OVRD_IN_EN, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @LOSLEVEL_OVRD_IN_LOS_LEVEL_DEFAULT, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %12 = load i32, i32* @EXYNOS5_DRD_PHYSS_LOSLEVEL_OVRD_IN, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @crport_ctrl_write(%struct.exynos5_usbdrd_phy* %11, i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %19 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %62

23:                                               ; preds = %1
  %24 = load i32, i32* @TX_VBOOSTLEVEL_OVRD_IN_VBOOST_5420, align 4
  store i32 %24, i32* %4, align 4
  %25 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %26 = load i32, i32* @EXYNOS5_DRD_PHYSS_TX_VBOOSTLEVEL_OVRD_IN, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @crport_ctrl_write(%struct.exynos5_usbdrd_phy* %25, i32 %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %33 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %62

37:                                               ; preds = %23
  %38 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %39 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %46 [
    i32 128, label %41
    i32 130, label %43
    i32 131, label %43
    i32 129, label %45
  ]

41:                                               ; preds = %37
  %42 = load i32, i32* @LANE0_TX_DEBUG_RXDET_MEAS_TIME_48M_50M_52M, align 4
  store i32 %42, i32* %4, align 4
  br label %48

43:                                               ; preds = %37, %37
  %44 = load i32, i32* @LANE0_TX_DEBUG_RXDET_MEAS_TIME_19M2_20M, align 4
  store i32 %44, i32* %4, align 4
  br label %48

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %37, %45
  %47 = load i32, i32* @LANE0_TX_DEBUG_RXDET_MEAS_TIME_24M, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %43, %41
  %49 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %50 = load i32, i32* @EXYNOS5_DRD_PHYSS_LANE0_TX_DEBUG, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @crport_ctrl_write(%struct.exynos5_usbdrd_phy* %49, i32 %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %3, align 8
  %57 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %55, %48
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %31, %17
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @crport_ctrl_write(%struct.exynos5_usbdrd_phy*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
