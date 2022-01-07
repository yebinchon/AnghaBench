; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lpc24xx.c_lpc24xx_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lpc24xx.c_lpc24xx_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lpc24xx_rtc = type { i32 }

@LPC24XX_CTIME0 = common dso_local global i32 0, align 4
@LPC24XX_CTIME1 = common dso_local global i32 0, align 4
@LPC24XX_CTIME2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @lpc24xx_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc24xx_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.lpc24xx_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.lpc24xx_rtc* @dev_get_drvdata(%struct.device* %9)
  store %struct.lpc24xx_rtc* %10, %struct.lpc24xx_rtc** %5, align 8
  %11 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %5, align 8
  %12 = load i32, i32* @LPC24XX_CTIME0, align 4
  %13 = call i32 @rtc_readl(%struct.lpc24xx_rtc* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %5, align 8
  %15 = load i32, i32* @LPC24XX_CTIME1, align 4
  %16 = call i32 @rtc_readl(%struct.lpc24xx_rtc* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.lpc24xx_rtc*, %struct.lpc24xx_rtc** %5, align 8
  %18 = load i32, i32* @LPC24XX_CTIME2, align 4
  %19 = call i32 @rtc_readl(%struct.lpc24xx_rtc* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @CT0_SECS(i32 %20)
  %22 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %23 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @CT0_MINS(i32 %24)
  %26 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %27 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @CT0_HOURS(i32 %28)
  %30 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %31 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @CT0_DOW(i32 %32)
  %34 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %35 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @CT1_MONTH(i32 %36)
  %38 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %39 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @CT1_DOM(i32 %40)
  %42 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %43 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @CT1_YEAR(i32 %44)
  %46 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %47 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @CT2_DOY(i32 %48)
  %50 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %51 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  ret i32 0
}

declare dso_local %struct.lpc24xx_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtc_readl(%struct.lpc24xx_rtc*, i32) #1

declare dso_local i32 @CT0_SECS(i32) #1

declare dso_local i32 @CT0_MINS(i32) #1

declare dso_local i32 @CT0_HOURS(i32) #1

declare dso_local i32 @CT0_DOW(i32) #1

declare dso_local i32 @CT1_MONTH(i32) #1

declare dso_local i32 @CT1_DOM(i32) #1

declare dso_local i32 @CT1_YEAR(i32) #1

declare dso_local i32 @CT2_DOY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
