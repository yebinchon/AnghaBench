; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_da9062_wdt.c_da9062_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_da9062_wdt.c_da9062_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.da9062 = type { i32 }
%struct.da9062_watchdog = type { %struct.TYPE_5__, %struct.da9062* }
%struct.TYPE_5__ = type { %struct.device*, i32, i32, i32, i32, i32, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@da9062_watchdog_info = common dso_local global i32 0, align 4
@da9062_watchdog_ops = common dso_local global i32 0, align 4
@DA9062_WDT_MIN_TIMEOUT = common dso_local global i32 0, align 4
@DA9062_WDT_MAX_TIMEOUT = common dso_local global i32 0, align 4
@DA9062_RESET_PROTECTION_MS = common dso_local global i32 0, align 4
@DA9062_WDG_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@WATCHDOG_NOWAYOUT_INIT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da9062_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9062_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.da9062*, align 8
  %7 = alloca %struct.da9062_watchdog*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.da9062* @dev_get_drvdata(i32 %12)
  store %struct.da9062* %13, %struct.da9062** %6, align 8
  %14 = load %struct.da9062*, %struct.da9062** %6, align 8
  %15 = icmp ne %struct.da9062* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %81

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.da9062_watchdog* @devm_kzalloc(%struct.device* %20, i32 56, i32 %21)
  store %struct.da9062_watchdog* %22, %struct.da9062_watchdog** %7, align 8
  %23 = load %struct.da9062_watchdog*, %struct.da9062_watchdog** %7, align 8
  %24 = icmp ne %struct.da9062_watchdog* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %81

28:                                               ; preds = %19
  %29 = load %struct.da9062*, %struct.da9062** %6, align 8
  %30 = load %struct.da9062_watchdog*, %struct.da9062_watchdog** %7, align 8
  %31 = getelementptr inbounds %struct.da9062_watchdog, %struct.da9062_watchdog* %30, i32 0, i32 1
  store %struct.da9062* %29, %struct.da9062** %31, align 8
  %32 = load %struct.da9062_watchdog*, %struct.da9062_watchdog** %7, align 8
  %33 = getelementptr inbounds %struct.da9062_watchdog, %struct.da9062_watchdog* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 7
  store i32* @da9062_watchdog_info, i32** %34, align 8
  %35 = load %struct.da9062_watchdog*, %struct.da9062_watchdog** %7, align 8
  %36 = getelementptr inbounds %struct.da9062_watchdog, %struct.da9062_watchdog* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 6
  store i32* @da9062_watchdog_ops, i32** %37, align 8
  %38 = load i32, i32* @DA9062_WDT_MIN_TIMEOUT, align 4
  %39 = load %struct.da9062_watchdog*, %struct.da9062_watchdog** %7, align 8
  %40 = getelementptr inbounds %struct.da9062_watchdog, %struct.da9062_watchdog* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 5
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* @DA9062_WDT_MAX_TIMEOUT, align 4
  %43 = load %struct.da9062_watchdog*, %struct.da9062_watchdog** %7, align 8
  %44 = getelementptr inbounds %struct.da9062_watchdog, %struct.da9062_watchdog* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 4
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @DA9062_RESET_PROTECTION_MS, align 4
  %47 = load %struct.da9062_watchdog*, %struct.da9062_watchdog** %7, align 8
  %48 = getelementptr inbounds %struct.da9062_watchdog, %struct.da9062_watchdog* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 8
  %50 = load i32, i32* @DA9062_WDG_DEFAULT_TIMEOUT, align 4
  %51 = load %struct.da9062_watchdog*, %struct.da9062_watchdog** %7, align 8
  %52 = getelementptr inbounds %struct.da9062_watchdog, %struct.da9062_watchdog* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @WATCHDOG_NOWAYOUT_INIT_STATUS, align 4
  %55 = load %struct.da9062_watchdog*, %struct.da9062_watchdog** %7, align 8
  %56 = getelementptr inbounds %struct.da9062_watchdog, %struct.da9062_watchdog* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 8
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = load %struct.da9062_watchdog*, %struct.da9062_watchdog** %7, align 8
  %60 = getelementptr inbounds %struct.da9062_watchdog, %struct.da9062_watchdog* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store %struct.device* %58, %struct.device** %61, align 8
  %62 = load %struct.da9062_watchdog*, %struct.da9062_watchdog** %7, align 8
  %63 = getelementptr inbounds %struct.da9062_watchdog, %struct.da9062_watchdog* %62, i32 0, i32 0
  %64 = call i32 @watchdog_set_restart_priority(%struct.TYPE_5__* %63, i32 128)
  %65 = load %struct.da9062_watchdog*, %struct.da9062_watchdog** %7, align 8
  %66 = getelementptr inbounds %struct.da9062_watchdog, %struct.da9062_watchdog* %65, i32 0, i32 0
  %67 = load %struct.da9062_watchdog*, %struct.da9062_watchdog** %7, align 8
  %68 = call i32 @watchdog_set_drvdata(%struct.TYPE_5__* %66, %struct.da9062_watchdog* %67)
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = load %struct.da9062_watchdog*, %struct.da9062_watchdog** %7, align 8
  %71 = getelementptr inbounds %struct.da9062_watchdog, %struct.da9062_watchdog* %70, i32 0, i32 0
  %72 = call i32 @devm_watchdog_register_device(%struct.device* %69, %struct.TYPE_5__* %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %28
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %81

77:                                               ; preds = %28
  %78 = load %struct.da9062_watchdog*, %struct.da9062_watchdog** %7, align 8
  %79 = getelementptr inbounds %struct.da9062_watchdog, %struct.da9062_watchdog* %78, i32 0, i32 0
  %80 = call i32 @da9062_wdt_ping(%struct.TYPE_5__* %79)
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %77, %75, %25, %16
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.da9062* @dev_get_drvdata(i32) #1

declare dso_local %struct.da9062_watchdog* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @watchdog_set_restart_priority(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_5__*, %struct.da9062_watchdog*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.TYPE_5__*) #1

declare dso_local i32 @da9062_wdt_ping(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
