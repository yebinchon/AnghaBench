; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_wm831x_wdt.c_wm831x_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_wm831x_wdt.c_wm831x_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.watchdog_device = type { i32 }
%struct.wm831x_wdt_drvdata = type { %struct.wm831x* }
%struct.wm831x = type { i32 }

@wm831x_wdt_cfgs = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@WM831X_WATCHDOG = common dso_local global i32 0, align 4
@WM831X_WDOG_TO_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to unlock security key: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @wm831x_wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_wdt_set_timeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.watchdog_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm831x_wdt_drvdata*, align 8
  %7 = alloca %struct.wm831x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %11 = call %struct.wm831x_wdt_drvdata* @watchdog_get_drvdata(%struct.watchdog_device* %10)
  store %struct.wm831x_wdt_drvdata* %11, %struct.wm831x_wdt_drvdata** %6, align 8
  %12 = load %struct.wm831x_wdt_drvdata*, %struct.wm831x_wdt_drvdata** %6, align 8
  %13 = getelementptr inbounds %struct.wm831x_wdt_drvdata, %struct.wm831x_wdt_drvdata* %12, i32 0, i32 0
  %14 = load %struct.wm831x*, %struct.wm831x** %13, align 8
  store %struct.wm831x* %14, %struct.wm831x** %7, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %31, %2
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wm831x_wdt_cfgs, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wm831x_wdt_cfgs, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %34

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %15

34:                                               ; preds = %29, %15
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wm831x_wdt_cfgs, align 8
  %37 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %36)
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %71

42:                                               ; preds = %34
  %43 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %44 = call i32 @wm831x_reg_unlock(%struct.wm831x* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %49 = load i32, i32* @WM831X_WATCHDOG, align 4
  %50 = load i32, i32* @WM831X_WDOG_TO_MASK, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wm831x_wdt_cfgs, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @wm831x_set_bits(%struct.wm831x* %48, i32 %49, i32 %50, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %59 = call i32 @wm831x_reg_lock(%struct.wm831x* %58)
  br label %66

60:                                               ; preds = %42
  %61 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %62 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %60, %47
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %69 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %66, %39
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.wm831x_wdt_drvdata* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @wm831x_reg_unlock(%struct.wm831x*) #1

declare dso_local i32 @wm831x_set_bits(%struct.wm831x*, i32, i32, i32) #1

declare dso_local i32 @wm831x_reg_lock(%struct.wm831x*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
