; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_wm831x_wdt.c_wm831x_wdt_ping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_wm831x_wdt.c_wm831x_wdt_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.wm831x_wdt_drvdata = type { i32, i32, i64, %struct.wm831x* }
%struct.wm831x = type { i32 }

@WM831X_WATCHDOG = common dso_local global i32 0, align 4
@WM831X_WDOG_RST_SRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Hardware watchdog update unsupported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM831X_WDOG_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to unlock security key: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @wm831x_wdt_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_wdt_ping(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.wm831x_wdt_drvdata*, align 8
  %4 = alloca %struct.wm831x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %8 = call %struct.wm831x_wdt_drvdata* @watchdog_get_drvdata(%struct.watchdog_device* %7)
  store %struct.wm831x_wdt_drvdata* %8, %struct.wm831x_wdt_drvdata** %3, align 8
  %9 = load %struct.wm831x_wdt_drvdata*, %struct.wm831x_wdt_drvdata** %3, align 8
  %10 = getelementptr inbounds %struct.wm831x_wdt_drvdata, %struct.wm831x_wdt_drvdata* %9, i32 0, i32 3
  %11 = load %struct.wm831x*, %struct.wm831x** %10, align 8
  store %struct.wm831x* %11, %struct.wm831x** %4, align 8
  %12 = load %struct.wm831x_wdt_drvdata*, %struct.wm831x_wdt_drvdata** %3, align 8
  %13 = getelementptr inbounds %struct.wm831x_wdt_drvdata, %struct.wm831x_wdt_drvdata* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.wm831x_wdt_drvdata*, %struct.wm831x_wdt_drvdata** %3, align 8
  %16 = getelementptr inbounds %struct.wm831x_wdt_drvdata, %struct.wm831x_wdt_drvdata* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %1
  %20 = load %struct.wm831x_wdt_drvdata*, %struct.wm831x_wdt_drvdata** %3, align 8
  %21 = getelementptr inbounds %struct.wm831x_wdt_drvdata, %struct.wm831x_wdt_drvdata* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.wm831x_wdt_drvdata*, %struct.wm831x_wdt_drvdata** %3, align 8
  %24 = getelementptr inbounds %struct.wm831x_wdt_drvdata, %struct.wm831x_wdt_drvdata* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @gpio_set_value_cansleep(i64 %22, i32 %25)
  %27 = load %struct.wm831x_wdt_drvdata*, %struct.wm831x_wdt_drvdata** %3, align 8
  %28 = getelementptr inbounds %struct.wm831x_wdt_drvdata, %struct.wm831x_wdt_drvdata* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load %struct.wm831x_wdt_drvdata*, %struct.wm831x_wdt_drvdata** %3, align 8
  %34 = getelementptr inbounds %struct.wm831x_wdt_drvdata, %struct.wm831x_wdt_drvdata* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  store i32 0, i32* %5, align 4
  br label %72

35:                                               ; preds = %1
  %36 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %37 = load i32, i32* @WM831X_WATCHDOG, align 4
  %38 = call i32 @wm831x_reg_read(%struct.wm831x* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @WM831X_WDOG_RST_SRC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %35
  %44 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %45 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, ...) @dev_err(i32 %46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %72

50:                                               ; preds = %35
  %51 = load i32, i32* @WM831X_WDOG_RESET, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %55 = call i32 @wm831x_reg_unlock(%struct.wm831x* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %60 = load i32, i32* @WM831X_WATCHDOG, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @wm831x_reg_write(%struct.wm831x* %59, i32 %60, i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %64 = call i32 @wm831x_reg_lock(%struct.wm831x* %63)
  br label %71

65:                                               ; preds = %50
  %66 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %67 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 (i32, i8*, ...) @dev_err(i32 %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %65, %58
  br label %72

72:                                               ; preds = %71, %43, %19
  %73 = load %struct.wm831x_wdt_drvdata*, %struct.wm831x_wdt_drvdata** %3, align 8
  %74 = getelementptr inbounds %struct.wm831x_wdt_drvdata, %struct.wm831x_wdt_drvdata* %73, i32 0, i32 1
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.wm831x_wdt_drvdata* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gpio_set_value_cansleep(i64, i32) #1

declare dso_local i32 @wm831x_reg_read(%struct.wm831x*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @wm831x_reg_unlock(%struct.wm831x*) #1

declare dso_local i32 @wm831x_reg_write(%struct.wm831x*, i32, i32) #1

declare dso_local i32 @wm831x_reg_lock(%struct.wm831x*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
