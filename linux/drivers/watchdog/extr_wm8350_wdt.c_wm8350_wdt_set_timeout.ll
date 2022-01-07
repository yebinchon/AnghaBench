; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_wm8350_wdt.c_wm8350_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_wm8350_wdt.c_wm8350_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.watchdog_device = type { i32 }
%struct.wm8350 = type { i32 }

@wm8350_wdt_cfgs = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@wdt_mutex = common dso_local global i32 0, align 4
@WM8350_SYSTEM_CONTROL_2 = common dso_local global i32 0, align 4
@WM8350_WDOG_TO_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @wm8350_wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_wdt_set_timeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.watchdog_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8350*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %11 = call %struct.wm8350* @watchdog_get_drvdata(%struct.watchdog_device* %10)
  store %struct.wm8350* %11, %struct.wm8350** %6, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %28, %2
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wm8350_wdt_cfgs, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %12
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wm8350_wdt_cfgs, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %31

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %12

31:                                               ; preds = %26, %12
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wm8350_wdt_cfgs, align 8
  %34 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %33)
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %69

39:                                               ; preds = %31
  %40 = call i32 @mutex_lock(i32* @wdt_mutex)
  %41 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %42 = call i32 @wm8350_reg_unlock(%struct.wm8350* %41)
  %43 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %44 = load i32, i32* @WM8350_SYSTEM_CONTROL_2, align 4
  %45 = call i32 @wm8350_reg_read(%struct.wm8350* %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* @WM8350_WDOG_TO_MASK, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wm8350_wdt_cfgs, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  %58 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %59 = load i32, i32* @WM8350_SYSTEM_CONTROL_2, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @wm8350_reg_write(%struct.wm8350* %58, i32 %59, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %63 = call i32 @wm8350_reg_lock(%struct.wm8350* %62)
  %64 = call i32 @mutex_unlock(i32* @wdt_mutex)
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %67 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %39, %36
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.wm8350* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wm8350_reg_unlock(%struct.wm8350*) #1

declare dso_local i32 @wm8350_reg_read(%struct.wm8350*, i32) #1

declare dso_local i32 @wm8350_reg_write(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @wm8350_reg_lock(%struct.wm8350*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
