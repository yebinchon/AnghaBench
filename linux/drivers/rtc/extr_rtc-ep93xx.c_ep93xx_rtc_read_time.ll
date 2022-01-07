; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ep93xx.c_ep93xx_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ep93xx.c_ep93xx_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.ep93xx_rtc = type { i64 }

@EP93XX_RTC_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ep93xx_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.ep93xx_rtc*, align 8
  %6 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.ep93xx_rtc* @dev_get_platdata(%struct.device* %7)
  store %struct.ep93xx_rtc* %8, %struct.ep93xx_rtc** %5, align 8
  %9 = load %struct.ep93xx_rtc*, %struct.ep93xx_rtc** %5, align 8
  %10 = getelementptr inbounds %struct.ep93xx_rtc, %struct.ep93xx_rtc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @EP93XX_RTC_DATA, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i64 @readl(i64 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %17 = call i32 @rtc_time64_to_tm(i64 %15, %struct.rtc_time* %16)
  ret i32 0
}

declare dso_local %struct.ep93xx_rtc* @dev_get_platdata(%struct.device*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @rtc_time64_to_tm(i64, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
