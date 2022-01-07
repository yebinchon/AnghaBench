; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lpc24xx.c_lpc24xx_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lpc24xx.c_lpc24xx_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lpc24xx_rtc = type { i32 }

@LPC24XX_CCR = common dso_local global i32 0, align 4
@LPC178X_CCALEN = common dso_local global i32 0, align 4
@LPC24XX_SEC = common dso_local global i32 0, align 4
@LPC24XX_MIN = common dso_local global i32 0, align 4
@LPC24XX_HOUR = common dso_local global i32 0, align 4
@LPC24XX_DOW = common dso_local global i32 0, align 4
@LPC24XX_DOM = common dso_local global i32 0, align 4
@LPC24XX_DOY = common dso_local global i32 0, align 4
@LPC24XX_MONTH = common dso_local global i32 0, align 4
@LPC24XX_YEAR = common dso_local global i32 0, align 4
@LPC24XX_CLKEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @lpc24xx_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc24xx_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.lpc24xx_rtc*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.lpc24xx_rtc* @dev_get_drvdata(%struct.device* %6)
  store %struct.lpc24xx_rtc* %7, %struct.lpc24xx_rtc** %5, align 8
  %8 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %5, align 8
  %9 = load i32, i32* @LPC24XX_CCR, align 4
  %10 = load i32, i32* @LPC178X_CCALEN, align 4
  %11 = call i32 @rtc_writel(%struct.lpc24xx_rtc* %8, i32 %9, i32 %10)
  %12 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %5, align 8
  %13 = load i32, i32* @LPC24XX_SEC, align 4
  %14 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %15 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @rtc_writel(%struct.lpc24xx_rtc* %12, i32 %13, i32 %16)
  %18 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %5, align 8
  %19 = load i32, i32* @LPC24XX_MIN, align 4
  %20 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %21 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @rtc_writel(%struct.lpc24xx_rtc* %18, i32 %19, i32 %22)
  %24 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %5, align 8
  %25 = load i32, i32* @LPC24XX_HOUR, align 4
  %26 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %27 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @rtc_writel(%struct.lpc24xx_rtc* %24, i32 %25, i32 %28)
  %30 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %5, align 8
  %31 = load i32, i32* @LPC24XX_DOW, align 4
  %32 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %33 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @rtc_writel(%struct.lpc24xx_rtc* %30, i32 %31, i32 %34)
  %36 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %5, align 8
  %37 = load i32, i32* @LPC24XX_DOM, align 4
  %38 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %39 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @rtc_writel(%struct.lpc24xx_rtc* %36, i32 %37, i32 %40)
  %42 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %5, align 8
  %43 = load i32, i32* @LPC24XX_DOY, align 4
  %44 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @rtc_writel(%struct.lpc24xx_rtc* %42, i32 %43, i32 %46)
  %48 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %5, align 8
  %49 = load i32, i32* @LPC24XX_MONTH, align 4
  %50 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %51 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @rtc_writel(%struct.lpc24xx_rtc* %48, i32 %49, i32 %52)
  %54 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %5, align 8
  %55 = load i32, i32* @LPC24XX_YEAR, align 4
  %56 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @rtc_writel(%struct.lpc24xx_rtc* %54, i32 %55, i32 %58)
  %60 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %5, align 8
  %61 = load i32, i32* @LPC24XX_CCR, align 4
  %62 = load i32, i32* @LPC24XX_CLKEN, align 4
  %63 = load i32, i32* @LPC178X_CCALEN, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @rtc_writel(%struct.lpc24xx_rtc* %60, i32 %61, i32 %64)
  ret i32 0
}

declare dso_local %struct.lpc24xx_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtc_writel(%struct.lpc24xx_rtc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
