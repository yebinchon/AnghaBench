; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lpc32xx.c_lpc32xx_rtc_alarm_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lpc32xx.c_lpc32xx_rtc_alarm_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_rtc = type { i32, i32, i64 }

@LPC32XX_RTC_CTRL = common dso_local global i32 0, align 4
@LPC32XX_RTC_CTRL_MATCH0 = common dso_local global i32 0, align 4
@LPC32XX_RTC_MATCH0 = common dso_local global i32 0, align 4
@LPC32XX_RTC_INTSTAT = common dso_local global i32 0, align 4
@LPC32XX_RTC_INTSTAT_MATCH0 = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lpc32xx_rtc_alarm_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_rtc_alarm_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lpc32xx_rtc*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.lpc32xx_rtc*
  store %struct.lpc32xx_rtc* %7, %struct.lpc32xx_rtc** %5, align 8
  %8 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %9 = getelementptr inbounds %struct.lpc32xx_rtc, %struct.lpc32xx_rtc* %8, i32 0, i32 1
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %12 = load i32, i32* @LPC32XX_RTC_CTRL, align 4
  %13 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %14 = load i32, i32* @LPC32XX_RTC_CTRL, align 4
  %15 = call i32 @rtc_readl(%struct.lpc32xx_rtc* %13, i32 %14)
  %16 = load i32, i32* @LPC32XX_RTC_CTRL_MATCH0, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = call i32 @rtc_writel(%struct.lpc32xx_rtc* %11, i32 %12, i32 %18)
  %20 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %21 = getelementptr inbounds %struct.lpc32xx_rtc, %struct.lpc32xx_rtc* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %23 = load i32, i32* @LPC32XX_RTC_MATCH0, align 4
  %24 = call i32 @rtc_writel(%struct.lpc32xx_rtc* %22, i32 %23, i32 -1)
  %25 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %26 = load i32, i32* @LPC32XX_RTC_INTSTAT, align 4
  %27 = load i32, i32* @LPC32XX_RTC_INTSTAT_MATCH0, align 4
  %28 = call i32 @rtc_writel(%struct.lpc32xx_rtc* %25, i32 %26, i32 %27)
  %29 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %30 = getelementptr inbounds %struct.lpc32xx_rtc, %struct.lpc32xx_rtc* %29, i32 0, i32 1
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %33 = getelementptr inbounds %struct.lpc32xx_rtc, %struct.lpc32xx_rtc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @RTC_IRQF, align 4
  %36 = load i32, i32* @RTC_AF, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @rtc_update_irq(i32 %34, i32 1, i32 %37)
  %39 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %39
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rtc_writel(%struct.lpc32xx_rtc*, i32, i32) #1

declare dso_local i32 @rtc_readl(%struct.lpc32xx_rtc*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rtc_update_irq(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
