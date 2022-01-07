; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mt7622.c_mtk_rtc_get_alarm_or_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mt7622.c_mtk_rtc_get_alarm_or_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_rtc = type { i32 }
%struct.rtc_time = type { i64, i64, i64, i64, i64, i64, i64 }

@MTK_SEC = common dso_local global i32 0, align 4
@MTK_MIN = common dso_local global i32 0, align 4
@MTK_HOU = common dso_local global i32 0, align 4
@MTK_DOW = common dso_local global i32 0, align 4
@MTK_DOM = common dso_local global i32 0, align 4
@MTK_MON = common dso_local global i32 0, align 4
@MTK_YEA = common dso_local global i32 0, align 4
@MTK_RTC_TM_YR_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_rtc*, %struct.rtc_time*, i32)* @mtk_rtc_get_alarm_or_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_rtc_get_alarm_or_time(%struct.mtk_rtc* %0, %struct.rtc_time* %1, i32 %2) #0 {
  %4 = alloca %struct.mtk_rtc*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.mtk_rtc* %0, %struct.mtk_rtc** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %14

14:                                               ; preds = %50, %3
  %15 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @MTK_SEC, align 4
  %18 = call i32 @MTK_RTC_TREG(i32 %16, i32 %17)
  %19 = call i64 @mtk_r32(%struct.mtk_rtc* %15, i32 %18)
  store i64 %19, i64* %13, align 8
  %20 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @MTK_MIN, align 4
  %23 = call i32 @MTK_RTC_TREG(i32 %21, i32 %22)
  %24 = call i64 @mtk_r32(%struct.mtk_rtc* %20, i32 %23)
  store i64 %24, i64* %12, align 8
  %25 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @MTK_HOU, align 4
  %28 = call i32 @MTK_RTC_TREG(i32 %26, i32 %27)
  %29 = call i64 @mtk_r32(%struct.mtk_rtc* %25, i32 %28)
  store i64 %29, i64* %11, align 8
  %30 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @MTK_DOW, align 4
  %33 = call i32 @MTK_RTC_TREG(i32 %31, i32 %32)
  %34 = call i64 @mtk_r32(%struct.mtk_rtc* %30, i32 %33)
  store i64 %34, i64* %10, align 8
  %35 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @MTK_DOM, align 4
  %38 = call i32 @MTK_RTC_TREG(i32 %36, i32 %37)
  %39 = call i64 @mtk_r32(%struct.mtk_rtc* %35, i32 %38)
  store i64 %39, i64* %9, align 8
  %40 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @MTK_MON, align 4
  %43 = call i32 @MTK_RTC_TREG(i32 %41, i32 %42)
  %44 = call i64 @mtk_r32(%struct.mtk_rtc* %40, i32 %43)
  store i64 %44, i64* %8, align 8
  %45 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @MTK_YEA, align 4
  %48 = call i32 @MTK_RTC_TREG(i32 %46, i32 %47)
  %49 = call i64 @mtk_r32(%struct.mtk_rtc* %45, i32 %48)
  store i64 %49, i64* %7, align 8
  br label %50

50:                                               ; preds = %14
  %51 = load i64, i64* %13, align 8
  %52 = load %struct.mtk_rtc*, %struct.mtk_rtc** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @MTK_SEC, align 4
  %55 = call i32 @MTK_RTC_TREG(i32 %53, i32 %54)
  %56 = call i64 @mtk_r32(%struct.mtk_rtc* %52, i32 %55)
  %57 = icmp ne i64 %51, %56
  br i1 %57, label %14, label %58

58:                                               ; preds = %50
  %59 = load i64, i64* %13, align 8
  %60 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %61 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %60, i32 0, i32 6
  store i64 %59, i64* %61, align 8
  %62 = load i64, i64* %12, align 8
  %63 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %64 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %63, i32 0, i32 5
  store i64 %62, i64* %64, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %67 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %66, i32 0, i32 4
  store i64 %65, i64* %67, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %70 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %69, i32 0, i32 3
  store i64 %68, i64* %70, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %73 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  %74 = load i64, i64* %8, align 8
  %75 = sub nsw i64 %74, 1
  %76 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %77 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* @MTK_RTC_TM_YR_OFFSET, align 8
  %80 = add nsw i64 %78, %79
  %81 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %82 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  ret void
}

declare dso_local i64 @mtk_r32(%struct.mtk_rtc*, i32) #1

declare dso_local i32 @MTK_RTC_TREG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
