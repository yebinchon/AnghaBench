; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stm32.c_stm32_rtc_alarm_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stm32.c_stm32_rtc_alarm_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_rtc = type { %struct.TYPE_4__*, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.stm32_rtc_events, %struct.stm32_rtc_registers }
%struct.stm32_rtc_events = type { i32 }
%struct.stm32_rtc_registers = type { i32, i64 }

@STM32_RTC_CR_ALRAIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Alarm occurred\0A\00", align 1
@RTC_IRQF = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @stm32_rtc_alarm_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_rtc_alarm_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stm32_rtc*, align 8
  %6 = alloca %struct.stm32_rtc_registers*, align 8
  %7 = alloca %struct.stm32_rtc_events*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.stm32_rtc*
  store %struct.stm32_rtc* %11, %struct.stm32_rtc** %5, align 8
  %12 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %13 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store %struct.stm32_rtc_registers* %15, %struct.stm32_rtc_registers** %6, align 8
  %16 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %17 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.stm32_rtc_events* %19, %struct.stm32_rtc_events** %7, align 8
  %20 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %21 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %26 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %6, align 8
  %29 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = call i32 @readl_relaxed(i64 %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %34 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %6, align 8
  %37 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %35, %39
  %41 = call i32 @readl_relaxed(i64 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.stm32_rtc_events*, %struct.stm32_rtc_events** %7, align 8
  %44 = getelementptr inbounds %struct.stm32_rtc_events, %struct.stm32_rtc_events* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %2
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @STM32_RTC_CR_ALRAIE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %48
  %54 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %55 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = call i32 @dev_dbg(i32* %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %60 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* @RTC_IRQF, align 4
  %63 = load i32, i32* @RTC_AF, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @rtc_update_irq(%struct.TYPE_4__* %61, i32 1, i32 %64)
  %66 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %67 = load %struct.stm32_rtc_events*, %struct.stm32_rtc_events** %7, align 8
  %68 = getelementptr inbounds %struct.stm32_rtc_events, %struct.stm32_rtc_events* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @stm32_rtc_clear_event_flags(%struct.stm32_rtc* %66, i32 %69)
  br label %71

71:                                               ; preds = %53, %48, %2
  %72 = load %struct.stm32_rtc*, %struct.stm32_rtc** %5, align 8
  %73 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %77
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @rtc_update_irq(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @stm32_rtc_clear_event_flags(%struct.stm32_rtc*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
