; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-as3722.c_as3722_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-as3722.c_as3722_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.as3722 = type { i32 }
%struct.as3722_rtc = type { i32, i32, %struct.TYPE_7__*, %struct.as3722* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AS3722_RTC_CONTROL_REG = common dso_local global i32 0, align 4
@AS3722_RTC_ON = common dso_local global i32 0, align 4
@AS3722_RTC_ALARM_WAKEUP_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"RTC_CONTROL reg write failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"as3722-rtc\00", align 1
@as3722_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"RTC register failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"RTC interrupt %d\0A\00", align 1
@as3722_alarm_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"rtc-alarm\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Failed to request alarm IRQ %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @as3722_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3722_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.as3722*, align 8
  %5 = alloca %struct.as3722_rtc*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.as3722* @dev_get_drvdata(i32 %10)
  store %struct.as3722* %11, %struct.as3722** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.as3722_rtc* @devm_kzalloc(%struct.TYPE_7__* %13, i32 24, i32 %14)
  store %struct.as3722_rtc* %15, %struct.as3722_rtc** %5, align 8
  %16 = load %struct.as3722_rtc*, %struct.as3722_rtc** %5, align 8
  %17 = icmp ne %struct.as3722_rtc* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %110

21:                                               ; preds = %1
  %22 = load %struct.as3722*, %struct.as3722** %4, align 8
  %23 = load %struct.as3722_rtc*, %struct.as3722_rtc** %5, align 8
  %24 = getelementptr inbounds %struct.as3722_rtc, %struct.as3722_rtc* %23, i32 0, i32 3
  store %struct.as3722* %22, %struct.as3722** %24, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.as3722_rtc*, %struct.as3722_rtc** %5, align 8
  %28 = getelementptr inbounds %struct.as3722_rtc, %struct.as3722_rtc* %27, i32 0, i32 2
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %28, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = load %struct.as3722_rtc*, %struct.as3722_rtc** %5, align 8
  %31 = call i32 @platform_set_drvdata(%struct.platform_device* %29, %struct.as3722_rtc* %30)
  %32 = load %struct.as3722*, %struct.as3722** %4, align 8
  %33 = load i32, i32* @AS3722_RTC_CONTROL_REG, align 4
  %34 = load i32, i32* @AS3722_RTC_ON, align 4
  %35 = load i32, i32* @AS3722_RTC_ALARM_WAKEUP_EN, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @AS3722_RTC_ON, align 4
  %38 = load i32, i32* @AS3722_RTC_ALARM_WAKEUP_EN, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @as3722_update_bits(%struct.as3722* %32, i32 %33, i32 %36, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %21
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load i32, i32* %6, align 4
  %47 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @dev_err(%struct.TYPE_7__* %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %110

49:                                               ; preds = %21
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 @device_init_wakeup(%struct.TYPE_7__* %51, i32 1)
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load i32, i32* @THIS_MODULE, align 4
  %56 = call i32 @devm_rtc_device_register(%struct.TYPE_7__* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* @as3722_rtc_ops, i32 %55)
  %57 = load %struct.as3722_rtc*, %struct.as3722_rtc** %5, align 8
  %58 = getelementptr inbounds %struct.as3722_rtc, %struct.as3722_rtc* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.as3722_rtc*, %struct.as3722_rtc** %5, align 8
  %60 = getelementptr inbounds %struct.as3722_rtc, %struct.as3722_rtc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @IS_ERR(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %49
  %65 = load %struct.as3722_rtc*, %struct.as3722_rtc** %5, align 8
  %66 = getelementptr inbounds %struct.as3722_rtc, %struct.as3722_rtc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @PTR_ERR(i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load i32, i32* %6, align 4
  %72 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @dev_err(%struct.TYPE_7__* %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %110

74:                                               ; preds = %49
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = call i32 @platform_get_irq(%struct.platform_device* %75, i32 0)
  %77 = load %struct.as3722_rtc*, %struct.as3722_rtc** %5, align 8
  %78 = getelementptr inbounds %struct.as3722_rtc, %struct.as3722_rtc* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = load %struct.as3722_rtc*, %struct.as3722_rtc** %5, align 8
  %82 = getelementptr inbounds %struct.as3722_rtc, %struct.as3722_rtc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @dev_info(%struct.TYPE_7__* %80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = load %struct.as3722_rtc*, %struct.as3722_rtc** %5, align 8
  %88 = getelementptr inbounds %struct.as3722_rtc, %struct.as3722_rtc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @as3722_alarm_irq, align 4
  %91 = load i32, i32* @IRQF_ONESHOT, align 4
  %92 = load %struct.as3722_rtc*, %struct.as3722_rtc** %5, align 8
  %93 = call i32 @devm_request_threaded_irq(%struct.TYPE_7__* %86, i32 %89, i32* null, i32 %90, i32 %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), %struct.as3722_rtc* %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %74
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = load %struct.as3722_rtc*, %struct.as3722_rtc** %5, align 8
  %100 = getelementptr inbounds %struct.as3722_rtc, %struct.as3722_rtc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @dev_err(%struct.TYPE_7__* %98, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %101, i32 %102)
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %2, align 4
  br label %110

105:                                              ; preds = %74
  %106 = load %struct.as3722_rtc*, %struct.as3722_rtc** %5, align 8
  %107 = getelementptr inbounds %struct.as3722_rtc, %struct.as3722_rtc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @disable_irq(i32 %108)
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %105, %96, %64, %43, %18
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.as3722* @dev_get_drvdata(i32) #1

declare dso_local %struct.as3722_rtc* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.as3722_rtc*) #1

declare dso_local i32 @as3722_update_bits(%struct.as3722*, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i32, ...) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @devm_rtc_device_register(%struct.TYPE_7__*, i8*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_7__*, i32, i32*, i32, i32, i8*, %struct.as3722_rtc*) #1

declare dso_local i32 @disable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
