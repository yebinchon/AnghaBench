; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_stpmic1_wdt.c_pmic_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_stpmic1_wdt.c_pmic_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.stpmic1 = type { i32 }
%struct.stpmic1_wdt = type { %struct.stpmic1*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.device*, i32, i32, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pmic_watchdog_info = common dso_local global i32 0, align 4
@pmic_watchdog_ops = common dso_local global i32 0, align 4
@PMIC_WDT_MIN_TIMEOUT = common dso_local global i32 0, align 4
@PMIC_WDT_MAX_TIMEOUT = common dso_local global i32 0, align 4
@PMIC_WDT_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@nowayout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"PMIC Watchdog driver probed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pmic_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stpmic1*, align 8
  %7 = alloca %struct.stpmic1_wdt*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %89

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.stpmic1* @dev_get_drvdata(i32 %20)
  store %struct.stpmic1* %21, %struct.stpmic1** %6, align 8
  %22 = load %struct.stpmic1*, %struct.stpmic1** %6, align 8
  %23 = icmp ne %struct.stpmic1* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %89

27:                                               ; preds = %17
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.stpmic1_wdt* @devm_kzalloc(%struct.device* %28, i32 48, i32 %29)
  store %struct.stpmic1_wdt* %30, %struct.stpmic1_wdt** %7, align 8
  %31 = load %struct.stpmic1_wdt*, %struct.stpmic1_wdt** %7, align 8
  %32 = icmp ne %struct.stpmic1_wdt* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %89

36:                                               ; preds = %27
  %37 = load %struct.stpmic1*, %struct.stpmic1** %6, align 8
  %38 = load %struct.stpmic1_wdt*, %struct.stpmic1_wdt** %7, align 8
  %39 = getelementptr inbounds %struct.stpmic1_wdt, %struct.stpmic1_wdt* %38, i32 0, i32 0
  store %struct.stpmic1* %37, %struct.stpmic1** %39, align 8
  %40 = load %struct.stpmic1_wdt*, %struct.stpmic1_wdt** %7, align 8
  %41 = getelementptr inbounds %struct.stpmic1_wdt, %struct.stpmic1_wdt* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 5
  store i32* @pmic_watchdog_info, i32** %42, align 8
  %43 = load %struct.stpmic1_wdt*, %struct.stpmic1_wdt** %7, align 8
  %44 = getelementptr inbounds %struct.stpmic1_wdt, %struct.stpmic1_wdt* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 4
  store i32* @pmic_watchdog_ops, i32** %45, align 8
  %46 = load i32, i32* @PMIC_WDT_MIN_TIMEOUT, align 4
  %47 = load %struct.stpmic1_wdt*, %struct.stpmic1_wdt** %7, align 8
  %48 = getelementptr inbounds %struct.stpmic1_wdt, %struct.stpmic1_wdt* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @PMIC_WDT_MAX_TIMEOUT, align 4
  %51 = load %struct.stpmic1_wdt*, %struct.stpmic1_wdt** %7, align 8
  %52 = getelementptr inbounds %struct.stpmic1_wdt, %struct.stpmic1_wdt* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 8
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = load %struct.stpmic1_wdt*, %struct.stpmic1_wdt** %7, align 8
  %56 = getelementptr inbounds %struct.stpmic1_wdt, %struct.stpmic1_wdt* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store %struct.device* %54, %struct.device** %57, align 8
  %58 = load i32, i32* @PMIC_WDT_DEFAULT_TIMEOUT, align 4
  %59 = load %struct.stpmic1_wdt*, %struct.stpmic1_wdt** %7, align 8
  %60 = getelementptr inbounds %struct.stpmic1_wdt, %struct.stpmic1_wdt* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load %struct.stpmic1_wdt*, %struct.stpmic1_wdt** %7, align 8
  %63 = getelementptr inbounds %struct.stpmic1_wdt, %struct.stpmic1_wdt* %62, i32 0, i32 1
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i32 @watchdog_init_timeout(%struct.TYPE_5__* %63, i32 0, %struct.device* %64)
  %66 = load %struct.stpmic1_wdt*, %struct.stpmic1_wdt** %7, align 8
  %67 = getelementptr inbounds %struct.stpmic1_wdt, %struct.stpmic1_wdt* %66, i32 0, i32 1
  %68 = load i32, i32* @nowayout, align 4
  %69 = call i32 @watchdog_set_nowayout(%struct.TYPE_5__* %67, i32 %68)
  %70 = load %struct.stpmic1_wdt*, %struct.stpmic1_wdt** %7, align 8
  %71 = getelementptr inbounds %struct.stpmic1_wdt, %struct.stpmic1_wdt* %70, i32 0, i32 1
  %72 = load %struct.stpmic1_wdt*, %struct.stpmic1_wdt** %7, align 8
  %73 = call i32 @watchdog_set_drvdata(%struct.TYPE_5__* %71, %struct.stpmic1_wdt* %72)
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = load %struct.stpmic1_wdt*, %struct.stpmic1_wdt** %7, align 8
  %76 = getelementptr inbounds %struct.stpmic1_wdt, %struct.stpmic1_wdt* %75, i32 0, i32 1
  %77 = call i32 @devm_watchdog_register_device(%struct.device* %74, %struct.TYPE_5__* %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %36
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %89

82:                                               ; preds = %36
  %83 = load %struct.stpmic1_wdt*, %struct.stpmic1_wdt** %7, align 8
  %84 = getelementptr inbounds %struct.stpmic1_wdt, %struct.stpmic1_wdt* %83, i32 0, i32 0
  %85 = load %struct.stpmic1*, %struct.stpmic1** %84, align 8
  %86 = getelementptr inbounds %struct.stpmic1, %struct.stpmic1* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dev_dbg(i32 %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %82, %80, %33, %24, %14
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.stpmic1* @dev_get_drvdata(i32) #1

declare dso_local %struct.stpmic1_wdt* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_5__*, i32, %struct.device*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_5__*, %struct.stpmic1_wdt*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.TYPE_5__*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
