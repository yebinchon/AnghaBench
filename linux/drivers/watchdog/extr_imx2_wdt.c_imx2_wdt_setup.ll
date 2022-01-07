; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_imx2_wdt.c_imx2_wdt_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_imx2_wdt.c_imx2_wdt_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.imx2_wdt_device = type { i32, i32 }

@IMX2_WDT_WCR = common dso_local global i32 0, align 4
@IMX2_WDT_WCR_WDZST = common dso_local global i32 0, align 4
@IMX2_WDT_WCR_WT = common dso_local global i32 0, align 4
@IMX2_WDT_WCR_WRE = common dso_local global i32 0, align 4
@IMX2_WDT_WCR_WDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.watchdog_device*)* @imx2_wdt_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx2_wdt_setup(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.imx2_wdt_device*, align 8
  %4 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %6 = call %struct.imx2_wdt_device* @watchdog_get_drvdata(%struct.watchdog_device* %5)
  store %struct.imx2_wdt_device* %6, %struct.imx2_wdt_device** %3, align 8
  %7 = load %struct.imx2_wdt_device*, %struct.imx2_wdt_device** %3, align 8
  %8 = getelementptr inbounds %struct.imx2_wdt_device, %struct.imx2_wdt_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IMX2_WDT_WCR, align 4
  %11 = call i32 @regmap_read(i32 %9, i32 %10, i32* %4)
  %12 = load i32, i32* @IMX2_WDT_WCR_WDZST, align 4
  %13 = load i32, i32* %4, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @IMX2_WDT_WCR_WT, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load %struct.imx2_wdt_device*, %struct.imx2_wdt_device** %3, align 8
  %20 = getelementptr inbounds %struct.imx2_wdt_device, %struct.imx2_wdt_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @IMX2_WDT_WCR_WRE, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %4, align 4
  br label %32

28:                                               ; preds = %1
  %29 = load i32, i32* @IMX2_WDT_WCR_WRE, align 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %28, %23
  %33 = load i32, i32* @IMX2_WDT_WCR_WDE, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %38 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @WDOG_SEC_TO_COUNT(i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %4, align 4
  %43 = load %struct.imx2_wdt_device*, %struct.imx2_wdt_device** %3, align 8
  %44 = getelementptr inbounds %struct.imx2_wdt_device, %struct.imx2_wdt_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IMX2_WDT_WCR, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @regmap_write(i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* @IMX2_WDT_WCR_WDE, align 4
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = load %struct.imx2_wdt_device*, %struct.imx2_wdt_device** %3, align 8
  %53 = getelementptr inbounds %struct.imx2_wdt_device, %struct.imx2_wdt_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IMX2_WDT_WCR, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @regmap_write(i32 %54, i32 %55, i32 %56)
  ret void
}

declare dso_local %struct.imx2_wdt_device* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @WDOG_SEC_TO_COUNT(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
