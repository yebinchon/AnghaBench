; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_pnx4008_wdt.c_pnx4008_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_pnx4008_wdt.c_pnx4008_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.device*, i32 }
%struct.device = type { i32 }
%struct.platform_device = type { %struct.device }

@pnx4008_wdd = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@heartbeat = common dso_local global i32 0, align 4
@wdt_base = common dso_local global i32 0, align 4
@wdt_clk = common dso_local global i32 0, align 4
@pnx4008_clk_disable_unprepare = common dso_local global i32 0, align 4
@WDOG_RESET = common dso_local global i32 0, align 4
@WDIOF_CARDRESET = common dso_local global i32 0, align 4
@nowayout = common dso_local global i32 0, align 4
@COUNT_ENAB = common dso_local global i32 0, align 4
@WDOG_HW_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"heartbeat %d sec\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pnx4008_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnx4008_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @heartbeat, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call i32 @watchdog_init_timeout(%struct.TYPE_6__* @pnx4008_wdd, i32 %8, %struct.device* %9)
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %11, i32 0)
  store i32 %12, i32* @wdt_base, align 4
  %13 = load i32, i32* @wdt_base, align 4
  %14 = call i64 @IS_ERR(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @wdt_base, align 4
  %18 = call i32 @PTR_ERR(i32 %17)
  store i32 %18, i32* %2, align 4
  br label %80

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @devm_clk_get(%struct.device* %20, i32* null)
  store i32 %21, i32* @wdt_clk, align 4
  %22 = load i32, i32* @wdt_clk, align 4
  %23 = call i64 @IS_ERR(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @wdt_clk, align 4
  %27 = call i32 @PTR_ERR(i32 %26)
  store i32 %27, i32* %2, align 4
  br label %80

28:                                               ; preds = %19
  %29 = load i32, i32* @wdt_clk, align 4
  %30 = call i32 @clk_prepare_enable(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %80

35:                                               ; preds = %28
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load i32, i32* @pnx4008_clk_disable_unprepare, align 4
  %38 = load i32, i32* @wdt_clk, align 4
  %39 = call i32 @devm_add_action_or_reset(%struct.device* %36, i32 %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %80

44:                                               ; preds = %35
  %45 = load i32, i32* @wdt_base, align 4
  %46 = call i32 @WDTIM_RES(i32 %45)
  %47 = call i32 @readl(i32 %46)
  %48 = load i32, i32* @WDOG_RESET, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @WDIOF_CARDRESET, align 4
  br label %54

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i32 [ %52, %51 ], [ 0, %53 ]
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pnx4008_wdd, i32 0, i32 3), align 8
  %56 = load %struct.device*, %struct.device** %4, align 8
  store %struct.device* %56, %struct.device** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pnx4008_wdd, i32 0, i32 2), align 8
  %57 = load i32, i32* @nowayout, align 4
  %58 = call i32 @watchdog_set_nowayout(%struct.TYPE_6__* @pnx4008_wdd, i32 %57)
  %59 = call i32 @watchdog_set_restart_priority(%struct.TYPE_6__* @pnx4008_wdd, i32 128)
  %60 = load i32, i32* @wdt_base, align 4
  %61 = call i32 @WDTIM_CTRL(i32 %60)
  %62 = call i32 @readl(i32 %61)
  %63 = load i32, i32* @COUNT_ENAB, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  %67 = load i32, i32* @WDOG_HW_RUNNING, align 4
  %68 = call i32 @set_bit(i32 %67, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pnx4008_wdd, i32 0, i32 1))
  br label %69

69:                                               ; preds = %66, %54
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = call i32 @devm_watchdog_register_device(%struct.device* %70, %struct.TYPE_6__* @pnx4008_wdd)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %2, align 4
  br label %80

76:                                               ; preds = %69
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pnx4008_wdd, i32 0, i32 0), align 8
  %79 = call i32 @dev_info(%struct.device* %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %78)
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %76, %74, %42, %33, %25, %16
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_6__*, i32, %struct.device*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @WDTIM_RES(i32) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @watchdog_set_restart_priority(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @WDTIM_CTRL(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.TYPE_6__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
