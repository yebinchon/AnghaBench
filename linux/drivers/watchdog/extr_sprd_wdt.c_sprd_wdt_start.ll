; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_sprd_wdt.c_sprd_wdt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_sprd_wdt.c_sprd_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32, i32, i32 }
%struct.sprd_wdt = type { i64 }

@SPRD_WDT_CTRL = common dso_local global i64 0, align 8
@SPRD_WDT_CNT_EN_BIT = common dso_local global i32 0, align 4
@SPRD_WDT_INT_EN_BIT = common dso_local global i32 0, align 4
@SPRD_WDT_RST_EN_BIT = common dso_local global i32 0, align 4
@WDOG_HW_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @sprd_wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_wdt_start(%struct.watchdog_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca %struct.sprd_wdt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %8 = call %struct.sprd_wdt* @to_sprd_wdt(%struct.watchdog_device* %7)
  store %struct.sprd_wdt* %8, %struct.sprd_wdt** %4, align 8
  %9 = load %struct.sprd_wdt*, %struct.sprd_wdt** %4, align 8
  %10 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %11 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %14 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sprd_wdt_load_value(%struct.sprd_wdt* %9, i32 %12, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %54

21:                                               ; preds = %1
  %22 = load %struct.sprd_wdt*, %struct.sprd_wdt** %4, align 8
  %23 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @sprd_wdt_unlock(i64 %24)
  %26 = load %struct.sprd_wdt*, %struct.sprd_wdt** %4, align 8
  %27 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SPRD_WDT_CTRL, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl_relaxed(i64 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @SPRD_WDT_CNT_EN_BIT, align 4
  %33 = load i32, i32* @SPRD_WDT_INT_EN_BIT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SPRD_WDT_RST_EN_BIT, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.sprd_wdt*, %struct.sprd_wdt** %4, align 8
  %41 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SPRD_WDT_CTRL, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel_relaxed(i32 %39, i64 %44)
  %46 = load %struct.sprd_wdt*, %struct.sprd_wdt** %4, align 8
  %47 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @sprd_wdt_lock(i64 %48)
  %50 = load i32, i32* @WDOG_HW_RUNNING, align 4
  %51 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %52 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %51, i32 0, i32 0
  %53 = call i32 @set_bit(i32 %50, i32* %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %21, %19
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.sprd_wdt* @to_sprd_wdt(%struct.watchdog_device*) #1

declare dso_local i32 @sprd_wdt_load_value(%struct.sprd_wdt*, i32, i32) #1

declare dso_local i32 @sprd_wdt_unlock(i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @sprd_wdt_lock(i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
