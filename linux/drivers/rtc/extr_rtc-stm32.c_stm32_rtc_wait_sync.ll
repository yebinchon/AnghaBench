; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stm32.c_stm32_rtc_wait_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stm32.c_stm32_rtc_wait_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_rtc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.stm32_rtc_registers }
%struct.stm32_rtc_registers = type { i32 }

@STM32_RTC_ISR_RSF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_rtc*)* @stm32_rtc_wait_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_rtc_wait_sync(%struct.stm32_rtc* %0) #0 {
  %2 = alloca %struct.stm32_rtc*, align 8
  %3 = alloca %struct.stm32_rtc_registers*, align 8
  %4 = alloca i32, align 4
  store %struct.stm32_rtc* %0, %struct.stm32_rtc** %2, align 8
  %5 = load %struct.stm32_rtc*, %struct.stm32_rtc** %2, align 8
  %6 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.stm32_rtc_registers* %8, %struct.stm32_rtc_registers** %3, align 8
  %9 = load %struct.stm32_rtc*, %struct.stm32_rtc** %2, align 8
  %10 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %3, align 8
  %13 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %11, %15
  %17 = call i32 @readl_relaxed(i64 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @STM32_RTC_ISR_RSF, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.stm32_rtc*, %struct.stm32_rtc** %2, align 8
  %24 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %3, align 8
  %27 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %25, %29
  %31 = call i32 @writel_relaxed(i32 %22, i64 %30)
  %32 = load %struct.stm32_rtc*, %struct.stm32_rtc** %2, align 8
  %33 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %3, align 8
  %36 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %34, %38
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @STM32_RTC_ISR_RSF, align 4
  %43 = and i32 %41, %42
  %44 = call i32 @readl_relaxed_poll_timeout_atomic(i64 %39, i32 %40, i32 %43, i32 10, i32 100000)
  ret i32 %44
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
