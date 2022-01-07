; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_bcm2835_wdt.c_bcm2835_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_bcm2835_wdt.c_bcm2835_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.bcm2835_wdt = type { i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.bcm2835_pm = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bcm2835_wdt_wdd = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@heartbeat = common dso_local global i32 0, align 4
@nowayout = common dso_local global i32 0, align 4
@WDOG_HW_RUNNING = common dso_local global i32 0, align 4
@pm_power_off = common dso_local global i32* null, align 8
@bcm2835_power_off = common dso_local global i32* null, align 8
@bcm2835_power_off_wdt = common dso_local global %struct.bcm2835_wdt* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Broadcom BCM2835 watchdog timer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm2835_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.bcm2835_pm*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.bcm2835_wdt*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.bcm2835_pm* @dev_get_drvdata(i32 %11)
  store %struct.bcm2835_pm* %12, %struct.bcm2835_pm** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.bcm2835_wdt* @devm_kzalloc(%struct.device* %15, i32 8, i32 %16)
  store %struct.bcm2835_wdt* %17, %struct.bcm2835_wdt** %6, align 8
  %18 = load %struct.bcm2835_wdt*, %struct.bcm2835_wdt** %6, align 8
  %19 = icmp ne %struct.bcm2835_wdt* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %64

23:                                               ; preds = %1
  %24 = load %struct.bcm2835_wdt*, %struct.bcm2835_wdt** %6, align 8
  %25 = getelementptr inbounds %struct.bcm2835_wdt, %struct.bcm2835_wdt* %24, i32 0, i32 1
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.bcm2835_pm*, %struct.bcm2835_pm** %4, align 8
  %28 = getelementptr inbounds %struct.bcm2835_pm, %struct.bcm2835_pm* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bcm2835_wdt*, %struct.bcm2835_wdt** %6, align 8
  %31 = getelementptr inbounds %struct.bcm2835_wdt, %struct.bcm2835_wdt* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.bcm2835_wdt*, %struct.bcm2835_wdt** %6, align 8
  %33 = call i32 @watchdog_set_drvdata(%struct.TYPE_8__* @bcm2835_wdt_wdd, %struct.bcm2835_wdt* %32)
  %34 = load i32, i32* @heartbeat, align 4
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = call i32 @watchdog_init_timeout(%struct.TYPE_8__* @bcm2835_wdt_wdd, i32 %34, %struct.device* %35)
  %37 = load i32, i32* @nowayout, align 4
  %38 = call i32 @watchdog_set_nowayout(%struct.TYPE_8__* @bcm2835_wdt_wdd, i32 %37)
  %39 = load %struct.device*, %struct.device** %5, align 8
  store %struct.device* %39, %struct.device** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bcm2835_wdt_wdd, i32 0, i32 1), align 8
  %40 = load %struct.bcm2835_wdt*, %struct.bcm2835_wdt** %6, align 8
  %41 = call i64 @bcm2835_wdt_is_running(%struct.bcm2835_wdt* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %23
  %44 = load i32, i32* @WDOG_HW_RUNNING, align 4
  %45 = call i32 @set_bit(i32 %44, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bcm2835_wdt_wdd, i32 0, i32 0))
  br label %46

46:                                               ; preds = %43, %23
  %47 = call i32 @watchdog_set_restart_priority(%struct.TYPE_8__* @bcm2835_wdt_wdd, i32 128)
  %48 = call i32 @watchdog_stop_on_reboot(%struct.TYPE_8__* @bcm2835_wdt_wdd)
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = call i32 @devm_watchdog_register_device(%struct.device* %49, %struct.TYPE_8__* @bcm2835_wdt_wdd)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %2, align 4
  br label %64

55:                                               ; preds = %46
  %56 = load i32*, i32** @pm_power_off, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32*, i32** @bcm2835_power_off, align 8
  store i32* %59, i32** @pm_power_off, align 8
  %60 = load %struct.bcm2835_wdt*, %struct.bcm2835_wdt** %6, align 8
  store %struct.bcm2835_wdt* %60, %struct.bcm2835_wdt** @bcm2835_power_off_wdt, align 8
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = call i32 @dev_info(%struct.device* %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %61, %53, %20
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.bcm2835_pm* @dev_get_drvdata(i32) #1

declare dso_local %struct.bcm2835_wdt* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_8__*, %struct.bcm2835_wdt*) #1

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_8__*, i32, %struct.device*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @bcm2835_wdt_is_running(%struct.bcm2835_wdt*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @watchdog_set_restart_priority(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @watchdog_stop_on_reboot(%struct.TYPE_8__*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.TYPE_8__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
