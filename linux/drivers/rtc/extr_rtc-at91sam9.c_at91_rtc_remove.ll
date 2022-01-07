; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-at91sam9.c_at91_rtc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-at91sam9.c_at91_rtc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sam9_rtc = type { i32 }

@MR = common dso_local global i32 0, align 4
@AT91_RTT_ALMIEN = common dso_local global i32 0, align 4
@AT91_RTT_RTTINCIEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @at91_rtc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_rtc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sam9_rtc*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.sam9_rtc* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.sam9_rtc* %6, %struct.sam9_rtc** %3, align 8
  %7 = load %struct.sam9_rtc*, %struct.sam9_rtc** %3, align 8
  %8 = load i32, i32* @MR, align 4
  %9 = call i32 @rtt_readl(%struct.sam9_rtc* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.sam9_rtc*, %struct.sam9_rtc** %3, align 8
  %11 = load i32, i32* @MR, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @AT91_RTT_ALMIEN, align 4
  %14 = load i32, i32* @AT91_RTT_RTTINCIEN, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = and i32 %12, %16
  %18 = call i32 @rtt_writel(%struct.sam9_rtc* %10, i32 %11, i32 %17)
  %19 = load %struct.sam9_rtc*, %struct.sam9_rtc** %3, align 8
  %20 = getelementptr inbounds %struct.sam9_rtc, %struct.sam9_rtc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @clk_disable_unprepare(i32 %21)
  ret i32 0
}

declare dso_local %struct.sam9_rtc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @rtt_readl(%struct.sam9_rtc*, i32) #1

declare dso_local i32 @rtt_writel(%struct.sam9_rtc*, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
