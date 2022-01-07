; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lpc24xx.c_lpc24xx_rtc_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lpc24xx.c_lpc24xx_rtc_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc24xx_rtc = type { i32 }

@RTC_IRQF = common dso_local global i64 0, align 8
@LPC24XX_ILR = common dso_local global i32 0, align 4
@LPC24XX_RTCALF = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i64 0, align 8
@LPC24XX_AMR = common dso_local global i32 0, align 4
@LPC24XX_ALARM_DISABLE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lpc24xx_rtc_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc24xx_rtc_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.lpc24xx_rtc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i64, i64* @RTC_IRQF, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.lpc24xx_rtc*
  store %struct.lpc24xx_rtc* %10, %struct.lpc24xx_rtc** %6, align 8
  %11 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %6, align 8
  %12 = load i32, i32* @LPC24XX_ILR, align 4
  %13 = call i32 @rtc_readl(%struct.lpc24xx_rtc* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @LPC24XX_RTCALF, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load i64, i64* @RTC_AF, align 8
  %20 = load i64, i64* %5, align 8
  %21 = or i64 %20, %19
  store i64 %21, i64* %5, align 8
  %22 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %6, align 8
  %23 = load i32, i32* @LPC24XX_AMR, align 4
  %24 = load i32, i32* @LPC24XX_ALARM_DISABLE, align 4
  %25 = call i32 @rtc_writel(%struct.lpc24xx_rtc* %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %18, %2
  %27 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %6, align 8
  %28 = load i32, i32* @LPC24XX_ILR, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @rtc_writel(%struct.lpc24xx_rtc* %27, i32 %28, i32 %29)
  %31 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %6, align 8
  %32 = getelementptr inbounds %struct.lpc24xx_rtc, %struct.lpc24xx_rtc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @rtc_update_irq(i32 %33, i32 1, i64 %34)
  %36 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %36
}

declare dso_local i32 @rtc_readl(%struct.lpc24xx_rtc*, i32) #1

declare dso_local i32 @rtc_writel(%struct.lpc24xx_rtc*, i32, i32) #1

declare dso_local i32 @rtc_update_irq(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
