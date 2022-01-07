; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_jz4740_wdt.c_jz4740_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_jz4740_wdt.c_jz4740_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.jz4740_wdt_drvdata = type { %struct.watchdog_device, i32, i32 }
%struct.watchdog_device = type { i32, i32, i32, %struct.device*, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@heartbeat = common dso_local global i32 0, align 4
@MAX_HEARTBEAT = common dso_local global i32 0, align 4
@DEFAULT_HEARTBEAT = common dso_local global i32 0, align 4
@jz4740_wdt_info = common dso_local global i32 0, align 4
@jz4740_wdt_ops = common dso_local global i32 0, align 4
@nowayout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"rtc\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"cannot find RTC clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @jz4740_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.jz4740_wdt_drvdata*, align 8
  %6 = alloca %struct.watchdog_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.jz4740_wdt_drvdata* @devm_kzalloc(%struct.device* %9, i32 48, i32 %10)
  store %struct.jz4740_wdt_drvdata* %11, %struct.jz4740_wdt_drvdata** %5, align 8
  %12 = load %struct.jz4740_wdt_drvdata*, %struct.jz4740_wdt_drvdata** %5, align 8
  %13 = icmp ne %struct.jz4740_wdt_drvdata* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %86

17:                                               ; preds = %1
  %18 = load i32, i32* @heartbeat, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @heartbeat, align 4
  %22 = load i32, i32* @MAX_HEARTBEAT, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %17
  %25 = load i32, i32* @DEFAULT_HEARTBEAT, align 4
  store i32 %25, i32* @heartbeat, align 4
  br label %26

26:                                               ; preds = %24, %20
  %27 = load %struct.jz4740_wdt_drvdata*, %struct.jz4740_wdt_drvdata** %5, align 8
  %28 = getelementptr inbounds %struct.jz4740_wdt_drvdata, %struct.jz4740_wdt_drvdata* %27, i32 0, i32 0
  store %struct.watchdog_device* %28, %struct.watchdog_device** %6, align 8
  %29 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %30 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %29, i32 0, i32 5
  store i32* @jz4740_wdt_info, i32** %30, align 8
  %31 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %32 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %31, i32 0, i32 4
  store i32* @jz4740_wdt_ops, i32** %32, align 8
  %33 = load i32, i32* @heartbeat, align 4
  %34 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %35 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %37 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  %38 = load i32, i32* @MAX_HEARTBEAT, align 4
  %39 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %40 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %43 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %42, i32 0, i32 3
  store %struct.device* %41, %struct.device** %43, align 8
  %44 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %45 = load i32, i32* @nowayout, align 4
  %46 = call i32 @watchdog_set_nowayout(%struct.watchdog_device* %44, i32 %45)
  %47 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %48 = load %struct.jz4740_wdt_drvdata*, %struct.jz4740_wdt_drvdata** %5, align 8
  %49 = call i32 @watchdog_set_drvdata(%struct.watchdog_device* %47, %struct.jz4740_wdt_drvdata* %48)
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %50, i32 0)
  %52 = load %struct.jz4740_wdt_drvdata*, %struct.jz4740_wdt_drvdata** %5, align 8
  %53 = getelementptr inbounds %struct.jz4740_wdt_drvdata, %struct.jz4740_wdt_drvdata* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.jz4740_wdt_drvdata*, %struct.jz4740_wdt_drvdata** %5, align 8
  %55 = getelementptr inbounds %struct.jz4740_wdt_drvdata, %struct.jz4740_wdt_drvdata* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @IS_ERR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %26
  %60 = load %struct.jz4740_wdt_drvdata*, %struct.jz4740_wdt_drvdata** %5, align 8
  %61 = getelementptr inbounds %struct.jz4740_wdt_drvdata, %struct.jz4740_wdt_drvdata* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @PTR_ERR(i32 %62)
  store i32 %63, i32* %2, align 4
  br label %86

64:                                               ; preds = %26
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = call i32 @devm_clk_get(%struct.device* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.jz4740_wdt_drvdata*, %struct.jz4740_wdt_drvdata** %5, align 8
  %68 = getelementptr inbounds %struct.jz4740_wdt_drvdata, %struct.jz4740_wdt_drvdata* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.jz4740_wdt_drvdata*, %struct.jz4740_wdt_drvdata** %5, align 8
  %70 = getelementptr inbounds %struct.jz4740_wdt_drvdata, %struct.jz4740_wdt_drvdata* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @IS_ERR(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %64
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = call i32 @dev_err(%struct.device* %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.jz4740_wdt_drvdata*, %struct.jz4740_wdt_drvdata** %5, align 8
  %78 = getelementptr inbounds %struct.jz4740_wdt_drvdata, %struct.jz4740_wdt_drvdata* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @PTR_ERR(i32 %79)
  store i32 %80, i32* %2, align 4
  br label %86

81:                                               ; preds = %64
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = load %struct.jz4740_wdt_drvdata*, %struct.jz4740_wdt_drvdata** %5, align 8
  %84 = getelementptr inbounds %struct.jz4740_wdt_drvdata, %struct.jz4740_wdt_drvdata* %83, i32 0, i32 0
  %85 = call i32 @devm_watchdog_register_device(%struct.device* %82, %struct.watchdog_device* %84)
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %81, %74, %59, %14
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.jz4740_wdt_drvdata* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.watchdog_device*, i32) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.watchdog_device*, %struct.jz4740_wdt_drvdata*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.watchdog_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
