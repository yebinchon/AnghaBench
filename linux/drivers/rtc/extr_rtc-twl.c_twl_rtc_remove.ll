; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-twl.c_twl_rtc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-twl.c_twl_rtc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.twl_rtc = type { i64 }

@BIT_RTC_INTERRUPTS_REG_IT_ALARM_M = common dso_local global i32 0, align 4
@BIT_RTC_INTERRUPTS_REG_IT_TIMER_M = common dso_local global i32 0, align 4
@TWL_6030 = common dso_local global i64 0, align 8
@TWL6030_RTC_INT_MASK = common dso_local global i32 0, align 4
@REG_INT_MSK_LINE_A = common dso_local global i32 0, align 4
@REG_INT_MSK_STS_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @twl_rtc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_rtc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.twl_rtc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.twl_rtc* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.twl_rtc* %5, %struct.twl_rtc** %3, align 8
  %6 = load %struct.twl_rtc*, %struct.twl_rtc** %3, align 8
  %7 = load i32, i32* @BIT_RTC_INTERRUPTS_REG_IT_ALARM_M, align 4
  %8 = call i32 @mask_rtc_irq_bit(%struct.twl_rtc* %6, i32 %7)
  %9 = load %struct.twl_rtc*, %struct.twl_rtc** %3, align 8
  %10 = load i32, i32* @BIT_RTC_INTERRUPTS_REG_IT_TIMER_M, align 4
  %11 = call i32 @mask_rtc_irq_bit(%struct.twl_rtc* %9, i32 %10)
  %12 = load %struct.twl_rtc*, %struct.twl_rtc** %3, align 8
  %13 = getelementptr inbounds %struct.twl_rtc, %struct.twl_rtc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TWL_6030, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load i32, i32* @TWL6030_RTC_INT_MASK, align 4
  %19 = load i32, i32* @REG_INT_MSK_LINE_A, align 4
  %20 = call i32 @twl6030_interrupt_mask(i32 %18, i32 %19)
  %21 = load i32, i32* @TWL6030_RTC_INT_MASK, align 4
  %22 = load i32, i32* @REG_INT_MSK_STS_A, align 4
  %23 = call i32 @twl6030_interrupt_mask(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %17, %1
  ret i32 0
}

declare dso_local %struct.twl_rtc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @mask_rtc_irq_bit(%struct.twl_rtc*, i32) #1

declare dso_local i32 @twl6030_interrupt_mask(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
