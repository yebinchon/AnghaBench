; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_mlx_wdt.c_mlxreg_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_mlx_wdt.c_mlxreg_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mlxreg_core_platform_data = type { i32, i32 }
%struct.mlxreg_wdt = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, %struct.device* }

@.str = private unnamed_addr constant [30 x i8] c"Failed to get platform data.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLXREG_CORE_WD_FEATURE_NOWAYOUT = common dso_local global i32 0, align 4
@WATCHDOG_NOWAYOUT = common dso_local global i32 0, align 4
@MLXREG_CORE_WD_FEATURE_START_AT_BOOT = common dso_local global i32 0, align 4
@WDOG_HW_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Cannot register watchdog device (err=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mlxreg_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxreg_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mlxreg_core_platform_data*, align 8
  %6 = alloca %struct.mlxreg_wdt*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.mlxreg_core_platform_data* @dev_get_platdata(%struct.device* %10)
  store %struct.mlxreg_core_platform_data* %11, %struct.mlxreg_core_platform_data** %5, align 8
  %12 = load %struct.mlxreg_core_platform_data*, %struct.mlxreg_core_platform_data** %5, align 8
  %13 = icmp ne %struct.mlxreg_core_platform_data* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %105

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.mlxreg_wdt* @devm_kzalloc(%struct.device* %20, i32 24, i32 %21)
  store %struct.mlxreg_wdt* %22, %struct.mlxreg_wdt** %6, align 8
  %23 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %6, align 8
  %24 = icmp ne %struct.mlxreg_wdt* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %105

28:                                               ; preds = %19
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %6, align 8
  %31 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store %struct.device* %29, %struct.device** %32, align 8
  %33 = load %struct.mlxreg_core_platform_data*, %struct.mlxreg_core_platform_data** %5, align 8
  %34 = getelementptr inbounds %struct.mlxreg_core_platform_data, %struct.mlxreg_core_platform_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %6, align 8
  %37 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %6, align 8
  %39 = load %struct.mlxreg_core_platform_data*, %struct.mlxreg_core_platform_data** %5, align 8
  %40 = call i32 @mlxreg_wdt_config(%struct.mlxreg_wdt* %38, %struct.mlxreg_core_platform_data* %39)
  %41 = load %struct.mlxreg_core_platform_data*, %struct.mlxreg_core_platform_data** %5, align 8
  %42 = getelementptr inbounds %struct.mlxreg_core_platform_data, %struct.mlxreg_core_platform_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MLXREG_CORE_WD_FEATURE_NOWAYOUT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %28
  %48 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %6, align 8
  %49 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %48, i32 0, i32 0
  %50 = load i32, i32* @WATCHDOG_NOWAYOUT, align 4
  %51 = call i32 @watchdog_set_nowayout(%struct.TYPE_7__* %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %28
  %53 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %6, align 8
  %54 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %53, i32 0, i32 0
  %55 = call i32 @watchdog_stop_on_reboot(%struct.TYPE_7__* %54)
  %56 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %6, align 8
  %57 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %56, i32 0, i32 0
  %58 = call i32 @watchdog_stop_on_unregister(%struct.TYPE_7__* %57)
  %59 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %6, align 8
  %60 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %59, i32 0, i32 0
  %61 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %6, align 8
  %62 = call i32 @watchdog_set_drvdata(%struct.TYPE_7__* %60, %struct.mlxreg_wdt* %61)
  %63 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %6, align 8
  %64 = load %struct.mlxreg_core_platform_data*, %struct.mlxreg_core_platform_data** %5, align 8
  %65 = call i32 @mlxreg_wdt_init_timeout(%struct.mlxreg_wdt* %63, %struct.mlxreg_core_platform_data* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %52
  br label %96

69:                                               ; preds = %52
  %70 = load %struct.mlxreg_core_platform_data*, %struct.mlxreg_core_platform_data** %5, align 8
  %71 = getelementptr inbounds %struct.mlxreg_core_platform_data, %struct.mlxreg_core_platform_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @MLXREG_CORE_WD_FEATURE_START_AT_BOOT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %69
  %77 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %6, align 8
  %78 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %77, i32 0, i32 0
  %79 = call i32 @mlxreg_wdt_start(%struct.TYPE_7__* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %96

83:                                               ; preds = %76
  %84 = load i32, i32* @WDOG_HW_RUNNING, align 4
  %85 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %6, align 8
  %86 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = call i32 @set_bit(i32 %84, i32* %87)
  br label %89

89:                                               ; preds = %83, %69
  %90 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %6, align 8
  %91 = call i32 @mlxreg_wdt_check_card_reset(%struct.mlxreg_wdt* %90)
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = load %struct.mlxreg_wdt*, %struct.mlxreg_wdt** %6, align 8
  %94 = getelementptr inbounds %struct.mlxreg_wdt, %struct.mlxreg_wdt* %93, i32 0, i32 0
  %95 = call i32 @devm_watchdog_register_device(%struct.device* %92, %struct.TYPE_7__* %94)
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %89, %82, %68
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %100, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %99, %96
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %103, %25, %14
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.mlxreg_core_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.mlxreg_wdt* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mlxreg_wdt_config(%struct.mlxreg_wdt*, %struct.mlxreg_core_platform_data*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @watchdog_stop_on_reboot(%struct.TYPE_7__*) #1

declare dso_local i32 @watchdog_stop_on_unregister(%struct.TYPE_7__*) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_7__*, %struct.mlxreg_wdt*) #1

declare dso_local i32 @mlxreg_wdt_init_timeout(%struct.mlxreg_wdt*, %struct.mlxreg_core_platform_data*) #1

declare dso_local i32 @mlxreg_wdt_start(%struct.TYPE_7__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mlxreg_wdt_check_card_reset(%struct.mlxreg_wdt*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
