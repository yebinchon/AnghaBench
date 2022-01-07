; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8998.c_max8998_tm_to_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8998.c_max8998_tm_to_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }

@RTC_SEC = common dso_local global i64 0, align 8
@RTC_MIN = common dso_local global i64 0, align 8
@RTC_HOUR = common dso_local global i64 0, align 8
@RTC_WEEKDAY = common dso_local global i64 0, align 8
@RTC_DATE = common dso_local global i64 0, align 8
@RTC_MONTH = common dso_local global i64 0, align 8
@RTC_YEAR1 = common dso_local global i64 0, align 8
@RTC_YEAR2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtc_time*, i32*)* @max8998_tm_to_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max8998_tm_to_data(%struct.rtc_time* %0, i32* %1) #0 {
  %3 = alloca %struct.rtc_time*, align 8
  %4 = alloca i32*, align 8
  store %struct.rtc_time* %0, %struct.rtc_time** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %6 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @bin2bcd(i32 %7)
  %9 = load i32*, i32** %4, align 8
  %10 = load i64, i64* @RTC_SEC, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  store i32 %8, i32* %11, align 4
  %12 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %13 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bin2bcd(i32 %14)
  %16 = load i32*, i32** %4, align 8
  %17 = load i64, i64* @RTC_MIN, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32 %15, i32* %18, align 4
  %19 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %20 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bin2bcd(i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = load i64, i64* @RTC_HOUR, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32 %22, i32* %25, align 4
  %26 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %27 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = load i64, i64* @RTC_WEEKDAY, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32 %28, i32* %31, align 4
  %32 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %33 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bin2bcd(i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load i64, i64* @RTC_DATE, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 %35, i32* %38, align 4
  %39 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %40 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @bin2bcd(i32 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = load i64, i64* @RTC_MONTH, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 %42, i32* %45, align 4
  %46 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %47 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = srem i32 %48, 100
  %50 = call i32 @bin2bcd(i32 %49)
  %51 = load i32*, i32** %4, align 8
  %52 = load i64, i64* @RTC_YEAR1, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32 %50, i32* %53, align 4
  %54 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %55 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1900
  %58 = sdiv i32 %57, 100
  %59 = call i32 @bin2bcd(i32 %58)
  %60 = load i32*, i32** %4, align 8
  %61 = load i64, i64* @RTC_YEAR2, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32 %59, i32* %62, align 4
  ret void
}

declare dso_local i32 @bin2bcd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
