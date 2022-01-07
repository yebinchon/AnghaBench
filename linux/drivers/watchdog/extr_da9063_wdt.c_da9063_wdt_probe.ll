; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_da9063_wdt.c_da9063_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_da9063_wdt.c_da9063_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.da9063 = type { i32 }
%struct.watchdog_device = type { i32, i32, %struct.device*, i32, i32, i32, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@da9063_watchdog_info = common dso_local global i32 0, align 4
@da9063_watchdog_ops = common dso_local global i32 0, align 4
@DA9063_WDT_MIN_TIMEOUT = common dso_local global i32 0, align 4
@DA9063_WDT_MAX_TIMEOUT = common dso_local global i32 0, align 4
@DA9063_RESET_PROTECTION_MS = common dso_local global i32 0, align 4
@WATCHDOG_NOWAYOUT_INIT_STATUS = common dso_local global i32 0, align 4
@DA9063_WDG_TIMEOUT = common dso_local global i32 0, align 4
@WDOG_HW_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da9063_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9063_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.da9063*, align 8
  %6 = alloca %struct.watchdog_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %88

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.da9063* @dev_get_drvdata(i32 %19)
  store %struct.da9063* %20, %struct.da9063** %5, align 8
  %21 = load %struct.da9063*, %struct.da9063** %5, align 8
  %22 = icmp ne %struct.da9063* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %88

26:                                               ; preds = %16
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.watchdog_device* @devm_kzalloc(%struct.device* %27, i32 48, i32 %28)
  store %struct.watchdog_device* %29, %struct.watchdog_device** %6, align 8
  %30 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %31 = icmp ne %struct.watchdog_device* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %88

35:                                               ; preds = %26
  %36 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %37 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %36, i32 0, i32 7
  store i32* @da9063_watchdog_info, i32** %37, align 8
  %38 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %39 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %38, i32 0, i32 6
  store i32* @da9063_watchdog_ops, i32** %39, align 8
  %40 = load i32, i32* @DA9063_WDT_MIN_TIMEOUT, align 4
  %41 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %42 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @DA9063_WDT_MAX_TIMEOUT, align 4
  %44 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %45 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @DA9063_RESET_PROTECTION_MS, align 4
  %47 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %48 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %51 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %50, i32 0, i32 2
  store %struct.device* %49, %struct.device** %51, align 8
  %52 = load i32, i32* @WATCHDOG_NOWAYOUT_INIT_STATUS, align 4
  %53 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %54 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %56 = call i32 @watchdog_set_restart_priority(%struct.watchdog_device* %55, i32 128)
  %57 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %58 = load %struct.da9063*, %struct.da9063** %5, align 8
  %59 = call i32 @watchdog_set_drvdata(%struct.watchdog_device* %57, %struct.da9063* %58)
  %60 = load i32, i32* @DA9063_WDG_TIMEOUT, align 4
  %61 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %62 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i32 @watchdog_init_timeout(%struct.watchdog_device* %63, i32 0, %struct.device* %64)
  %66 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %67 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %68 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @da9063_wdt_set_timeout(%struct.watchdog_device* %66, i32 %69)
  %71 = load %struct.da9063*, %struct.da9063** %5, align 8
  %72 = call i64 @da9063_wdt_is_running(%struct.da9063* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %35
  %75 = load %struct.da9063*, %struct.da9063** %5, align 8
  %76 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %77 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @da9063_wdt_update_timeout(%struct.da9063* %75, i32 %78)
  %80 = load i32, i32* @WDOG_HW_RUNNING, align 4
  %81 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %82 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %81, i32 0, i32 0
  %83 = call i32 @set_bit(i32 %80, i32* %82)
  br label %84

84:                                               ; preds = %74, %35
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %87 = call i32 @devm_watchdog_register_device(%struct.device* %85, %struct.watchdog_device* %86)
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %84, %32, %23, %13
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.da9063* @dev_get_drvdata(i32) #1

declare dso_local %struct.watchdog_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @watchdog_set_restart_priority(%struct.watchdog_device*, i32) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.watchdog_device*, %struct.da9063*) #1

declare dso_local i32 @watchdog_init_timeout(%struct.watchdog_device*, i32, %struct.device*) #1

declare dso_local i32 @da9063_wdt_set_timeout(%struct.watchdog_device*, i32) #1

declare dso_local i64 @da9063_wdt_is_running(%struct.da9063*) #1

declare dso_local i32 @da9063_wdt_update_timeout(%struct.da9063*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.watchdog_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
