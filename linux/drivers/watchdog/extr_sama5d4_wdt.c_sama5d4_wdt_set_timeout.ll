; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_sama5d4_wdt.c_sama5d4_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_sama5d4_wdt.c_sama5d4_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.sama5d4_wdt = type { i32 }

@AT91_WDT_WDV = common dso_local global i32 0, align 4
@wdt_enabled = common dso_local global i64 0, align 8
@AT91_WDT_MR = common dso_local global i32 0, align 4
@AT91_WDT_WDDIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @sama5d4_wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sama5d4_wdt_set_timeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sama5d4_wdt*, align 8
  %6 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %8 = call %struct.sama5d4_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %7)
  store %struct.sama5d4_wdt* %8, %struct.sama5d4_wdt** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @WDT_SEC2TICKS(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @AT91_WDT_WDV, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.sama5d4_wdt*, %struct.sama5d4_wdt** %5, align 8
  %14 = getelementptr inbounds %struct.sama5d4_wdt, %struct.sama5d4_wdt* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @AT91_WDT_SET_WDV(i32 %17)
  %19 = load %struct.sama5d4_wdt*, %struct.sama5d4_wdt** %5, align 8
  %20 = getelementptr inbounds %struct.sama5d4_wdt, %struct.sama5d4_wdt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i64, i64* @wdt_enabled, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load %struct.sama5d4_wdt*, %struct.sama5d4_wdt** %5, align 8
  %27 = load i32, i32* @AT91_WDT_MR, align 4
  %28 = load %struct.sama5d4_wdt*, %struct.sama5d4_wdt** %5, align 8
  %29 = getelementptr inbounds %struct.sama5d4_wdt, %struct.sama5d4_wdt* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @AT91_WDT_WDDIS, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = call i32 @wdt_write(%struct.sama5d4_wdt* %26, i32 %27, i32 %33)
  br label %35

35:                                               ; preds = %25, %2
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %38 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  ret i32 0
}

declare dso_local %struct.sama5d4_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @WDT_SEC2TICKS(i32) #1

declare dso_local i32 @AT91_WDT_SET_WDV(i32) #1

declare dso_local i32 @wdt_write(%struct.sama5d4_wdt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
