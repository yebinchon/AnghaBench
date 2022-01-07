; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_ux500_wdt.c_ux500_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_ux500_wdt.c_ux500_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.device*, i32 }
%struct.device = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.ux500_wdt_data = type { i64, i64 }

@timeout = common dso_local global i32 0, align 4
@WATCHDOG_MAX28 = common dso_local global i32 0, align 4
@ux500_wdt = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@nowayout = common dso_local global i32 0, align 4
@PRCMU_WDOG_CPU1 = common dso_local global i32 0, align 4
@PRCMU_WDOG_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ux500_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ux500_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ux500_wdt_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.ux500_wdt_data* @dev_get_platdata(%struct.device* %9)
  store %struct.ux500_wdt_data* %10, %struct.ux500_wdt_data** %6, align 8
  %11 = load %struct.ux500_wdt_data*, %struct.ux500_wdt_data** %6, align 8
  %12 = icmp ne %struct.ux500_wdt_data* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = load %struct.ux500_wdt_data*, %struct.ux500_wdt_data** %6, align 8
  %15 = getelementptr inbounds %struct.ux500_wdt_data, %struct.ux500_wdt_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.ux500_wdt_data*, %struct.ux500_wdt_data** %6, align 8
  %20 = getelementptr inbounds %struct.ux500_wdt_data, %struct.ux500_wdt_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* @timeout, align 4
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.ux500_wdt_data*, %struct.ux500_wdt_data** %6, align 8
  %25 = getelementptr inbounds %struct.ux500_wdt_data, %struct.ux500_wdt_data* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @WATCHDOG_MAX28, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ux500_wdt, i32 0, i32 1), align 8
  br label %30

30:                                               ; preds = %28, %23
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.device*, %struct.device** %4, align 8
  store %struct.device* %32, %struct.device** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ux500_wdt, i32 0, i32 0), align 8
  %33 = load i32, i32* @nowayout, align 4
  %34 = call i32 @watchdog_set_nowayout(%struct.TYPE_4__* @ux500_wdt, i32 %33)
  %35 = load i32, i32* @PRCMU_WDOG_CPU1, align 4
  %36 = call i32 @prcmu_config_a9wdog(i32 %35, i32 0)
  %37 = load i32, i32* @PRCMU_WDOG_ALL, align 4
  %38 = load i32, i32* @timeout, align 4
  %39 = mul nsw i32 %38, 1000
  %40 = call i32 @prcmu_load_a9wdog(i32 %37, i32 %39)
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 @devm_watchdog_register_device(%struct.device* %41, %struct.TYPE_4__* @ux500_wdt)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %31
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %50

47:                                               ; preds = %31
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = call i32 @dev_info(%struct.device* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %47, %45
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.ux500_wdt_data* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @prcmu_config_a9wdog(i32, i32) #1

declare dso_local i32 @prcmu_load_a9wdog(i32, i32) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
