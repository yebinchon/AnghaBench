; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_menf21bmc_wdt.c_menf21bmc_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_menf21bmc_wdt.c_menf21bmc_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.menf21bmc_wdt = type { %struct.TYPE_5__, %struct.i2c_client* }
%struct.TYPE_5__ = type { %struct.device*, i32, i32, i32*, i32* }
%struct.i2c_client = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@menf21bmc_wdt_ops = common dso_local global i32 0, align 4
@menf21bmc_wdt_info = common dso_local global i32 0, align 4
@BMC_WD_TIMEOUT_MIN = common dso_local global i32 0, align 4
@BMC_WD_TIMEOUT_MAX = common dso_local global i32 0, align 4
@BMC_CMD_WD_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to get current WDT timeout\0A\00", align 1
@nowayout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to set Watchdog bootstatus\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"MEN 14F021P00 BMC Watchdog device enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @menf21bmc_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menf21bmc_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.menf21bmc_wdt*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.i2c_client* @to_i2c_client(i32 %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %8, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.menf21bmc_wdt* @devm_kzalloc(%struct.device* %15, i32 40, i32 %16)
  store %struct.menf21bmc_wdt* %17, %struct.menf21bmc_wdt** %7, align 8
  %18 = load %struct.menf21bmc_wdt*, %struct.menf21bmc_wdt** %7, align 8
  %19 = icmp ne %struct.menf21bmc_wdt* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %94

23:                                               ; preds = %1
  %24 = load %struct.menf21bmc_wdt*, %struct.menf21bmc_wdt** %7, align 8
  %25 = getelementptr inbounds %struct.menf21bmc_wdt, %struct.menf21bmc_wdt* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 4
  store i32* @menf21bmc_wdt_ops, i32** %26, align 8
  %27 = load %struct.menf21bmc_wdt*, %struct.menf21bmc_wdt** %7, align 8
  %28 = getelementptr inbounds %struct.menf21bmc_wdt, %struct.menf21bmc_wdt* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  store i32* @menf21bmc_wdt_info, i32** %29, align 8
  %30 = load i32, i32* @BMC_WD_TIMEOUT_MIN, align 4
  %31 = load %struct.menf21bmc_wdt*, %struct.menf21bmc_wdt** %7, align 8
  %32 = getelementptr inbounds %struct.menf21bmc_wdt, %struct.menf21bmc_wdt* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @BMC_WD_TIMEOUT_MAX, align 4
  %35 = load %struct.menf21bmc_wdt*, %struct.menf21bmc_wdt** %7, align 8
  %36 = getelementptr inbounds %struct.menf21bmc_wdt, %struct.menf21bmc_wdt* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 8
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load %struct.menf21bmc_wdt*, %struct.menf21bmc_wdt** %7, align 8
  %40 = getelementptr inbounds %struct.menf21bmc_wdt, %struct.menf21bmc_wdt* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store %struct.device* %38, %struct.device** %41, align 8
  %42 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %43 = load %struct.menf21bmc_wdt*, %struct.menf21bmc_wdt** %7, align 8
  %44 = getelementptr inbounds %struct.menf21bmc_wdt, %struct.menf21bmc_wdt* %43, i32 0, i32 1
  store %struct.i2c_client* %42, %struct.i2c_client** %44, align 8
  %45 = load %struct.menf21bmc_wdt*, %struct.menf21bmc_wdt** %7, align 8
  %46 = getelementptr inbounds %struct.menf21bmc_wdt, %struct.menf21bmc_wdt* %45, i32 0, i32 1
  %47 = load %struct.i2c_client*, %struct.i2c_client** %46, align 8
  %48 = load i32, i32* @BMC_CMD_WD_TIME, align 4
  %49 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %23
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %94

56:                                               ; preds = %23
  %57 = load %struct.menf21bmc_wdt*, %struct.menf21bmc_wdt** %7, align 8
  %58 = getelementptr inbounds %struct.menf21bmc_wdt, %struct.menf21bmc_wdt* %57, i32 0, i32 0
  %59 = load i32, i32* %6, align 4
  %60 = sdiv i32 %59, 10
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = call i32 @watchdog_init_timeout(%struct.TYPE_5__* %58, i32 %60, %struct.device* %61)
  %63 = load %struct.menf21bmc_wdt*, %struct.menf21bmc_wdt** %7, align 8
  %64 = getelementptr inbounds %struct.menf21bmc_wdt, %struct.menf21bmc_wdt* %63, i32 0, i32 0
  %65 = load i32, i32* @nowayout, align 4
  %66 = call i32 @watchdog_set_nowayout(%struct.TYPE_5__* %64, i32 %65)
  %67 = load %struct.menf21bmc_wdt*, %struct.menf21bmc_wdt** %7, align 8
  %68 = getelementptr inbounds %struct.menf21bmc_wdt, %struct.menf21bmc_wdt* %67, i32 0, i32 0
  %69 = load %struct.menf21bmc_wdt*, %struct.menf21bmc_wdt** %7, align 8
  %70 = call i32 @watchdog_set_drvdata(%struct.TYPE_5__* %68, %struct.menf21bmc_wdt* %69)
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = load %struct.menf21bmc_wdt*, %struct.menf21bmc_wdt** %7, align 8
  %73 = call i32 @platform_set_drvdata(%struct.platform_device* %71, %struct.menf21bmc_wdt* %72)
  %74 = load %struct.menf21bmc_wdt*, %struct.menf21bmc_wdt** %7, align 8
  %75 = call i32 @menf21bmc_wdt_set_bootstatus(%struct.menf21bmc_wdt* %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %56
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %94

82:                                               ; preds = %56
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = load %struct.menf21bmc_wdt*, %struct.menf21bmc_wdt** %7, align 8
  %85 = getelementptr inbounds %struct.menf21bmc_wdt, %struct.menf21bmc_wdt* %84, i32 0, i32 0
  %86 = call i32 @devm_watchdog_register_device(%struct.device* %83, %struct.TYPE_5__* %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %94

91:                                               ; preds = %82
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = call i32 @dev_info(%struct.device* %92, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %91, %89, %78, %52, %20
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local %struct.menf21bmc_wdt* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_smbus_read_word_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_5__*, i32, %struct.device*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_5__*, %struct.menf21bmc_wdt*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.menf21bmc_wdt*) #1

declare dso_local i32 @menf21bmc_wdt_set_bootstatus(%struct.menf21bmc_wdt*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.TYPE_5__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
