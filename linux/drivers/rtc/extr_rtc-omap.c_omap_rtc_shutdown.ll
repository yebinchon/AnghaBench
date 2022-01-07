; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_omap_rtc_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_omap_rtc_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.omap_rtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.omap_rtc*)*, i32 (%struct.omap_rtc*)* }

@OMAP_RTC_INTERRUPTS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_INTERRUPTS_IT_ALARM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @omap_rtc_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_rtc_shutdown(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.omap_rtc*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.omap_rtc* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.omap_rtc* %6, %struct.omap_rtc** %3, align 8
  %7 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %8 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32 (%struct.omap_rtc*)*, i32 (%struct.omap_rtc*)** %10, align 8
  %12 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %13 = call i32 %11(%struct.omap_rtc* %12)
  %14 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %15 = load i32, i32* @OMAP_RTC_INTERRUPTS_REG, align 4
  %16 = call i32 @rtc_read(%struct.omap_rtc* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @OMAP_RTC_INTERRUPTS_IT_ALARM, align 4
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %21 = load i32, i32* @OMAP_RTC_INTERRUPTS_REG, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @rtc_write(%struct.omap_rtc* %20, i32 %21, i32 %22)
  %24 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %25 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.omap_rtc*)*, i32 (%struct.omap_rtc*)** %27, align 8
  %29 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %30 = call i32 %28(%struct.omap_rtc* %29)
  ret void
}

declare dso_local %struct.omap_rtc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @rtc_read(%struct.omap_rtc*, i32) #1

declare dso_local i32 @rtc_write(%struct.omap_rtc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
