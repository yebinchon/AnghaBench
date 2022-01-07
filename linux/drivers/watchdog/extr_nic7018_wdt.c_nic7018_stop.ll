; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_nic7018_wdt.c_nic7018_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_nic7018_wdt.c_nic7018_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.nic7018_wdt = type { i64 }

@WDT_CTRL = common dso_local global i64 0, align 8
@WDT_RELOAD_CTRL = common dso_local global i64 0, align 8
@WDT_PRESET_PRESCALE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @nic7018_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nic7018_stop(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.nic7018_wdt*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %5 = call %struct.nic7018_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %4)
  store %struct.nic7018_wdt* %5, %struct.nic7018_wdt** %3, align 8
  %6 = load %struct.nic7018_wdt*, %struct.nic7018_wdt** %3, align 8
  %7 = getelementptr inbounds %struct.nic7018_wdt, %struct.nic7018_wdt* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @WDT_CTRL, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @outb(i32 0, i64 %10)
  %12 = load %struct.nic7018_wdt*, %struct.nic7018_wdt** %3, align 8
  %13 = getelementptr inbounds %struct.nic7018_wdt, %struct.nic7018_wdt* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @WDT_RELOAD_CTRL, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @outb(i32 0, i64 %16)
  %18 = load %struct.nic7018_wdt*, %struct.nic7018_wdt** %3, align 8
  %19 = getelementptr inbounds %struct.nic7018_wdt, %struct.nic7018_wdt* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @WDT_PRESET_PRESCALE, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @outb(i32 240, i64 %22)
  ret i32 0
}

declare dso_local %struct.nic7018_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
