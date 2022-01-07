; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stm32.c_stm32_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stm32.c_stm32_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.stm32_rtc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.stm32_rtc_registers }
%struct.stm32_rtc_registers = type { i32, i32 }

@STM32_RTC_TR_SEC_SHIFT = common dso_local global i32 0, align 4
@STM32_RTC_TR_SEC = common dso_local global i32 0, align 4
@STM32_RTC_TR_MIN_SHIFT = common dso_local global i32 0, align 4
@STM32_RTC_TR_MIN = common dso_local global i32 0, align 4
@STM32_RTC_TR_HOUR_SHIFT = common dso_local global i32 0, align 4
@STM32_RTC_TR_HOUR = common dso_local global i32 0, align 4
@STM32_RTC_DR_DATE_SHIFT = common dso_local global i32 0, align 4
@STM32_RTC_DR_DATE = common dso_local global i32 0, align 4
@STM32_RTC_DR_MONTH_SHIFT = common dso_local global i32 0, align 4
@STM32_RTC_DR_MONTH = common dso_local global i32 0, align 4
@STM32_RTC_DR_YEAR_SHIFT = common dso_local global i32 0, align 4
@STM32_RTC_DR_YEAR = common dso_local global i32 0, align 4
@STM32_RTC_DR_WDAY_SHIFT = common dso_local global i32 0, align 4
@STM32_RTC_DR_WDAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Can't enter in init mode. Set time aborted.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @stm32_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.stm32_rtc*, align 8
  %6 = alloca %struct.stm32_rtc_registers*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.stm32_rtc* @dev_get_drvdata(%struct.device* %10)
  store %struct.stm32_rtc* %11, %struct.stm32_rtc** %5, align 8
  %12 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %13 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.stm32_rtc_registers* %15, %struct.stm32_rtc_registers** %6, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %17 = call i32 @tm2bcd(%struct.rtc_time* %16)
  %18 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %19 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @STM32_RTC_TR_SEC_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* @STM32_RTC_TR_SEC, align 4
  %24 = and i32 %22, %23
  %25 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @STM32_RTC_TR_MIN_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* @STM32_RTC_TR_MIN, align 4
  %31 = and i32 %29, %30
  %32 = or i32 %24, %31
  %33 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %34 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @STM32_RTC_TR_HOUR_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* @STM32_RTC_TR_HOUR, align 4
  %39 = and i32 %37, %38
  %40 = or i32 %32, %39
  store i32 %40, i32* %7, align 4
  %41 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %42 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @STM32_RTC_DR_DATE_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* @STM32_RTC_DR_DATE, align 4
  %47 = and i32 %45, %46
  %48 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %49 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @STM32_RTC_DR_MONTH_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* @STM32_RTC_DR_MONTH, align 4
  %54 = and i32 %52, %53
  %55 = or i32 %47, %54
  %56 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @STM32_RTC_DR_YEAR_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = load i32, i32* @STM32_RTC_DR_YEAR, align 4
  %62 = and i32 %60, %61
  %63 = or i32 %55, %62
  %64 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %65 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @STM32_RTC_DR_WDAY_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = load i32, i32* @STM32_RTC_DR_WDAY, align 4
  %70 = and i32 %68, %69
  %71 = or i32 %63, %70
  store i32 %71, i32* %8, align 4
  %72 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %73 = call i32 @stm32_rtc_wpr_unlock(%struct.stm32_rtc* %72)
  %74 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %75 = call i32 @stm32_rtc_enter_init_mode(%struct.stm32_rtc* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %2
  %79 = load %struct.device*, %struct.device** %3, align 8
  %80 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %106

81:                                               ; preds = %2
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %84 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %6, align 8
  %87 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %85, %89
  %91 = call i32 @writel_relaxed(i32 %82, i64 %90)
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %94 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %6, align 8
  %97 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %95, %99
  %101 = call i32 @writel_relaxed(i32 %92, i64 %100)
  %102 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %103 = call i32 @stm32_rtc_exit_init_mode(%struct.stm32_rtc* %102)
  %104 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %105 = call i32 @stm32_rtc_wait_sync(%struct.stm32_rtc* %104)
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %81, %78
  %107 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %108 = call i32 @stm32_rtc_wpr_lock(%struct.stm32_rtc* %107)
  %109 = load i32, i32* %9, align 4
  ret i32 %109
}

declare dso_local %struct.stm32_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @tm2bcd(%struct.rtc_time*) #1

declare dso_local i32 @stm32_rtc_wpr_unlock(%struct.stm32_rtc*) #1

declare dso_local i32 @stm32_rtc_enter_init_mode(%struct.stm32_rtc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @stm32_rtc_exit_init_mode(%struct.stm32_rtc*) #1

declare dso_local i32 @stm32_rtc_wait_sync(%struct.stm32_rtc*) #1

declare dso_local i32 @stm32_rtc_wpr_lock(%struct.stm32_rtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
