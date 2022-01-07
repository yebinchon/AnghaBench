; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_ep93xx_wdt.c_ep93xx_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_ep93xx_wdt.c_ep93xx_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.ep93xx_wdt_priv = type { %struct.watchdog_device, i64 }
%struct.watchdog_device = type { i32, i32, i32, %struct.device*, i32*, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EP93XX_WATCHDOG = common dso_local global i64 0, align 8
@WDIOF_CARDRESET = common dso_local global i32 0, align 4
@ep93xx_wdt_ident = common dso_local global i32 0, align 4
@ep93xx_wdt_ops = common dso_local global i32 0, align 4
@nowayout = common dso_local global i32 0, align 4
@WDT_TIMEOUT = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"EP93XX watchdog driver %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c" (nCS1 disable detected)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ep93xx_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ep93xx_wdt_priv*, align 8
  %6 = alloca %struct.watchdog_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ep93xx_wdt_priv* @devm_kzalloc(%struct.device* %11, i32 56, i32 %12)
  store %struct.ep93xx_wdt_priv* %13, %struct.ep93xx_wdt_priv** %5, align 8
  %14 = load %struct.ep93xx_wdt_priv*, %struct.ep93xx_wdt_priv** %5, align 8
  %15 = icmp ne %struct.ep93xx_wdt_priv* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %92

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %20, i32 0)
  %22 = load %struct.ep93xx_wdt_priv*, %struct.ep93xx_wdt_priv** %5, align 8
  %23 = getelementptr inbounds %struct.ep93xx_wdt_priv, %struct.ep93xx_wdt_priv* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.ep93xx_wdt_priv*, %struct.ep93xx_wdt_priv** %5, align 8
  %25 = getelementptr inbounds %struct.ep93xx_wdt_priv, %struct.ep93xx_wdt_priv* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @IS_ERR(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load %struct.ep93xx_wdt_priv*, %struct.ep93xx_wdt_priv** %5, align 8
  %31 = getelementptr inbounds %struct.ep93xx_wdt_priv, %struct.ep93xx_wdt_priv* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @PTR_ERR(i64 %32)
  store i32 %33, i32* %2, align 4
  br label %92

34:                                               ; preds = %19
  %35 = load %struct.ep93xx_wdt_priv*, %struct.ep93xx_wdt_priv** %5, align 8
  %36 = getelementptr inbounds %struct.ep93xx_wdt_priv, %struct.ep93xx_wdt_priv* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @EP93XX_WATCHDOG, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i64 @readl(i64 %39)
  store i64 %40, i64* %7, align 8
  %41 = load %struct.ep93xx_wdt_priv*, %struct.ep93xx_wdt_priv** %5, align 8
  %42 = getelementptr inbounds %struct.ep93xx_wdt_priv, %struct.ep93xx_wdt_priv* %41, i32 0, i32 0
  store %struct.watchdog_device* %42, %struct.watchdog_device** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = and i64 %43, 1
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i32, i32* @WDIOF_CARDRESET, align 4
  br label %49

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i32 [ %47, %46 ], [ 0, %48 ]
  %51 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %52 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 8
  %53 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %54 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %53, i32 0, i32 5
  store i32* @ep93xx_wdt_ident, i32** %54, align 8
  %55 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %56 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %55, i32 0, i32 4
  store i32* @ep93xx_wdt_ops, i32** %56, align 8
  %57 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %58 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %60 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %59, i32 0, i32 1
  store i32 200, i32* %60, align 4
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %63 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %62, i32 0, i32 3
  store %struct.device* %61, %struct.device** %63, align 8
  %64 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %65 = load i32, i32* @nowayout, align 4
  %66 = call i32 @watchdog_set_nowayout(%struct.watchdog_device* %64, i32 %65)
  %67 = load i32, i32* @WDT_TIMEOUT, align 4
  %68 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %69 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %71 = load i32, i32* @timeout, align 4
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = call i32 @watchdog_init_timeout(%struct.watchdog_device* %70, i32 %71, %struct.device* %72)
  %74 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %75 = load %struct.ep93xx_wdt_priv*, %struct.ep93xx_wdt_priv** %5, align 8
  %76 = call i32 @watchdog_set_drvdata(%struct.watchdog_device* %74, %struct.ep93xx_wdt_priv* %75)
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %79 = call i32 @devm_watchdog_register_device(%struct.device* %77, %struct.watchdog_device* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %49
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %2, align 4
  br label %92

84:                                               ; preds = %49
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = load i64, i64* %7, align 8
  %87 = and i64 %86, 8
  %88 = icmp ne i64 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %91 = call i32 @dev_info(%struct.device* %85, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %90)
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %84, %82, %29, %16
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.ep93xx_wdt_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.watchdog_device*, i32) #1

declare dso_local i32 @watchdog_init_timeout(%struct.watchdog_device*, i32, %struct.device*) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.watchdog_device*, %struct.ep93xx_wdt_priv*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.watchdog_device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
