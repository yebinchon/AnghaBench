; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_imx7ulp_wdt.c_imx7ulp_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_imx7ulp_wdt.c_imx7ulp_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.imx7ulp_wdt_device = type { i32, %struct.watchdog_device, i32 }
%struct.watchdog_device = type { i32, i32, %struct.device*, i32, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to get watchdog clock\0A\00", align 1
@imx7ulp_wdt_action = common dso_local global i32 0, align 4
@imx7ulp_wdt_info = common dso_local global i32 0, align 4
@imx7ulp_wdt_ops = common dso_local global i32 0, align 4
@MAX_TIMEOUT = common dso_local global i32 0, align 4
@DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@WDOG_CLOCK_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx7ulp_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx7ulp_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.imx7ulp_wdt_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.watchdog_device*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.imx7ulp_wdt_device* @devm_kzalloc(%struct.device* %10, i32 56, i32 %11)
  store %struct.imx7ulp_wdt_device* %12, %struct.imx7ulp_wdt_device** %4, align 8
  %13 = load %struct.imx7ulp_wdt_device*, %struct.imx7ulp_wdt_device** %4, align 8
  %14 = icmp ne %struct.imx7ulp_wdt_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %113

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.imx7ulp_wdt_device*, %struct.imx7ulp_wdt_device** %4, align 8
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %19, %struct.imx7ulp_wdt_device* %20)
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %22, i32 0)
  %24 = load %struct.imx7ulp_wdt_device*, %struct.imx7ulp_wdt_device** %4, align 8
  %25 = getelementptr inbounds %struct.imx7ulp_wdt_device, %struct.imx7ulp_wdt_device* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.imx7ulp_wdt_device*, %struct.imx7ulp_wdt_device** %4, align 8
  %27 = getelementptr inbounds %struct.imx7ulp_wdt_device, %struct.imx7ulp_wdt_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %18
  %32 = load %struct.imx7ulp_wdt_device*, %struct.imx7ulp_wdt_device** %4, align 8
  %33 = getelementptr inbounds %struct.imx7ulp_wdt_device, %struct.imx7ulp_wdt_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %2, align 4
  br label %113

36:                                               ; preds = %18
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = call i32 @devm_clk_get(%struct.device* %37, i32* null)
  %39 = load %struct.imx7ulp_wdt_device*, %struct.imx7ulp_wdt_device** %4, align 8
  %40 = getelementptr inbounds %struct.imx7ulp_wdt_device, %struct.imx7ulp_wdt_device* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.imx7ulp_wdt_device*, %struct.imx7ulp_wdt_device** %4, align 8
  %42 = getelementptr inbounds %struct.imx7ulp_wdt_device, %struct.imx7ulp_wdt_device* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @IS_ERR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %36
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.imx7ulp_wdt_device*, %struct.imx7ulp_wdt_device** %4, align 8
  %50 = getelementptr inbounds %struct.imx7ulp_wdt_device, %struct.imx7ulp_wdt_device* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @PTR_ERR(i32 %51)
  store i32 %52, i32* %2, align 4
  br label %113

53:                                               ; preds = %36
  %54 = load %struct.imx7ulp_wdt_device*, %struct.imx7ulp_wdt_device** %4, align 8
  %55 = getelementptr inbounds %struct.imx7ulp_wdt_device, %struct.imx7ulp_wdt_device* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @clk_prepare_enable(i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %113

62:                                               ; preds = %53
  %63 = load %struct.device*, %struct.device** %5, align 8
  %64 = load i32, i32* @imx7ulp_wdt_action, align 4
  %65 = load %struct.imx7ulp_wdt_device*, %struct.imx7ulp_wdt_device** %4, align 8
  %66 = getelementptr inbounds %struct.imx7ulp_wdt_device, %struct.imx7ulp_wdt_device* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @devm_add_action_or_reset(%struct.device* %63, i32 %64, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %2, align 4
  br label %113

73:                                               ; preds = %62
  %74 = load %struct.imx7ulp_wdt_device*, %struct.imx7ulp_wdt_device** %4, align 8
  %75 = getelementptr inbounds %struct.imx7ulp_wdt_device, %struct.imx7ulp_wdt_device* %74, i32 0, i32 1
  store %struct.watchdog_device* %75, %struct.watchdog_device** %6, align 8
  %76 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %77 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %76, i32 0, i32 5
  store i32* @imx7ulp_wdt_info, i32** %77, align 8
  %78 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %79 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %78, i32 0, i32 4
  store i32* @imx7ulp_wdt_ops, i32** %79, align 8
  %80 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %81 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = load i32, i32* @MAX_TIMEOUT, align 4
  %83 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %84 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 8
  %85 = load %struct.device*, %struct.device** %5, align 8
  %86 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %87 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %86, i32 0, i32 2
  store %struct.device* %85, %struct.device** %87, align 8
  %88 = load i32, i32* @DEFAULT_TIMEOUT, align 4
  %89 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %90 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %92 = load %struct.device*, %struct.device** %5, align 8
  %93 = call i32 @watchdog_init_timeout(%struct.watchdog_device* %91, i32 0, %struct.device* %92)
  %94 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %95 = call i32 @watchdog_stop_on_reboot(%struct.watchdog_device* %94)
  %96 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %97 = call i32 @watchdog_stop_on_unregister(%struct.watchdog_device* %96)
  %98 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %99 = load %struct.imx7ulp_wdt_device*, %struct.imx7ulp_wdt_device** %4, align 8
  %100 = call i32 @watchdog_set_drvdata(%struct.watchdog_device* %98, %struct.imx7ulp_wdt_device* %99)
  %101 = load %struct.imx7ulp_wdt_device*, %struct.imx7ulp_wdt_device** %4, align 8
  %102 = getelementptr inbounds %struct.imx7ulp_wdt_device, %struct.imx7ulp_wdt_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %105 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @WDOG_CLOCK_RATE, align 4
  %108 = mul nsw i32 %106, %107
  %109 = call i32 @imx7ulp_wdt_init(i32 %103, i32 %108)
  %110 = load %struct.device*, %struct.device** %5, align 8
  %111 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %112 = call i32 @devm_watchdog_register_device(%struct.device* %110, %struct.watchdog_device* %111)
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %73, %71, %60, %46, %31, %15
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.imx7ulp_wdt_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.imx7ulp_wdt_device*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, i32) #1

declare dso_local i32 @watchdog_init_timeout(%struct.watchdog_device*, i32, %struct.device*) #1

declare dso_local i32 @watchdog_stop_on_reboot(%struct.watchdog_device*) #1

declare dso_local i32 @watchdog_stop_on_unregister(%struct.watchdog_device*) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.watchdog_device*, %struct.imx7ulp_wdt_device*) #1

declare dso_local i32 @imx7ulp_wdt_init(i32, i32) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.watchdog_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
