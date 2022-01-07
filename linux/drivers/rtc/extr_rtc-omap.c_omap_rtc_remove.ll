; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_omap_rtc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-omap.c_omap_rtc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_rtc = type { i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 (%struct.omap_rtc*)*, i32 (%struct.omap_rtc*)* }
%struct.platform_device = type { i32 }

@pm_power_off = common dso_local global i32* null, align 8
@omap_rtc_power_off = common dso_local global i32* null, align 8
@omap_rtc_power_off_rtc = common dso_local global %struct.omap_rtc* null, align 8
@OMAP_RTC_INTERRUPTS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_OSC_REG = common dso_local global i32 0, align 4
@OMAP_RTC_OSC_SEL_32KCLK_SRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap_rtc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_rtc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.omap_rtc*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.omap_rtc* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.omap_rtc* %6, %struct.omap_rtc** %3, align 8
  %7 = load i32*, i32** @pm_power_off, align 8
  %8 = load i32*, i32** @omap_rtc_power_off, align 8
  %9 = icmp eq i32* %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.omap_rtc*, %struct.omap_rtc** @omap_rtc_power_off_rtc, align 8
  %12 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %13 = icmp eq %struct.omap_rtc* %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32* null, i32** @pm_power_off, align 8
  store %struct.omap_rtc* null, %struct.omap_rtc** @omap_rtc_power_off_rtc, align 8
  br label %15

15:                                               ; preds = %14, %10, %1
  %16 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 @device_init_wakeup(i32* %17, i32 0)
  %19 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %20 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @IS_ERR(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %15
  %25 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %26 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @clk_disable_unprepare(i32 %27)
  br label %29

29:                                               ; preds = %24, %15
  %30 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %31 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32 (%struct.omap_rtc*)*, i32 (%struct.omap_rtc*)** %33, align 8
  %35 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %36 = call i32 %34(%struct.omap_rtc* %35)
  %37 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %38 = load i32, i32* @OMAP_RTC_INTERRUPTS_REG, align 4
  %39 = call i32 @rtc_write(%struct.omap_rtc* %37, i32 %38, i32 0)
  %40 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %41 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %29
  %45 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %46 = load i32, i32* @OMAP_RTC_OSC_REG, align 4
  %47 = call i32 @rtc_read(%struct.omap_rtc* %45, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* @OMAP_RTC_OSC_SEL_32KCLK_SRC, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %4, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %53 = load i32, i32* @OMAP_RTC_OSC_REG, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @rtc_write(%struct.omap_rtc* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %44, %29
  %57 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %58 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32 (%struct.omap_rtc*)*, i32 (%struct.omap_rtc*)** %60, align 8
  %62 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %63 = call i32 %61(%struct.omap_rtc* %62)
  %64 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i32 @pm_runtime_put_sync(i32* %65)
  %67 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 @pm_runtime_disable(i32* %68)
  %70 = load %struct.omap_rtc*, %struct.omap_rtc** %3, align 8
  %71 = getelementptr inbounds %struct.omap_rtc, %struct.omap_rtc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @pinctrl_unregister(i32 %72)
  ret i32 0
}

declare dso_local %struct.omap_rtc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @rtc_write(%struct.omap_rtc*, i32, i32) #1

declare dso_local i32 @rtc_read(%struct.omap_rtc*, i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pinctrl_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
