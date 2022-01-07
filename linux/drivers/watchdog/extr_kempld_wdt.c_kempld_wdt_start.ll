; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_kempld_wdt.c_kempld_wdt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_kempld_wdt.c_kempld_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.kempld_wdt_data = type { %struct.kempld_device_data* }
%struct.kempld_device_data = type { i32 }

@KEMPLD_WDT_CFG = common dso_local global i32 0, align 4
@KEMPLD_WDT_CFG_ENABLE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @kempld_wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kempld_wdt_start(%struct.watchdog_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca %struct.kempld_wdt_data*, align 8
  %5 = alloca %struct.kempld_device_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %9 = call %struct.kempld_wdt_data* @watchdog_get_drvdata(%struct.watchdog_device* %8)
  store %struct.kempld_wdt_data* %9, %struct.kempld_wdt_data** %4, align 8
  %10 = load %struct.kempld_wdt_data*, %struct.kempld_wdt_data** %4, align 8
  %11 = getelementptr inbounds %struct.kempld_wdt_data, %struct.kempld_wdt_data* %10, i32 0, i32 0
  %12 = load %struct.kempld_device_data*, %struct.kempld_device_data** %11, align 8
  store %struct.kempld_device_data* %12, %struct.kempld_device_data** %5, align 8
  %13 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %14 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %15 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @kempld_wdt_set_timeout(%struct.watchdog_device* %13, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %2, align 4
  br label %48

22:                                               ; preds = %1
  %23 = load %struct.kempld_device_data*, %struct.kempld_device_data** %5, align 8
  %24 = call i32 @kempld_get_mutex(%struct.kempld_device_data* %23)
  %25 = load %struct.kempld_device_data*, %struct.kempld_device_data** %5, align 8
  %26 = load i32, i32* @KEMPLD_WDT_CFG, align 4
  %27 = call i32 @kempld_read8(%struct.kempld_device_data* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @KEMPLD_WDT_CFG_ENABLE, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load %struct.kempld_device_data*, %struct.kempld_device_data** %5, align 8
  %32 = load i32, i32* @KEMPLD_WDT_CFG, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @kempld_write8(%struct.kempld_device_data* %31, i32 %32, i32 %33)
  %35 = load %struct.kempld_device_data*, %struct.kempld_device_data** %5, align 8
  %36 = load i32, i32* @KEMPLD_WDT_CFG, align 4
  %37 = call i32 @kempld_read8(%struct.kempld_device_data* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.kempld_device_data*, %struct.kempld_device_data** %5, align 8
  %39 = call i32 @kempld_release_mutex(%struct.kempld_device_data* %38)
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @KEMPLD_WDT_CFG_ENABLE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %22
  %45 = load i32, i32* @EACCES, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %48

47:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %44, %20
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.kempld_wdt_data* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @kempld_wdt_set_timeout(%struct.watchdog_device*, i32) #1

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
