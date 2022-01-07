; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stm32.c_stm32_rtc_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stm32.c_stm32_rtc_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.stm32_rtc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.stm32_rtc_events, %struct.stm32_rtc_registers }
%struct.stm32_rtc_events = type { i32 }
%struct.stm32_rtc_registers = type { i32 }

@STM32_RTC_CR_ALRAIE = common dso_local global i32 0, align 4
@STM32_RTC_CR_ALRAE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @stm32_rtc_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_rtc_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stm32_rtc*, align 8
  %6 = alloca %struct.stm32_rtc_registers*, align 8
  %7 = alloca %struct.stm32_rtc_events*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.stm32_rtc* @dev_get_drvdata(%struct.device* %9)
  store %struct.stm32_rtc* %10, %struct.stm32_rtc** %5, align 8
  %11 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %12 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store %struct.stm32_rtc_registers* %14, %struct.stm32_rtc_registers** %6, align 8
  %15 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %16 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.stm32_rtc_events* %18, %struct.stm32_rtc_events** %7, align 8
  %19 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %20 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %6, align 8
  %23 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %21, %25
  %27 = call i32 @readl_relaxed(i64 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %29 = call i32 @stm32_rtc_wpr_unlock(%struct.stm32_rtc* %28)
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %2
  %33 = load i32, i32* @STM32_RTC_CR_ALRAIE, align 4
  %34 = load i32, i32* @STM32_RTC_CR_ALRAE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %45

38:                                               ; preds = %2
  %39 = load i32, i32* @STM32_RTC_CR_ALRAIE, align 4
  %40 = load i32, i32* @STM32_RTC_CR_ALRAE, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %38, %32
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %48 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %6, align 8
  %51 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %49, %53
  %55 = call i32 @writel_relaxed(i32 %46, i64 %54)
  %56 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %57 = load %struct.stm32_rtc_events*, %struct.stm32_rtc_events** %7, align 8
  %58 = getelementptr inbounds %struct.stm32_rtc_events, %struct.stm32_rtc_events* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @stm32_rtc_clear_event_flags(%struct.stm32_rtc* %56, i32 %59)
  %61 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %62 = call i32 @stm32_rtc_wpr_lock(%struct.stm32_rtc* %61)
  ret i32 0
}

declare dso_local %struct.stm32_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @stm32_rtc_wpr_unlock(%struct.stm32_rtc*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @stm32_rtc_clear_event_flags(%struct.stm32_rtc*, i32) #1

declare dso_local i32 @stm32_rtc_wpr_lock(%struct.stm32_rtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
