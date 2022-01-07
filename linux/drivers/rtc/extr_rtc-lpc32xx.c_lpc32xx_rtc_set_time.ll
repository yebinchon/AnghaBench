; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lpc32xx.c_lpc32xx_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lpc32xx.c_lpc32xx_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.lpc32xx_rtc = type { i32 }

@LPC32XX_RTC_CTRL = common dso_local global i32 0, align 4
@LPC32XX_RTC_CTRL_CNTR_DIS = common dso_local global i32 0, align 4
@LPC32XX_RTC_UCOUNT = common dso_local global i32 0, align 4
@LPC32XX_RTC_DCOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @lpc32xx_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.lpc32xx_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.lpc32xx_rtc* @dev_get_drvdata(%struct.device* %8)
  store %struct.lpc32xx_rtc* %9, %struct.lpc32xx_rtc** %5, align 8
  %10 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %11 = call i32 @rtc_tm_to_time64(%struct.rtc_time* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %13 = getelementptr inbounds %struct.lpc32xx_rtc, %struct.lpc32xx_rtc* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_irq(i32* %13)
  %15 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %16 = load i32, i32* @LPC32XX_RTC_CTRL, align 4
  %17 = call i32 @rtc_readl(%struct.lpc32xx_rtc* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %19 = load i32, i32* @LPC32XX_RTC_CTRL, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @LPC32XX_RTC_CTRL_CNTR_DIS, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @rtc_writel(%struct.lpc32xx_rtc* %18, i32 %19, i32 %22)
  %24 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %25 = load i32, i32* @LPC32XX_RTC_UCOUNT, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @rtc_writel(%struct.lpc32xx_rtc* %24, i32 %25, i32 %26)
  %28 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %29 = load i32, i32* @LPC32XX_RTC_DCOUNT, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sub i32 -1, %30
  %32 = call i32 @rtc_writel(%struct.lpc32xx_rtc* %28, i32 %29, i32 %31)
  %33 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %34 = load i32, i32* @LPC32XX_RTC_CTRL, align 4
  %35 = load i32, i32* @LPC32XX_RTC_CTRL_CNTR_DIS, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = call i32 @rtc_writel(%struct.lpc32xx_rtc* %33, i32 %34, i32 %38)
  %40 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %41 = getelementptr inbounds %struct.lpc32xx_rtc, %struct.lpc32xx_rtc* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock_irq(i32* %41)
  ret i32 0
}

declare dso_local %struct.lpc32xx_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtc_tm_to_time64(%struct.rtc_time*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @rtc_readl(%struct.lpc32xx_rtc*, i32) #1

declare dso_local i32 @rtc_writel(%struct.lpc32xx_rtc*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
