; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_da9055_wdt.c_da9055_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_da9055_wdt.c_da9055_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.da9055 = type { %struct.device* }
%struct.da9055_wdt_data = type { %struct.watchdog_device, %struct.da9055* }
%struct.watchdog_device = type { %struct.device*, i32*, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DA9055_DEF_TIMEOUT = common dso_local global i32 0, align 4
@da9055_wdt_info = common dso_local global i32 0, align 4
@da9055_wdt_ops = common dso_local global i32 0, align 4
@nowayout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to stop watchdog, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"watchdog_register_device() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da9055_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.da9055*, align 8
  %6 = alloca %struct.da9055_wdt_data*, align 8
  %7 = alloca %struct.watchdog_device*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.da9055* @dev_get_drvdata(i32 %13)
  store %struct.da9055* %14, %struct.da9055** %5, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.da9055_wdt_data* @devm_kzalloc(%struct.device* %15, i32 40, i32 %16)
  store %struct.da9055_wdt_data* %17, %struct.da9055_wdt_data** %6, align 8
  %18 = load %struct.da9055_wdt_data*, %struct.da9055_wdt_data** %6, align 8
  %19 = icmp ne %struct.da9055_wdt_data* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %69

23:                                               ; preds = %1
  %24 = load %struct.da9055*, %struct.da9055** %5, align 8
  %25 = load %struct.da9055_wdt_data*, %struct.da9055_wdt_data** %6, align 8
  %26 = getelementptr inbounds %struct.da9055_wdt_data, %struct.da9055_wdt_data* %25, i32 0, i32 1
  store %struct.da9055* %24, %struct.da9055** %26, align 8
  %27 = load %struct.da9055_wdt_data*, %struct.da9055_wdt_data** %6, align 8
  %28 = getelementptr inbounds %struct.da9055_wdt_data, %struct.da9055_wdt_data* %27, i32 0, i32 0
  store %struct.watchdog_device* %28, %struct.watchdog_device** %7, align 8
  %29 = load i32, i32* @DA9055_DEF_TIMEOUT, align 4
  %30 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %31 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %33 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %32, i32 0, i32 2
  store i32* @da9055_wdt_info, i32** %33, align 8
  %34 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %35 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %34, i32 0, i32 1
  store i32* @da9055_wdt_ops, i32** %35, align 8
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %38 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %37, i32 0, i32 0
  store %struct.device* %36, %struct.device** %38, align 8
  %39 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %40 = load i32, i32* @nowayout, align 4
  %41 = call i32 @watchdog_set_nowayout(%struct.watchdog_device* %39, i32 %40)
  %42 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %43 = load %struct.da9055_wdt_data*, %struct.da9055_wdt_data** %6, align 8
  %44 = call i32 @watchdog_set_drvdata(%struct.watchdog_device* %42, %struct.da9055_wdt_data* %43)
  %45 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %46 = call i32 @da9055_wdt_stop(%struct.watchdog_device* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %23
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %2, align 4
  br label %69

54:                                               ; preds = %23
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = load %struct.da9055_wdt_data*, %struct.da9055_wdt_data** %6, align 8
  %57 = getelementptr inbounds %struct.da9055_wdt_data, %struct.da9055_wdt_data* %56, i32 0, i32 0
  %58 = call i32 @devm_watchdog_register_device(%struct.device* %55, %struct.watchdog_device* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.da9055*, %struct.da9055** %5, align 8
  %63 = getelementptr inbounds %struct.da9055, %struct.da9055* %62, i32 0, i32 0
  %64 = load %struct.device*, %struct.device** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %61, %54
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %49, %20
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.da9055* @dev_get_drvdata(i32) #1

declare dso_local %struct.da9055_wdt_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.watchdog_device*, i32) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.watchdog_device*, %struct.da9055_wdt_data*) #1

declare dso_local i32 @da9055_wdt_stop(%struct.watchdog_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.watchdog_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
