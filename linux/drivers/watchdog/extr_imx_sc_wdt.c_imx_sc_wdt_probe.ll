; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_imx_sc_wdt.c_imx_sc_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_imx_sc_wdt.c_imx_sc_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.imx_sc_wdt_device = type { %struct.TYPE_4__, %struct.watchdog_device }
%struct.TYPE_4__ = type { i32 }
%struct.watchdog_device = type { i32, i32, %struct.device*, i32, i32*, %struct.TYPE_5__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@imx_sc_wdt_info = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@imx_sc_wdt_ops = common dso_local global i32 0, align 4
@MAX_TIMEOUT = common dso_local global i32 0, align 4
@DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@SC_IRQ_GROUP_WDOG = common dso_local global i32 0, align 4
@SC_IRQ_WDOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Enable irq failed, pretimeout NOT supported\0A\00", align 1
@imx_sc_wdt_notify = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Register irq notifier failed, pretimeout NOT supported\0A\00", align 1
@imx_sc_wdt_action = common dso_local global i32 0, align 4
@WDIOF_PRETIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Add action failed, pretimeout NOT supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_sc_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_sc_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.imx_sc_wdt_device*, align 8
  %5 = alloca %struct.watchdog_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = load %struct.device*, %struct.device** %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.imx_sc_wdt_device* @devm_kzalloc(%struct.device* %10, i32 48, i32 %11)
  store %struct.imx_sc_wdt_device* %12, %struct.imx_sc_wdt_device** %4, align 8
  %13 = load %struct.imx_sc_wdt_device*, %struct.imx_sc_wdt_device** %4, align 8
  %14 = icmp ne %struct.imx_sc_wdt_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %94

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.imx_sc_wdt_device*, %struct.imx_sc_wdt_device** %4, align 8
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %19, %struct.imx_sc_wdt_device* %20)
  %22 = load %struct.imx_sc_wdt_device*, %struct.imx_sc_wdt_device** %4, align 8
  %23 = getelementptr inbounds %struct.imx_sc_wdt_device, %struct.imx_sc_wdt_device* %22, i32 0, i32 1
  store %struct.watchdog_device* %23, %struct.watchdog_device** %5, align 8
  %24 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %25 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %24, i32 0, i32 5
  store %struct.TYPE_5__* @imx_sc_wdt_info, %struct.TYPE_5__** %25, align 8
  %26 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %27 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %26, i32 0, i32 4
  store i32* @imx_sc_wdt_ops, i32** %27, align 8
  %28 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %29 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load i32, i32* @MAX_TIMEOUT, align 4
  %31 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %32 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %35 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %34, i32 0, i32 2
  store %struct.device* %33, %struct.device** %35, align 8
  %36 = load i32, i32* @DEFAULT_TIMEOUT, align 4
  %37 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %38 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = call i32 @watchdog_init_timeout(%struct.watchdog_device* %39, i32 0, %struct.device* %40)
  %42 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %43 = call i32 @watchdog_stop_on_reboot(%struct.watchdog_device* %42)
  %44 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %45 = call i32 @watchdog_stop_on_unregister(%struct.watchdog_device* %44)
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %48 = call i32 @devm_watchdog_register_device(%struct.device* %46, %struct.watchdog_device* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %18
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %94

53:                                               ; preds = %18
  %54 = load i32, i32* @SC_IRQ_GROUP_WDOG, align 4
  %55 = load i32, i32* @SC_IRQ_WDOG, align 4
  %56 = call i32 @imx_scu_irq_group_enable(i32 %54, i32 %55, i32 1)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = call i32 @dev_warn(%struct.device* %60, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %94

62:                                               ; preds = %53
  %63 = load i32, i32* @imx_sc_wdt_notify, align 4
  %64 = load %struct.imx_sc_wdt_device*, %struct.imx_sc_wdt_device** %4, align 8
  %65 = getelementptr inbounds %struct.imx_sc_wdt_device, %struct.imx_sc_wdt_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load %struct.imx_sc_wdt_device*, %struct.imx_sc_wdt_device** %4, align 8
  %68 = getelementptr inbounds %struct.imx_sc_wdt_device, %struct.imx_sc_wdt_device* %67, i32 0, i32 0
  %69 = call i32 @imx_scu_irq_register_notifier(%struct.TYPE_4__* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %62
  %73 = load i32, i32* @SC_IRQ_GROUP_WDOG, align 4
  %74 = load i32, i32* @SC_IRQ_WDOG, align 4
  %75 = call i32 @imx_scu_irq_group_enable(i32 %73, i32 %74, i32 0)
  %76 = load %struct.device*, %struct.device** %6, align 8
  %77 = call i32 @dev_warn(%struct.device* %76, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %94

78:                                               ; preds = %62
  %79 = load %struct.device*, %struct.device** %6, align 8
  %80 = load i32, i32* @imx_sc_wdt_action, align 4
  %81 = load %struct.imx_sc_wdt_device*, %struct.imx_sc_wdt_device** %4, align 8
  %82 = getelementptr inbounds %struct.imx_sc_wdt_device, %struct.imx_sc_wdt_device* %81, i32 0, i32 0
  %83 = call i32 @devm_add_action_or_reset(%struct.device* %79, i32 %80, %struct.TYPE_4__* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %78
  %87 = load i32, i32* @WDIOF_PRETIMEOUT, align 4
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @imx_sc_wdt_info, i32 0, i32 0), align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @imx_sc_wdt_info, i32 0, i32 0), align 4
  br label %93

90:                                               ; preds = %78
  %91 = load %struct.device*, %struct.device** %6, align 8
  %92 = call i32 @dev_warn(%struct.device* %91, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %86
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %72, %59, %51, %15
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.imx_sc_wdt_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.imx_sc_wdt_device*) #1

declare dso_local i32 @watchdog_init_timeout(%struct.watchdog_device*, i32, %struct.device*) #1

declare dso_local i32 @watchdog_stop_on_reboot(%struct.watchdog_device*) #1

declare dso_local i32 @watchdog_stop_on_unregister(%struct.watchdog_device*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.watchdog_device*) #1

declare dso_local i32 @imx_scu_irq_group_enable(i32, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @imx_scu_irq_register_notifier(%struct.TYPE_4__*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
