; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_nic7018_wdt.c_nic7018_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_nic7018_wdt.c_nic7018_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.nic7018_wdt = type { i32, i64 }
%struct.nic7018_config = type { i32, i32 }

@WDT_PRESET_PRESCALE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @nic7018_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nic7018_set_timeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nic7018_wdt*, align 8
  %6 = alloca %struct.nic7018_config*, align 8
  %7 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %9 = call %struct.nic7018_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %8)
  store %struct.nic7018_wdt* %9, %struct.nic7018_wdt** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.nic7018_config* @nic7018_get_config(i32 %10, i32* %7)
  store %struct.nic7018_config* %11, %struct.nic7018_config** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = shl i32 %12, 4
  %14 = load %struct.nic7018_config*, %struct.nic7018_config** %6, align 8
  %15 = getelementptr inbounds %struct.nic7018_config, %struct.nic7018_config* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %13, %16
  %18 = load %struct.nic7018_wdt*, %struct.nic7018_wdt** %5, align 8
  %19 = getelementptr inbounds %struct.nic7018_wdt, %struct.nic7018_wdt* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @WDT_PRESET_PRESCALE, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @outb(i32 %17, i64 %22)
  %24 = load %struct.nic7018_config*, %struct.nic7018_config** %6, align 8
  %25 = getelementptr inbounds %struct.nic7018_config, %struct.nic7018_config* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @nic7018_timeout(i32 %26, i32 %27)
  %29 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %30 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.nic7018_config*, %struct.nic7018_config** %6, align 8
  %32 = getelementptr inbounds %struct.nic7018_config, %struct.nic7018_config* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nic7018_wdt*, %struct.nic7018_wdt** %5, align 8
  %35 = getelementptr inbounds %struct.nic7018_wdt, %struct.nic7018_wdt* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  ret i32 0
}

declare dso_local %struct.nic7018_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local %struct.nic7018_config* @nic7018_get_config(i32, i32*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @nic7018_timeout(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
