; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mt7622.c_mtk_rtc_set_alarm_or_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mt7622.c_mtk_rtc_set_alarm_or_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_rtc = type { i32 }
%struct.rtc_time = type { i64, i64, i64, i64, i64, i64, i64 }

@MTK_RTC_TM_YR_OFFSET = common dso_local global i64 0, align 8
@MTK_YEA = common dso_local global i32 0, align 4
@MTK_MON = common dso_local global i32 0, align 4
@MTK_DOW = common dso_local global i32 0, align 4
@MTK_DOM = common dso_local global i32 0, align 4
@MTK_HOU = common dso_local global i32 0, align 4
@MTK_MIN = common dso_local global i32 0, align 4
@MTK_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_rtc*, %struct.rtc_time*, i32)* @mtk_rtc_set_alarm_or_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_rtc_set_alarm_or_time(%struct.mtk_rtc* %0, %struct.rtc_time* %1, i32 %2) #0 {
  %4 = alloca %struct.mtk_rtc*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.mtk_rtc* %0, %struct.mtk_rtc** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %9 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 6
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MTK_RTC_TM_YR_OFFSET, align 8
  %12 = sub nsw i64 %10, %11
  store i64 %12, i64* %7, align 8
  %13 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @MTK_YEA, align 4
  %16 = call i32 @MTK_RTC_TREG(i32 %14, i32 %15)
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @mtk_w32(%struct.mtk_rtc* %13, i32 %16, i64 %17)
  %19 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @MTK_MON, align 4
  %22 = call i32 @MTK_RTC_TREG(i32 %20, i32 %21)
  %23 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %24 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  %27 = call i32 @mtk_w32(%struct.mtk_rtc* %19, i32 %22, i64 %26)
  %28 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @MTK_DOW, align 4
  %31 = call i32 @MTK_RTC_TREG(i32 %29, i32 %30)
  %32 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %33 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @mtk_w32(%struct.mtk_rtc* %28, i32 %31, i64 %34)
  %36 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @MTK_DOM, align 4
  %39 = call i32 @MTK_RTC_TREG(i32 %37, i32 %38)
  %40 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %41 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @mtk_w32(%struct.mtk_rtc* %36, i32 %39, i64 %42)
  %44 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @MTK_HOU, align 4
  %47 = call i32 @MTK_RTC_TREG(i32 %45, i32 %46)
  %48 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %49 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @mtk_w32(%struct.mtk_rtc* %44, i32 %47, i64 %50)
  %52 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @MTK_MIN, align 4
  %55 = call i32 @MTK_RTC_TREG(i32 %53, i32 %54)
  %56 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @mtk_w32(%struct.mtk_rtc* %52, i32 %55, i64 %58)
  %60 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @MTK_SEC, align 4
  %63 = call i32 @MTK_RTC_TREG(i32 %61, i32 %62)
  %64 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %65 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @mtk_w32(%struct.mtk_rtc* %60, i32 %63, i64 %66)
  ret void
}

declare dso_local i32 @mtk_w32(%struct.mtk_rtc*, i32, i64) #1

declare dso_local i32 @MTK_RTC_TREG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
