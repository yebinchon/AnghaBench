; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-ti-pipe3.c_ti_pipe3_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-ti-pipe3.c_ti_pipe3_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.ti_pipe3 = type { i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Invalid clock rate\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OMAP_CTRL_PIPE3_PHY_PWRCTL_CLK_FREQ_MASK = common dso_local global i32 0, align 4
@OMAP_CTRL_PIPE3_PHY_PWRCTL_CLK_FREQ_SHIFT = common dso_local global i64 0, align 8
@OMAP_CTRL_PIPE3_PHY_PWRCTL_CLK_CMD_MASK = common dso_local global i32 0, align 4
@PIPE3_MODE_SATA = common dso_local global i64 0, align 8
@PIPE3_MODE_USBSS = common dso_local global i64 0, align 8
@PIPE3_PHY_TX_POWERON = common dso_local global i32 0, align 4
@PIPE3_PHY_RX_POWERON = common dso_local global i32 0, align 4
@PIPE3_MODE_PCIE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @ti_pipe3_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_pipe3_power_on(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ti_pipe3*, align 8
  %9 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %10 = load %struct.phy*, %struct.phy** %3, align 8
  %11 = call %struct.ti_pipe3* @phy_get_drvdata(%struct.phy* %10)
  store %struct.ti_pipe3* %11, %struct.ti_pipe3** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.ti_pipe3*, %struct.ti_pipe3** %8, align 8
  %13 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.ti_pipe3*, %struct.ti_pipe3** %8, align 8
  %18 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @omap_control_phy_power(i32 %19, i32 1)
  store i32 0, i32* %2, align 4
  br label %105

21:                                               ; preds = %1
  %22 = load %struct.ti_pipe3*, %struct.ti_pipe3** %8, align 8
  %23 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @clk_get_rate(i32 %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = load %struct.ti_pipe3*, %struct.ti_pipe3** %8, align 8
  %30 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %105

35:                                               ; preds = %21
  %36 = load i64, i64* %7, align 8
  %37 = udiv i64 %36, 1000000
  store i64 %37, i64* %7, align 8
  %38 = load i32, i32* @OMAP_CTRL_PIPE3_PHY_PWRCTL_CLK_FREQ_MASK, align 4
  store i32 %38, i32* %5, align 4
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @OMAP_CTRL_PIPE3_PHY_PWRCTL_CLK_FREQ_SHIFT, align 8
  %41 = shl i64 %39, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %4, align 4
  %43 = load %struct.ti_pipe3*, %struct.ti_pipe3** %8, align 8
  %44 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ti_pipe3*, %struct.ti_pipe3** %8, align 8
  %47 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @regmap_update_bits(i32 %45, i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* @OMAP_CTRL_PIPE3_PHY_PWRCTL_CLK_CMD_MASK, align 4
  store i32 %52, i32* %5, align 4
  %53 = load %struct.ti_pipe3*, %struct.ti_pipe3** %8, align 8
  %54 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PIPE3_MODE_SATA, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %35
  %59 = load %struct.ti_pipe3*, %struct.ti_pipe3** %8, align 8
  %60 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PIPE3_MODE_USBSS, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58, %35
  %65 = load i32, i32* @PIPE3_PHY_TX_POWERON, align 4
  store i32 %65, i32* %4, align 4
  store i32 1, i32* %9, align 4
  br label %70

66:                                               ; preds = %58
  %67 = load i32, i32* @PIPE3_PHY_TX_POWERON, align 4
  %68 = load i32, i32* @PIPE3_PHY_RX_POWERON, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %66, %64
  %71 = load %struct.ti_pipe3*, %struct.ti_pipe3** %8, align 8
  %72 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ti_pipe3*, %struct.ti_pipe3** %8, align 8
  %75 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @regmap_update_bits(i32 %73, i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %70
  %83 = load i32, i32* @PIPE3_PHY_TX_POWERON, align 4
  %84 = load i32, i32* @PIPE3_PHY_RX_POWERON, align 4
  %85 = or i32 %83, %84
  store i32 %85, i32* %4, align 4
  %86 = load %struct.ti_pipe3*, %struct.ti_pipe3** %8, align 8
  %87 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ti_pipe3*, %struct.ti_pipe3** %8, align 8
  %90 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @regmap_update_bits(i32 %88, i32 %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %82, %70
  %96 = load %struct.ti_pipe3*, %struct.ti_pipe3** %8, align 8
  %97 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @PIPE3_MODE_PCIE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load %struct.ti_pipe3*, %struct.ti_pipe3** %8, align 8
  %103 = call i32 @ti_pipe3_calibrate(%struct.ti_pipe3* %102)
  br label %104

104:                                              ; preds = %101, %95
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %104, %28, %16
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.ti_pipe3* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @omap_control_phy_power(i32, i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ti_pipe3_calibrate(%struct.ti_pipe3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
