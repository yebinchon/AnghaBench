; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_sunxi_wdt.c_sunxi_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_sunxi_wdt.c_sunxi_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.sunxi_wdt_dev = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i8*, %struct.device*, i32, i8*, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@sunxi_wdt_info = common dso_local global i32 0, align 4
@sunxi_wdt_ops = common dso_local global i32 0, align 4
@WDT_MAX_TIMEOUT = common dso_local global i8* null, align 8
@WDT_MIN_TIMEOUT = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@nowayout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Watchdog enabled (timeout=%d sec, nowayout=%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sunxi_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sunxi_wdt_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.sunxi_wdt_dev* @devm_kzalloc(%struct.device* %9, i32 56, i32 %10)
  store %struct.sunxi_wdt_dev* %11, %struct.sunxi_wdt_dev** %5, align 8
  %12 = load %struct.sunxi_wdt_dev*, %struct.sunxi_wdt_dev** %5, align 8
  %13 = icmp ne %struct.sunxi_wdt_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %106

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i32 @of_device_get_match_data(%struct.device* %18)
  %20 = load %struct.sunxi_wdt_dev*, %struct.sunxi_wdt_dev** %5, align 8
  %21 = getelementptr inbounds %struct.sunxi_wdt_dev, %struct.sunxi_wdt_dev* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.sunxi_wdt_dev*, %struct.sunxi_wdt_dev** %5, align 8
  %23 = getelementptr inbounds %struct.sunxi_wdt_dev, %struct.sunxi_wdt_dev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %106

29:                                               ; preds = %17
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %30, i32 0)
  %32 = load %struct.sunxi_wdt_dev*, %struct.sunxi_wdt_dev** %5, align 8
  %33 = getelementptr inbounds %struct.sunxi_wdt_dev, %struct.sunxi_wdt_dev* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.sunxi_wdt_dev*, %struct.sunxi_wdt_dev** %5, align 8
  %35 = getelementptr inbounds %struct.sunxi_wdt_dev, %struct.sunxi_wdt_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @IS_ERR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = load %struct.sunxi_wdt_dev*, %struct.sunxi_wdt_dev** %5, align 8
  %41 = getelementptr inbounds %struct.sunxi_wdt_dev, %struct.sunxi_wdt_dev* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @PTR_ERR(i32 %42)
  store i32 %43, i32* %2, align 4
  br label %106

