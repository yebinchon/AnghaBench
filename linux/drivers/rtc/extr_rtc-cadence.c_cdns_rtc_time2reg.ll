; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cadence.c_cdns_rtc_time2reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cadence.c_cdns_rtc_time2reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32 }

@CDNS_RTC_TIME_S = common dso_local global i32 0, align 4
@CDNS_RTC_TIME_M = common dso_local global i32 0, align 4
@CDNS_RTC_TIME_HR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtc_time*)* @cdns_rtc_time2reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_rtc_time2reg(%struct.rtc_time* %0) #0 {
  %2 = alloca %struct.rtc_time*, align 8
  store %struct.rtc_time* %0, %struct.rtc_time** %2, align 8
  %3 = load i32, i32* @CDNS_RTC_TIME_S, align 4
  %4 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %5 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @bin2bcd(i32 %6)
  %8 = call i32 @FIELD_PREP(i32 %3, i32 %7)
  %9 = load i32, i32* @CDNS_RTC_TIME_M, align 4
  %10 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %11 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @bin2bcd(i32 %12)
  %14 = call i32 @FIELD_PREP(i32 %9, i32 %13)
  %15 = or i32 %8, %14
  %16 = load i32, i32* @CDNS_RTC_TIME_HR, align 4
  %17 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %18 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @bin2bcd(i32 %19)
  %21 = call i32 @FIELD_PREP(i32 %16, i32 %20)
  %22 = or i32 %15, %21
  ret i32 %22
}

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @bin2bcd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
