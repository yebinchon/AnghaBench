; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_bcm_kona_wdt.c_bcm_kona_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_bcm_kona_wdt.c_bcm_kona_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.bcm_kona_wdt = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SECWDOG_DEFAULT_RESOLUTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to set resolution (error: %d)\00", align 1
@bcm_kona_wdt_wdd = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed set watchdog timeout\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Broadcom Kona Watchdog Timer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm_kona_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_kona_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.bcm_kona_wdt*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.bcm_kona_wdt* @devm_kzalloc(%struct.device* %9, i32 12, i32 %10)
  store %struct.bcm_kona_wdt* %11, %struct.bcm_kona_wdt** %5, align 8
  %12 = load %struct.bcm_kona_wdt*, %struct.bcm_kona_wdt** %5, align 8
  %13 = icmp ne %struct.bcm_kona_wdt* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %74

17:                                               ; preds = %1
  %18 = load %struct.bcm_kona_wdt*, %struct.bcm_kona_wdt** %5, align 8
  %19 = getelementptr inbounds %struct.bcm_kona_wdt, %struct.bcm_kona_wdt* %18, i32 0, i32 2
  %20 = call i32 @spin_lock_init(i32* %19)
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %21, i32 0)
  %23 = load %struct.bcm_kona_wdt*, %struct.bcm_kona_wdt** %5, align 8
  %24 = getelementptr inbounds %struct.bcm_kona_wdt, %struct.bcm_kona_wdt* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.bcm_kona_wdt*, %struct.bcm_kona_wdt** %5, align 8
  %26 = getelementptr inbounds %struct.bcm_kona_wdt, %struct.bcm_kona_wdt* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %74

33:                                               ; preds = %17
  %34 = load i32, i32* @SECWDOG_DEFAULT_RESOLUTION, align 4
  %35 = load %struct.bcm_kona_wdt*, %struct.bcm_kona_wdt** %5, align 8
  %36 = getelementptr inbounds %struct.bcm_kona_wdt, %struct.bcm_kona_wdt* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.bcm_kona_wdt*, %struct.bcm_kona_wdt** %5, align 8
  %38 = call i32 @bcm_kona_wdt_set_resolution_reg(%struct.bcm_kona_wdt* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %74

46:                                               ; preds = %33
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = load %struct.bcm_kona_wdt*, %struct.bcm_kona_wdt** %5, align 8
  %49 = call i32 @platform_set_drvdata(%struct.platform_device* %47, %struct.bcm_kona_wdt* %48)
  %50 = load %struct.bcm_kona_wdt*, %struct.bcm_kona_wdt** %5, align 8
  %51 = call i32 @watchdog_set_drvdata(%struct.TYPE_7__* @bcm_kona_wdt_wdd, %struct.bcm_kona_wdt* %50)
  %52 = load %struct.device*, %struct.device** %4, align 8
  store %struct.device* %52, %struct.device** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bcm_kona_wdt_wdd, i32 0, i32 0), align 8
  %53 = call i32 @bcm_kona_wdt_set_timeout_reg(%struct.TYPE_7__* @bcm_kona_wdt_wdd, i32 0)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %46
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %74

60:                                               ; preds = %46
  %61 = call i32 @watchdog_stop_on_reboot(%struct.TYPE_7__* @bcm_kona_wdt_wdd)
  %62 = call i32 @watchdog_stop_on_unregister(%struct.TYPE_7__* @bcm_kona_wdt_wdd)
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = call i32 @devm_watchdog_register_device(%struct.device* %63, %struct.TYPE_7__* @bcm_kona_wdt_wdd)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %74

69:                                               ; preds = %60
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = call i32 @bcm_kona_wdt_debug_init(%struct.platform_device* %70)
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = call i32 @dev_dbg(%struct.device* %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %69, %67, %56, %41, %30, %14
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.bcm_kona_wdt* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @bcm_kona_wdt_set_resolution_reg(%struct.bcm_kona_wdt*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.bcm_kona_wdt*) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_7__*, %struct.bcm_kona_wdt*) #1

declare dso_local i32 @bcm_kona_wdt_set_timeout_reg(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @watchdog_stop_on_reboot(%struct.TYPE_7__*) #1

declare dso_local i32 @watchdog_stop_on_unregister(%struct.TYPE_7__*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.TYPE_7__*) #1

declare dso_local i32 @bcm_kona_wdt_debug_init(%struct.platform_device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
