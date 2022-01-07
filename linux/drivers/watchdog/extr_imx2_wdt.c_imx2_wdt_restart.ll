; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_imx2_wdt.c_imx2_wdt_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_imx2_wdt.c_imx2_wdt_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.imx2_wdt_device = type { i32, i64 }

@IMX2_WDT_WCR_WDE = common dso_local global i32 0, align 4
@IMX2_WDT_WCR_SRS = common dso_local global i32 0, align 4
@IMX2_WDT_WCR_WDA = common dso_local global i32 0, align 4
@IMX2_WDT_WCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i64, i8*)* @imx2_wdt_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx2_wdt_restart(%struct.watchdog_device* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.watchdog_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.imx2_wdt_device*, align 8
  %8 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %10 = call %struct.imx2_wdt_device* @watchdog_get_drvdata(%struct.watchdog_device* %9)
  store %struct.imx2_wdt_device* %10, %struct.imx2_wdt_device** %7, align 8
  %11 = load i32, i32* @IMX2_WDT_WCR_WDE, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.imx2_wdt_device*, %struct.imx2_wdt_device** %7, align 8
  %13 = getelementptr inbounds %struct.imx2_wdt_device, %struct.imx2_wdt_device* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @IMX2_WDT_WCR_SRS, align 4
  %18 = load i32, i32* %8, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %8, align 4
  br label %24

20:                                               ; preds = %3
  %21 = load i32, i32* @IMX2_WDT_WCR_WDA, align 4
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.imx2_wdt_device*, %struct.imx2_wdt_device** %7, align 8
  %26 = getelementptr inbounds %struct.imx2_wdt_device, %struct.imx2_wdt_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IMX2_WDT_WCR, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @regmap_write(i32 %27, i32 %28, i32 %29)
  %31 = load %struct.imx2_wdt_device*, %struct.imx2_wdt_device** %7, align 8
  %32 = getelementptr inbounds %struct.imx2_wdt_device, %struct.imx2_wdt_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @IMX2_WDT_WCR, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @regmap_write(i32 %33, i32 %34, i32 %35)
  %37 = load %struct.imx2_wdt_device*, %struct.imx2_wdt_device** %7, align 8
  %38 = getelementptr inbounds %struct.imx2_wdt_device, %struct.imx2_wdt_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @IMX2_WDT_WCR, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @regmap_write(i32 %39, i32 %40, i32 %41)
  %43 = call i32 @mdelay(i32 500)
  ret i32 0
}

declare dso_local %struct.imx2_wdt_device* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
