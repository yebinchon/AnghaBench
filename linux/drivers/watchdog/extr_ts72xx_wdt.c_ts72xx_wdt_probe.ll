; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_ts72xx_wdt.c_ts72xx_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_ts72xx_wdt.c_ts72xx_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.ts72xx_wdt_priv = type { %struct.watchdog_device, i8*, i8* }
%struct.watchdog_device = type { i32, i32, i32, %struct.device*, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ts72xx_wdt_ident = common dso_local global i32 0, align 4
@ts72xx_wdt_ops = common dso_local global i32 0, align 4
@nowayout = common dso_local global i32 0, align 4
@TS72XX_WDT_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"TS-72xx Watchdog driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ts72xx_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts72xx_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ts72xx_wdt_priv*, align 8
  %6 = alloca %struct.watchdog_device*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ts72xx_wdt_priv* @devm_kzalloc(%struct.device* %10, i32 56, i32 %11)
  store %struct.ts72xx_wdt_priv* %12, %struct.ts72xx_wdt_priv** %5, align 8
  %13 = load %struct.ts72xx_wdt_priv*, %struct.ts72xx_wdt_priv** %5, align 8
  %14 = icmp ne %struct.ts72xx_wdt_priv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %85

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %19, i32 0)
  %21 = load %struct.ts72xx_wdt_priv*, %struct.ts72xx_wdt_priv** %5, align 8
  %22 = getelementptr inbounds %struct.ts72xx_wdt_priv, %struct.ts72xx_wdt_priv* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load %struct.ts72xx_wdt_priv*, %struct.ts72xx_wdt_priv** %5, align 8
  %24 = getelementptr inbounds %struct.ts72xx_wdt_priv, %struct.ts72xx_wdt_priv* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @IS_ERR(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load %struct.ts72xx_wdt_priv*, %struct.ts72xx_wdt_priv** %5, align 8
  %30 = getelementptr inbounds %struct.ts72xx_wdt_priv, %struct.ts72xx_wdt_priv* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @PTR_ERR(i8* %31)
  store i32 %32, i32* %2, align 4
  br label %85

33:                                               ; preds = %18
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %34, i32 1)
  %36 = load %struct.ts72xx_wdt_priv*, %struct.ts72xx_wdt_priv** %5, align 8
  %37 = getelementptr inbounds %struct.ts72xx_wdt_priv, %struct.ts72xx_wdt_priv* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.ts72xx_wdt_priv*, %struct.ts72xx_wdt_priv** %5, align 8
  %39 = getelementptr inbounds %struct.ts72xx_wdt_priv, %struct.ts72xx_wdt_priv* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @IS_ERR(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %33
  %44 = load %struct.ts72xx_wdt_priv*, %struct.ts72xx_wdt_priv** %5, align 8
  %45 = getelementptr inbounds %struct.ts72xx_wdt_priv, %struct.ts72xx_wdt_priv* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @PTR_ERR(i8* %46)
  store i32 %47, i32* %2, align 4
  br label %85

48:                                               ; preds = %33
  %49 = load %struct.ts72xx_wdt_priv*, %struct.ts72xx_wdt_priv** %5, align 8
  %50 = getelementptr inbounds %struct.ts72xx_wdt_priv, %struct.ts72xx_wdt_priv* %49, i32 0, i32 0
  store %struct.watchdog_device* %50, %struct.watchdog_device** %6, align 8
  %51 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %52 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %51, i32 0, i32 5
  store i32* @ts72xx_wdt_ident, i32** %52, align 8
  %53 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %54 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %53, i32 0, i32 4
  store i32* @ts72xx_wdt_ops, i32** %54, align 8
  %55 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %56 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %58 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %57, i32 0, i32 1
  store i32 8000, i32* %58, align 4
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %61 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %60, i32 0, i32 3
  store %struct.device* %59, %struct.device** %61, align 8
  %62 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %63 = load i32, i32* @nowayout, align 4
  %64 = call i32 @watchdog_set_nowayout(%struct.watchdog_device* %62, i32 %63)
  %65 = load i32, i32* @TS72XX_WDT_DEFAULT_TIMEOUT, align 4
  %66 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %67 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %69 = load i32, i32* @timeout, align 4
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = call i32 @watchdog_init_timeout(%struct.watchdog_device* %68, i32 %69, %struct.device* %70)
  %72 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %73 = load %struct.ts72xx_wdt_priv*, %struct.ts72xx_wdt_priv** %5, align 8
  %74 = call i32 @watchdog_set_drvdata(%struct.watchdog_device* %72, %struct.ts72xx_wdt_priv* %73)
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %77 = call i32 @devm_watchdog_register_device(%struct.device* %75, %struct.watchdog_device* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %48
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %2, align 4
  br label %85

82:                                               ; preds = %48
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = call i32 @dev_info(%struct.device* %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %82, %80, %43, %28, %15
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.ts72xx_wdt_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.watchdog_device*, i32) #1

declare dso_local i32 @watchdog_init_timeout(%struct.watchdog_device*, i32, %struct.device*) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.watchdog_device*, %struct.ts72xx_wdt_priv*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.watchdog_device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
