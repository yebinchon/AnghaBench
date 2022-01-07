; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cros-ec.c_cros_ec_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cros-ec.c_cros_ec_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.cros_ec_dev = type { %struct.cros_ec_device* }
%struct.cros_ec_device = type { i32 }
%struct.cros_ec_rtc = type { %struct.TYPE_8__, i32, %struct.cros_ec_device* }
%struct.TYPE_8__ = type { i32 }
%struct.rtc_time = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to read RTC time\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to initialize wakeup\0A\00", align 1
@DRV_NAME = common dso_local global i32 0, align 4
@cros_ec_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to register rtc device\0A\00", align 1
@cros_ec_rtc_event = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to register notifier\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cros_ec_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.cros_ec_dev*, align 8
  %5 = alloca %struct.cros_ec_device*, align 8
  %6 = alloca %struct.cros_ec_rtc*, align 8
  %7 = alloca %struct.rtc_time, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.cros_ec_dev* @dev_get_drvdata(i32 %12)
  store %struct.cros_ec_dev* %13, %struct.cros_ec_dev** %4, align 8
  %14 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %15 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %14, i32 0, i32 0
  %16 = load %struct.cros_ec_device*, %struct.cros_ec_device** %15, align 8
  store %struct.cros_ec_device* %16, %struct.cros_ec_device** %5, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.cros_ec_rtc* @devm_kzalloc(%struct.TYPE_7__* %18, i32 16, i32 %19)
  store %struct.cros_ec_rtc* %20, %struct.cros_ec_rtc** %6, align 8
  %21 = load %struct.cros_ec_rtc*, %struct.cros_ec_rtc** %6, align 8
  %22 = icmp ne %struct.cros_ec_rtc* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %94

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = load %struct.cros_ec_rtc*, %struct.cros_ec_rtc** %6, align 8
  %29 = call i32 @platform_set_drvdata(%struct.platform_device* %27, %struct.cros_ec_rtc* %28)
  %30 = load %struct.cros_ec_device*, %struct.cros_ec_device** %5, align 8
  %31 = load %struct.cros_ec_rtc*, %struct.cros_ec_rtc** %6, align 8
  %32 = getelementptr inbounds %struct.cros_ec_rtc, %struct.cros_ec_rtc* %31, i32 0, i32 2
  store %struct.cros_ec_device* %30, %struct.cros_ec_device** %32, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 @cros_ec_rtc_read_time(%struct.TYPE_7__* %34, %struct.rtc_time* %7)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %26
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call i32 @dev_err(%struct.TYPE_7__* %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %2, align 4
  br label %94

43:                                               ; preds = %26
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i32 @device_init_wakeup(%struct.TYPE_7__* %45, i32 1)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 @dev_err(%struct.TYPE_7__* %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %2, align 4
  br label %94

54:                                               ; preds = %43
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load i32, i32* @DRV_NAME, align 4
  %58 = load i32, i32* @THIS_MODULE, align 4
  %59 = call i32 @devm_rtc_device_register(%struct.TYPE_7__* %56, i32 %57, i32* @cros_ec_rtc_ops, i32 %58)
  %60 = load %struct.cros_ec_rtc*, %struct.cros_ec_rtc** %6, align 8
  %61 = getelementptr inbounds %struct.cros_ec_rtc, %struct.cros_ec_rtc* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.cros_ec_rtc*, %struct.cros_ec_rtc** %6, align 8
  %63 = getelementptr inbounds %struct.cros_ec_rtc, %struct.cros_ec_rtc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @IS_ERR(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %54
  %68 = load %struct.cros_ec_rtc*, %struct.cros_ec_rtc** %6, align 8
  %69 = getelementptr inbounds %struct.cros_ec_rtc, %struct.cros_ec_rtc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @PTR_ERR(i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 @dev_err(%struct.TYPE_7__* %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %2, align 4
  br label %94

76:                                               ; preds = %54
  %77 = load i32, i32* @cros_ec_rtc_event, align 4
  %78 = load %struct.cros_ec_rtc*, %struct.cros_ec_rtc** %6, align 8
  %79 = getelementptr inbounds %struct.cros_ec_rtc, %struct.cros_ec_rtc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  %81 = load %struct.cros_ec_device*, %struct.cros_ec_device** %5, align 8
  %82 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %81, i32 0, i32 0
  %83 = load %struct.cros_ec_rtc*, %struct.cros_ec_rtc** %6, align 8
  %84 = getelementptr inbounds %struct.cros_ec_rtc, %struct.cros_ec_rtc* %83, i32 0, i32 0
  %85 = call i32 @blocking_notifier_chain_register(i32* %82, %struct.TYPE_8__* %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %76
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i32 @dev_err(%struct.TYPE_7__* %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %2, align 4
  br label %94

93:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %88, %67, %49, %38, %23
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.cros_ec_dev* @dev_get_drvdata(i32) #1

declare dso_local %struct.cros_ec_rtc* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cros_ec_rtc*) #1

declare dso_local i32 @cros_ec_rtc_read_time(%struct.TYPE_7__*, %struct.rtc_time*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @devm_rtc_device_register(%struct.TYPE_7__*, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @blocking_notifier_chain_register(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
