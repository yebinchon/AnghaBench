; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-armada38x.c_armada38x_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-armada38x.c_armada38x_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32 }
%struct.armada38x_rtc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.armada38x_rtc*, i32)*, i32 }

@RTC_ALARM1 = common dso_local global i32 0, align 4
@RTC_IRQ1_CONF = common dso_local global i32 0, align 4
@RTC_IRQ_AL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @armada38x_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada38x_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.armada38x_rtc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.armada38x_rtc* @dev_get_drvdata(%struct.device* %11)
  store %struct.armada38x_rtc* %12, %struct.armada38x_rtc** %5, align 8
  %13 = load i32, i32* @RTC_ALARM1, align 4
  %14 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %15 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ALARM_REG(i32 %13, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @RTC_IRQ1_CONF, align 4
  %21 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %22 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ALARM_REG(i32 %20, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %28 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %27, i32 0, i32 0
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %32 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64 (%struct.armada38x_rtc*, i32)*, i64 (%struct.armada38x_rtc*, i32)** %34, align 8
  %36 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i64 %35(%struct.armada38x_rtc* %36, i32 %37)
  store i64 %38, i64* %6, align 8
  %39 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %40 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64 (%struct.armada38x_rtc*, i32)*, i64 (%struct.armada38x_rtc*, i32)** %42, align 8
  %44 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i64 %43(%struct.armada38x_rtc* %44, i32 %45)
  %47 = load i32, i32* @RTC_IRQ_AL_EN, align 4
  %48 = sext i32 %47 to i64
  %49 = and i64 %46, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %10, align 4
  %51 = load %struct.armada38x_rtc*, %struct.armada38x_rtc** %5, align 8
  %52 = getelementptr inbounds %struct.armada38x_rtc, %struct.armada38x_rtc* %51, i32 0, i32 0
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 1, i32 0
  %59 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %60 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %63 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %62, i32 0, i32 1
  %64 = call i32 @rtc_time64_to_tm(i64 %61, i32* %63)
  ret i32 0
}

declare dso_local %struct.armada38x_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ALARM_REG(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rtc_time64_to_tm(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
