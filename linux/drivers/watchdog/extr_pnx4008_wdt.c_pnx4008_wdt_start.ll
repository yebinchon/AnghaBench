; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_pnx4008_wdt.c_pnx4008_wdt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_pnx4008_wdt.c_pnx4008_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }

@io_lock = common dso_local global i32 0, align 4
@RESET_COUNT = common dso_local global i32 0, align 4
@wdt_base = common dso_local global i32 0, align 4
@M_RES2 = common dso_local global i32 0, align 4
@STOP_COUNT0 = common dso_local global i32 0, align 4
@RESET_COUNT0 = common dso_local global i32 0, align 4
@MATCH_OUTPUT_HIGH = common dso_local global i32 0, align 4
@MATCH_INT = common dso_local global i32 0, align 4
@WDOG_COUNTER_RATE = common dso_local global i32 0, align 4
@COUNT_ENAB = common dso_local global i32 0, align 4
@DEBUG_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @pnx4008_wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnx4008_wdt_start(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %3 = call i32 @spin_lock(i32* @io_lock)
  %4 = load i32, i32* @RESET_COUNT, align 4
  %5 = load i32, i32* @wdt_base, align 4
  %6 = call i32 @WDTIM_CTRL(i32 %5)
  %7 = call i32 @writel(i32 %4, i32 %6)
  br label %8

8:                                                ; preds = %13, %1
  %9 = load i32, i32* @wdt_base, align 4
  %10 = call i32 @WDTIM_COUNTER(i32 %9)
  %11 = call i64 @readl(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = call i32 (...) @cpu_relax()
  br label %8

15:                                               ; preds = %8
  %16 = load i32, i32* @M_RES2, align 4
  %17 = load i32, i32* @STOP_COUNT0, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @RESET_COUNT0, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @wdt_base, align 4
  %22 = call i32 @WDTIM_MCTRL(i32 %21)
  %23 = call i32 @writel(i32 %20, i32 %22)
  %24 = load i32, i32* @MATCH_OUTPUT_HIGH, align 4
  %25 = load i32, i32* @wdt_base, align 4
  %26 = call i32 @WDTIM_EMR(i32 %25)
  %27 = call i32 @writel(i32 %24, i32 %26)
  %28 = load i32, i32* @MATCH_INT, align 4
  %29 = load i32, i32* @wdt_base, align 4
  %30 = call i32 @WDTIM_INT(i32 %29)
  %31 = call i32 @writel(i32 %28, i32 %30)
  %32 = load i32, i32* @wdt_base, align 4
  %33 = call i32 @WDTIM_PULSE(i32 %32)
  %34 = call i32 @writel(i32 65535, i32 %33)
  %35 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %36 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @WDOG_COUNTER_RATE, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* @wdt_base, align 4
  %41 = call i32 @WDTIM_MATCH0(i32 %40)
  %42 = call i32 @writel(i32 %39, i32 %41)
  %43 = load i32, i32* @COUNT_ENAB, align 4
  %44 = load i32, i32* @DEBUG_EN, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @wdt_base, align 4
  %47 = call i32 @WDTIM_CTRL(i32 %46)
  %48 = call i32 @writel(i32 %45, i32 %47)
  %49 = call i32 @spin_unlock(i32* @io_lock)
  ret i32 0
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @WDTIM_CTRL(i32) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @WDTIM_COUNTER(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @WDTIM_MCTRL(i32) #1

declare dso_local i32 @WDTIM_EMR(i32) #1

declare dso_local i32 @WDTIM_INT(i32) #1

declare dso_local i32 @WDTIM_PULSE(i32) #1

declare dso_local i32 @WDTIM_MATCH0(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
