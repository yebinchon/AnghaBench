; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lpc24xx.c_lpc24xx_rtc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lpc24xx.c_lpc24xx_rtc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.lpc24xx_rtc = type { i32, i32 }

@LPC24XX_AMR = common dso_local global i32 0, align 4
@LPC24XX_ALARM_DISABLE = common dso_local global i32 0, align 4
@LPC24XX_CIIR = common dso_local global i32 0, align 4
@LPC24XX_CCR = common dso_local global i32 0, align 4
@LPC178X_CCALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpc24xx_rtc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc24xx_rtc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.lpc24xx_rtc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.lpc24xx_rtc* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.lpc24xx_rtc* %5, %struct.lpc24xx_rtc** %3, align 8
  %6 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %3, align 8
  %7 = load i32, i32* @LPC24XX_AMR, align 4
  %8 = load i32, i32* @LPC24XX_ALARM_DISABLE, align 4
  %9 = call i32 @rtc_writel(%struct.lpc24xx_rtc* %6, i32 %7, i32 %8)
  %10 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %3, align 8
  %11 = load i32, i32* @LPC24XX_CIIR, align 4
  %12 = call i32 @rtc_writel(%struct.lpc24xx_rtc* %10, i32 %11, i32 0)
  %13 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %3, align 8
  %14 = load i32, i32* @LPC24XX_CCR, align 4
  %15 = load i32, i32* @LPC178X_CCALEN, align 4
  %16 = call i32 @rtc_writel(%struct.lpc24xx_rtc* %13, i32 %14, i32 %15)
  %17 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %3, align 8
  %18 = getelementptr inbounds %struct.lpc24xx_rtc, %struct.lpc24xx_rtc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @clk_disable_unprepare(i32 %19)
  %21 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %3, align 8
  %22 = getelementptr inbounds %struct.lpc24xx_rtc, %struct.lpc24xx_rtc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clk_disable_unprepare(i32 %23)
  ret i32 0
}

declare dso_local %struct.lpc24xx_rtc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @rtc_writel(%struct.lpc24xx_rtc*, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
