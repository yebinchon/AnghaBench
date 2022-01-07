; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ftrtc010.c_ftrtc010_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ftrtc010.c_ftrtc010_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.ftrtc010_rtc = type { i64 }

@FTRTC010_RTC_SECOND = common dso_local global i64 0, align 8
@FTRTC010_RTC_MINUTE = common dso_local global i64 0, align 8
@FTRTC010_RTC_HOUR = common dso_local global i64 0, align 8
@FTRTC010_RTC_DAYS = common dso_local global i64 0, align 8
@FTRTC010_RTC_RECORD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ftrtc010_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftrtc010_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.ftrtc010_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call %struct.ftrtc010_rtc* @dev_get_drvdata(%struct.device* %12)
  store %struct.ftrtc010_rtc* %13, %struct.ftrtc010_rtc** %5, align 8
  %14 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %5, align 8
  %15 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FTRTC010_RTC_SECOND, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %5, align 8
  %21 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FTRTC010_RTC_MINUTE, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %5, align 8
  %27 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @FTRTC010_RTC_HOUR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl(i64 %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %5, align 8
  %33 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @FTRTC010_RTC_DAYS, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl(i64 %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %5, align 8
  %39 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @FTRTC010_RTC_RECORD, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readl(i64 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %6, align 4
  %46 = mul nsw i32 %45, 86400
  %47 = add nsw i32 %44, %46
  %48 = load i32, i32* %7, align 4
  %49 = mul nsw i32 %48, 3600
  %50 = add nsw i32 %47, %49
  %51 = load i32, i32* %8, align 4
  %52 = mul nsw i32 %51, 60
  %53 = add nsw i32 %50, %52
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %53, %54
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %58 = call i32 @rtc_time64_to_tm(i32 %56, %struct.rtc_time* %57)
  ret i32 0
}

declare dso_local %struct.ftrtc010_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @rtc_time64_to_tm(i32, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
