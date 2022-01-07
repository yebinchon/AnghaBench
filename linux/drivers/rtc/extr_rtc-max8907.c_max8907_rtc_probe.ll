; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8907.c_max8907_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8907.c_max8907_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.max8907 = type { i32, i32 }
%struct.max8907_rtc = type { i32, i32, i32, %struct.max8907* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"max8907-rtc\00", align 1
@max8907_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to register RTC device: %d\0A\00", align 1
@MAX8907_IRQ_RTC_ALARM0 = common dso_local global i32 0, align 4
@max8907_irq_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"max8907-alarm0\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to request IRQ%d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max8907_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8907_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.max8907*, align 8
  %5 = alloca %struct.max8907_rtc*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.max8907* @dev_get_drvdata(i32 %10)
  store %struct.max8907* %11, %struct.max8907** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.max8907_rtc* @devm_kzalloc(%struct.TYPE_5__* %13, i32 24, i32 %14)
  store %struct.max8907_rtc* %15, %struct.max8907_rtc** %5, align 8
  %16 = load %struct.max8907_rtc*, %struct.max8907_rtc** %5, align 8
  %17 = icmp ne %struct.max8907_rtc* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %92

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.max8907_rtc*, %struct.max8907_rtc** %5, align 8
  %24 = call i32 @platform_set_drvdata(%struct.platform_device* %22, %struct.max8907_rtc* %23)
  %25 = load %struct.max8907*, %struct.max8907** %4, align 8
  %26 = load %struct.max8907_rtc*, %struct.max8907_rtc** %5, align 8
  %27 = getelementptr inbounds %struct.max8907_rtc, %struct.max8907_rtc* %26, i32 0, i32 3
  store %struct.max8907* %25, %struct.max8907** %27, align 8
  %28 = load %struct.max8907*, %struct.max8907** %4, align 8
  %29 = getelementptr inbounds %struct.max8907, %struct.max8907* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.max8907_rtc*, %struct.max8907_rtc** %5, align 8
  %32 = getelementptr inbounds %struct.max8907_rtc, %struct.max8907_rtc* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load i32, i32* @THIS_MODULE, align 4
  %36 = call i32 @devm_rtc_device_register(%struct.TYPE_5__* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* @max8907_rtc_ops, i32 %35)
  %37 = load %struct.max8907_rtc*, %struct.max8907_rtc** %5, align 8
  %38 = getelementptr inbounds %struct.max8907_rtc, %struct.max8907_rtc* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.max8907_rtc*, %struct.max8907_rtc** %5, align 8
  %40 = getelementptr inbounds %struct.max8907_rtc, %struct.max8907_rtc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %21
  %45 = load %struct.max8907_rtc*, %struct.max8907_rtc** %5, align 8
  %46 = getelementptr inbounds %struct.max8907_rtc, %struct.max8907_rtc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @PTR_ERR(i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load i32, i32* %6, align 4
  %52 = call i32 (%struct.TYPE_5__*, i8*, i32, ...) @dev_err(%struct.TYPE_5__* %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %92

54:                                               ; preds = %21
  %55 = load %struct.max8907*, %struct.max8907** %4, align 8
  %56 = getelementptr inbounds %struct.max8907, %struct.max8907* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MAX8907_IRQ_RTC_ALARM0, align 4
  %59 = call i32 @regmap_irq_get_virq(i32 %57, i32 %58)
  %60 = load %struct.max8907_rtc*, %struct.max8907_rtc** %5, align 8
  %61 = getelementptr inbounds %struct.max8907_rtc, %struct.max8907_rtc* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.max8907_rtc*, %struct.max8907_rtc** %5, align 8
  %63 = getelementptr inbounds %struct.max8907_rtc, %struct.max8907_rtc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %54
  %67 = load %struct.max8907_rtc*, %struct.max8907_rtc** %5, align 8
  %68 = getelementptr inbounds %struct.max8907_rtc, %struct.max8907_rtc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %2, align 4
  br label %92

70:                                               ; preds = %54
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load %struct.max8907_rtc*, %struct.max8907_rtc** %5, align 8
  %74 = getelementptr inbounds %struct.max8907_rtc, %struct.max8907_rtc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @max8907_irq_handler, align 4
  %77 = load i32, i32* @IRQF_ONESHOT, align 4
  %78 = load %struct.max8907_rtc*, %struct.max8907_rtc** %5, align 8
  %79 = call i32 @devm_request_threaded_irq(%struct.TYPE_5__* %72, i32 %75, i32* null, i32 %76, i32 %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct.max8907_rtc* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %70
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load %struct.max8907_rtc*, %struct.max8907_rtc** %5, align 8
  %86 = getelementptr inbounds %struct.max8907_rtc, %struct.max8907_rtc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 (%struct.TYPE_5__*, i8*, i32, ...) @dev_err(%struct.TYPE_5__* %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %82, %70
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %90, %66, %44, %18
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.max8907* @dev_get_drvdata(i32) #1

declare dso_local %struct.max8907_rtc* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.max8907_rtc*) #1

declare dso_local i32 @devm_rtc_device_register(%struct.TYPE_5__*, i8*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, i32, ...) #1

declare dso_local i32 @regmap_irq_get_virq(i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_5__*, i32, i32*, i32, i32, i8*, %struct.max8907_rtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
