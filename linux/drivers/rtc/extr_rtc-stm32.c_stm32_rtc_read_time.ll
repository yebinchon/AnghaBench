; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stm32.c_stm32_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stm32.c_stm32_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.stm32_rtc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.stm32_rtc_registers }
%struct.stm32_rtc_registers = type { i32, i32 }

@STM32_RTC_TR_SEC = common dso_local global i32 0, align 4
@STM32_RTC_TR_SEC_SHIFT = common dso_local global i32 0, align 4
@STM32_RTC_TR_MIN = common dso_local global i32 0, align 4
@STM32_RTC_TR_MIN_SHIFT = common dso_local global i32 0, align 4
@STM32_RTC_TR_HOUR = common dso_local global i32 0, align 4
@STM32_RTC_TR_HOUR_SHIFT = common dso_local global i32 0, align 4
@STM32_RTC_DR_DATE = common dso_local global i32 0, align 4
@STM32_RTC_DR_DATE_SHIFT = common dso_local global i32 0, align 4
@STM32_RTC_DR_MONTH = common dso_local global i32 0, align 4
@STM32_RTC_DR_MONTH_SHIFT = common dso_local global i32 0, align 4
@STM32_RTC_DR_YEAR = common dso_local global i32 0, align 4
@STM32_RTC_DR_YEAR_SHIFT = common dso_local global i32 0, align 4
@STM32_RTC_DR_WDAY = common dso_local global i32 0, align 4
@STM32_RTC_DR_WDAY_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @stm32_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.stm32_rtc*, align 8
  %6 = alloca %struct.stm32_rtc_registers*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.stm32_rtc* @dev_get_drvdata(%struct.device* %9)
  store %struct.stm32_rtc* %10, %struct.stm32_rtc** %5, align 8
  %11 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %12 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.stm32_rtc_registers* %14, %struct.stm32_rtc_registers** %6, align 8
  %15 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %16 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %6, align 8
  %19 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %17, %21
  %23 = call i32 @readl_relaxed(i64 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %25 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %6, align 8
  %28 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %26, %30
  %32 = call i32 @readl_relaxed(i64 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @STM32_RTC_TR_SEC, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @STM32_RTC_TR_SEC_SHIFT, align 4
  %37 = lshr i32 %35, %36
  %38 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %39 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @STM32_RTC_TR_MIN, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @STM32_RTC_TR_MIN_SHIFT, align 4
  %44 = lshr i32 %42, %43
  %45 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %46 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @STM32_RTC_TR_HOUR, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @STM32_RTC_TR_HOUR_SHIFT, align 4
  %51 = lshr i32 %49, %50
  %52 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %53 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @STM32_RTC_DR_DATE, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @STM32_RTC_DR_DATE_SHIFT, align 4
  %58 = lshr i32 %56, %57
  %59 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %60 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @STM32_RTC_DR_MONTH, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @STM32_RTC_DR_MONTH_SHIFT, align 4
  %65 = lshr i32 %63, %64
  %66 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %67 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @STM32_RTC_DR_YEAR, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @STM32_RTC_DR_YEAR_SHIFT, align 4
  %72 = lshr i32 %70, %71
  %73 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %74 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @STM32_RTC_DR_WDAY, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @STM32_RTC_DR_WDAY_SHIFT, align 4
  %79 = lshr i32 %77, %78
  %80 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %81 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 4
  %82 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %83 = call i32 @bcd2tm(%struct.rtc_time* %82)
  ret i32 0
}

declare dso_local %struct.stm32_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @bcd2tm(%struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
