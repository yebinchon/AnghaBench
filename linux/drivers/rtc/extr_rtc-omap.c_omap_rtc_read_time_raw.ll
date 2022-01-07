; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_omap_rtc_read_time_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_omap_rtc_read_time_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_rtc = type { i32 }
%struct.rtc_time = type { i8*, i8*, i8*, i8*, i8*, i8* }

@OMAP_RTC_SECONDS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_MINUTES_REG = common dso_local global i32 0, align 4
@OMAP_RTC_HOURS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_DAYS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_MONTHS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_YEARS_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_rtc*, %struct.rtc_time*)* @omap_rtc_read_time_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_rtc_read_time_raw(%struct.omap_rtc* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.omap_rtc*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  store %struct.omap_rtc* %0, %struct.omap_rtc** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %5 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %6 = load i32, i32* @OMAP_RTC_SECONDS_REG, align 4
  %7 = call i8* @rtc_read(%struct.omap_rtc* %5, i32 %6)
  %8 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %9 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 5
  store i8* %7, i8** %9, align 8
  %10 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %11 = load i32, i32* @OMAP_RTC_MINUTES_REG, align 4
  %12 = call i8* @rtc_read(%struct.omap_rtc* %10, i32 %11)
  %13 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %14 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %13, i32 0, i32 4
  store i8* %12, i8** %14, align 8
  %15 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %16 = load i32, i32* @OMAP_RTC_HOURS_REG, align 4
  %17 = call i8* @rtc_read(%struct.omap_rtc* %15, i32 %16)
  %18 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %19 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %21 = load i32, i32* @OMAP_RTC_DAYS_REG, align 4
  %22 = call i8* @rtc_read(%struct.omap_rtc* %20, i32 %21)
  %23 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %24 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %26 = load i32, i32* @OMAP_RTC_MONTHS_REG, align 4
  %27 = call i8* @rtc_read(%struct.omap_rtc* %25, i32 %26)
  %28 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %29 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %31 = load i32, i32* @OMAP_RTC_YEARS_REG, align 4
  %32 = call i8* @rtc_read(%struct.omap_rtc* %30, i32 %31)
  %33 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %34 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  ret void
}

declare dso_local i8* @rtc_read(%struct.omap_rtc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
