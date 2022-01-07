; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_orion_wdt.c_armada375_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_orion_wdt.c_armada375_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.orion_watchdog = type { i64, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@WDIOF_PRETIMEOUT = common dso_local global i32 0, align 4
@TIMER1_ENABLE_BIT = common dso_local global i32 0, align 4
@TIMER_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @armada375_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada375_stop(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.orion_watchdog*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %6 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %7 = call %struct.orion_watchdog* @watchdog_get_drvdata(%struct.watchdog_device* %6)
  store %struct.orion_watchdog* %7, %struct.orion_watchdog** %3, align 8
  %8 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %9 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %12 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %17 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @atomic_io_modify(i64 %10, i32 %15, i32 %20)
  %22 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %23 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @readl(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %27 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %36 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @writel(i32 %34, i32 %37)
  %39 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %40 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %5, align 4
  %44 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %45 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @WDIOF_PRETIMEOUT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %1
  %53 = load i32, i32* @TIMER1_ENABLE_BIT, align 4
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %52, %1
  %57 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %58 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @TIMER_CTRL, align 8
  %61 = add nsw i64 %59, %60
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @atomic_io_modify(i64 %61, i32 %62, i32 0)
  ret i32 0
}

declare dso_local %struct.orion_watchdog* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @atomic_io_modify(i64, i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
