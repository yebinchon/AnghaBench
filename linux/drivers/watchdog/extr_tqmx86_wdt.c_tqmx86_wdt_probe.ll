; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_tqmx86_wdt.c_tqmx86_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_tqmx86_wdt.c_tqmx86_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.tqmx86_wdt = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32*, i32*, %struct.device* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@tqmx86_wdt_info = common dso_local global i32 0, align 4
@tqmx86_wdt_ops = common dso_local global i32 0, align 4
@WDT_TIMEOUT = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@WATCHDOG_NOWAYOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"TQMx86 watchdog\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tqmx86_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tqmx86_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.tqmx86_wdt*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.tqmx86_wdt* @devm_kzalloc(%struct.device* %10, i32 48, i32 %11)
  store %struct.tqmx86_wdt* %12, %struct.tqmx86_wdt** %5, align 8
  %13 = load %struct.tqmx86_wdt*, %struct.tqmx86_wdt** %5, align 8
  %14 = icmp ne %struct.tqmx86_wdt* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %99

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load i32, i32* @IORESOURCE_IO, align 4
  %21 = call %struct.resource* @platform_get_resource(%struct.platform_device* %19, i32 %20, i32 0)
  store %struct.resource* %21, %struct.resource** %6, align 8
  %22 = load %struct.resource*, %struct.resource** %6, align 8
  %23 = icmp ne %struct.resource* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %99

27:                                               ; preds = %18
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.resource*, %struct.resource** %6, align 8
  %30 = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.resource*, %struct.resource** %6, align 8
  %33 = call i32 @resource_size(%struct.resource* %32)
  %34 = call i32 @devm_ioport_map(%struct.device* %28, i32 %31, i32 %33)
  %35 = load %struct.tqmx86_wdt*, %struct.tqmx86_wdt** %5, align 8
  %36 = getelementptr inbounds %struct.tqmx86_wdt, %struct.tqmx86_wdt* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.tqmx86_wdt*, %struct.tqmx86_wdt** %5, align 8
  %38 = getelementptr inbounds %struct.tqmx86_wdt, %struct.tqmx86_wdt* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %27
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %99

44:                                               ; preds = %27
  %45 = load %struct.tqmx86_wdt*, %struct.tqmx86_wdt** %5, align 8
  %46 = getelementptr inbounds %struct.tqmx86_wdt, %struct.tqmx86_wdt* %45, i32 0, i32 0
  %47 = load %struct.tqmx86_wdt*, %struct.tqmx86_wdt** %5, align 8
  %48 = call i32 @watchdog_set_drvdata(%struct.TYPE_6__* %46, %struct.tqmx86_wdt* %47)
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load %struct.tqmx86_wdt*, %struct.tqmx86_wdt** %5, align 8
  %51 = getelementptr inbounds %struct.tqmx86_wdt, %struct.tqmx86_wdt* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 6
  store %struct.device* %49, %struct.device** %52, align 8
  %53 = load %struct.tqmx86_wdt*, %struct.tqmx86_wdt** %5, align 8
  %54 = getelementptr inbounds %struct.tqmx86_wdt, %struct.tqmx86_wdt* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 5
  store i32* @tqmx86_wdt_info, i32** %55, align 8
  %56 = load %struct.tqmx86_wdt*, %struct.tqmx86_wdt** %5, align 8
  %57 = getelementptr inbounds %struct.tqmx86_wdt, %struct.tqmx86_wdt* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 4
  store i32* @tqmx86_wdt_ops, i32** %58, align 8
  %59 = load %struct.tqmx86_wdt*, %struct.tqmx86_wdt** %5, align 8
  %60 = getelementptr inbounds %struct.tqmx86_wdt, %struct.tqmx86_wdt* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.tqmx86_wdt*, %struct.tqmx86_wdt** %5, align 8
  %63 = getelementptr inbounds %struct.tqmx86_wdt, %struct.tqmx86_wdt* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  store i32 4096, i32* %64, align 4
  %65 = load %struct.tqmx86_wdt*, %struct.tqmx86_wdt** %5, align 8
  %66 = getelementptr inbounds %struct.tqmx86_wdt, %struct.tqmx86_wdt* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  store i32 4096000, i32* %67, align 8
  %68 = load i32, i32* @WDT_TIMEOUT, align 4
  %69 = load %struct.tqmx86_wdt*, %struct.tqmx86_wdt** %5, align 8
  %70 = getelementptr inbounds %struct.tqmx86_wdt, %struct.tqmx86_wdt* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  store i32 %68, i32* %71, align 4
  %72 = load %struct.tqmx86_wdt*, %struct.tqmx86_wdt** %5, align 8
  %73 = getelementptr inbounds %struct.tqmx86_wdt, %struct.tqmx86_wdt* %72, i32 0, i32 0
  %74 = load i32, i32* @timeout, align 4
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = call i32 @watchdog_init_timeout(%struct.TYPE_6__* %73, i32 %74, %struct.device* %75)
  %77 = load %struct.tqmx86_wdt*, %struct.tqmx86_wdt** %5, align 8
  %78 = getelementptr inbounds %struct.tqmx86_wdt, %struct.tqmx86_wdt* %77, i32 0, i32 0
  %79 = load i32, i32* @WATCHDOG_NOWAYOUT, align 4
  %80 = call i32 @watchdog_set_nowayout(%struct.TYPE_6__* %78, i32 %79)
  %81 = load %struct.tqmx86_wdt*, %struct.tqmx86_wdt** %5, align 8
  %82 = getelementptr inbounds %struct.tqmx86_wdt, %struct.tqmx86_wdt* %81, i32 0, i32 0
  %83 = load %struct.tqmx86_wdt*, %struct.tqmx86_wdt** %5, align 8
  %84 = getelementptr inbounds %struct.tqmx86_wdt, %struct.tqmx86_wdt* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @tqmx86_wdt_set_timeout(%struct.TYPE_6__* %82, i32 %86)
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = load %struct.tqmx86_wdt*, %struct.tqmx86_wdt** %5, align 8
  %90 = getelementptr inbounds %struct.tqmx86_wdt, %struct.tqmx86_wdt* %89, i32 0, i32 0
  %91 = call i32 @devm_watchdog_register_device(%struct.device* %88, %struct.TYPE_6__* %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %44
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %2, align 4
  br label %99

96:                                               ; preds = %44
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = call i32 @dev_info(%struct.device* %97, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %96, %94, %41, %24, %15
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.tqmx86_wdt* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioport_map(%struct.device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_6__*, %struct.tqmx86_wdt*) #1

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_6__*, i32, %struct.device*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @tqmx86_wdt_set_timeout(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.TYPE_6__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
