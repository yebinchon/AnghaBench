; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_bcm47xx_wdt.c_bcm47xx_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_bcm47xx_wdt.c_bcm47xx_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (%struct.TYPE_8__*, i32)* }
%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32*, i32, i32* }
%struct.platform_device = type { i32 }
%struct.bcm47xx_wdt = type { i32, i32, %struct.TYPE_8__ }

@ENXIO = common dso_local global i32 0, align 4
@WDT_SOFTTIMER_THRESHOLD = common dso_local global i32 0, align 4
@bcm47xx_wdt_soft_ops = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@bcm47xx_wdt_soft_timer_tick = common dso_local global i32 0, align 4
@bcm47xx_wdt_hard_ops = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@bcm47xx_wdt_info = common dso_local global i32 0, align 4
@WDT_DEFAULT_TIME = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@nowayout = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"BCM47xx Watchdog Timer enabled (%d seconds%s%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c", nowayout\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [17 x i8] c", Software Timer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm47xx_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm47xx_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcm47xx_wdt*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.bcm47xx_wdt* @dev_get_platdata(i32* %8)
  store %struct.bcm47xx_wdt* %9, %struct.bcm47xx_wdt** %6, align 8
  %10 = load %struct.bcm47xx_wdt*, %struct.bcm47xx_wdt** %6, align 8
  %11 = icmp ne %struct.bcm47xx_wdt* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENXIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %102

15:                                               ; preds = %1
  %16 = load %struct.bcm47xx_wdt*, %struct.bcm47xx_wdt** %6, align 8
  %17 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @WDT_SOFTTIMER_THRESHOLD, align 4
  %20 = mul nsw i32 %19, 1000
  %21 = icmp slt i32 %18, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %15
  %26 = load %struct.bcm47xx_wdt*, %struct.bcm47xx_wdt** %6, align 8
  %27 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store %struct.TYPE_9__* @bcm47xx_wdt_soft_ops, %struct.TYPE_9__** %28, align 8
  %29 = load %struct.bcm47xx_wdt*, %struct.bcm47xx_wdt** %6, align 8
  %30 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %29, i32 0, i32 1
  %31 = load i32, i32* @bcm47xx_wdt_soft_timer_tick, align 4
  %32 = call i32 @timer_setup(i32* %30, i32 %31, i32 0)
  br label %37

33:                                               ; preds = %15
  %34 = load %struct.bcm47xx_wdt*, %struct.bcm47xx_wdt** %6, align 8
  %35 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store %struct.TYPE_9__* @bcm47xx_wdt_hard_ops, %struct.TYPE_9__** %36, align 8
  br label %37

37:                                               ; preds = %33, %25
  %38 = load %struct.bcm47xx_wdt*, %struct.bcm47xx_wdt** %6, align 8
  %39 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  store i32* @bcm47xx_wdt_info, i32** %40, align 8
  %41 = load i32, i32* @WDT_DEFAULT_TIME, align 4
  %42 = load %struct.bcm47xx_wdt*, %struct.bcm47xx_wdt** %6, align 8
  %43 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load %struct.bcm47xx_wdt*, %struct.bcm47xx_wdt** %6, align 8
  %48 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i32* %46, i32** %49, align 8
  %50 = load %struct.bcm47xx_wdt*, %struct.bcm47xx_wdt** %6, align 8
  %51 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %54, align 8
  %56 = load %struct.bcm47xx_wdt*, %struct.bcm47xx_wdt** %6, align 8
  %57 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %56, i32 0, i32 2
  %58 = load i32, i32* @timeout, align 4
  %59 = call i32 %55(%struct.TYPE_8__* %57, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %37
  br label %93

63:                                               ; preds = %37
  %64 = load %struct.bcm47xx_wdt*, %struct.bcm47xx_wdt** %6, align 8
  %65 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %64, i32 0, i32 2
  %66 = load i64, i64* @nowayout, align 8
  %67 = call i32 @watchdog_set_nowayout(%struct.TYPE_8__* %65, i64 %66)
  %68 = load %struct.bcm47xx_wdt*, %struct.bcm47xx_wdt** %6, align 8
  %69 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %68, i32 0, i32 2
  %70 = call i32 @watchdog_set_restart_priority(%struct.TYPE_8__* %69, i32 64)
  %71 = load %struct.bcm47xx_wdt*, %struct.bcm47xx_wdt** %6, align 8
  %72 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %71, i32 0, i32 2
  %73 = call i32 @watchdog_stop_on_reboot(%struct.TYPE_8__* %72)
  %74 = load %struct.bcm47xx_wdt*, %struct.bcm47xx_wdt** %6, align 8
  %75 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %74, i32 0, i32 2
  %76 = call i32 @watchdog_register_device(%struct.TYPE_8__* %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %63
  br label %93

80:                                               ; preds = %63
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = load i32, i32* @timeout, align 4
  %84 = load i64, i64* @nowayout, align 8
  %85 = icmp ne i64 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %92 = call i32 @dev_info(i32* %82, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %83, i8* %87, i8* %91)
  store i32 0, i32* %2, align 4
  br label %102

93:                                               ; preds = %79, %62
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load %struct.bcm47xx_wdt*, %struct.bcm47xx_wdt** %6, align 8
  %98 = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %97, i32 0, i32 1
  %99 = call i32 @del_timer_sync(i32* %98)
  br label %100

100:                                              ; preds = %96, %93
  %101 = load i32, i32* %4, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %100, %80, %12
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.bcm47xx_wdt* @dev_get_platdata(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @watchdog_set_restart_priority(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @watchdog_stop_on_reboot(%struct.TYPE_8__*) #1

declare dso_local i32 @watchdog_register_device(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i8*, i8*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
