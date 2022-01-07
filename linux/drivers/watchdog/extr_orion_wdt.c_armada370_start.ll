; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_orion_wdt.c_armada370_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_orion_wdt.c_armada370_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.orion_watchdog = type { i32, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@TIMER_A370_STATUS = common dso_local global i64 0, align 8
@WDT_A370_EXPIRED = common dso_local global i32 0, align 4
@TIMER_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @armada370_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada370_start(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.orion_watchdog*, align 8
  %4 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %6 = call %struct.orion_watchdog* @watchdog_get_drvdata(%struct.watchdog_device* %5)
  store %struct.orion_watchdog* %6, %struct.orion_watchdog** %3, align 8
  %7 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %8 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %11 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %9, %12
  %14 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %15 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %18 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %16, %21
  %23 = call i32 @writel(i32 %13, i64 %22)
  %24 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %25 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TIMER_A370_STATUS, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i32, i32* @WDT_A370_EXPIRED, align 4
  %30 = call i32 @atomic_io_modify(i64 %28, i32 %29, i32 0)
  %31 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %32 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TIMER_CTRL, align 8
  %35 = add nsw i64 %33, %34
  %36 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %37 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %42 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @atomic_io_modify(i64 %35, i32 %40, i32 %45)
  %47 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %48 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @readl(i64 %49)
  store i32 %50, i32* %4, align 4
  %51 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %52 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %60 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @writel(i32 %58, i64 %61)
  ret i32 0
}

declare dso_local %struct.orion_watchdog* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @atomic_io_modify(i64, i32, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
