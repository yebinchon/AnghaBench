; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_wm8350_wdt.c_wm8350_wdt_ping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_wm8350_wdt.c_wm8350_wdt_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.wm8350 = type { i32 }

@wdt_mutex = common dso_local global i32 0, align 4
@WM8350_SYSTEM_CONTROL_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @wm8350_wdt_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_wdt_ping(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.wm8350*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %6 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %7 = call %struct.wm8350* @watchdog_get_drvdata(%struct.watchdog_device* %6)
  store %struct.wm8350* %7, %struct.wm8350** %3, align 8
  %8 = call i32 @mutex_lock(i32* @wdt_mutex)
  %9 = load %struct.wm8350*, %struct.wm8350** %3, align 8
  %10 = load i32, i32* @WM8350_SYSTEM_CONTROL_2, align 4
  %11 = call i32 @wm8350_reg_read(%struct.wm8350* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.wm8350*, %struct.wm8350** %3, align 8
  %13 = load i32, i32* @WM8350_SYSTEM_CONTROL_2, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @wm8350_reg_write(%struct.wm8350* %12, i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = call i32 @mutex_unlock(i32* @wdt_mutex)
  %17 = load i32, i32* %4, align 4
  ret i32 %17
}

declare dso_local %struct.wm8350* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wm8350_reg_read(%struct.wm8350*, i32) #1

declare dso_local i32 @wm8350_reg_write(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
