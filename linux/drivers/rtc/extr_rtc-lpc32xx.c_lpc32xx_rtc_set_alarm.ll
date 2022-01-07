; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lpc32xx.c_lpc32xx_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lpc32xx.c_lpc32xx_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, i32 }
%struct.lpc32xx_rtc = type { i32, i64 }

@LPC32XX_RTC_CTRL = common dso_local global i32 0, align 4
@LPC32XX_RTC_CTRL_MATCH0 = common dso_local global i64 0, align 8
@LPC32XX_RTC_MATCH0 = common dso_local global i32 0, align 4
@LPC32XX_RTC_INTSTAT = common dso_local global i32 0, align 4
@LPC32XX_RTC_INTSTAT_MATCH0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @lpc32xx_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.lpc32xx_rtc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.lpc32xx_rtc* @dev_get_drvdata(%struct.device* %8)
  store %struct.lpc32xx_rtc* %9, %struct.lpc32xx_rtc** %5, align 8
  %10 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %11 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %10, i32 0, i32 1
  %12 = call i64 @rtc_tm_to_time64(i32* %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %14 = getelementptr inbounds %struct.lpc32xx_rtc, %struct.lpc32xx_rtc* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_irq(i32* %14)
  %16 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %17 = load i32, i32* @LPC32XX_RTC_CTRL, align 4
  %18 = call i64 @rtc_readl(%struct.lpc32xx_rtc* %16, i32 %17)
  store i64 %18, i64* %7, align 8
  %19 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %20 = load i32, i32* @LPC32XX_RTC_CTRL, align 4
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @LPC32XX_RTC_CTRL_MATCH0, align 8
  %23 = xor i64 %22, -1
  %24 = and i64 %21, %23
  %25 = call i32 @rtc_writel(%struct.lpc32xx_rtc* %19, i32 %20, i64 %24)
  %26 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %27 = load i32, i32* @LPC32XX_RTC_MATCH0, align 4
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @rtc_writel(%struct.lpc32xx_rtc* %26, i32 %27, i64 %28)
  %30 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %31 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %34 = getelementptr inbounds %struct.lpc32xx_rtc, %struct.lpc32xx_rtc* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %36 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %2
  %40 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %41 = load i32, i32* @LPC32XX_RTC_INTSTAT, align 4
  %42 = load i64, i64* @LPC32XX_RTC_INTSTAT_MATCH0, align 8
  %43 = call i32 @rtc_writel(%struct.lpc32xx_rtc* %40, i32 %41, i64 %42)
  %44 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %45 = load i32, i32* @LPC32XX_RTC_CTRL, align 4
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @LPC32XX_RTC_CTRL_MATCH0, align 8
  %48 = or i64 %46, %47
  %49 = call i32 @rtc_writel(%struct.lpc32xx_rtc* %44, i32 %45, i64 %48)
  br label %50

50:                                               ; preds = %39, %2
  %51 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %52 = getelementptr inbounds %struct.lpc32xx_rtc, %struct.lpc32xx_rtc* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock_irq(i32* %52)
  ret i32 0
}

declare dso_local %struct.lpc32xx_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @rtc_tm_to_time64(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @rtc_readl(%struct.lpc32xx_rtc*, i32) #1

declare dso_local i32 @rtc_writel(%struct.lpc32xx_rtc*, i32, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
