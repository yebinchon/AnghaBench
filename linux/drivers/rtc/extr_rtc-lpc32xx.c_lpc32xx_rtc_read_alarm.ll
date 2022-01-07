; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lpc32xx.c_lpc32xx_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lpc32xx.c_lpc32xx_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, i32 }
%struct.lpc32xx_rtc = type { i32 }

@LPC32XX_RTC_MATCH0 = common dso_local global i32 0, align 4
@LPC32XX_RTC_INTSTAT = common dso_local global i32 0, align 4
@LPC32XX_RTC_INTSTAT_MATCH0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @lpc32xx_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.lpc32xx_rtc*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.lpc32xx_rtc* @dev_get_drvdata(%struct.device* %6)
  store %struct.lpc32xx_rtc* %7, %struct.lpc32xx_rtc** %5, align 8
  %8 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %9 = load i32, i32* @LPC32XX_RTC_MATCH0, align 4
  %10 = call i32 @rtc_readl(%struct.lpc32xx_rtc* %8, i32 %9)
  %11 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %12 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %11, i32 0, i32 1
  %13 = call i32 @rtc_time64_to_tm(i32 %10, i32* %12)
  %14 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %15 = getelementptr inbounds %struct.lpc32xx_rtc, %struct.lpc32xx_rtc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %18 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %20 = load i32, i32* @LPC32XX_RTC_INTSTAT, align 4
  %21 = call i32 @rtc_readl(%struct.lpc32xx_rtc* %19, i32 %20)
  %22 = load i32, i32* @LPC32XX_RTC_INTSTAT_MATCH0, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %29 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %31 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %30, i32 0, i32 1
  %32 = call i32 @rtc_valid_tm(i32* %31)
  ret i32 %32
}

declare dso_local %struct.lpc32xx_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtc_time64_to_tm(i32, i32*) #1

declare dso_local i32 @rtc_readl(%struct.lpc32xx_rtc*, i32) #1

declare dso_local i32 @rtc_valid_tm(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
