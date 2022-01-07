; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_twl4030_wdt.c_twl4030_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_twl4030_wdt.c_twl4030_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.watchdog_device = type { i32, i32, i32, %struct.device*, i64, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@twl4030_wdt_info = common dso_local global i32 0, align 4
@twl4030_wdt_ops = common dso_local global i32 0, align 4
@nowayout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @twl4030_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.watchdog_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.watchdog_device* @devm_kzalloc(%struct.device* %8, i32 48, i32 %9)
  store %struct.watchdog_device* %10, %struct.watchdog_device** %5, align 8
  %11 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %12 = icmp ne %struct.watchdog_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %43

16:                                               ; preds = %1
  %17 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %18 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %17, i32 0, i32 6
  store i32* @twl4030_wdt_info, i32** %18, align 8
  %19 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %20 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %19, i32 0, i32 5
  store i32* @twl4030_wdt_ops, i32** %20, align 8
  %21 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %22 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %24 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %23, i32 0, i32 0
  store i32 30, i32* %24, align 8
  %25 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %26 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %28 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %27, i32 0, i32 2
  store i32 30, i32* %28, align 8
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %31 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %30, i32 0, i32 3
  store %struct.device* %29, %struct.device** %31, align 8
  %32 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %33 = load i32, i32* @nowayout, align 4
  %34 = call i32 @watchdog_set_nowayout(%struct.watchdog_device* %32, i32 %33)
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %37 = call i32 @platform_set_drvdata(%struct.platform_device* %35, %struct.watchdog_device* %36)
  %38 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %39 = call i32 @twl4030_wdt_stop(%struct.watchdog_device* %38)
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %42 = call i32 @devm_watchdog_register_device(%struct.device* %40, %struct.watchdog_device* %41)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %16, %13
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.watchdog_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.watchdog_device*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.watchdog_device*) #1

declare dso_local i32 @twl4030_wdt_stop(%struct.watchdog_device*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.watchdog_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
