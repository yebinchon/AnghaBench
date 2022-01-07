; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_orion_wdt.c_orion_wdt_ping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_orion_wdt.c_orion_wdt_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32, i32 }
%struct.orion_watchdog = type { i32, i64, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@WDIOF_PRETIMEOUT = common dso_local global i32 0, align 4
@TIMER1_VAL_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @orion_wdt_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orion_wdt_ping(%struct.watchdog_device* %0) #0 {
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
  %14 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %17 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %16, i32 0, i32 3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %15, %20
  %22 = call i32 @writel(i32 %12, i64 %21)
  %23 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %24 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @WDIOF_PRETIMEOUT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %1
  %33 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %34 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %37 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %40 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %38, %41
  %43 = mul nsw i32 %35, %42
  %44 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %45 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @TIMER1_VAL_OFF, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 %43, i64 %48)
  br label %50

50:                                               ; preds = %32, %1
  ret i32 0
}

declare dso_local %struct.orion_watchdog* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
