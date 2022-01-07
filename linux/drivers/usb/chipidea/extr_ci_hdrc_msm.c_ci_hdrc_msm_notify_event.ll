; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci_hdrc_msm.c_ci_hdrc_msm_notify_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci_hdrc_msm.c_ci_hdrc_msm_notify_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.ci_hdrc_msm = type { i32, i64, i32 }

@.str = private unnamed_addr constant [41 x i8] c"CI_HDRC_CONTROLLER_RESET_EVENT received\0A\00", align 1
@HS_PHY_SEC_CTRL = common dso_local global i64 0, align 8
@HS_PHY_DIG_CLAMP_N = common dso_local global i32 0, align 4
@HS_PHY_AHB_MODE = common dso_local global i32 0, align 4
@HS_PHY_GENCONFIG = common dso_local global i32 0, align 4
@HS_PHY_TXFIFO_IDLE_FORCE_DIS = common dso_local global i32 0, align 4
@HS_PHY_GENCONFIG_2 = common dso_local global i32 0, align 4
@HS_PHY_ULPI_TX_PKT_EN_CLR_FIX = common dso_local global i32 0, align 4
@HS_PHY_SESS_VLD_CTRL_EN = common dso_local global i32 0, align 4
@OP_USBCMD = common dso_local global i32 0, align 4
@HSPHY_SESS_VLD_CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"CI_HDRC_CONTROLLER_STOPPED_EVENT received\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"unknown ci_hdrc event\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ci_hdrc*, i32)* @ci_hdrc_msm_notify_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_hdrc_msm_notify_event(%struct.ci_hdrc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ci_hdrc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.ci_hdrc_msm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ci_hdrc*, %struct.ci_hdrc** %4, align 8
  %11 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.ci_hdrc_msm* @dev_get_drvdata(%struct.device* %15)
  store %struct.ci_hdrc_msm* %16, %struct.ci_hdrc_msm** %7, align 8
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %115 [
    i32 129, label %18
    i32 128, label %104
  ]

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call i32 @dev_dbg(%struct.device* %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.ci_hdrc*, %struct.ci_hdrc** %4, align 8
  %22 = call i32 @hw_phymode_configure(%struct.ci_hdrc* %21)
  %23 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %7, align 8
  %24 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %18
  %28 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %7, align 8
  %29 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @HS_PHY_SEC_CTRL, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @readl_relaxed(i64 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @HS_PHY_DIG_CLAMP_N, align 4
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %7, align 8
  %39 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @HS_PHY_SEC_CTRL, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel_relaxed(i32 %37, i64 %42)
  br label %44

44:                                               ; preds = %27, %18
  %45 = load %struct.ci_hdrc*, %struct.ci_hdrc** %4, align 8
  %46 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @phy_init(i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %119

53:                                               ; preds = %44
  %54 = load %struct.ci_hdrc*, %struct.ci_hdrc** %4, align 8
  %55 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @phy_power_on(i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load %struct.ci_hdrc*, %struct.ci_hdrc** %4, align 8
  %62 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @phy_exit(i32 %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %119

66:                                               ; preds = %53
  %67 = load %struct.ci_hdrc*, %struct.ci_hdrc** %4, align 8
  %68 = load i32, i32* @HS_PHY_AHB_MODE, align 4
  %69 = call i32 @hw_write_id_reg(%struct.ci_hdrc* %67, i32 %68, i32 -1, i32 8)
  %70 = load %struct.ci_hdrc*, %struct.ci_hdrc** %4, align 8
  %71 = load i32, i32* @HS_PHY_GENCONFIG, align 4
  %72 = load i32, i32* @HS_PHY_TXFIFO_IDLE_FORCE_DIS, align 4
  %73 = call i32 @hw_write_id_reg(%struct.ci_hdrc* %70, i32 %71, i32 %72, i32 0)
  %74 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %7, align 8
  %75 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %66
  %79 = load %struct.ci_hdrc*, %struct.ci_hdrc** %4, align 8
  %80 = load i32, i32* @HS_PHY_GENCONFIG_2, align 4
  %81 = load i32, i32* @HS_PHY_ULPI_TX_PKT_EN_CLR_FIX, align 4
  %82 = call i32 @hw_write_id_reg(%struct.ci_hdrc* %79, i32 %80, i32 %81, i32 0)
  br label %83

83:                                               ; preds = %78, %66
  %84 = load %struct.ci_hdrc*, %struct.ci_hdrc** %4, align 8
  %85 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %84, i32 0, i32 1
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @IS_ERR(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %83
  %93 = load %struct.ci_hdrc*, %struct.ci_hdrc** %4, align 8
  %94 = load i32, i32* @HS_PHY_GENCONFIG_2, align 4
  %95 = load i32, i32* @HS_PHY_SESS_VLD_CTRL_EN, align 4
  %96 = load i32, i32* @HS_PHY_SESS_VLD_CTRL_EN, align 4
  %97 = call i32 @hw_write_id_reg(%struct.ci_hdrc* %93, i32 %94, i32 %95, i32 %96)
  %98 = load %struct.ci_hdrc*, %struct.ci_hdrc** %4, align 8
  %99 = load i32, i32* @OP_USBCMD, align 4
  %100 = load i32, i32* @HSPHY_SESS_VLD_CTRL, align 4
  %101 = load i32, i32* @HSPHY_SESS_VLD_CTRL, align 4
  %102 = call i32 @hw_write(%struct.ci_hdrc* %98, i32 %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %92, %83
  br label %118

104:                                              ; preds = %2
  %105 = load %struct.device*, %struct.device** %6, align 8
  %106 = call i32 @dev_dbg(%struct.device* %105, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %107 = load %struct.ci_hdrc*, %struct.ci_hdrc** %4, align 8
  %108 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @phy_power_off(i32 %109)
  %111 = load %struct.ci_hdrc*, %struct.ci_hdrc** %4, align 8
  %112 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @phy_exit(i32 %113)
  br label %118

115:                                              ; preds = %2
  %116 = load %struct.device*, %struct.device** %6, align 8
  %117 = call i32 @dev_dbg(%struct.device* %116, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %118

118:                                              ; preds = %115, %104, %103
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %118, %60, %51
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.ci_hdrc_msm* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @hw_phymode_configure(%struct.ci_hdrc*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @phy_init(i32) #1

declare dso_local i32 @phy_power_on(i32) #1

declare dso_local i32 @phy_exit(i32) #1

declare dso_local i32 @hw_write_id_reg(%struct.ci_hdrc*, i32, i32, i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @hw_write(%struct.ci_hdrc*, i32, i32, i32) #1

declare dso_local i32 @phy_power_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
