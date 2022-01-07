; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_ie6xx_wdt.c_ie6xx_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_ie6xx_wdt.c_ie6xx_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.platform_device = type { i32, i32 }
%struct.resource = type { i64 }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Watchdog region 0x%llx already in use!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ie6xx_wdt_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"WDT = 0x%X\0A\00", align 1
@timeout = common dso_local global i32 0, align 4
@ie6xx_wdt_dev = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@nowayout = common dso_local global i32 0, align 4
@WDTLR = common dso_local global i64 0, align 8
@WDT_LOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Watchdog Timer is Locked (Reg=0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ie6xx_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ie6xx_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = load i32, i32* @IORESOURCE_IO, align 4
  %9 = call %struct.resource* @platform_get_resource(%struct.platform_device* %7, i32 %8, i32 0)
  store %struct.resource* %9, %struct.resource** %4, align 8
  %10 = load %struct.resource*, %struct.resource** %4, align 8
  %11 = icmp ne %struct.resource* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %79

15:                                               ; preds = %1
  %16 = load %struct.resource*, %struct.resource** %4, align 8
  %17 = getelementptr inbounds %struct.resource, %struct.resource* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.resource*, %struct.resource** %4, align 8
  %20 = call i32 @resource_size(%struct.resource* %19)
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @request_region(i64 %18, i32 %20, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %15
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.resource*, %struct.resource** %4, align 8
  %30 = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %79

36:                                               ; preds = %15
  %37 = load %struct.resource*, %struct.resource** %4, align 8
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ie6xx_wdt_data, i32 0, i32 0), align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ie6xx_wdt_data, i32 0, i32 0), align 8
  %43 = call i32 @dev_dbg(i32* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  %44 = load i32, i32* @timeout, align 4
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ie6xx_wdt_dev, i32 0, i32 1), align 8
  %45 = load i32, i32* @nowayout, align 4
  %46 = call i32 @watchdog_set_nowayout(%struct.TYPE_5__* @ie6xx_wdt_dev, i32 %45)
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  store i32* %48, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ie6xx_wdt_dev, i32 0, i32 0), align 8
  %49 = call i32 @spin_lock_init(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ie6xx_wdt_data, i32 0, i32 1))
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ie6xx_wdt_data, i32 0, i32 0), align 8
  %51 = load i64, i64* @WDTLR, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @inb(i64 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @WDT_LOCK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %36
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @dev_warn(i32* %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %58, %36
  %64 = call i32 (...) @ie6xx_wdt_debugfs_init()
  %65 = call i32 @watchdog_register_device(%struct.TYPE_5__* @ie6xx_wdt_dev)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %70

69:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %79

70:                                               ; preds = %68
  %71 = call i32 (...) @ie6xx_wdt_debugfs_exit()
  %72 = load %struct.resource*, %struct.resource** %4, align 8
  %73 = getelementptr inbounds %struct.resource, %struct.resource* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.resource*, %struct.resource** %4, align 8
  %76 = call i32 @resource_size(%struct.resource* %75)
  %77 = call i32 @release_region(i64 %74, i32 %76)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ie6xx_wdt_data, i32 0, i32 0), align 8
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %70, %69, %26, %12
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @request_region(i64, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @ie6xx_wdt_debugfs_init(...) #1

declare dso_local i32 @watchdog_register_device(%struct.TYPE_5__*) #1

declare dso_local i32 @ie6xx_wdt_debugfs_exit(...) #1

declare dso_local i32 @release_region(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
