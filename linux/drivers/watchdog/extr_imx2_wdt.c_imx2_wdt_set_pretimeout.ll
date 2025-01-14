; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_imx2_wdt.c_imx2_wdt_set_pretimeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_imx2_wdt.c_imx2_wdt_set_pretimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.imx2_wdt_device = type { i32 }

@IMX2_WDT_MAX_TIME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IMX2_WDT_WICR = common dso_local global i32 0, align 4
@IMX2_WDT_WICR_WIE = common dso_local global i32 0, align 4
@IMX2_WDT_WICR_WICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @imx2_wdt_set_pretimeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx2_wdt_set_pretimeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.watchdog_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.imx2_wdt_device*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %8 = call %struct.imx2_wdt_device* @watchdog_get_drvdata(%struct.watchdog_device* %7)
  store %struct.imx2_wdt_device* %8, %struct.imx2_wdt_device** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @IMX2_WDT_MAX_TIME, align 4
  %11 = icmp uge i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %31

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %18 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.imx2_wdt_device*, %struct.imx2_wdt_device** %6, align 8
  %20 = getelementptr inbounds %struct.imx2_wdt_device, %struct.imx2_wdt_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IMX2_WDT_WICR, align 4
  %23 = load i32, i32* @IMX2_WDT_WICR_WIE, align 4
  %24 = load i32, i32* @IMX2_WDT_WICR_WICT, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @IMX2_WDT_WICR_WIE, align 4
  %27 = load i32, i32* %5, align 4
  %28 = shl i32 %27, 1
  %29 = or i32 %26, %28
  %30 = call i32 @regmap_update_bits(i32 %21, i32 %22, i32 %25, i32 %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %15, %12
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.imx2_wdt_device* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