44:                                               ; preds = %29
  %45 = load %struct.sunxi_wdt_dev*, %struct.sunxi_wdt_dev** %5, align 8
  %46 = getelementptr inbounds %struct.sunxi_wdt_dev, %struct.sunxi_wdt_dev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 5
  store i32* @sunxi_wdt_info, i32** %47, align 8
  %48 = load %struct.sunxi_wdt_dev*, %struct.sunxi_wdt_dev** %5, align 8
  %49 = getelementptr inbounds %struct.sunxi_wdt_dev, %struct.sunxi_wdt_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 4
  store i32* @sunxi_wdt_ops, i32** %50, align 8
  %51 = load i8*, i8** @WDT_MAX_TIMEOUT, align 8
  %52 = load %struct.sunxi_wdt_dev*, %struct.sunxi_wdt_dev** %5, align 8
  %53 = getelementptr inbounds %struct.sunxi_wdt_dev, %struct.sunxi_wdt_dev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  %55 = load i8*, i8** @WDT_MAX_TIMEOUT, align 8
  %56 = load %struct.sunxi_wdt_dev*, %struct.sunxi_wdt_dev** %5, align 8
  %57 = getelementptr inbounds %struct.sunxi_wdt_dev, %struct.sunxi_wdt_dev* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 3
  store i8* %55, i8** %58, align 8
  %59 = load i32, i32* @WDT_MIN_TIMEOUT, align 4
  %60 = load %struct.sunxi_wdt_dev*, %struct.sunxi_wdt_dev** %5, align 8
  %61 = getelementptr inbounds %struct.sunxi_wdt_dev, %struct.sunxi_wdt_dev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 8
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load %struct.sunxi_wdt_dev*, %struct.sunxi_wdt_dev** %5, align 8
  %65 = getelementptr inbounds %struct.sunxi_wdt_dev, %struct.sunxi_wdt_dev* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  store %struct.device* %63, %struct.device** %66, align 8
  %67 = load %struct.sunxi_wdt_dev*, %struct.sunxi_wdt_dev** %5, align 8
  %68 = getelementptr inbounds %struct.sunxi_wdt_dev, %struct.sunxi_wdt_dev* %67, i32 0, i32 0
  %69 = load i32, i32* @timeout, align 4
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = call i32 @watchdog_init_timeout(%struct.TYPE_8__* %68, i32 %69, %struct.device* %70)
  %72 = load %struct.sunxi_wdt_dev*, %struct.sunxi_wdt_dev** %5, align 8
  %73 = getelementptr inbounds %struct.sunxi_wdt_dev, %struct.sunxi_wdt_dev* %72, i32 0, i32 0
  %74 = load i32, i32* @nowayout, align 4
  %75 = call i32 @watchdog_set_nowayout(%struct.TYPE_8__* %73, i32 %74)
  %76 = load %struct.sunxi_wdt_dev*, %struct.sunxi_wdt_dev** %5, align 8
  %77 = getelementptr inbounds %struct.sunxi_wdt_dev, %struct.sunxi_wdt_dev* %76, i32 0, i32 0
  %78 = call i32 @watchdog_set_restart_priority(%struct.TYPE_8__* %77, i32 128)
  %79 = load %struct.sunxi_wdt_dev*, %struct.sunxi_wdt_dev** %5, align 8
  %80 = getelementptr inbounds %struct.sunxi_wdt_dev, %struct.sunxi_wdt_dev* %79, i32 0, i32 0
  %81 = load %struct.sunxi_wdt_dev*, %struct.sunxi_wdt_dev** %5, align 8
  %82 = call i32 @watchdog_set_drvdata(%struct.TYPE_8__* %80, %struct.sunxi_wdt_dev* %81)
  %83 = load %struct.sunxi_wdt_dev*, %struct.sunxi_wdt_dev** %5, align 8
  %84 = getelementptr inbounds %struct.sunxi_wdt_dev, %struct.sunxi_wdt_dev* %83, i32 0, i32 0
  %85 = call i32 @sunxi_wdt_stop(%struct.TYPE_8__* %84)
  %86 = load %struct.sunxi_wdt_dev*, %struct.sunxi_wdt_dev** %5, align 8
  %87 = getelementptr inbounds %struct.sunxi_wdt_dev, %struct.sunxi_wdt_dev* %86, i32 0, i32 0
  %88 = call i32 @watchdog_stop_on_reboot(%struct.TYPE_8__* %87)
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = load %struct.sunxi_wdt_dev*, %struct.sunxi_wdt_dev** %5, align 8
  %91 = getelementptr inbounds %struct.sunxi_wdt_dev, %struct.sunxi_wdt_dev* %90, i32 0, i32 0
  %92 = call i32 @devm_watchdog_register_device(%struct.device* %89, %struct.TYPE_8__* %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %44
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %106

98:                                               ; preds = %44
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = load %struct.sunxi_wdt_dev*, %struct.sunxi_wdt_dev** %5, align 8
  %101 = getelementptr inbounds %struct.sunxi_wdt_dev, %struct.sunxi_wdt_dev* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* @nowayout, align 4
  %105 = call i32 @dev_info(%struct.device* %99, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %103, i32 %104)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %98, %96, %39, %26, %14
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.sunxi_wdt_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_8__*, i32, %struct.device*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @watchdog_set_restart_priority(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_8__*, %struct.sunxi_wdt_dev*) #1

declare dso_local i32 @sunxi_wdt_stop(%struct.TYPE_8__*) #1

declare dso_local i32 @watchdog_stop_on_reboot(%struct.TYPE_8__*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.TYPE_8__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
