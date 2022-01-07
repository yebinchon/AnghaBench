; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_rt2880_wdt.c_rt288x_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_rt2880_wdt.c_rt288x_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.device*, i32 }
%struct.device = type { i32 }
%struct.platform_device = type { %struct.device }

@rt288x_wdt_base = common dso_local global i32 0, align 4
@rt288x_wdt_clk = common dso_local global i32 0, align 4
@rt288x_wdt_reset = common dso_local global i32 0, align 4
@RALINK_WDT_PRESCALE = common dso_local global i32 0, align 4
@rt288x_wdt_freq = common dso_local global i32 0, align 4
@rt288x_wdt_dev = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@nowayout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rt288x_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt288x_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %8, i32 0)
  store i32 %9, i32* @rt288x_wdt_base, align 4
  %10 = load i32, i32* @rt288x_wdt_base, align 4
  %11 = call i64 @IS_ERR(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @rt288x_wdt_base, align 4
  %15 = call i32 @PTR_ERR(i32 %14)
  store i32 %15, i32* %2, align 4
  br label %59

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 @devm_clk_get(%struct.device* %17, i32* null)
  store i32 %18, i32* @rt288x_wdt_clk, align 4
  %19 = load i32, i32* @rt288x_wdt_clk, align 4
  %20 = call i64 @IS_ERR(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @rt288x_wdt_clk, align 4
  %24 = call i32 @PTR_ERR(i32 %23)
  store i32 %24, i32* %2, align 4
  br label %59

25:                                               ; preds = %16
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i32 @devm_reset_control_get_exclusive(%struct.device* %26, i32* null)
  store i32 %27, i32* @rt288x_wdt_reset, align 4
  %28 = load i32, i32* @rt288x_wdt_reset, align 4
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @rt288x_wdt_reset, align 4
  %33 = call i32 @reset_control_deassert(i32 %32)
  br label %34

34:                                               ; preds = %31, %25
  %35 = load i32, i32* @rt288x_wdt_clk, align 4
  %36 = call i32 @clk_get_rate(i32 %35)
  %37 = load i32, i32* @RALINK_WDT_PRESCALE, align 4
  %38 = sdiv i32 %36, %37
  store i32 %38, i32* @rt288x_wdt_freq, align 4
  %39 = call i32 (...) @rt288x_wdt_bootcause()
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rt288x_wdt_dev, i32 0, i32 2), align 8
  %40 = load i32, i32* @rt288x_wdt_freq, align 4
  %41 = sext i32 %40 to i64
  %42 = udiv i64 65535, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rt288x_wdt_dev, i32 0, i32 0), align 8
  %44 = load %struct.device*, %struct.device** %4, align 8
  store %struct.device* %44, %struct.device** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rt288x_wdt_dev, i32 0, i32 1), align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rt288x_wdt_dev, i32 0, i32 0), align 8
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = call i32 @watchdog_init_timeout(%struct.TYPE_6__* @rt288x_wdt_dev, i32 %45, %struct.device* %46)
  %48 = load i32, i32* @nowayout, align 4
  %49 = call i32 @watchdog_set_nowayout(%struct.TYPE_6__* @rt288x_wdt_dev, i32 %48)
  %50 = call i32 @watchdog_stop_on_reboot(%struct.TYPE_6__* @rt288x_wdt_dev)
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = call i32 @devm_watchdog_register_device(%struct.device* %51, %struct.TYPE_6__* @rt288x_wdt_dev)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %34
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = call i32 @dev_info(%struct.device* %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %34
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %22, %13
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @devm_reset_control_get_exclusive(%struct.device*, i32*) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @rt288x_wdt_bootcause(...) #1

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_6__*, i32, %struct.device*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @watchdog_stop_on_reboot(%struct.TYPE_6__*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.TYPE_6__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
