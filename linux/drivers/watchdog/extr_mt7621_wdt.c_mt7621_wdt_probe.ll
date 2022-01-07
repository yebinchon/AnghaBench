; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_mt7621_wdt.c_mt7621_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_mt7621_wdt.c_mt7621_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }

@mt7621_wdt_base = common dso_local global i32 0, align 4
@mt7621_wdt_reset = common dso_local global i32 0, align 4
@mt7621_wdt_dev = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@nowayout = common dso_local global i32 0, align 4
@WDOG_HW_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mt7621_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7621_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  store %struct.device* %6, %struct.device** %4, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %7, i32 0)
  store i32 %8, i32* @mt7621_wdt_base, align 4
  %9 = load i32, i32* @mt7621_wdt_base, align 4
  %10 = call i64 @IS_ERR(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @mt7621_wdt_base, align 4
  %14 = call i32 @PTR_ERR(i32 %13)
  store i32 %14, i32* %2, align 4
  br label %41

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 @devm_reset_control_get_exclusive(%struct.device* %16, i32* null)
  store i32 %17, i32* @mt7621_wdt_reset, align 4
  %18 = load i32, i32* @mt7621_wdt_reset, align 4
  %19 = call i64 @IS_ERR(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @mt7621_wdt_reset, align 4
  %23 = call i32 @reset_control_deassert(i32 %22)
  br label %24

24:                                               ; preds = %21, %15
  %25 = call i32 (...) @mt7621_wdt_bootcause()
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @mt7621_wdt_dev, i32 0, i32 2), align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @mt7621_wdt_dev, i32 0, i32 1), align 4
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i32 @watchdog_init_timeout(%struct.TYPE_8__* @mt7621_wdt_dev, i32 %26, %struct.device* %27)
  %29 = load i32, i32* @nowayout, align 4
  %30 = call i32 @watchdog_set_nowayout(%struct.TYPE_8__* @mt7621_wdt_dev, i32 %29)
  %31 = call i64 @mt7621_wdt_is_running(%struct.TYPE_8__* @mt7621_wdt_dev)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = call i32 @mt7621_wdt_stop(%struct.TYPE_8__* @mt7621_wdt_dev)
  %35 = call i32 @mt7621_wdt_start(%struct.TYPE_8__* @mt7621_wdt_dev)
  %36 = load i32, i32* @WDOG_HW_RUNNING, align 4
  %37 = call i32 @set_bit(i32 %36, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @mt7621_wdt_dev, i32 0, i32 0))
  br label %38

38:                                               ; preds = %33, %24
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = call i32 @devm_watchdog_register_device(%struct.device* %39, %struct.TYPE_8__* @mt7621_wdt_dev)
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %12
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_reset_control_get_exclusive(%struct.device*, i32*) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @mt7621_wdt_bootcause(...) #1

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_8__*, i32, %struct.device*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @mt7621_wdt_is_running(%struct.TYPE_8__*) #1

declare dso_local i32 @mt7621_wdt_stop(%struct.TYPE_8__*) #1

declare dso_local i32 @mt7621_wdt_start(%struct.TYPE_8__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
