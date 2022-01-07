; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_uniphier_wdt.c_uniphier_watchdog_ping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_uniphier_wdt.c_uniphier_watchdog_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.uniphier_wdt_dev = type { i32 }

@WDTCTRL = common dso_local global i32 0, align 4
@WDTCTRL_CLEAR = common dso_local global i32 0, align 4
@WDTCTRL_STATUS = common dso_local global i32 0, align 4
@WDTST_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @uniphier_watchdog_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_watchdog_ping(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.uniphier_wdt_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %6 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %7 = call %struct.uniphier_wdt_dev* @watchdog_get_drvdata(%struct.watchdog_device* %6)
  store %struct.uniphier_wdt_dev* %7, %struct.uniphier_wdt_dev** %3, align 8
  %8 = load %struct.uniphier_wdt_dev*, %struct.uniphier_wdt_dev** %3, align 8
  %9 = getelementptr inbounds %struct.uniphier_wdt_dev, %struct.uniphier_wdt_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @WDTCTRL, align 4
  %12 = load i32, i32* @WDTCTRL_CLEAR, align 4
  %13 = load i32, i32* @WDTCTRL_CLEAR, align 4
  %14 = call i32 @regmap_write_bits(i32 %10, i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %1
  %18 = load %struct.uniphier_wdt_dev*, %struct.uniphier_wdt_dev** %3, align 8
  %19 = getelementptr inbounds %struct.uniphier_wdt_dev, %struct.uniphier_wdt_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @WDTCTRL, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @WDTCTRL_STATUS, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @WDTST_TIMEOUT, align 4
  %27 = call i32 @regmap_read_poll_timeout(i32 %20, i32 %21, i32 %22, i32 %25, i32 0, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %17, %1
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local %struct.uniphier_wdt_dev* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
