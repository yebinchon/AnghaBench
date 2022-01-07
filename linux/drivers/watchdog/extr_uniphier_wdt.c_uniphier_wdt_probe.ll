; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_uniphier_wdt.c_uniphier_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_uniphier_wdt.c_uniphier_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.uniphier_wdt_dev = type { %struct.TYPE_7__, %struct.regmap* }
%struct.TYPE_7__ = type { i32, %struct.device*, i32, i32, i32*, i32* }
%struct.regmap = type { i32 }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@uniphier_wdt_info = common dso_local global i32 0, align 4
@uniphier_wdt_ops = common dso_local global i32 0, align 4
@WDT_PERIOD_MAX = common dso_local global i32 0, align 4
@WDT_PERIOD_MIN = common dso_local global i32 0, align 4
@WDT_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@nowayout = common dso_local global i32 0, align 4
@WDTRSTSEL = common dso_local global i32 0, align 4
@WDTRSTSEL_RSTSEL_BOTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"watchdog driver (timeout=%d sec, nowayout=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @uniphier_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.uniphier_wdt_dev*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.uniphier_wdt_dev* @devm_kzalloc(%struct.device* %11, i32 48, i32 %12)
  store %struct.uniphier_wdt_dev* %13, %struct.uniphier_wdt_dev** %5, align 8
  %14 = load %struct.uniphier_wdt_dev*, %struct.uniphier_wdt_dev** %5, align 8
  %15 = icmp ne %struct.uniphier_wdt_dev* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %106

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.device_node* @of_get_parent(i32 %22)
  store %struct.device_node* %23, %struct.device_node** %7, align 8
  %24 = load %struct.device_node*, %struct.device_node** %7, align 8
  %25 = call %struct.regmap* @syscon_node_to_regmap(%struct.device_node* %24)
  store %struct.regmap* %25, %struct.regmap** %6, align 8
  %26 = load %struct.device_node*, %struct.device_node** %7, align 8
  %27 = call i32 @of_node_put(%struct.device_node* %26)
  %28 = load %struct.regmap*, %struct.regmap** %6, align 8
  %29 = call i64 @IS_ERR(%struct.regmap* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %19
  %32 = load %struct.regmap*, %struct.regmap** %6, align 8
  %33 = call i32 @PTR_ERR(%struct.regmap* %32)
  store i32 %33, i32* %2, align 4
  br label %106

34:                                               ; preds = %19
  %35 = load %struct.regmap*, %struct.regmap** %6, align 8
  %36 = load %struct.uniphier_wdt_dev*, %struct.uniphier_wdt_dev** %5, align 8
  %37 = getelementptr inbounds %struct.uniphier_wdt_dev, %struct.uniphier_wdt_dev* %36, i32 0, i32 1
  store %struct.regmap* %35, %struct.regmap** %37, align 8
  %38 = load %struct.uniphier_wdt_dev*, %struct.uniphier_wdt_dev** %5, align 8
  %39 = getelementptr inbounds %struct.uniphier_wdt_dev, %struct.uniphier_wdt_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 5
  store i32* @uniphier_wdt_info, i32** %40, align 8
  %41 = load %struct.uniphier_wdt_dev*, %struct.uniphier_wdt_dev** %5, align 8
  %42 = getelementptr inbounds %struct.uniphier_wdt_dev, %struct.uniphier_wdt_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 4
  store i32* @uniphier_wdt_ops, i32** %43, align 8
  %44 = load i32, i32* @WDT_PERIOD_MAX, align 4
  %45 = load %struct.uniphier_wdt_dev*, %struct.uniphier_wdt_dev** %5, align 8
  %46 = getelementptr inbounds %struct.uniphier_wdt_dev, %struct.uniphier_wdt_dev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @WDT_PERIOD_MIN, align 4
  %49 = load %struct.uniphier_wdt_dev*, %struct.uniphier_wdt_dev** %5, align 8
  %50 = getelementptr inbounds %struct.uniphier_wdt_dev, %struct.uniphier_wdt_dev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 8
  %52 = load i32, i32* @WDT_DEFAULT_TIMEOUT, align 4
  %53 = load %struct.uniphier_wdt_dev*, %struct.uniphier_wdt_dev** %5, align 8
  %54 = getelementptr inbounds %struct.uniphier_wdt_dev, %struct.uniphier_wdt_dev* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load %struct.uniphier_wdt_dev*, %struct.uniphier_wdt_dev** %5, align 8
  %58 = getelementptr inbounds %struct.uniphier_wdt_dev, %struct.uniphier_wdt_dev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  store %struct.device* %56, %struct.device** %59, align 8
  %60 = load %struct.uniphier_wdt_dev*, %struct.uniphier_wdt_dev** %5, align 8
  %61 = getelementptr inbounds %struct.uniphier_wdt_dev, %struct.uniphier_wdt_dev* %60, i32 0, i32 0
  %62 = load i32, i32* @timeout, align 4
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = call i32 @watchdog_init_timeout(%struct.TYPE_7__* %61, i32 %62, %struct.device* %63)
  %65 = load %struct.uniphier_wdt_dev*, %struct.uniphier_wdt_dev** %5, align 8
  %66 = getelementptr inbounds %struct.uniphier_wdt_dev, %struct.uniphier_wdt_dev* %65, i32 0, i32 0
  %67 = load i32, i32* @nowayout, align 4
  %68 = call i32 @watchdog_set_nowayout(%struct.TYPE_7__* %66, i32 %67)
  %69 = load %struct.uniphier_wdt_dev*, %struct.uniphier_wdt_dev** %5, align 8
  %70 = getelementptr inbounds %struct.uniphier_wdt_dev, %struct.uniphier_wdt_dev* %69, i32 0, i32 0
  %71 = call i32 @watchdog_stop_on_reboot(%struct.TYPE_7__* %70)
  %72 = load %struct.uniphier_wdt_dev*, %struct.uniphier_wdt_dev** %5, align 8
  %73 = getelementptr inbounds %struct.uniphier_wdt_dev, %struct.uniphier_wdt_dev* %72, i32 0, i32 0
  %74 = load %struct.uniphier_wdt_dev*, %struct.uniphier_wdt_dev** %5, align 8
  %75 = call i32 @watchdog_set_drvdata(%struct.TYPE_7__* %73, %struct.uniphier_wdt_dev* %74)
  %76 = load %struct.uniphier_wdt_dev*, %struct.uniphier_wdt_dev** %5, align 8
  %77 = getelementptr inbounds %struct.uniphier_wdt_dev, %struct.uniphier_wdt_dev* %76, i32 0, i32 0
  %78 = call i32 @uniphier_watchdog_stop(%struct.TYPE_7__* %77)
  %79 = load %struct.uniphier_wdt_dev*, %struct.uniphier_wdt_dev** %5, align 8
  %80 = getelementptr inbounds %struct.uniphier_wdt_dev, %struct.uniphier_wdt_dev* %79, i32 0, i32 1
  %81 = load %struct.regmap*, %struct.regmap** %80, align 8
  %82 = load i32, i32* @WDTRSTSEL, align 4
  %83 = load i32, i32* @WDTRSTSEL_RSTSEL_BOTH, align 4
  %84 = call i32 @regmap_write(%struct.regmap* %81, i32 %82, i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %34
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %2, align 4
  br label %106

89:                                               ; preds = %34
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = load %struct.uniphier_wdt_dev*, %struct.uniphier_wdt_dev** %5, align 8
  %92 = getelementptr inbounds %struct.uniphier_wdt_dev, %struct.uniphier_wdt_dev* %91, i32 0, i32 0
  %93 = call i32 @devm_watchdog_register_device(%struct.device* %90, %struct.TYPE_7__* %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %2, align 4
  br label %106

98:                                               ; preds = %89
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = load %struct.uniphier_wdt_dev*, %struct.uniphier_wdt_dev** %5, align 8
  %101 = getelementptr inbounds %struct.uniphier_wdt_dev, %struct.uniphier_wdt_dev* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @nowayout, align 4
  %105 = call i32 @dev_info(%struct.device* %99, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %103, i32 %104)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %98, %96, %87, %31, %16
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.uniphier_wdt_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.device_node* @of_get_parent(i32) #1

declare dso_local %struct.regmap* @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_7__*, i32, %struct.device*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @watchdog_stop_on_reboot(%struct.TYPE_7__*) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_7__*, %struct.uniphier_wdt_dev*) #1

declare dso_local i32 @uniphier_watchdog_stop(%struct.TYPE_7__*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.TYPE_7__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
