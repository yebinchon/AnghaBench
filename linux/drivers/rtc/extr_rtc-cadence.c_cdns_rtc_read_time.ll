; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cadence.c_cdns_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cadence.c_cdns_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32 }
%struct.cdns_rtc = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@CDNS_RTC_TIMR = common dso_local global i64 0, align 8
@CDNS_RTC_CALR = common dso_local global i64 0, align 8
@CDNS_RTC_CAL_D = common dso_local global i32 0, align 4
@CDNS_RTC_CAL_M = common dso_local global i32 0, align 4
@CDNS_RTC_CAL_Y = common dso_local global i32 0, align 4
@CDNS_RTC_CAL_C = common dso_local global i32 0, align 4
@CDNS_RTC_CAL_DAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @cdns_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.cdns_rtc*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.cdns_rtc* @dev_get_drvdata(%struct.device* %8)
  store %struct.cdns_rtc* %9, %struct.cdns_rtc** %6, align 8
  %10 = load %struct.cdns_rtc*, %struct.cdns_rtc** %6, align 8
  %11 = call i32 @cdns_rtc_get_enabled(%struct.cdns_rtc* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %69

16:                                               ; preds = %2
  %17 = load %struct.cdns_rtc*, %struct.cdns_rtc** %6, align 8
  %18 = call i32 @cdns_rtc_set_enabled(%struct.cdns_rtc* %17, i32 0)
  %19 = load %struct.cdns_rtc*, %struct.cdns_rtc** %6, align 8
  %20 = getelementptr inbounds %struct.cdns_rtc, %struct.cdns_rtc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CDNS_RTC_TIMR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %27 = call i32 @cdns_rtc_reg2time(i32 %25, %struct.rtc_time* %26)
  %28 = load %struct.cdns_rtc*, %struct.cdns_rtc** %6, align 8
  %29 = getelementptr inbounds %struct.cdns_rtc, %struct.cdns_rtc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CDNS_RTC_CALR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @readl(i64 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* @CDNS_RTC_CAL_D, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @FIELD_GET(i32 %34, i32 %35)
  %37 = call i32 @bcd2bin(i32 %36)
  %38 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %39 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @CDNS_RTC_CAL_M, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @FIELD_GET(i32 %40, i32 %41)
  %43 = call i32 @bcd2bin(i32 %42)
  %44 = sub nsw i32 %43, 1
  %45 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %46 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @CDNS_RTC_CAL_Y, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @FIELD_GET(i32 %47, i32 %48)
  %50 = call i32 @bcd2bin(i32 %49)
  %51 = load i32, i32* @CDNS_RTC_CAL_C, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @FIELD_GET(i32 %51, i32 %52)
  %54 = call i32 @bcd2bin(i32 %53)
  %55 = mul nsw i32 %54, 100
  %56 = add nsw i32 %50, %55
  %57 = sub nsw i32 %56, 1900
  %58 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %59 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @CDNS_RTC_CAL_DAY, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @FIELD_GET(i32 %60, i32 %61)
  %63 = call i32 @bcd2bin(i32 %62)
  %64 = sub nsw i32 %63, 1
  %65 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %66 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.cdns_rtc*, %struct.cdns_rtc** %6, align 8
  %68 = call i32 @cdns_rtc_set_enabled(%struct.cdns_rtc* %67, i32 1)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %16, %13
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.cdns_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @cdns_rtc_get_enabled(%struct.cdns_rtc*) #1

declare dso_local i32 @cdns_rtc_set_enabled(%struct.cdns_rtc*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @cdns_rtc_reg2time(i32, %struct.rtc_time*) #1

declare dso_local i32 @bcd2bin(i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
