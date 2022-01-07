; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_mtx-1_wdt.c_mtx1_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_mtx-1_wdt.c_mtx1_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64, i32, i32, i32 }
%struct.platform_device = type { i32 }

@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@mtx1_wdt_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [23 x i8] c"failed to request gpio\00", align 1
@mtx1_wdt_trigger = common dso_local global i32 0, align 4
@ticks = common dso_local global i32 0, align 4
@mtx1_wdt_misc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"failed to register\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MTX-1 Watchdog driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtx1_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtx1_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %8 = call i32 @devm_gpiod_get(i32* %6, i32* null, i32 %7)
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtx1_wdt_device, i32 0, i32 6), align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtx1_wdt_device, i32 0, i32 6), align 8
  %10 = call i64 @IS_ERR(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtx1_wdt_device, i32 0, i32 6), align 8
  %17 = call i32 @PTR_ERR(i32 %16)
  store i32 %17, i32* %2, align 4
  br label %38

18:                                               ; preds = %1
  %19 = call i32 @spin_lock_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtx1_wdt_device, i32 0, i32 5))
  %20 = call i32 @init_completion(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtx1_wdt_device, i32 0, i32 4))
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtx1_wdt_device, i32 0, i32 3), align 8
  %21 = call i32 @clear_bit(i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtx1_wdt_device, i32 0, i32 2))
  %22 = load i32, i32* @mtx1_wdt_trigger, align 4
  %23 = call i32 @timer_setup(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtx1_wdt_device, i32 0, i32 1), i32 %22, i32 0)
  %24 = load i32, i32* @ticks, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtx1_wdt_device, i32 0, i32 0), align 8
  %25 = call i32 @misc_register(i32* @mtx1_wdt_misc)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %38

33:                                               ; preds = %18
  %34 = call i32 (...) @mtx1_wdt_start()
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 @dev_info(i32* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %33, %28, %12
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @devm_gpiod_get(i32*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @misc_register(i32*) #1

declare dso_local i32 @mtx1_wdt_start(...) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
