; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_rtd119x_wdt.c_rtd119x_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_rtd119x_wdt.c_rtd119x_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.rtd119x_watchdog_device = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@RTD119X_TCWOV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @rtd119x_wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtd119x_wdt_set_timeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtd119x_watchdog_device*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %7 = call %struct.rtd119x_watchdog_device* @watchdog_get_drvdata(%struct.watchdog_device* %6)
  store %struct.rtd119x_watchdog_device* %7, %struct.rtd119x_watchdog_device** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.rtd119x_watchdog_device*, %struct.rtd119x_watchdog_device** %5, align 8
  %10 = getelementptr inbounds %struct.rtd119x_watchdog_device, %struct.rtd119x_watchdog_device* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @clk_get_rate(i32 %11)
  %13 = mul i32 %8, %12
  %14 = load %struct.rtd119x_watchdog_device*, %struct.rtd119x_watchdog_device** %5, align 8
  %15 = getelementptr inbounds %struct.rtd119x_watchdog_device, %struct.rtd119x_watchdog_device* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RTD119X_TCWOV, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 %13, i64 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.rtd119x_watchdog_device*, %struct.rtd119x_watchdog_device** %5, align 8
  %22 = getelementptr inbounds %struct.rtd119x_watchdog_device, %struct.rtd119x_watchdog_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  ret i32 0
}

declare dso_local %struct.rtd119x_watchdog_device* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clk_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
