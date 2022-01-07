; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_orion_wdt.c_armada375_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_orion_wdt.c_armada375_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32, i32 }
%struct.orion_watchdog = type { i32, %struct.TYPE_6__*, i64, i64, i64, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@WDIOF_PRETIMEOUT = common dso_local global i32 0, align 4
@TIMER1_VAL_OFF = common dso_local global i64 0, align 8
@TIMER_A370_STATUS = common dso_local global i64 0, align 8
@WDT_A370_EXPIRED = common dso_local global i32 0, align 4
@TIMER1_ENABLE_BIT = common dso_local global i32 0, align 4
@TIMER_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @armada375_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada375_start(%struct.watchdog_device* %0) #0 {
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
  %15 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %18 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %16, %21
  %23 = call i32 @writel(i32 %13, i64 %22)
  %24 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %25 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @WDIOF_PRETIMEOUT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %1
  %34 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %35 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %38 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %41 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %39, %42
  %44 = mul nsw i32 %36, %43
  %45 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %46 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TIMER1_VAL_OFF, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %44, i64 %49)
  br label %51

51:                                               ; preds = %33, %1
  %52 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %53 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @TIMER_A370_STATUS, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i32, i32* @WDT_A370_EXPIRED, align 4
  %58 = call i32 @atomic_io_modify(i64 %56, i32 %57, i32 0)
  %59 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %60 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %4, align 4
  %64 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %65 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @WDIOF_PRETIMEOUT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %51
  %74 = load i32, i32* @TIMER1_ENABLE_BIT, align 4
  %75 = load i32, i32* %4, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %73, %51
  %78 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %79 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @TIMER_CTRL, align 8
  %82 = add nsw i64 %80, %81
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @atomic_io_modify(i64 %82, i32 %83, i32 %84)
  %86 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %87 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @readl(i64 %88)
  store i32 %89, i32* %4, align 4
  %90 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %91 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %4, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %99 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @writel(i32 %97, i64 %100)
  %102 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %103 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.orion_watchdog*, %struct.orion_watchdog** %3, align 8
  %106 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %105, i32 0, i32 1
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @atomic_io_modify(i64 %104, i32 %109, i32 0)
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
