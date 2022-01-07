; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_mtk_wdt.c_mtk_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_mtk_wdt.c_mtk_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mtk_wdt_dev = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i8*, %struct.device*, i32, i8*, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mtk_wdt_info = common dso_local global i32 0, align 4
@mtk_wdt_ops = common dso_local global i32 0, align 4
@WDT_MAX_TIMEOUT = common dso_local global i8* null, align 8
@WDT_MIN_TIMEOUT = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@nowayout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Watchdog enabled (timeout=%d sec, nowayout=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mtk_wdt_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.mtk_wdt_dev* @devm_kzalloc(%struct.device* %9, i32 56, i32 %10)
  store %struct.mtk_wdt_dev* %11, %struct.mtk_wdt_dev** %5, align 8
  %12 = load %struct.mtk_wdt_dev*, %struct.mtk_wdt_dev** %5, align 8
  %13 = icmp ne %struct.mtk_wdt_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %97

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load %struct.mtk_wdt_dev*, %struct.mtk_wdt_dev** %5, align 8
  %20 = call i32 @platform_set_drvdata(%struct.platform_device* %18, %struct.mtk_wdt_dev* %19)
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %21, i32 0)
  %23 = load %struct.mtk_wdt_dev*, %struct.mtk_wdt_dev** %5, align 8
  %24 = getelementptr inbounds %struct.mtk_wdt_dev, %struct.mtk_wdt_dev* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.mtk_wdt_dev*, %struct.mtk_wdt_dev** %5, align 8
  %26 = getelementptr inbounds %struct.mtk_wdt_dev, %struct.mtk_wdt_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %17
  %31 = load %struct.mtk_wdt_dev*, %struct.mtk_wdt_dev** %5, align 8
  %32 = getelementptr inbounds %struct.mtk_wdt_dev, %struct.mtk_wdt_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @PTR_ERR(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %97

35:                                               ; preds = %17
  %36 = load %struct.mtk_wdt_dev*, %struct.mtk_wdt_dev** %5, align 8
  %37 = getelementptr inbounds %struct.mtk_wdt_dev, %struct.mtk_wdt_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 5
  store i32* @mtk_wdt_info, i32** %38, align 8
  %39 = load %struct.mtk_wdt_dev*, %struct.mtk_wdt_dev** %5, align 8
  %40 = getelementptr inbounds %struct.mtk_wdt_dev, %struct.mtk_wdt_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 4
  store i32* @mtk_wdt_ops, i32** %41, align 8
  %42 = load i8*, i8** @WDT_MAX_TIMEOUT, align 8
  %43 = load %struct.mtk_wdt_dev*, %struct.mtk_wdt_dev** %5, align 8
  %44 = getelementptr inbounds %struct.mtk_wdt_dev, %struct.mtk_wdt_dev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i8* %42, i8** %45, align 8
  %46 = load i8*, i8** @WDT_MAX_TIMEOUT, align 8
  %47 = load %struct.mtk_wdt_dev*, %struct.mtk_wdt_dev** %5, align 8
  %48 = getelementptr inbounds %struct.mtk_wdt_dev, %struct.mtk_wdt_dev* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  store i8* %46, i8** %49, align 8
  %50 = load i32, i32* @WDT_MIN_TIMEOUT, align 4
  %51 = load %struct.mtk_wdt_dev*, %struct.mtk_wdt_dev** %5, align 8
  %52 = getelementptr inbounds %struct.mtk_wdt_dev, %struct.mtk_wdt_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 8
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = load %struct.mtk_wdt_dev*, %struct.mtk_wdt_dev** %5, align 8
  %56 = getelementptr inbounds %struct.mtk_wdt_dev, %struct.mtk_wdt_dev* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  store %struct.device* %54, %struct.device** %57, align 8
  %58 = load %struct.mtk_wdt_dev*, %struct.mtk_wdt_dev** %5, align 8
  %59 = getelementptr inbounds %struct.mtk_wdt_dev, %struct.mtk_wdt_dev* %58, i32 0, i32 0
  %60 = load i32, i32* @timeout, align 4
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = call i32 @watchdog_init_timeout(%struct.TYPE_8__* %59, i32 %60, %struct.device* %61)
  %63 = load %struct.mtk_wdt_dev*, %struct.mtk_wdt_dev** %5, align 8
  %64 = getelementptr inbounds %struct.mtk_wdt_dev, %struct.mtk_wdt_dev* %63, i32 0, i32 0
  %65 = load i32, i32* @nowayout, align 4
  %66 = call i32 @watchdog_set_nowayout(%struct.TYPE_8__* %64, i32 %65)
  %67 = load %struct.mtk_wdt_dev*, %struct.mtk_wdt_dev** %5, align 8
  %68 = getelementptr inbounds %struct.mtk_wdt_dev, %struct.mtk_wdt_dev* %67, i32 0, i32 0
  %69 = call i32 @watchdog_set_restart_priority(%struct.TYPE_8__* %68, i32 128)
  %70 = load %struct.mtk_wdt_dev*, %struct.mtk_wdt_dev** %5, align 8
  %71 = getelementptr inbounds %struct.mtk_wdt_dev, %struct.mtk_wdt_dev* %70, i32 0, i32 0
  %72 = load %struct.mtk_wdt_dev*, %struct.mtk_wdt_dev** %5, align 8
  %73 = call i32 @watchdog_set_drvdata(%struct.TYPE_8__* %71, %struct.mtk_wdt_dev* %72)
  %74 = load %struct.mtk_wdt_dev*, %struct.mtk_wdt_dev** %5, align 8
  %75 = getelementptr inbounds %struct.mtk_wdt_dev, %struct.mtk_wdt_dev* %74, i32 0, i32 0
  %76 = call i32 @mtk_wdt_stop(%struct.TYPE_8__* %75)
  %77 = load %struct.mtk_wdt_dev*, %struct.mtk_wdt_dev** %5, align 8
  %78 = getelementptr inbounds %struct.mtk_wdt_dev, %struct.mtk_wdt_dev* %77, i32 0, i32 0
  %79 = call i32 @watchdog_stop_on_reboot(%struct.TYPE_8__* %78)
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = load %struct.mtk_wdt_dev*, %struct.mtk_wdt_dev** %5, align 8
  %82 = getelementptr inbounds %struct.mtk_wdt_dev, %struct.mtk_wdt_dev* %81, i32 0, i32 0
  %83 = call i32 @devm_watchdog_register_device(%struct.device* %80, %struct.TYPE_8__* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %35
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %2, align 4
  br label %97

89:                                               ; preds = %35
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = load %struct.mtk_wdt_dev*, %struct.mtk_wdt_dev** %5, align 8
  %92 = getelementptr inbounds %struct.mtk_wdt_dev, %struct.mtk_wdt_dev* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* @nowayout, align 4
  %96 = call i32 @dev_info(%struct.device* %90, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %94, i32 %95)
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %89, %87, %30, %14
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.mtk_wdt_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk_wdt_dev*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_8__*, i32, %struct.device*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @watchdog_set_restart_priority(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_8__*, %struct.mtk_wdt_dev*) #1

declare dso_local i32 @mtk_wdt_stop(%struct.TYPE_8__*) #1

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
