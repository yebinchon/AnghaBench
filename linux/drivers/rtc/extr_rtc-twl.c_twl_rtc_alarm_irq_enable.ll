; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-twl.c_twl_rtc_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-twl.c_twl_rtc_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.twl_rtc = type { i32 }

@BIT_RTC_INTERRUPTS_REG_IT_ALARM_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @twl_rtc_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_rtc_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.twl_rtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.platform_device* @to_platform_device(%struct.device* %9)
  store %struct.platform_device* %10, %struct.platform_device** %5, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.twl_rtc* @dev_get_drvdata(%struct.device* %11)
  store %struct.twl_rtc* %12, %struct.twl_rtc** %6, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %14 = call i32 @platform_get_irq(%struct.platform_device* %13, i32 0)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load %struct.twl_rtc*, %struct.twl_rtc** %6, align 8
  %19 = load i32, i32* @BIT_RTC_INTERRUPTS_REG_IT_ALARM_M, align 4
  %20 = call i32 @set_rtc_irq_bit(%struct.twl_rtc* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.device*, %struct.device** %3, align 8
  %22 = call i64 @device_can_wakeup(%struct.device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load %struct.twl_rtc*, %struct.twl_rtc** %6, align 8
  %26 = getelementptr inbounds %struct.twl_rtc, %struct.twl_rtc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @enable_irq_wake(i32 %30)
  %32 = load %struct.twl_rtc*, %struct.twl_rtc** %6, align 8
  %33 = getelementptr inbounds %struct.twl_rtc, %struct.twl_rtc* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %24, %17
  br label %49

35:                                               ; preds = %2
  %36 = load %struct.twl_rtc*, %struct.twl_rtc** %6, align 8
  %37 = load i32, i32* @BIT_RTC_INTERRUPTS_REG_IT_ALARM_M, align 4
  %38 = call i32 @mask_rtc_irq_bit(%struct.twl_rtc* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.twl_rtc*, %struct.twl_rtc** %6, align 8
  %40 = getelementptr inbounds %struct.twl_rtc, %struct.twl_rtc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @disable_irq_wake(i32 %44)
  %46 = load %struct.twl_rtc*, %struct.twl_rtc** %6, align 8
  %47 = getelementptr inbounds %struct.twl_rtc, %struct.twl_rtc* %46, i32 0, i32 0
  store i32 0, i32* %47, align 4
  br label %48

48:                                               ; preds = %43, %35
  br label %49

49:                                               ; preds = %48, %34
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.twl_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @set_rtc_irq_bit(%struct.twl_rtc*, i32) #1

declare dso_local i64 @device_can_wakeup(%struct.device*) #1

declare dso_local i32 @enable_irq_wake(i32) #1

declare dso_local i32 @mask_rtc_irq_bit(%struct.twl_rtc*, i32) #1

declare dso_local i32 @disable_irq_wake(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
