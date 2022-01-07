; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_meson_wdt.c_meson_wdt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_meson_wdt.c_meson_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.meson_wdt_dev = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MESON_WDT_TC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @meson_wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_wdt_start(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.meson_wdt_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %6 = call %struct.meson_wdt_dev* @watchdog_get_drvdata(%struct.watchdog_device* %5)
  store %struct.meson_wdt_dev* %6, %struct.meson_wdt_dev** %3, align 8
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %8 = load %struct.meson_wdt_dev*, %struct.meson_wdt_dev** %3, align 8
  %9 = getelementptr inbounds %struct.meson_wdt_dev, %struct.meson_wdt_dev* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @meson_wdt_change_timeout(%struct.watchdog_device* %7, i32 %11)
  %13 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %14 = call i32 @meson_wdt_ping(%struct.watchdog_device* %13)
  %15 = load %struct.meson_wdt_dev*, %struct.meson_wdt_dev** %3, align 8
  %16 = getelementptr inbounds %struct.meson_wdt_dev, %struct.meson_wdt_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MESON_WDT_TC, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.meson_wdt_dev*, %struct.meson_wdt_dev** %3, align 8
  %22 = getelementptr inbounds %struct.meson_wdt_dev, %struct.meson_wdt_dev* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.meson_wdt_dev*, %struct.meson_wdt_dev** %3, align 8
  %30 = getelementptr inbounds %struct.meson_wdt_dev, %struct.meson_wdt_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MESON_WDT_TC, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %28, i64 %33)
  ret i32 0
}

declare dso_local %struct.meson_wdt_dev* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @meson_wdt_change_timeout(%struct.watchdog_device*, i32) #1

declare dso_local i32 @meson_wdt_ping(%struct.watchdog_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
