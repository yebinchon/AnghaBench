; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_omap_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_omap_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.omap_rtc = type { i32 }

@OMAP_RTC_ALARM_SECONDS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_ALARM_MINUTES_REG = common dso_local global i32 0, align 4
@OMAP_RTC_ALARM_HOURS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_ALARM_DAYS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_ALARM_MONTHS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_ALARM_YEARS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_INTERRUPTS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_INTERRUPTS_IT_ALARM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @omap_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.omap_rtc*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.omap_rtc* @dev_get_drvdata(%struct.device* %7)
  store %struct.omap_rtc* %8, %struct.omap_rtc** %5, align 8
  %9 = call i32 (...) @local_irq_disable()
  %10 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %11 = call i32 @rtc_wait_not_busy(%struct.omap_rtc* %10)
  %12 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %13 = load i32, i32* @OMAP_RTC_ALARM_SECONDS_REG, align 4
  %14 = call i8* @rtc_read(%struct.omap_rtc* %12, i32 %13)
  %15 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %16 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 5
  store i8* %14, i8** %17, align 8
  %18 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %19 = load i32, i32* @OMAP_RTC_ALARM_MINUTES_REG, align 4
  %20 = call i8* @rtc_read(%struct.omap_rtc* %18, i32 %19)
  %21 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %22 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  store i8* %20, i8** %23, align 8
  %24 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %25 = load i32, i32* @OMAP_RTC_ALARM_HOURS_REG, align 4
  %26 = call i8* @rtc_read(%struct.omap_rtc* %24, i32 %25)
  %27 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %28 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  store i8* %26, i8** %29, align 8
  %30 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %31 = load i32, i32* @OMAP_RTC_ALARM_DAYS_REG, align 4
  %32 = call i8* @rtc_read(%struct.omap_rtc* %30, i32 %31)
  %33 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %34 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store i8* %32, i8** %35, align 8
  %36 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %37 = load i32, i32* @OMAP_RTC_ALARM_MONTHS_REG, align 4
  %38 = call i8* @rtc_read(%struct.omap_rtc* %36, i32 %37)
  %39 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %40 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i8* %38, i8** %41, align 8
  %42 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %43 = load i32, i32* @OMAP_RTC_ALARM_YEARS_REG, align 4
  %44 = call i8* @rtc_read(%struct.omap_rtc* %42, i32 %43)
  %45 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %46 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  %48 = call i32 (...) @local_irq_enable()
  %49 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %50 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %49, i32 0, i32 1
  %51 = call i32 @bcd2tm(%struct.TYPE_2__* %50)
  %52 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %53 = load i32, i32* @OMAP_RTC_INTERRUPTS_REG, align 4
  %54 = call i8* @rtc_read(%struct.omap_rtc* %52, i32 %53)
  %55 = ptrtoint i8* %54 to i32
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @OMAP_RTC_INTERRUPTS_IT_ALARM, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %64 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  ret i32 0
}

declare dso_local %struct.omap_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @rtc_wait_not_busy(%struct.omap_rtc*) #1

declare dso_local i8* @rtc_read(%struct.omap_rtc*, i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @bcd2tm(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
