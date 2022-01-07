; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_wm831x_wdt.c_wm831x_wdt_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_wm831x_wdt.c_wm831x_wdt_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.wm831x_wdt_drvdata = type { i32, %struct.wm831x* }
%struct.wm831x = type { i32 }

@WM831X_WATCHDOG = common dso_local global i32 0, align 4
@WM831X_WDOG_ENA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to unlock security key: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @wm831x_wdt_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_wdt_stop(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.wm831x_wdt_drvdata*, align 8
  %4 = alloca %struct.wm831x*, align 8
  %5 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %6 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %7 = call %struct.wm831x_wdt_drvdata* @watchdog_get_drvdata(%struct.watchdog_device* %6)
  store %struct.wm831x_wdt_drvdata* %7, %struct.wm831x_wdt_drvdata** %3, align 8
  %8 = load %struct.wm831x_wdt_drvdata*, %struct.wm831x_wdt_drvdata** %3, align 8
  %9 = getelementptr inbounds %struct.wm831x_wdt_drvdata, %struct.wm831x_wdt_drvdata* %8, i32 0, i32 1
  %10 = load %struct.wm831x*, %struct.wm831x** %9, align 8
  store %struct.wm831x* %10, %struct.wm831x** %4, align 8
  %11 = load %struct.wm831x_wdt_drvdata*, %struct.wm831x_wdt_drvdata** %3, align 8
  %12 = getelementptr inbounds %struct.wm831x_wdt_drvdata, %struct.wm831x_wdt_drvdata* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %15 = call i32 @wm831x_reg_unlock(%struct.wm831x* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %20 = load i32, i32* @WM831X_WATCHDOG, align 4
  %21 = load i32, i32* @WM831X_WDOG_ENA, align 4
  %22 = call i32 @wm831x_set_bits(%struct.wm831x* %19, i32 %20, i32 %21, i32 0)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %24 = call i32 @wm831x_reg_lock(%struct.wm831x* %23)
  br label %31

25:                                               ; preds = %1
  %26 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %27 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %25, %18
  %32 = load %struct.wm831x_wdt_drvdata*, %struct.wm831x_wdt_drvdata** %3, align 8
  %33 = getelementptr inbounds %struct.wm831x_wdt_drvdata, %struct.wm831x_wdt_drvdata* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local %struct.wm831x_wdt_drvdata* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wm831x_reg_unlock(%struct.wm831x*) #1

declare dso_local i32 @wm831x_set_bits(%struct.wm831x*, i32, i32, i32) #1

declare dso_local i32 @wm831x_reg_lock(%struct.wm831x*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
