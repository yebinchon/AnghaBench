; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mt7622.c_mtk_rtc_settime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mt7622.c_mtk_rtc_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.mtk_rtc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MTK_RTC_CTL = common dso_local global i32 0, align 4
@RTC_RC_STOP = common dso_local global i32 0, align 4
@MTK_TC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @mtk_rtc_settime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_rtc_settime(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.mtk_rtc*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.mtk_rtc* @dev_get_drvdata(%struct.device* %7)
  store %struct.mtk_rtc* %8, %struct.mtk_rtc** %6, align 8
  %9 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %10 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @MTK_RTC_TM_YR_VALID(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %30

17:                                               ; preds = %2
  %18 = load %struct.mtk_rtc*, %struct.mtk_rtc** %6, align 8
  %19 = load i32, i32* @MTK_RTC_CTL, align 4
  %20 = load i32, i32* @RTC_RC_STOP, align 4
  %21 = call i32 @mtk_set(%struct.mtk_rtc* %18, i32 %19, i32 %20)
  %22 = load %struct.mtk_rtc*, %struct.mtk_rtc** %6, align 8
  %23 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %24 = load i32, i32* @MTK_TC, align 4
  %25 = call i32 @mtk_rtc_set_alarm_or_time(%struct.mtk_rtc* %22, %struct.rtc_time* %23, i32 %24)
  %26 = load %struct.mtk_rtc*, %struct.mtk_rtc** %6, align 8
  %27 = load i32, i32* @MTK_RTC_CTL, align 4
  %28 = load i32, i32* @RTC_RC_STOP, align 4
  %29 = call i32 @mtk_clr(%struct.mtk_rtc* %26, i32 %27, i32 %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %17, %14
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.mtk_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @MTK_RTC_TM_YR_VALID(i32) #1

declare dso_local i32 @mtk_set(%struct.mtk_rtc*, i32, i32) #1

declare dso_local i32 @mtk_rtc_set_alarm_or_time(%struct.mtk_rtc*, %struct.rtc_time*, i32) #1

declare dso_local i32 @mtk_clr(%struct.mtk_rtc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
