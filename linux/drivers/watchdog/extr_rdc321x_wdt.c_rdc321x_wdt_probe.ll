; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_rdc321x_wdt.c_rdc321x_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_rdc321x_wdt.c_rdc321x_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }
%struct.rdc321x_wdt_pdata = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"no platform data supplied\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"wdt-reg\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to get wdt-reg resource\0A\00", align 1
@rdc321x_wdt_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@rdc321x_wdt_misc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"misc_register failed\0A\00", align 1
@RDC_WDT_RST = common dso_local global i32 0, align 4
@rdc321x_wdt_trigger = common dso_local global i32 0, align 4
@ticks = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"watchdog init success\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rdc321x_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdc321x_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.rdc321x_wdt_pdata*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.rdc321x_wdt_pdata* @dev_get_platdata(i32* %8)
  store %struct.rdc321x_wdt_pdata* %9, %struct.rdc321x_wdt_pdata** %6, align 8
  %10 = load %struct.rdc321x_wdt_pdata*, %struct.rdc321x_wdt_pdata** %6, align 8
  %11 = icmp ne %struct.rdc321x_wdt_pdata* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %59

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load i32, i32* @IORESOURCE_IO, align 4
  %21 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %19, i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %21, %struct.resource** %5, align 8
  %22 = load %struct.resource*, %struct.resource** %5, align 8
  %23 = icmp ne %struct.resource* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %59

30:                                               ; preds = %18
  %31 = load %struct.rdc321x_wdt_pdata*, %struct.rdc321x_wdt_pdata** %6, align 8
  %32 = getelementptr inbounds %struct.rdc321x_wdt_pdata, %struct.rdc321x_wdt_pdata* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 6), align 8
  %34 = load %struct.resource*, %struct.resource** %5, align 8
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 5), align 4
  %37 = call i32 @misc_register(i32* @rdc321x_wdt_misc)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %30
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %59

45:                                               ; preds = %30
  %46 = call i32 @spin_lock_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 7))
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 6), align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 5), align 4
  %49 = load i32, i32* @RDC_WDT_RST, align 4
  %50 = call i32 @pci_write_config_dword(i32 %47, i32 %48, i32 %49)
  %51 = call i32 @init_completion(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 4))
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 3), align 8
  %52 = call i32 @clear_bit(i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 2))
  %53 = load i32, i32* @rdc321x_wdt_trigger, align 4
  %54 = call i32 @timer_setup(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 1), i32 %53, i32 0)
  %55 = load i32, i32* @ticks, align 4
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdc321x_wdt_device, i32 0, i32 0), align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i32 @dev_info(i32* %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %45, %40, %24, %12
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.rdc321x_wdt_pdata* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @misc_register(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
