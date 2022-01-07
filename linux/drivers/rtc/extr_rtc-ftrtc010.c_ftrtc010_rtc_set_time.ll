; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ftrtc010.c_ftrtc010_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ftrtc010.c_ftrtc010_rtc_set_time.c"
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
@FTRTC010_RTC_CR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ftrtc010_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftrtc010_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
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
  %14 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %15 = call i32 @rtc_tm_to_time64(%struct.rtc_time* %14)
  store i32 %15, i32* %11, align 4
  %16 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %5, align 8
  %17 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FTRTC010_RTC_SECOND, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %5, align 8
  %23 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @FTRTC010_RTC_MINUTE, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %5, align 8
  %29 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @FTRTC010_RTC_HOUR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @readl(i64 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %5, align 8
  %35 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @FTRTC010_RTC_DAYS, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @readl(i64 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %9, align 4
  %42 = mul nsw i32 %41, 86400
  %43 = load i32, i32* %8, align 4
  %44 = mul nsw i32 %43, 3600
  %45 = add nsw i32 %42, %44
  %46 = load i32, i32* %7, align 4
  %47 = mul nsw i32 %46, 60
  %48 = add nsw i32 %45, %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %48, %49
  %51 = sub nsw i32 %40, %50
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %5, align 8
  %54 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @FTRTC010_RTC_RECORD, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  %59 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %5, align 8
  %60 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @FTRTC010_RTC_CR, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 1, i64 %63)
  ret i32 0
}

declare dso_local %struct.ftrtc010_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtc_tm_to_time64(%struct.rtc_time*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
