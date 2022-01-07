; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-at91sam9.c_at91_rtc_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-at91sam9.c_at91_rtc_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sam9_rtc = type { i32 }

@MR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"alarm_irq_enable: enabled=%08x, mr %08x\0A\00", align 1
@AT91_RTT_ALMIEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @at91_rtc_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_rtc_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sam9_rtc*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.sam9_rtc* @dev_get_drvdata(%struct.device* %7)
  store %struct.sam9_rtc* %8, %struct.sam9_rtc** %5, align 8
  %9 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %10 = load i32, i32* @MR, align 4
  %11 = call i32 @rtt_readl(%struct.sam9_rtc* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @dev_dbg(%struct.device* %12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %20 = load i32, i32* @MR, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @AT91_RTT_ALMIEN, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @rtt_writel(%struct.sam9_rtc* %19, i32 %20, i32 %23)
  br label %33

25:                                               ; preds = %2
  %26 = load %struct.sam9_rtc*, %struct.sam9_rtc** %5, align 8
  %27 = load i32, i32* @MR, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @AT91_RTT_ALMIEN, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = call i32 @rtt_writel(%struct.sam9_rtc* %26, i32 %27, i32 %31)
  br label %33

33:                                               ; preds = %25, %18
  ret i32 0
}

declare dso_local %struct.sam9_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtt_readl(%struct.sam9_rtc*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @rtt_writel(%struct.sam9_rtc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
