; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_bcm63xx_wdt.c_bcm63xx_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_bcm63xx_wdt.c_bcm63xx_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@bcm63xx_wdt_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@bcm63xx_timer_tick = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to get resources\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to remap I/O resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@TIMER_WDT_ID = common dso_local global i32 0, align 4
@bcm63xx_wdt_isr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to register wdt timer isr\0A\00", align 1
@wdt_time = common dso_local global i32 0, align 4
@WDT_DEFAULT_TIME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c": wdt_time value must be 1 <= wdt_time <= 256, using %d\0A\00", align 1
@bcm63xx_wdt_miscdev = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"failed to register watchdog device\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c" started, timer margin: %d sec\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm63xx_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm63xx_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load i32, i32* @bcm63xx_timer_tick, align 4
  %7 = call i32 @timer_setup(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bcm63xx_wdt_device, i32 0, i32 1), i32 %6, i32 0)
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @IORESOURCE_MEM, align 4
  %10 = call %struct.resource* @platform_get_resource(%struct.platform_device* %8, i32 %9, i32 0)
  store %struct.resource* %10, %struct.resource** %5, align 8
  %11 = load %struct.resource*, %struct.resource** %5, align 8
  %12 = icmp ne %struct.resource* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %75

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.resource*, %struct.resource** %5, align 8
  %23 = getelementptr inbounds %struct.resource, %struct.resource* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.resource*, %struct.resource** %5, align 8
  %26 = call i32 @resource_size(%struct.resource* %25)
  %27 = call i32 @devm_ioremap_nocache(i32* %21, i32 %24, i32 %26)
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bcm63xx_wdt_device, i32 0, i32 0), align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bcm63xx_wdt_device, i32 0, i32 0), align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %19
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @ENXIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %75

36:                                               ; preds = %19
  %37 = load i32, i32* @TIMER_WDT_ID, align 4
  %38 = load i32, i32* @bcm63xx_wdt_isr, align 4
  %39 = call i32 @bcm63xx_timer_register(i32 %37, i32 %38, i32* null)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %75

47:                                               ; preds = %36
  %48 = load i32, i32* @wdt_time, align 4
  %49 = call i64 @bcm63xx_wdt_settimeout(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i32, i32* @WDT_DEFAULT_TIME, align 4
  %53 = call i64 @bcm63xx_wdt_settimeout(i32 %52)
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load i32, i32* @wdt_time, align 4
  %57 = call i32 @dev_info(i32* %55, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %51, %47
  %59 = call i32 @misc_register(i32* @bcm63xx_wdt_miscdev)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %71

66:                                               ; preds = %58
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = load i32, i32* @WDT_DEFAULT_TIME, align 4
  %70 = call i32 @dev_info(i32* %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %69)
  store i32 0, i32* %2, align 4
  br label %75

71:                                               ; preds = %62
  %72 = load i32, i32* @TIMER_WDT_ID, align 4
  %73 = call i32 @bcm63xx_timer_unregister(i32 %72)
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %71, %66, %42, %30, %13
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @devm_ioremap_nocache(i32*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @bcm63xx_timer_register(i32, i32, i32*) #1

declare dso_local i64 @bcm63xx_wdt_settimeout(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @misc_register(i32*) #1

declare dso_local i32 @bcm63xx_timer_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
