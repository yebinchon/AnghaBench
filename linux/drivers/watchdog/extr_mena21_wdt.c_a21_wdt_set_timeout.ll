; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_mena21_wdt.c_a21_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_mena21_wdt.c_a21_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32, i32 }
%struct.a21_wdt_drv = type { i32* }

@.str = private unnamed_addr constant [34 x i8] c"Only 1 and 30 allowed as timeout\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Transition from fast to slow mode not allowed\0A\00", align 1
@GPIO_WD_FAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @a21_wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a21_wdt_set_timeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.watchdog_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.a21_wdt_drv*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %8 = call %struct.a21_wdt_drv* @watchdog_get_drvdata(%struct.watchdog_device* %7)
  store %struct.a21_wdt_drv* %8, %struct.a21_wdt_drv** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 30
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %16 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %59

21:                                               ; preds = %11, %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 30
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %26 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %31 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %59

36:                                               ; preds = %24, %21
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load %struct.a21_wdt_drv*, %struct.a21_wdt_drv** %6, align 8
  %41 = getelementptr inbounds %struct.a21_wdt_drv, %struct.a21_wdt_drv* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @GPIO_WD_FAST, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @gpiod_set_value(i32 %45, i32 1)
  br label %55

47:                                               ; preds = %36
  %48 = load %struct.a21_wdt_drv*, %struct.a21_wdt_drv** %6, align 8
  %49 = getelementptr inbounds %struct.a21_wdt_drv, %struct.a21_wdt_drv* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @GPIO_WD_FAST, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @gpiod_set_value(i32 %53, i32 0)
  br label %55

55:                                               ; preds = %47, %39
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %58 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %29, %14
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.a21_wdt_drv* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
