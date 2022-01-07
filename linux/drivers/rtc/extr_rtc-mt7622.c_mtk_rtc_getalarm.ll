; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mt7622.c_mtk_rtc_getalarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mt7622.c_mtk_rtc_getalarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, %struct.rtc_time }
%struct.rtc_time = type { i32 }
%struct.mtk_rtc = type { i32 }

@MTK_AL = common dso_local global i32 0, align 4
@MTK_RTC_AL_CTL = common dso_local global i32 0, align 4
@RTC_AL_EN = common dso_local global i32 0, align 4
@MTK_RTC_INT = common dso_local global i32 0, align 4
@RTC_INT_AL_STA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @mtk_rtc_getalarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_rtc_getalarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.mtk_rtc*, align 8
  %6 = alloca %struct.rtc_time*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.mtk_rtc* @dev_get_drvdata(%struct.device* %7)
  store %struct.mtk_rtc* %8, %struct.mtk_rtc** %5, align 8
  %9 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %10 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %9, i32 0, i32 2
  store %struct.rtc_time* %10, %struct.rtc_time** %6, align 8
  %11 = load %struct.mtk_rtc*, %struct.mtk_rtc** %5, align 8
  %12 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %13 = load i32, i32* @MTK_AL, align 4
  %14 = call i32 @mtk_rtc_get_alarm_or_time(%struct.mtk_rtc* %11, %struct.rtc_time* %12, i32 %13)
  %15 = load %struct.mtk_rtc*, %struct.mtk_rtc** %5, align 8
  %16 = load i32, i32* @MTK_RTC_AL_CTL, align 4
  %17 = call i32 @mtk_r32(%struct.mtk_rtc* %15, i32 %16)
  %18 = load i32, i32* @RTC_AL_EN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %25 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mtk_rtc*, %struct.mtk_rtc** %5, align 8
  %27 = load i32, i32* @MTK_RTC_INT, align 4
  %28 = call i32 @mtk_r32(%struct.mtk_rtc* %26, i32 %27)
  %29 = load i32, i32* @RTC_INT_AL_STA, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %36 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  ret i32 0
}

declare dso_local %struct.mtk_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mtk_rtc_get_alarm_or_time(%struct.mtk_rtc*, %struct.rtc_time*, i32) #1

declare dso_local i32 @mtk_r32(%struct.mtk_rtc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
