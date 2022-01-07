; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_retu_wdt.c_retu_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_retu_wdt.c_retu_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.retu_dev = type { i32 }
%struct.watchdog_device = type { %struct.TYPE_2__*, i8*, i64, i8*, i32*, i32* }
%struct.retu_wdt_dev = type { i32, %struct.TYPE_2__*, %struct.retu_dev* }

@WATCHDOG_NOWAYOUT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@retu_wdt_info = common dso_local global i32 0, align 4
@retu_wdt_ops = common dso_local global i32 0, align 4
@RETU_WDT_MAX_TIMER = common dso_local global i8* null, align 8
@retu_wdt_ping_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @retu_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @retu_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.retu_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.watchdog_device*, align 8
  %7 = alloca %struct.retu_wdt_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.retu_dev* @dev_get_drvdata(i32 %12)
  store %struct.retu_dev* %13, %struct.retu_dev** %4, align 8
  %14 = load i32, i32* @WATCHDOG_NOWAYOUT, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @devm_kzalloc(%struct.TYPE_2__* %16, i32 48, i32 %17)
  %19 = bitcast i8* %18 to %struct.watchdog_device*
  store %struct.watchdog_device* %19, %struct.watchdog_device** %6, align 8
  %20 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %21 = icmp ne %struct.watchdog_device* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %89

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @devm_kzalloc(%struct.TYPE_2__* %27, i32 24, i32 %28)
  %30 = bitcast i8* %29 to %struct.retu_wdt_dev*
  store %struct.retu_wdt_dev* %30, %struct.retu_wdt_dev** %7, align 8
  %31 = load %struct.retu_wdt_dev*, %struct.retu_wdt_dev** %7, align 8
  %32 = icmp ne %struct.retu_wdt_dev* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %89

36:                                               ; preds = %25
  %37 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %38 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %37, i32 0, i32 5
  store i32* @retu_wdt_info, i32** %38, align 8
  %39 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %40 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %39, i32 0, i32 4
  store i32* @retu_wdt_ops, i32** %40, align 8
  %41 = load i8*, i8** @RETU_WDT_MAX_TIMER, align 8
  %42 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %43 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %45 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load i8*, i8** @RETU_WDT_MAX_TIMER, align 8
  %47 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %48 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %52 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %51, i32 0, i32 0
  store %struct.TYPE_2__* %50, %struct.TYPE_2__** %52, align 8
  %53 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %54 = load %struct.retu_wdt_dev*, %struct.retu_wdt_dev** %7, align 8
  %55 = call i32 @watchdog_set_drvdata(%struct.watchdog_device* %53, %struct.retu_wdt_dev* %54)
  %56 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @watchdog_set_nowayout(%struct.watchdog_device* %56, i32 %57)
  %59 = load %struct.retu_dev*, %struct.retu_dev** %4, align 8
  %60 = load %struct.retu_wdt_dev*, %struct.retu_wdt_dev** %7, align 8
  %61 = getelementptr inbounds %struct.retu_wdt_dev, %struct.retu_wdt_dev* %60, i32 0, i32 2
  store %struct.retu_dev* %59, %struct.retu_dev** %61, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load %struct.retu_wdt_dev*, %struct.retu_wdt_dev** %7, align 8
  %65 = getelementptr inbounds %struct.retu_wdt_dev, %struct.retu_wdt_dev* %64, i32 0, i32 1
  store %struct.TYPE_2__* %63, %struct.TYPE_2__** %65, align 8
  %66 = load %struct.retu_wdt_dev*, %struct.retu_wdt_dev** %7, align 8
  %67 = getelementptr inbounds %struct.retu_wdt_dev, %struct.retu_wdt_dev* %66, i32 0, i32 0
  %68 = load i32, i32* @retu_wdt_ping_work, align 4
  %69 = call i32 @INIT_DELAYED_WORK(i32* %67, i32 %68)
  %70 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %71 = call i32 @watchdog_register_device(%struct.watchdog_device* %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %36
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %2, align 4
  br label %89

76:                                               ; preds = %36
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %81 = call i32 @retu_wdt_ping(%struct.watchdog_device* %80)
  br label %85

82:                                               ; preds = %76
  %83 = load %struct.retu_wdt_dev*, %struct.retu_wdt_dev** %7, align 8
  %84 = call i32 @retu_wdt_ping_enable(%struct.retu_wdt_dev* %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = load %struct.watchdog_device*, %struct.watchdog_device** %6, align 8
  %88 = call i32 @platform_set_drvdata(%struct.platform_device* %86, %struct.watchdog_device* %87)
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %85, %74, %33, %22
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.retu_dev* @dev_get_drvdata(i32) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.watchdog_device*, %struct.retu_wdt_dev*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.watchdog_device*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @watchdog_register_device(%struct.watchdog_device*) #1

declare dso_local i32 @retu_wdt_ping(%struct.watchdog_device*) #1

declare dso_local i32 @retu_wdt_ping_enable(%struct.retu_wdt_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.watchdog_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
