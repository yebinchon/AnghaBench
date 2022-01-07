; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_dw_wdt.c_dw_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_dw_wdt.c_dw_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.dw_wdt = type { i64 }

@DW_WDT_MAX_TOP = common dso_local global i32 0, align 4
@WDOG_TIMEOUT_RANGE_TOPINIT_SHIFT = common dso_local global i32 0, align 4
@WDOG_TIMEOUT_RANGE_REG_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @dw_wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_wdt_set_timeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dw_wdt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %9 = call %struct.dw_wdt* @to_dw_wdt(%struct.watchdog_device* %8)
  store %struct.dw_wdt* %9, %struct.dw_wdt** %5, align 8
  %10 = load i32, i32* @DW_WDT_MAX_TOP, align 4
  store i32 %10, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %24, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @DW_WDT_MAX_TOP, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load %struct.dw_wdt*, %struct.dw_wdt** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @dw_wdt_top_in_seconds(%struct.dw_wdt* %16, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp uge i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %7, align 4
  br label %27

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %11

27:                                               ; preds = %21, %11
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @WDOG_TIMEOUT_RANGE_TOPINIT_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %28, %31
  %33 = load %struct.dw_wdt*, %struct.dw_wdt** %5, align 8
  %34 = getelementptr inbounds %struct.dw_wdt, %struct.dw_wdt* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @WDOG_TIMEOUT_RANGE_REG_OFFSET, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  %39 = load %struct.dw_wdt*, %struct.dw_wdt** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @dw_wdt_top_in_seconds(%struct.dw_wdt* %39, i32 %40)
  %42 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %43 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  ret i32 0
}

declare dso_local %struct.dw_wdt* @to_dw_wdt(%struct.watchdog_device*) #1

declare dso_local i32 @dw_wdt_top_in_seconds(%struct.dw_wdt*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
