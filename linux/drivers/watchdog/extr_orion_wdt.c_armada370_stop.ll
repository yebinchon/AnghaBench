; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_orion_wdt.c_armada370_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_orion_wdt.c_armada370_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.orion_watchdog = type { %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@TIMER_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @armada370_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada370_stop(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.orion_watchdog*, align 8
  %4 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %6 = call %struct.orion_watchdog* @watchdog_get_drvdata(%struct.watchdog_device* %5)
  store %struct.orion_watchdog* %6, %struct.orion_watchdog** %3, align 8
  %7 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %8 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @readl(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %12 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %21 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @writel(i32 %19, i32 %22)
  %24 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %25 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TIMER_CTRL, align 8
  %28 = add nsw i64 %26, %27
  %29 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %30 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @atomic_io_modify(i64 %28, i32 %33, i32 0)
  ret i32 0
}

declare dso_local %struct.orion_watchdog* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @atomic_io_modify(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
