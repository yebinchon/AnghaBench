; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_imx2_wdt.c_imx2_wdt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_imx2_wdt.c_imx2_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32, i32 }
%struct.imx2_wdt_device = type { i32 }

@WDOG_HW_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @imx2_wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx2_wdt_start(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.imx2_wdt_device*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %5 = call %struct.imx2_wdt_device* @watchdog_get_drvdata(%struct.watchdog_device* %4)
  store %struct.imx2_wdt_device* %5, %struct.imx2_wdt_device** %3, align 8
  %6 = load %struct.imx2_wdt_device*, %struct.imx2_wdt_device** %3, align 8
  %7 = call i64 @imx2_wdt_is_running(%struct.imx2_wdt_device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %11 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %12 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @imx2_wdt_set_timeout(%struct.watchdog_device* %10, i32 %13)
  br label %18

15:                                               ; preds = %1
  %16 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %17 = call i32 @imx2_wdt_setup(%struct.watchdog_device* %16)
  br label %18

18:                                               ; preds = %15, %9
  %19 = load i32, i32* @WDOG_HW_RUNNING, align 4
  %20 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %21 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %20, i32 0, i32 0
  %22 = call i32 @set_bit(i32 %19, i32* %21)
  %23 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %24 = call i32 @imx2_wdt_ping(%struct.watchdog_device* %23)
  ret i32 %24
}

declare dso_local %struct.imx2_wdt_device* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i64 @imx2_wdt_is_running(%struct.imx2_wdt_device*) #1

declare dso_local i32 @imx2_wdt_set_timeout(%struct.watchdog_device*, i32) #1

declare dso_local i32 @imx2_wdt_setup(%struct.watchdog_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @imx2_wdt_ping(%struct.watchdog_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
