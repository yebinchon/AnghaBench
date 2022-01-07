; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_omap_rtc_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_omap_rtc_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.omap_rtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.omap_rtc*)*, i64, i32 (%struct.omap_rtc*)* }

@OMAP_RTC_INTERRUPTS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_IRQWAKEEN = common dso_local global i32 0, align 4
@OMAP_RTC_INTERRUPTS_IT_ALARM = common dso_local global i32 0, align 4
@OMAP_RTC_IRQWAKEEN_ALARM_WAKEEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @omap_rtc_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_rtc_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.omap_rtc* @dev_get_drvdata(%struct.device* %8)
  store %struct.omap_rtc* %9, %struct.omap_rtc** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = call i32 (...) @local_irq_disable()
  %11 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %12 = call i32 @rtc_wait_not_busy(%struct.omap_rtc* %11)
  %13 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %14 = load i32, i32* @OMAP_RTC_INTERRUPTS_REG, align 4
  %15 = call i32 @rtc_read(%struct.omap_rtc* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %17 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %24 = load i32, i32* @OMAP_RTC_IRQWAKEEN, align 4
  %25 = call i32 @rtc_read(%struct.omap_rtc* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* @OMAP_RTC_INTERRUPTS_IT_ALARM, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @OMAP_RTC_IRQWAKEEN_ALARM_WAKEEN, align 4
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %45

36:                                               ; preds = %26
  %37 = load i32, i32* @OMAP_RTC_INTERRUPTS_IT_ALARM, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* @OMAP_RTC_IRQWAKEEN_ALARM_WAKEEN, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %36, %29
  %46 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %47 = call i32 @rtc_wait_not_busy(%struct.omap_rtc* %46)
  %48 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %49 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32 (%struct.omap_rtc*)*, i32 (%struct.omap_rtc*)** %51, align 8
  %53 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %54 = call i32 %52(%struct.omap_rtc* %53)
  %55 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %56 = load i32, i32* @OMAP_RTC_INTERRUPTS_REG, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @rtc_write(%struct.omap_rtc* %55, i32 %56, i32 %57)
  %59 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %60 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %45
  %66 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %67 = load i32, i32* @OMAP_RTC_IRQWAKEEN, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @rtc_write(%struct.omap_rtc* %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %45
  %71 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %72 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32 (%struct.omap_rtc*)*, i32 (%struct.omap_rtc*)** %74, align 8
  %76 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %77 = call i32 %75(%struct.omap_rtc* %76)
  %78 = call i32 (...) @local_irq_enable()
  ret i32 0
}

declare dso_local %struct.omap_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @rtc_wait_not_busy(%struct.omap_rtc*) #1

declare dso_local i32 @rtc_read(%struct.omap_rtc*, i32) #1

declare dso_local i32 @rtc_write(%struct.omap_rtc*, i32, i32) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
