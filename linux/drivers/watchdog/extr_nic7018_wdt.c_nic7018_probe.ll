; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_nic7018_wdt.c_nic7018_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_nic7018_wdt.c_nic7018_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.watchdog_device = type { %struct.device*, i32, i32, i32, i32*, i32* }
%struct.nic7018_wdt = type { i64, %struct.watchdog_device }
%struct.resource = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"missing IO resources\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to get IO region\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@nic7018_wdd_info = common dso_local global i32 0, align 4
@nic7018_wdd_ops = common dso_local global i32 0, align 4
@WDT_MIN_TIMEOUT = common dso_local global i32 0, align 4
@WDT_MAX_TIMEOUT = common dso_local global i32 0, align 4
@WDT_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@nowayout = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@UNLOCK = common dso_local global i32 0, align 4
@WDT_REG_LOCK = common dso_local global i64 0, align 8
@LOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"io_base=0x%04X, timeout=%d, nowayout=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @nic7018_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nic7018_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.watchdog_device*, align 8
  %6 = alloca %struct.nic7018_wdt*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.nic7018_wdt* @devm_kzalloc(%struct.device* %11, i32 48, i32 %12)
  store %struct.nic7018_wdt* %13, %struct.nic7018_wdt** %6, align 8
  %14 = load %struct.nic7018_wdt*, %struct.nic7018_wdt** %6, align 8
  %15 = icmp ne %struct.nic7018_wdt* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %110

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load %struct.nic7018_wdt*, %struct.nic7018_wdt** %6, align 8
  %22 = call i32 @platform_set_drvdata(%struct.platform_device* %20, %struct.nic7018_wdt* %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load i32, i32* @IORESOURCE_IO, align 4
  %25 = call %struct.resource* @platform_get_resource(%struct.platform_device* %23, i32 %24, i32 0)
  store %struct.resource* %25, %struct.resource** %7, align 8
  %26 = load %struct.resource*, %struct.resource** %7, align 8
  %27 = icmp ne %struct.resource* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %19
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %110

33:                                               ; preds = %19
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load %struct.resource*, %struct.resource** %7, align 8
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.resource*, %struct.resource** %7, align 8
  %39 = call i32 @resource_size(%struct.resource* %38)
  %40 = load i32, i32* @KBUILD_MODNAME, align 4
  %41 = call i32 @devm_request_region(%struct.device* %34, i64 %37, i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %33
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %110

48:                                               ; preds = %33
  %49 = load %struct.resource*, %struct.resource** %7, align 8
  %50 = getelementptr inbounds %struct.resource, %struct.resource* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.nic7018_wdt*, %struct.nic7018_wdt** %6, align 8
  %53 = getelementptr inbounds %struct.nic7018_wdt, %struct.nic7018_wdt* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.nic7018_wdt*, %struct.nic7018_wdt** %6, align 8
  %55 = getelementptr inbounds %struct.nic7018_wdt, %struct.nic7018_wdt* %54, i32 0, i32 1
  store %struct.watchdog_device* %55, %struct.watchdog_device** %5, align 8
  %56 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %57 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %56, i32 0, i32 5
  store i32* @nic7018_wdd_info, i32** %57, align 8
  %58 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %59 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %58, i32 0, i32 4
  store i32* @nic7018_wdd_ops, i32** %59, align 8
  %60 = load i32, i32* @WDT_MIN_TIMEOUT, align 4
  %61 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %62 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @WDT_MAX_TIMEOUT, align 4
  %64 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %65 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @WDT_DEFAULT_TIMEOUT, align 4
  %67 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %68 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %71 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %70, i32 0, i32 0
  store %struct.device* %69, %struct.device** %71, align 8
  %72 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %73 = load %struct.nic7018_wdt*, %struct.nic7018_wdt** %6, align 8
  %74 = call i32 @watchdog_set_drvdata(%struct.watchdog_device* %72, %struct.nic7018_wdt* %73)
  %75 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %76 = load i32, i32* @nowayout, align 4
  %77 = call i32 @watchdog_set_nowayout(%struct.watchdog_device* %75, i32 %76)
  %78 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %79 = load i32, i32* @timeout, align 4
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = call i32 @watchdog_init_timeout(%struct.watchdog_device* %78, i32 %79, %struct.device* %80)
  %82 = load i32, i32* @UNLOCK, align 4
  %83 = load %struct.nic7018_wdt*, %struct.nic7018_wdt** %6, align 8
  %84 = getelementptr inbounds %struct.nic7018_wdt, %struct.nic7018_wdt* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @WDT_REG_LOCK, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @outb(i32 %82, i64 %87)
  %89 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %90 = call i32 @watchdog_register_device(%struct.watchdog_device* %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %48
  %94 = load i32, i32* @LOCK, align 4
  %95 = load %struct.nic7018_wdt*, %struct.nic7018_wdt** %6, align 8
  %96 = getelementptr inbounds %struct.nic7018_wdt, %struct.nic7018_wdt* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @WDT_REG_LOCK, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @outb(i32 %94, i64 %99)
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %2, align 4
  br label %110

102:                                              ; preds = %48
  %103 = load %struct.device*, %struct.device** %4, align 8
  %104 = load %struct.nic7018_wdt*, %struct.nic7018_wdt** %6, align 8
  %105 = getelementptr inbounds %struct.nic7018_wdt, %struct.nic7018_wdt* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* @timeout, align 4
  %108 = load i32, i32* @nowayout, align 4
  %109 = call i32 @dev_dbg(%struct.device* %103, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %106, i32 %107, i32 %108)
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %102, %93, %43, %28, %16
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.nic7018_wdt* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.nic7018_wdt*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_request_region(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.watchdog_device*, %struct.nic7018_wdt*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.watchdog_device*, i32) #1

declare dso_local i32 @watchdog_init_timeout(%struct.watchdog_device*, i32, %struct.device*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @watchdog_register_device(%struct.watchdog_device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
