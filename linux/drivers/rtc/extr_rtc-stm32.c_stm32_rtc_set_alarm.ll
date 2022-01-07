; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stm32.c_stm32_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stm32.c_stm32_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32 }
%struct.stm32_rtc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.stm32_rtc_registers }
%struct.stm32_rtc_registers = type { i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Alarm can be set only on upcoming month.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@STM32_RTC_ALRMXR_DATE_SHIFT = common dso_local global i32 0, align 4
@STM32_RTC_ALRMXR_DATE = common dso_local global i32 0, align 4
@STM32_RTC_ALRMXR_PM = common dso_local global i32 0, align 4
@STM32_RTC_ALRMXR_HOUR_SHIFT = common dso_local global i32 0, align 4
@STM32_RTC_ALRMXR_HOUR = common dso_local global i32 0, align 4
@STM32_RTC_ALRMXR_MIN_SHIFT = common dso_local global i32 0, align 4
@STM32_RTC_ALRMXR_MIN = common dso_local global i32 0, align 4
@STM32_RTC_ALRMXR_SEC_SHIFT = common dso_local global i32 0, align 4
@STM32_RTC_ALRMXR_SEC = common dso_local global i32 0, align 4
@STM32_RTC_CR_ALRAE = common dso_local global i32 0, align 4
@STM32_RTC_ISR_ALRAWF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Alarm update not allowed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @stm32_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.stm32_rtc*, align 8
  %7 = alloca %struct.stm32_rtc_registers*, align 8
  %8 = alloca %struct.rtc_time*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.stm32_rtc* @dev_get_drvdata(%struct.device* %13)
  store %struct.stm32_rtc* %14, %struct.stm32_rtc** %6, align 8
  %15 = load %struct.stm32_rtc*, %struct.stm32_rtc** %6, align 8
  %16 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.stm32_rtc_registers* %18, %struct.stm32_rtc_registers** %7, align 8
  %19 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %20 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %19, i32 0, i32 1
  store %struct.rtc_time* %20, %struct.rtc_time** %8, align 8
  store i32 0, i32* %12, align 4
  %21 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %22 = call i32 @tm2bcd(%struct.rtc_time* %21)
  %23 = load %struct.stm32_rtc*, %struct.stm32_rtc** %6, align 8
  %24 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %25 = call i64 @stm32_rtc_valid_alrm(%struct.stm32_rtc* %23, %struct.rtc_time* %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %136

32:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  %33 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %34 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @STM32_RTC_ALRMXR_DATE_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* @STM32_RTC_ALRMXR_DATE, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* %11, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* @STM32_RTC_ALRMXR_PM, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %11, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %11, align 4
  %46 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %47 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @STM32_RTC_ALRMXR_HOUR_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* @STM32_RTC_ALRMXR_HOUR, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* %11, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %11, align 4
  %55 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %56 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @STM32_RTC_ALRMXR_MIN_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* @STM32_RTC_ALRMXR_MIN, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %11, align 4
  %64 = load %struct.rtc_time*, %struct.rtc_time** %8, align 8
  %65 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @STM32_RTC_ALRMXR_SEC_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = load i32, i32* @STM32_RTC_ALRMXR_SEC, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* %11, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %11, align 4
  %73 = load %struct.stm32_rtc*, %struct.stm32_rtc** %6, align 8
  %74 = call i32 @stm32_rtc_wpr_unlock(%struct.stm32_rtc* %73)
  %75 = load %struct.stm32_rtc*, %struct.stm32_rtc** %6, align 8
  %76 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %7, align 8
  %79 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %77, %81
  %83 = call i32 @readl_relaxed(i64 %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* @STM32_RTC_CR_ALRAE, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %9, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.stm32_rtc*, %struct.stm32_rtc** %6, align 8
  %90 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %7, align 8
  %93 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %91, %95
  %97 = call i32 @writel_relaxed(i32 %88, i64 %96)
  %98 = load %struct.stm32_rtc*, %struct.stm32_rtc** %6, align 8
  %99 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %7, align 8
  %102 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %100, %104
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @STM32_RTC_ISR_ALRAWF, align 4
  %109 = and i32 %107, %108
  %110 = call i32 @readl_relaxed_poll_timeout_atomic(i64 %105, i32 %106, i32 %109, i32 10, i32 100000)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %32
  %114 = load %struct.device*, %struct.device** %4, align 8
  %115 = call i32 @dev_err(%struct.device* %114, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %132

116:                                              ; preds = %32
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.stm32_rtc*, %struct.stm32_rtc** %6, align 8
  %119 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %7, align 8
  %122 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %120, %124
  %126 = call i32 @writel_relaxed(i32 %117, i64 %125)
  %127 = load %struct.device*, %struct.device** %4, align 8
  %128 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %129 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @stm32_rtc_alarm_irq_enable(%struct.device* %127, i32 %130)
  br label %132

132:                                              ; preds = %116, %113
  %133 = load %struct.stm32_rtc*, %struct.stm32_rtc** %6, align 8
  %134 = call i32 @stm32_rtc_wpr_lock(%struct.stm32_rtc* %133)
  %135 = load i32, i32* %12, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %132, %27
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local %struct.stm32_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @tm2bcd(%struct.rtc_time*) #1

declare dso_local i64 @stm32_rtc_valid_alrm(%struct.stm32_rtc*, %struct.rtc_time*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @stm32_rtc_wpr_unlock(%struct.stm32_rtc*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed_poll_timeout_atomic(i64, i32, i32, i32, i32) #1

declare dso_local i32 @stm32_rtc_alarm_irq_enable(%struct.device*, i32) #1

declare dso_local i32 @stm32_rtc_wpr_lock(%struct.stm32_rtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
