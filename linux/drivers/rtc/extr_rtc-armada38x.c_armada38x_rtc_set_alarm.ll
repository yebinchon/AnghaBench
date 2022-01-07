; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-armada38x.c_armada38x_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-armada38x.c_armada38x_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, i32 }
%struct.armada38x_rtc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.armada38x_rtc*)*, i32 }

@RTC_ALARM1 = common dso_local global i32 0, align 4
@RTC_IRQ1_CONF = common dso_local global i32 0, align 4
@RTC_IRQ_AL_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @armada38x_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada38x_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.armada38x_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.armada38x_rtc* @dev_get_drvdata(%struct.device* %10)
  store %struct.armada38x_rtc* %11, %struct.armada38x_rtc** %5, align 8
  %12 = load i32, i32* @RTC_ALARM1, align 4
  %13 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %14 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ALARM_REG(i32 %12, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @RTC_IRQ1_CONF, align 4
  %20 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %21 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ALARM_REG(i32 %19, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %27 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %26, i32 0, i32 1
  %28 = call i64 @rtc_tm_to_time64(i32* %27)
  store i64 %28, i64* %8, align 8
  %29 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %30 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %29, i32 0, i32 0
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @rtc_delayed_write(i64 %33, %struct.armada38x_rtc* %34, i32 %35)
  %37 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %38 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %2
  %42 = load i64, i64* @RTC_IRQ_AL_EN, align 8
  %43 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @rtc_delayed_write(i64 %42, %struct.armada38x_rtc* %43, i32 %44)
  %46 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %47 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (%struct.armada38x_rtc*)*, i32 (%struct.armada38x_rtc*)** %49, align 8
  %51 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %52 = call i32 %50(%struct.armada38x_rtc* %51)
  br label %53

53:                                               ; preds = %41, %2
  %54 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %55 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %54, i32 0, i32 0
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  ret i32 0
}

declare dso_local %struct.armada38x_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ALARM_REG(i32, i32) #1

declare dso_local i64 @rtc_tm_to_time64(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rtc_delayed_write(i64, %struct.armada38x_rtc*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
