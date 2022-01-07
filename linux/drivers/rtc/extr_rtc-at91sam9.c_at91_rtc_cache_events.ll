; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-at91sam9.c_at91_rtc_cache_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-at91sam9.c_at91_rtc_cache_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sam9_rtc = type { i32 }

@MR = common dso_local global i32 0, align 4
@AT91_RTT_ALMIEN = common dso_local global i32 0, align 4
@AT91_RTT_RTTINCIEN = common dso_local global i32 0, align 4
@SR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@AT91_RTT_ALMS = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i32 0, align 4
@AT91_RTT_RTTINC = common dso_local global i32 0, align 4
@RTC_UF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sam9_rtc*)* @at91_rtc_cache_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_rtc_cache_events(%struct.sam9_rtc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sam9_rtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sam9_rtc* %0, %struct.sam9_rtc** %3, align 8
  %6 = load %struct.sam9_rtc*, %struct.sam9_rtc** %3, align 8
  %7 = load i32, i32* @MR, align 4
  %8 = call i32 @rtt_readl(%struct.sam9_rtc* %6, i32 %7)
  %9 = load i32, i32* @AT91_RTT_ALMIEN, align 4
  %10 = load i32, i32* @AT91_RTT_RTTINCIEN, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.sam9_rtc*, %struct.sam9_rtc** %3, align 8
  %14 = load i32, i32* @SR, align 4
  %15 = call i32 @rtt_readl(%struct.sam9_rtc* %13, i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = ashr i32 %16, 16
  %18 = and i32 %15, %17
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %2, align 4
  br label %51

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @AT91_RTT_ALMS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load i32, i32* @RTC_AF, align 4
  %30 = load i32, i32* @RTC_IRQF, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.sam9_rtc*, %struct.sam9_rtc** %3, align 8
  %33 = getelementptr inbounds %struct.sam9_rtc, %struct.sam9_rtc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %28, %23
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @AT91_RTT_RTTINC, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load i32, i32* @RTC_UF, align 4
  %43 = load i32, i32* @RTC_IRQF, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.sam9_rtc*, %struct.sam9_rtc** %3, align 8
  %46 = getelementptr inbounds %struct.sam9_rtc, %struct.sam9_rtc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %41, %36
  %50 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %21
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @rtt_readl(%struct.sam9_rtc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
