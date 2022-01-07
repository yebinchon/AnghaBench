; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_moxart_wdt.c_moxart_wdt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_moxart_wdt.c_moxart_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.moxart_wdt_dev = type { i32, i64 }

@REG_COUNT = common dso_local global i64 0, align 8
@REG_MODE = common dso_local global i64 0, align 8
@REG_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @moxart_wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moxart_wdt_start(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.moxart_wdt_dev*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %5 = call %struct.moxart_wdt_dev* @watchdog_get_drvdata(%struct.watchdog_device* %4)
  store %struct.moxart_wdt_dev* %5, %struct.moxart_wdt_dev** %3, align 8
  %6 = load %struct.moxart_wdt_dev*, %struct.moxart_wdt_dev** %3, align 8
  %7 = getelementptr inbounds %struct.moxart_wdt_dev, %struct.moxart_wdt_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %10 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %8, %11
  %13 = load %struct.moxart_wdt_dev*, %struct.moxart_wdt_dev** %3, align 8
  %14 = getelementptr inbounds %struct.moxart_wdt_dev, %struct.moxart_wdt_dev* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @REG_COUNT, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 %12, i64 %17)
  %19 = load %struct.moxart_wdt_dev*, %struct.moxart_wdt_dev** %3, align 8
  %20 = getelementptr inbounds %struct.moxart_wdt_dev, %struct.moxart_wdt_dev* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @REG_MODE, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 23225, i64 %23)
  %25 = load %struct.moxart_wdt_dev*, %struct.moxart_wdt_dev** %3, align 8
  %26 = getelementptr inbounds %struct.moxart_wdt_dev, %struct.moxart_wdt_dev* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @REG_ENABLE, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 3, i64 %29)
  ret i32 0
}

declare dso_local %struct.moxart_wdt_dev* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
