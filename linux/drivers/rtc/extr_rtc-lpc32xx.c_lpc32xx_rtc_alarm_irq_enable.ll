; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lpc32xx.c_lpc32xx_rtc_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lpc32xx.c_lpc32xx_rtc_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.lpc32xx_rtc = type { i32, i32 }

@LPC32XX_RTC_CTRL = common dso_local global i32 0, align 4
@LPC32XX_RTC_CTRL_MATCH0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @lpc32xx_rtc_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_rtc_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpc32xx_rtc*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.lpc32xx_rtc* @dev_get_drvdata(%struct.device* %7)
  store %struct.lpc32xx_rtc* %8, %struct.lpc32xx_rtc** %5, align 8
  %9 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %10 = getelementptr inbounds %struct.lpc32xx_rtc, %struct.lpc32xx_rtc* %9, i32 0, i32 1
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %13 = load i32, i32* @LPC32XX_RTC_CTRL, align 4
  %14 = call i32 @rtc_readl(%struct.lpc32xx_rtc* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %19 = getelementptr inbounds %struct.lpc32xx_rtc, %struct.lpc32xx_rtc* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load i32, i32* @LPC32XX_RTC_CTRL_MATCH0, align 4
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  br label %30

23:                                               ; preds = %2
  %24 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %25 = getelementptr inbounds %struct.lpc32xx_rtc, %struct.lpc32xx_rtc* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* @LPC32XX_RTC_CTRL_MATCH0, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %23, %17
  %31 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %32 = load i32, i32* @LPC32XX_RTC_CTRL, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @rtc_writel(%struct.lpc32xx_rtc* %31, i32 %32, i32 %33)
  %35 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %36 = getelementptr inbounds %struct.lpc32xx_rtc, %struct.lpc32xx_rtc* %35, i32 0, i32 1
  %37 = call i32 @spin_unlock_irq(i32* %36)
  ret i32 0
}

declare dso_local %struct.lpc32xx_rtc* @dev_get_drvdata(%struct.device*) #1

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
