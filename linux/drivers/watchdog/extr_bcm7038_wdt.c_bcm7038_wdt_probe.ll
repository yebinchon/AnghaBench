; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_bcm7038_wdt.c_bcm7038_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_bcm7038_wdt.c_bcm7038_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.bcm7038_watchdog = type { i32, %struct.TYPE_5__, i32*, i32* }
%struct.TYPE_5__ = type { i32, %struct.device*, i32, i32, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bcm7038_clk_disable_unprepare = common dso_local global i32 0, align 4
@WDT_DEFAULT_RATE = common dso_local global i8* null, align 8
@bcm7038_wdt_info = common dso_local global i32 0, align 4
@bcm7038_wdt_ops = common dso_local global i32 0, align 4
@WDT_MIN_TIMEOUT = common dso_local global i32 0, align 4
@WDT_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Registered BCM7038 Watchdog\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm7038_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm7038_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.bcm7038_watchdog*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.bcm7038_watchdog* @devm_kzalloc(%struct.device* %9, i32 64, i32 %10)
  store %struct.bcm7038_watchdog* %11, %struct.bcm7038_watchdog** %5, align 8
  %12 = load %struct.bcm7038_watchdog*, %struct.bcm7038_watchdog** %5, align 8
  %13 = icmp ne %struct.bcm7038_watchdog* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %136

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load %struct.bcm7038_watchdog*, %struct.bcm7038_watchdog** %5, align 8
  %20 = call i32 @platform_set_drvdata(%struct.platform_device* %18, %struct.bcm7038_watchdog* %19)
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = call i32* @devm_platform_ioremap_resource(%struct.platform_device* %21, i32 0)
  %23 = load %struct.bcm7038_watchdog*, %struct.bcm7038_watchdog** %5, align 8
  %24 = getelementptr inbounds %struct.bcm7038_watchdog, %struct.bcm7038_watchdog* %23, i32 0, i32 3
  store i32* %22, i32** %24, align 8
  %25 = load %struct.bcm7038_watchdog*, %struct.bcm7038_watchdog** %5, align 8
  %26 = getelementptr inbounds %struct.bcm7038_watchdog, %struct.bcm7038_watchdog* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @IS_ERR(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %17
  %31 = load %struct.bcm7038_watchdog*, %struct.bcm7038_watchdog** %5, align 8
  %32 = getelementptr inbounds %struct.bcm7038_watchdog, %struct.bcm7038_watchdog* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @PTR_ERR(i32* %33)
  store i32 %34, i32* %2, align 4
  br label %136

35:                                               ; preds = %17
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i32* @devm_clk_get(%struct.device* %36, i32* null)
  %38 = load %struct.bcm7038_watchdog*, %struct.bcm7038_watchdog** %5, align 8
  %39 = getelementptr inbounds %struct.bcm7038_watchdog, %struct.bcm7038_watchdog* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  %40 = load %struct.bcm7038_watchdog*, %struct.bcm7038_watchdog** %5, align 8
  %41 = getelementptr inbounds %struct.bcm7038_watchdog, %struct.bcm7038_watchdog* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i64 @IS_ERR(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %82, label %45

45:                                               ; preds = %35
  %46 = load %struct.bcm7038_watchdog*, %struct.bcm7038_watchdog** %5, align 8
  %47 = getelementptr inbounds %struct.bcm7038_watchdog, %struct.bcm7038_watchdog* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @clk_prepare_enable(i32* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %136

54:                                               ; preds = %45
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = load i32, i32* @bcm7038_clk_disable_unprepare, align 4
  %57 = load %struct.bcm7038_watchdog*, %struct.bcm7038_watchdog** %5, align 8
  %58 = getelementptr inbounds %struct.bcm7038_watchdog, %struct.bcm7038_watchdog* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @devm_add_action_or_reset(%struct.device* %55, i32 %56, i32* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %136

65:                                               ; preds = %54
  %66 = load %struct.bcm7038_watchdog*, %struct.bcm7038_watchdog** %5, align 8
  %67 = getelementptr inbounds %struct.bcm7038_watchdog, %struct.bcm7038_watchdog* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @clk_get_rate(i32* %68)
  %70 = load %struct.bcm7038_watchdog*, %struct.bcm7038_watchdog** %5, align 8
  %71 = getelementptr inbounds %struct.bcm7038_watchdog, %struct.bcm7038_watchdog* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.bcm7038_watchdog*, %struct.bcm7038_watchdog** %5, align 8
  %73 = getelementptr inbounds %struct.bcm7038_watchdog, %struct.bcm7038_watchdog* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %65
  %77 = load i8*, i8** @WDT_DEFAULT_RATE, align 8
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.bcm7038_watchdog*, %struct.bcm7038_watchdog** %5, align 8
  %80 = getelementptr inbounds %struct.bcm7038_watchdog, %struct.bcm7038_watchdog* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %76, %65
  br label %89

82:                                               ; preds = %35
  %83 = load i8*, i8** @WDT_DEFAULT_RATE, align 8
  %84 = ptrtoint i8* %83 to i32
  %85 = load %struct.bcm7038_watchdog*, %struct.bcm7038_watchdog** %5, align 8
  %86 = getelementptr inbounds %struct.bcm7038_watchdog, %struct.bcm7038_watchdog* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.bcm7038_watchdog*, %struct.bcm7038_watchdog** %5, align 8
  %88 = getelementptr inbounds %struct.bcm7038_watchdog, %struct.bcm7038_watchdog* %87, i32 0, i32 2
  store i32* null, i32** %88, align 8
  br label %89

89:                                               ; preds = %82, %81
  %90 = load %struct.bcm7038_watchdog*, %struct.bcm7038_watchdog** %5, align 8
  %91 = getelementptr inbounds %struct.bcm7038_watchdog, %struct.bcm7038_watchdog* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 5
  store i32* @bcm7038_wdt_info, i32** %92, align 8
  %93 = load %struct.bcm7038_watchdog*, %struct.bcm7038_watchdog** %5, align 8
  %94 = getelementptr inbounds %struct.bcm7038_watchdog, %struct.bcm7038_watchdog* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 4
  store i32* @bcm7038_wdt_ops, i32** %95, align 8
  %96 = load i32, i32* @WDT_MIN_TIMEOUT, align 4
  %97 = load %struct.bcm7038_watchdog*, %struct.bcm7038_watchdog** %5, align 8
  %98 = getelementptr inbounds %struct.bcm7038_watchdog, %struct.bcm7038_watchdog* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 3
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* @WDT_DEFAULT_TIMEOUT, align 4
  %101 = load %struct.bcm7038_watchdog*, %struct.bcm7038_watchdog** %5, align 8
  %102 = getelementptr inbounds %struct.bcm7038_watchdog, %struct.bcm7038_watchdog* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  store i32 %100, i32* %103, align 8
  %104 = load %struct.bcm7038_watchdog*, %struct.bcm7038_watchdog** %5, align 8
  %105 = getelementptr inbounds %struct.bcm7038_watchdog, %struct.bcm7038_watchdog* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = udiv i32 -1, %106
  %108 = load %struct.bcm7038_watchdog*, %struct.bcm7038_watchdog** %5, align 8
  %109 = getelementptr inbounds %struct.bcm7038_watchdog, %struct.bcm7038_watchdog* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 8
  %111 = load %struct.device*, %struct.device** %4, align 8
  %112 = load %struct.bcm7038_watchdog*, %struct.bcm7038_watchdog** %5, align 8
  %113 = getelementptr inbounds %struct.bcm7038_watchdog, %struct.bcm7038_watchdog* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  store %struct.device* %111, %struct.device** %114, align 8
  %115 = load %struct.bcm7038_watchdog*, %struct.bcm7038_watchdog** %5, align 8
  %116 = getelementptr inbounds %struct.bcm7038_watchdog, %struct.bcm7038_watchdog* %115, i32 0, i32 1
  %117 = load %struct.bcm7038_watchdog*, %struct.bcm7038_watchdog** %5, align 8
  %118 = call i32 @watchdog_set_drvdata(%struct.TYPE_5__* %116, %struct.bcm7038_watchdog* %117)
  %119 = load %struct.bcm7038_watchdog*, %struct.bcm7038_watchdog** %5, align 8
  %120 = getelementptr inbounds %struct.bcm7038_watchdog, %struct.bcm7038_watchdog* %119, i32 0, i32 1
  %121 = call i32 @watchdog_stop_on_reboot(%struct.TYPE_5__* %120)
  %122 = load %struct.bcm7038_watchdog*, %struct.bcm7038_watchdog** %5, align 8
  %123 = getelementptr inbounds %struct.bcm7038_watchdog, %struct.bcm7038_watchdog* %122, i32 0, i32 1
  %124 = call i32 @watchdog_stop_on_unregister(%struct.TYPE_5__* %123)
  %125 = load %struct.device*, %struct.device** %4, align 8
  %126 = load %struct.bcm7038_watchdog*, %struct.bcm7038_watchdog** %5, align 8
  %127 = getelementptr inbounds %struct.bcm7038_watchdog, %struct.bcm7038_watchdog* %126, i32 0, i32 1
  %128 = call i32 @devm_watchdog_register_device(%struct.device* %125, %struct.TYPE_5__* %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %89
  %132 = load i32, i32* %6, align 4
  store i32 %132, i32* %2, align 4
  br label %136

133:                                              ; preds = %89
  %134 = load %struct.device*, %struct.device** %4, align 8
  %135 = call i32 @dev_info(%struct.device* %134, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %133, %131, %63, %52, %30, %14
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local %struct.bcm7038_watchdog* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.bcm7038_watchdog*) #1

declare dso_local i32* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, i32*) #1

declare dso_local i32 @clk_get_rate(i32*) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_5__*, %struct.bcm7038_watchdog*) #1

declare dso_local i32 @watchdog_stop_on_reboot(%struct.TYPE_5__*) #1

declare dso_local i32 @watchdog_stop_on_unregister(%struct.TYPE_5__*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.TYPE_5__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
