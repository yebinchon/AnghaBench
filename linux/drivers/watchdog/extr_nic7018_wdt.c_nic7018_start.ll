; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_nic7018_wdt.c_nic7018_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_nic7018_wdt.c_nic7018_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.nic7018_wdt = type { i64 }

@WDT_RELOAD_CTRL = common dso_local global i64 0, align 8
@WDT_RELOAD_PORT_EN = common dso_local global i32 0, align 4
@WDT_RELOAD_PORT = common dso_local global i64 0, align 8
@WDT_CTRL = common dso_local global i64 0, align 8
@WDT_CTRL_RESET_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @nic7018_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nic7018_start(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.nic7018_wdt*, align 8
  %4 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %6 = call %struct.nic7018_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %5)
  store %struct.nic7018_wdt* %6, %struct.nic7018_wdt** %3, align 8
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %9 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @nic7018_set_timeout(%struct.watchdog_device* %7, i32 %10)
  %12 = load %struct.nic7018_wdt*, %struct.nic7018_wdt** %3, align 8
  %13 = getelementptr inbounds %struct.nic7018_wdt, %struct.nic7018_wdt* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @WDT_RELOAD_CTRL, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @inb(i64 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @WDT_RELOAD_PORT_EN, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.nic7018_wdt*, %struct.nic7018_wdt** %3, align 8
  %22 = getelementptr inbounds %struct.nic7018_wdt, %struct.nic7018_wdt* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @WDT_RELOAD_CTRL, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outb(i32 %20, i64 %25)
  %27 = load %struct.nic7018_wdt*, %struct.nic7018_wdt** %3, align 8
  %28 = getelementptr inbounds %struct.nic7018_wdt, %struct.nic7018_wdt* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @WDT_RELOAD_PORT, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @outb(i32 1, i64 %31)
  %33 = load %struct.nic7018_wdt*, %struct.nic7018_wdt** %3, align 8
  %34 = getelementptr inbounds %struct.nic7018_wdt, %struct.nic7018_wdt* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @WDT_CTRL, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @inb(i64 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @WDT_CTRL_RESET_EN, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.nic7018_wdt*, %struct.nic7018_wdt** %3, align 8
  %43 = getelementptr inbounds %struct.nic7018_wdt, %struct.nic7018_wdt* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @WDT_CTRL, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @outb(i32 %41, i64 %46)
  ret i32 0
}

declare dso_local %struct.nic7018_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @nic7018_set_timeout(%struct.watchdog_device*, i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
