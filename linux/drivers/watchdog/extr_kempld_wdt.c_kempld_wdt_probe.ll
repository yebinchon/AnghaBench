; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_kempld_wdt.c_kempld_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_kempld_wdt.c_kempld_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.kempld_device_data = type { i32 }
%struct.kempld_wdt_data = type { %struct.watchdog_device, %struct.kempld_device_data* }
%struct.watchdog_device = type { i32, i32*, i32*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KEMPLD_WDT_CFG = common dso_local global i32 0, align 4
@KEMPLD_WDT_CFG_ENABLE_LOCK = common dso_local global i32 0, align 4
@KEMPLD_WDT_CFG_GLOBAL_LOCK = common dso_local global i32 0, align 4
@nowayout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Forcing nowayout - watchdog lock enabled!\0A\00", align 1
@kempld_wdt_info = common dso_local global i32 0, align 4
@kempld_wdt_ops = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@pretimeout = common dso_local global i32 0, align 4
@KEMPLD_WDT_CFG_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Watchdog was already enabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Watchdog registered with %ds timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @kempld_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kempld_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.kempld_device_data*, align 8
  %5 = alloca %struct.kempld_wdt_data*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.watchdog_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.kempld_device_data* @dev_get_drvdata(i32 %13)
  store %struct.kempld_device_data* %14, %struct.kempld_device_data** %4, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %6, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.kempld_wdt_data* @devm_kzalloc(%struct.device* %17, i32 40, i32 %18)
  store %struct.kempld_wdt_data* %19, %struct.kempld_wdt_data** %5, align 8
  %20 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %5, align 8
  %21 = icmp ne %struct.kempld_wdt_data* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %108

25:                                               ; preds = %1
  %26 = load %struct.kempld_device_data*, %struct.kempld_device_data** %4, align 8
  %27 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %5, align 8
  %28 = getelementptr inbounds %struct.kempld_wdt_data, %struct.kempld_wdt_data* %27, i32 0, i32 1
  store %struct.kempld_device_data* %26, %struct.kempld_device_data** %28, align 8
  %29 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %5, align 8
  %30 = getelementptr inbounds %struct.kempld_wdt_data, %struct.kempld_wdt_data* %29, i32 0, i32 0
  store %struct.watchdog_device* %30, %struct.watchdog_device** %7, align 8
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %33 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %32, i32 0, i32 3
  store %struct.device* %31, %struct.device** %33, align 8
  %34 = load %struct.kempld_device_data*, %struct.kempld_device_data** %4, align 8
  %35 = call i32 @kempld_get_mutex(%struct.kempld_device_data* %34)
  %36 = load %struct.kempld_device_data*, %struct.kempld_device_data** %4, align 8
  %37 = load i32, i32* @KEMPLD_WDT_CFG, align 4
  %38 = call i32 @kempld_read8(%struct.kempld_device_data* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.kempld_device_data*, %struct.kempld_device_data** %4, align 8
  %40 = call i32 @kempld_release_mutex(%struct.kempld_device_data* %39)
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @KEMPLD_WDT_CFG_ENABLE_LOCK, align 4
  %43 = load i32, i32* @KEMPLD_WDT_CFG_GLOBAL_LOCK, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %25
  %48 = load i32, i32* @nowayout, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = call i32 @dev_warn(%struct.device* %51, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %47
  store i32 1, i32* @nowayout, align 4
  br label %54

54:                                               ; preds = %53, %25
  %55 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %56 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %55, i32 0, i32 2
  store i32* @kempld_wdt_info, i32** %56, align 8
  %57 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %58 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %57, i32 0, i32 1
  store i32* @kempld_wdt_ops, i32** %58, align 8
  %59 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %60 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %5, align 8
  %61 = call i32 @watchdog_set_drvdata(%struct.watchdog_device* %59, %struct.kempld_wdt_data* %60)
  %62 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %63 = load i32, i32* @nowayout, align 4
  %64 = call i32 @watchdog_set_nowayout(%struct.watchdog_device* %62, i32 %63)
  %65 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %66 = call i32 @kempld_wdt_probe_stages(%struct.watchdog_device* %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %54
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %2, align 4
  br label %108

71:                                               ; preds = %54
  %72 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %73 = load i32, i32* @timeout, align 4
  %74 = call i32 @kempld_wdt_set_timeout(%struct.watchdog_device* %72, i32 %73)
  %75 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %76 = load i32, i32* @pretimeout, align 4
  %77 = call i32 @kempld_wdt_set_pretimeout(%struct.watchdog_device* %75, i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @KEMPLD_WDT_CFG_ENABLE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %71
  %83 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %5, align 8
  %84 = call i32 @kempld_wdt_update_timeouts(%struct.kempld_wdt_data* %83)
  %85 = load %struct.device*, %struct.device** %6, align 8
  %86 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %82, %71
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %5, align 8
  %90 = call i32 @platform_set_drvdata(%struct.platform_device* %88, %struct.kempld_wdt_data* %89)
  %91 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %92 = call i32 @watchdog_stop_on_reboot(%struct.watchdog_device* %91)
  %93 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %94 = call i32 @watchdog_stop_on_unregister(%struct.watchdog_device* %93)
  %95 = load %struct.device*, %struct.device** %6, align 8
  %96 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %97 = call i32 @devm_watchdog_register_device(%struct.device* %95, %struct.watchdog_device* %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %87
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %2, align 4
  br label %108

102:                                              ; preds = %87
  %103 = load %struct.device*, %struct.device** %6, align 8
  %104 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %105 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %103, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %102, %100, %69, %22
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.kempld_device_data* @dev_get_drvdata(i32) #1

declare dso_local %struct.kempld_wdt_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @kempld_get_mutex(%struct.kempld_device_data*) #1

declare dso_local i32 @kempld_read8(%struct.kempld_device_data*, i32) #1

declare dso_local i32 @kempld_release_mutex(%struct.kempld_device_data*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.watchdog_device*, %struct.kempld_wdt_data*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.watchdog_device*, i32) #1

declare dso_local i32 @kempld_wdt_probe_stages(%struct.watchdog_device*) #1

declare dso_local i32 @kempld_wdt_set_timeout(%struct.watchdog_device*, i32) #1

declare dso_local i32 @kempld_wdt_set_pretimeout(%struct.watchdog_device*, i32) #1

declare dso_local i32 @kempld_wdt_update_timeouts(%struct.kempld_wdt_data*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.kempld_wdt_data*) #1

declare dso_local i32 @watchdog_stop_on_reboot(%struct.watchdog_device*) #1

declare dso_local i32 @watchdog_stop_on_unregister(%struct.watchdog_device*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.watchdog_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
