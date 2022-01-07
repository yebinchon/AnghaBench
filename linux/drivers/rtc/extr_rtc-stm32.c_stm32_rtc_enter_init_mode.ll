; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stm32.c_stm32_rtc_enter_init_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stm32.c_stm32_rtc_enter_init_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_rtc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.stm32_rtc_registers }
%struct.stm32_rtc_registers = type { i32 }

@STM32_RTC_ISR_INITF = common dso_local global i32 0, align 4
@STM32_RTC_ISR_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_rtc*)* @stm32_rtc_enter_init_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_rtc_enter_init_mode(%struct.stm32_rtc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm32_rtc*, align 8
  %4 = alloca %struct.stm32_rtc_registers*, align 8
  %5 = alloca i32, align 4
  store %struct.stm32_rtc* %0, %struct.stm32_rtc** %3, align 8
  %6 = load %struct.stm32_rtc*, %struct.stm32_rtc** %3, align 8
  %7 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.stm32_rtc_registers* %9, %struct.stm32_rtc_registers** %4, align 8
  %10 = load %struct.stm32_rtc*, %struct.stm32_rtc** %3, align 8
  %11 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %4, align 8
  %14 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %12, %16
  %18 = call i32 @readl_relaxed(i64 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @STM32_RTC_ISR_INITF, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %50, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @STM32_RTC_ISR_INIT, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.stm32_rtc*, %struct.stm32_rtc** %3, align 8
  %29 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %4, align 8
  %32 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %30, %34
  %36 = call i32 @writel_relaxed(i32 %27, i64 %35)
  %37 = load %struct.stm32_rtc*, %struct.stm32_rtc** %3, align 8
  %38 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %4, align 8
  %41 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %39, %43
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @STM32_RTC_ISR_INITF, align 4
  %48 = and i32 %46, %47
  %49 = call i32 @readl_relaxed_poll_timeout_atomic(i64 %44, i32 %45, i32 %48, i32 10, i32 100000)
  store i32 %49, i32* %2, align 4
  br label %51

50:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %23
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed_poll_timeout_atomic(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
