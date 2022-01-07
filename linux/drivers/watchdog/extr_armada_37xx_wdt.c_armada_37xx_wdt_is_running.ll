; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_armada_37xx_wdt.c_armada_37xx_wdt_is_running.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_armada_37xx_wdt.c_armada_37xx_wdt_is_running.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armada_37xx_watchdog = type { i64, i32 }

@WDT_TIMER_SELECT = common dso_local global i32 0, align 4
@WDT_TIMER_SELECT_MASK = common dso_local global i32 0, align 4
@WDT_TIMER_SELECT_VAL = common dso_local global i32 0, align 4
@CNTR_ID_WDOG = common dso_local global i32 0, align 4
@CNTR_CTRL_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.armada_37xx_watchdog*)* @armada_37xx_wdt_is_running to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_37xx_wdt_is_running(%struct.armada_37xx_watchdog* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.armada_37xx_watchdog*, align 8
  %4 = alloca i32, align 4
  store %struct.armada_37xx_watchdog* %0, %struct.armada_37xx_watchdog** %3, align 8
  %5 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %3, align 8
  %6 = getelementptr inbounds %struct.armada_37xx_watchdog, %struct.armada_37xx_watchdog* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @WDT_TIMER_SELECT, align 4
  %9 = call i32 @regmap_read(i32 %7, i32 %8, i32* %4)
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @WDT_TIMER_SELECT_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @WDT_TIMER_SELECT_VAL, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

16:                                               ; preds = %1
  %17 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %3, align 8
  %18 = getelementptr inbounds %struct.armada_37xx_watchdog, %struct.armada_37xx_watchdog* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @CNTR_ID_WDOG, align 4
  %21 = call i64 @CNTR_CTRL(i32 %20)
  %22 = add nsw i64 %19, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @CNTR_CTRL_ACTIVE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %16, %15
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @CNTR_CTRL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
