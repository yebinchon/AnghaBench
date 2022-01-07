; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-armada38x.c_armada38x_rtc_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-armada38x.c_armada38x_rtc_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.armada38x_rtc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RTC_IRQ1_CONF = common dso_local global i32 0, align 4
@RTC_IRQ_AL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @armada38x_rtc_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada38x_rtc_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.armada38x_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.armada38x_rtc* @dev_get_drvdata(%struct.device* %8)
  store %struct.armada38x_rtc* %9, %struct.armada38x_rtc** %5, align 8
  %10 = load i32, i32* @RTC_IRQ1_CONF, align 4
  %11 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %12 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ALARM_REG(i32 %10, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %18 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %17, i32 0, i32 0
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i32, i32* @RTC_IRQ_AL_EN, align 4
  %25 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @rtc_delayed_write(i32 %24, %struct.armada38x_rtc* %25, i32 %26)
  br label %32

28:                                               ; preds = %2
  %29 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @rtc_delayed_write(i32 0, %struct.armada38x_rtc* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %34 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %33, i32 0, i32 0
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  ret i32 0
}

declare dso_local %struct.armada38x_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ALARM_REG(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rtc_delayed_write(i32, %struct.armada38x_rtc*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
