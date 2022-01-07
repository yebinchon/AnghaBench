; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_rtd119x_wdt.c_rtd119x_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_rtd119x_wdt.c_rtd119x_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.rtd119x_watchdog_device = type { %struct.TYPE_6__, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.device*, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rtd119x_clk_disable_unprepare = common dso_local global i32 0, align 4
@rtd119x_wdt_info = common dso_local global i32 0, align 4
@rtd119x_wdt_ops = common dso_local global i32 0, align 4
@RTD119X_TCWTR_WDCLR = common dso_local global i32 0, align 4
@RTD119X_TCWTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rtd119x_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtd119x_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtd119x_watchdog_device*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.rtd119x_watchdog_device* @devm_kzalloc(%struct.device* %9, i32 56, i32 %10)
  store %struct.rtd119x_watchdog_device* %11, %struct.rtd119x_watchdog_device** %5, align 8
  %12 = load %struct.rtd119x_watchdog_device*, %struct.rtd119x_watchdog_device** %5, align 8
  %13 = icmp ne %struct.rtd119x_watchdog_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %123

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %18, i32 0)
  %20 = load %struct.rtd119x_watchdog_device*, %struct.rtd119x_watchdog_device** %5, align 8
  %21 = getelementptr inbounds %struct.rtd119x_watchdog_device, %struct.rtd119x_watchdog_device* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load %struct.rtd119x_watchdog_device*, %struct.rtd119x_watchdog_device** %5, align 8
  %23 = getelementptr inbounds %struct.rtd119x_watchdog_device, %struct.rtd119x_watchdog_device* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @IS_ERR(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load %struct.rtd119x_watchdog_device*, %struct.rtd119x_watchdog_device** %5, align 8
  %29 = getelementptr inbounds %struct.rtd119x_watchdog_device, %struct.rtd119x_watchdog_device* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @PTR_ERR(i64 %30)
  store i32 %31, i32* %2, align 4
  br label %123

32:                                               ; preds = %17
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = call i64 @devm_clk_get(%struct.device* %33, i32* null)
  %35 = load %struct.rtd119x_watchdog_device*, %struct.rtd119x_watchdog_device** %5, align 8
  %36 = getelementptr inbounds %struct.rtd119x_watchdog_device, %struct.rtd119x_watchdog_device* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = load %struct.rtd119x_watchdog_device*, %struct.rtd119x_watchdog_device** %5, align 8
  %38 = getelementptr inbounds %struct.rtd119x_watchdog_device, %struct.rtd119x_watchdog_device* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @IS_ERR(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = load %struct.rtd119x_watchdog_device*, %struct.rtd119x_watchdog_device** %5, align 8
  %44 = getelementptr inbounds %struct.rtd119x_watchdog_device, %struct.rtd119x_watchdog_device* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @PTR_ERR(i64 %45)
  store i32 %46, i32* %2, align 4
  br label %123

47:                                               ; preds = %32
  %48 = load %struct.rtd119x_watchdog_device*, %struct.rtd119x_watchdog_device** %5, align 8
  %49 = getelementptr inbounds %struct.rtd119x_watchdog_device, %struct.rtd119x_watchdog_device* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @clk_prepare_enable(i64 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %123

56:                                               ; preds = %47
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load i32, i32* @rtd119x_clk_disable_unprepare, align 4
  %59 = load %struct.rtd119x_watchdog_device*, %struct.rtd119x_watchdog_device** %5, align 8
  %60 = getelementptr inbounds %struct.rtd119x_watchdog_device, %struct.rtd119x_watchdog_device* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @devm_add_action_or_reset(%struct.device* %57, i32 %58, i64 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %123

67:                                               ; preds = %56
  %68 = load %struct.rtd119x_watchdog_device*, %struct.rtd119x_watchdog_device** %5, align 8
  %69 = getelementptr inbounds %struct.rtd119x_watchdog_device, %struct.rtd119x_watchdog_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 5
  store i32* @rtd119x_wdt_info, i32** %70, align 8
  %71 = load %struct.rtd119x_watchdog_device*, %struct.rtd119x_watchdog_device** %5, align 8
  %72 = getelementptr inbounds %struct.rtd119x_watchdog_device, %struct.rtd119x_watchdog_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  store i32* @rtd119x_wdt_ops, i32** %73, align 8
  %74 = load %struct.rtd119x_watchdog_device*, %struct.rtd119x_watchdog_device** %5, align 8
  %75 = getelementptr inbounds %struct.rtd119x_watchdog_device, %struct.rtd119x_watchdog_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 120, i32* %76, align 8
  %77 = load %struct.rtd119x_watchdog_device*, %struct.rtd119x_watchdog_device** %5, align 8
  %78 = getelementptr inbounds %struct.rtd119x_watchdog_device, %struct.rtd119x_watchdog_device* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @clk_get_rate(i64 %79)
  %81 = udiv i32 -1, %80
  %82 = load %struct.rtd119x_watchdog_device*, %struct.rtd119x_watchdog_device** %5, align 8
  %83 = getelementptr inbounds %struct.rtd119x_watchdog_device, %struct.rtd119x_watchdog_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  %85 = load %struct.rtd119x_watchdog_device*, %struct.rtd119x_watchdog_device** %5, align 8
  %86 = getelementptr inbounds %struct.rtd119x_watchdog_device, %struct.rtd119x_watchdog_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  store i32 1, i32* %87, align 8
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = load %struct.rtd119x_watchdog_device*, %struct.rtd119x_watchdog_device** %5, align 8
  %90 = getelementptr inbounds %struct.rtd119x_watchdog_device, %struct.rtd119x_watchdog_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  store %struct.device* %88, %struct.device** %91, align 8
  %92 = load %struct.rtd119x_watchdog_device*, %struct.rtd119x_watchdog_device** %5, align 8
  %93 = getelementptr inbounds %struct.rtd119x_watchdog_device, %struct.rtd119x_watchdog_device* %92, i32 0, i32 0
  %94 = call i32 @watchdog_stop_on_reboot(%struct.TYPE_6__* %93)
  %95 = load %struct.rtd119x_watchdog_device*, %struct.rtd119x_watchdog_device** %5, align 8
  %96 = getelementptr inbounds %struct.rtd119x_watchdog_device, %struct.rtd119x_watchdog_device* %95, i32 0, i32 0
  %97 = load %struct.rtd119x_watchdog_device*, %struct.rtd119x_watchdog_device** %5, align 8
  %98 = call i32 @watchdog_set_drvdata(%struct.TYPE_6__* %96, %struct.rtd119x_watchdog_device* %97)
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = load %struct.rtd119x_watchdog_device*, %struct.rtd119x_watchdog_device** %5, align 8
  %101 = call i32 @platform_set_drvdata(%struct.platform_device* %99, %struct.rtd119x_watchdog_device* %100)
  %102 = load i32, i32* @RTD119X_TCWTR_WDCLR, align 4
  %103 = load %struct.rtd119x_watchdog_device*, %struct.rtd119x_watchdog_device** %5, align 8
  %104 = getelementptr inbounds %struct.rtd119x_watchdog_device, %struct.rtd119x_watchdog_device* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @RTD119X_TCWTR, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @writel_relaxed(i32 %102, i64 %107)
  %109 = load %struct.rtd119x_watchdog_device*, %struct.rtd119x_watchdog_device** %5, align 8
  %110 = getelementptr inbounds %struct.rtd119x_watchdog_device, %struct.rtd119x_watchdog_device* %109, i32 0, i32 0
  %111 = load %struct.rtd119x_watchdog_device*, %struct.rtd119x_watchdog_device** %5, align 8
  %112 = getelementptr inbounds %struct.rtd119x_watchdog_device, %struct.rtd119x_watchdog_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @rtd119x_wdt_set_timeout(%struct.TYPE_6__* %110, i32 %114)
  %116 = load %struct.rtd119x_watchdog_device*, %struct.rtd119x_watchdog_device** %5, align 8
  %117 = getelementptr inbounds %struct.rtd119x_watchdog_device, %struct.rtd119x_watchdog_device* %116, i32 0, i32 0
  %118 = call i32 @rtd119x_wdt_stop(%struct.TYPE_6__* %117)
  %119 = load %struct.device*, %struct.device** %4, align 8
  %120 = load %struct.rtd119x_watchdog_device*, %struct.rtd119x_watchdog_device** %5, align 8
  %121 = getelementptr inbounds %struct.rtd119x_watchdog_device, %struct.rtd119x_watchdog_device* %120, i32 0, i32 0
  %122 = call i32 @devm_watchdog_register_device(%struct.device* %119, %struct.TYPE_6__* %121)
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %67, %65, %54, %42, %27, %14
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.rtd119x_watchdog_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, i64) #1

declare dso_local i32 @clk_get_rate(i64) #1

declare dso_local i32 @watchdog_stop_on_reboot(%struct.TYPE_6__*) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_6__*, %struct.rtd119x_watchdog_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rtd119x_watchdog_device*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @rtd119x_wdt_set_timeout(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @rtd119x_wdt_stop(%struct.TYPE_6__*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
