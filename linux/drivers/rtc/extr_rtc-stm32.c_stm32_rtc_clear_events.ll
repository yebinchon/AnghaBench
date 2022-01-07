; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stm32.c_stm32_rtc_clear_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stm32.c_stm32_rtc_clear_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_rtc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.stm32_rtc_registers }
%struct.stm32_rtc_registers = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_rtc*, i32)* @stm32_rtc_clear_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_rtc_clear_events(%struct.stm32_rtc* %0, i32 %1) #0 {
  %3 = alloca %struct.stm32_rtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stm32_rtc_registers*, align 8
  store %struct.stm32_rtc* %0, %struct.stm32_rtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.stm32_rtc*, %struct.stm32_rtc** %3, align 8
  %7 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.stm32_rtc_registers* %9, %struct.stm32_rtc_registers** %5, align 8
  %10 = load %struct.stm32_rtc*, %struct.stm32_rtc** %3, align 8
  %11 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %5, align 8
  %14 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = call i32 @readl_relaxed(i64 %16)
  %18 = load i32, i32* %4, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = load %struct.stm32_rtc*, %struct.stm32_rtc** %3, align 8
  %22 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %5, align 8
  %25 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = call i32 @writel_relaxed(i32 %20, i64 %27)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
