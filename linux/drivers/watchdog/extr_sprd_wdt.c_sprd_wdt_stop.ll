; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_sprd_wdt.c_sprd_wdt_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_sprd_wdt.c_sprd_wdt_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.sprd_wdt = type { i64 }

@SPRD_WDT_CTRL = common dso_local global i64 0, align 8
@SPRD_WDT_CNT_EN_BIT = common dso_local global i32 0, align 4
@SPRD_WDT_RST_EN_BIT = common dso_local global i32 0, align 4
@SPRD_WDT_INT_EN_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @sprd_wdt_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_wdt_stop(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.sprd_wdt*, align 8
  %4 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %6 = call %struct.sprd_wdt* @to_sprd_wdt(%struct.watchdog_device* %5)
  store %struct.sprd_wdt* %6, %struct.sprd_wdt** %3, align 8
  %7 = load %struct.sprd_wdt*, %struct.sprd_wdt** %3, align 8
  %8 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @sprd_wdt_unlock(i64 %9)
  %11 = load %struct.sprd_wdt*, %struct.sprd_wdt** %3, align 8
  %12 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SPRD_WDT_CTRL, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl_relaxed(i64 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @SPRD_WDT_CNT_EN_BIT, align 4
  %18 = load i32, i32* @SPRD_WDT_RST_EN_BIT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SPRD_WDT_INT_EN_BIT, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.sprd_wdt*, %struct.sprd_wdt** %3, align 8
  %27 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SPRD_WDT_CTRL, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel_relaxed(i32 %25, i64 %30)
  %32 = load %struct.sprd_wdt*, %struct.sprd_wdt** %3, align 8
  %33 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @sprd_wdt_lock(i64 %34)
  ret i32 0
}

declare dso_local %struct.sprd_wdt* @to_sprd_wdt(%struct.watchdog_device*) #1

declare dso_local i32 @sprd_wdt_unlock(i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @sprd_wdt_lock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
