; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_orion_wdt.c_orion_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_orion_wdt.c_orion_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.orion_watchdog = type { i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@TIMER_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @orion_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orion_start(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.orion_watchdog*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %5 = call %struct.orion_watchdog* @watchdog_get_drvdata(%struct.watchdog_device* %4)
  store %struct.orion_watchdog* %5, %struct.orion_watchdog** %3, align 8
  %6 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %7 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %10 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %8, %11
  %13 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %14 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %17 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %15, %20
  %22 = call i32 @writel(i32 %12, i64 %21)
  %23 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %24 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TIMER_CTRL, align 8
  %27 = add nsw i64 %25, %26
  %28 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %29 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %34 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @atomic_io_modify(i64 %27, i32 %32, i32 %37)
  %39 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %40 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %43 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %48 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @atomic_io_modify(i64 %41, i32 %46, i32 %51)
  ret i32 0
}

declare dso_local %struct.orion_watchdog* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @atomic_io_modify(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
