; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_da9055_wdt.c_da9055_wdt_ping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_da9055_wdt.c_da9055_wdt_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.da9055_wdt_data = type { %struct.da9055* }
%struct.da9055 = type { i32 }

@DA9055_TWDMIN = common dso_local global i32 0, align 4
@DA9055_REG_CONTROL_E = common dso_local global i32 0, align 4
@DA9055_WATCHDOG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @da9055_wdt_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_wdt_ping(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.da9055_wdt_data*, align 8
  %4 = alloca %struct.da9055*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %6 = call %struct.da9055_wdt_data* @watchdog_get_drvdata(%struct.watchdog_device* %5)
  store %struct.da9055_wdt_data* %6, %struct.da9055_wdt_data** %3, align 8
  %7 = load %struct.da9055_wdt_data*, %struct.da9055_wdt_data** %3, align 8
  %8 = getelementptr inbounds %struct.da9055_wdt_data, %struct.da9055_wdt_data* %7, i32 0, i32 0
  %9 = load %struct.da9055*, %struct.da9055** %8, align 8
  store %struct.da9055* %9, %struct.da9055** %4, align 8
  %10 = load i32, i32* @DA9055_TWDMIN, align 4
  %11 = call i32 @mdelay(i32 %10)
  %12 = load %struct.da9055*, %struct.da9055** %4, align 8
  %13 = load i32, i32* @DA9055_REG_CONTROL_E, align 4
  %14 = load i32, i32* @DA9055_WATCHDOG_MASK, align 4
  %15 = call i32 @da9055_reg_update(%struct.da9055* %12, i32 %13, i32 %14, i32 1)
  ret i32 %15
}

declare dso_local %struct.da9055_wdt_data* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @da9055_reg_update(%struct.da9055*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
