; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_uniphier_wdt.c_uniphier_watchdog_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_uniphier_wdt.c_uniphier_watchdog_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.uniphier_wdt_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @uniphier_watchdog_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_watchdog_start(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.uniphier_wdt_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %6 = call %struct.uniphier_wdt_dev* @watchdog_get_drvdata(%struct.watchdog_device* %5)
  store %struct.uniphier_wdt_dev* %6, %struct.uniphier_wdt_dev** %3, align 8
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %8 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @roundup_pow_of_two(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.uniphier_wdt_dev*, %struct.uniphier_wdt_dev** %3, align 8
  %12 = getelementptr inbounds %struct.uniphier_wdt_dev, %struct.uniphier_wdt_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @__uniphier_watchdog_start(i32 %13, i32 %14)
  ret i32 %15
}

declare dso_local %struct.uniphier_wdt_dev* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @__uniphier_watchdog_start(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
