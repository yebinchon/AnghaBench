; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_kempld_wdt.c_kempld_wdt_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_kempld_wdt.c_kempld_wdt_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.kempld_wdt_data = type { %struct.kempld_device_data* }
%struct.kempld_device_data = type { i32 }

@KEMPLD_WDT_CFG = common dso_local global i32 0, align 4
@KEMPLD_WDT_CFG_ENABLE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @kempld_wdt_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kempld_wdt_stop(%struct.watchdog_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca %struct.kempld_wdt_data*, align 8
  %5 = alloca %struct.kempld_device_data*, align 8
  %6 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %8 = call %struct.kempld_wdt_data* @watchdog_get_drvdata(%struct.watchdog_device* %7)
  store %struct.kempld_wdt_data* %8, %struct.kempld_wdt_data** %4, align 8
  %9 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %4, align 8
  %10 = getelementptr inbounds %struct.kempld_wdt_data, %struct.kempld_wdt_data* %9, i32 0, i32 0
  %11 = load %struct.kempld_device_data*, %struct.kempld_device_data** %10, align 8
  store %struct.kempld_device_data* %11, %struct.kempld_device_data** %5, align 8
  %12 = load %struct.kempld_device_data*, %struct.kempld_device_data** %5, align 8
  %13 = call i32 @kempld_get_mutex(%struct.kempld_device_data* %12)
  %14 = load %struct.kempld_device_data*, %struct.kempld_device_data** %5, align 8
  %15 = load i32, i32* @KEMPLD_WDT_CFG, align 4
  %16 = call i32 @kempld_read8(%struct.kempld_device_data* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @KEMPLD_WDT_CFG_ENABLE, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load %struct.kempld_device_data*, %struct.kempld_device_data** %5, align 8
  %22 = load i32, i32* @KEMPLD_WDT_CFG, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @kempld_write8(%struct.kempld_device_data* %21, i32 %22, i32 %23)
  %25 = load %struct.kempld_device_data*, %struct.kempld_device_data** %5, align 8
  %26 = load i32, i32* @KEMPLD_WDT_CFG, align 4
  %27 = call i32 @kempld_read8(%struct.kempld_device_data* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.kempld_device_data*, %struct.kempld_device_data** %5, align 8
  %29 = call i32 @kempld_release_mutex(%struct.kempld_device_data* %28)
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @KEMPLD_WDT_CFG_ENABLE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = load i32, i32* @EACCES, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.kempld_wdt_data* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @kempld_get_mutex(%struct.kempld_device_data*) #1

declare dso_local i32 @kempld_read8(%struct.kempld_device_data*, i32) #1

declare dso_local i32 @kempld_write8(%struct.kempld_device_data*, i32, i32) #1

declare dso_local i32 @kempld_release_mutex(%struct.kempld_device_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
