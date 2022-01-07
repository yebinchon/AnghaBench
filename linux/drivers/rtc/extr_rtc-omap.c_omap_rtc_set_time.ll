; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_omap_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_omap_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }
%struct.omap_rtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.omap_rtc*)*, i32 (%struct.omap_rtc*)* }

@OMAP_RTC_YEARS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_MONTHS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_DAYS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_HOURS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_MINUTES_REG = common dso_local global i32 0, align 4
@OMAP_RTC_SECONDS_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @omap_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.omap_rtc*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.omap_rtc* @dev_get_drvdata(%struct.device* %6)
  store %struct.omap_rtc* %7, %struct.omap_rtc** %5, align 8
  %8 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %9 = call i32 @tm2bcd(%struct.rtc_time* %8)
  %10 = call i32 (...) @local_irq_disable()
  %11 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %12 = call i32 @rtc_wait_not_busy(%struct.omap_rtc* %11)
  %13 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %14 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32 (%struct.omap_rtc*)*, i32 (%struct.omap_rtc*)** %16, align 8
  %18 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %19 = call i32 %17(%struct.omap_rtc* %18)
  %20 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %21 = load i32, i32* @OMAP_RTC_YEARS_REG, align 4
  %22 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %23 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @rtc_write(%struct.omap_rtc* %20, i32 %21, i32 %24)
  %26 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %27 = load i32, i32* @OMAP_RTC_MONTHS_REG, align 4
  %28 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %29 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @rtc_write(%struct.omap_rtc* %26, i32 %27, i32 %30)
  %32 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %33 = load i32, i32* @OMAP_RTC_DAYS_REG, align 4
  %34 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %35 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rtc_write(%struct.omap_rtc* %32, i32 %33, i32 %36)
  %38 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %39 = load i32, i32* @OMAP_RTC_HOURS_REG, align 4
  %40 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %41 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @rtc_write(%struct.omap_rtc* %38, i32 %39, i32 %42)
  %44 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %45 = load i32, i32* @OMAP_RTC_MINUTES_REG, align 4
  %46 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %47 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @rtc_write(%struct.omap_rtc* %44, i32 %45, i32 %48)
  %50 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %51 = load i32, i32* @OMAP_RTC_SECONDS_REG, align 4
  %52 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %53 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @rtc_write(%struct.omap_rtc* %50, i32 %51, i32 %54)
  %56 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %57 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (%struct.omap_rtc*)*, i32 (%struct.omap_rtc*)** %59, align 8
  %61 = load %struct.omap_rtc*, %struct.omap_rtc** %5, align 8
  %62 = call i32 %60(%struct.omap_rtc* %61)
  %63 = call i32 (...) @local_irq_enable()
  ret i32 0
}

declare dso_local %struct.omap_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @tm2bcd(%struct.rtc_time*) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @rtc_wait_not_busy(%struct.omap_rtc*) #1

declare dso_local i32 @rtc_write(%struct.omap_rtc*, i32, i32) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
