; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-wm831x.c_wm831x_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-wm831x.c_wm831x_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.wm831x = type { i32 }
%struct.wm831x_rtc = type { i32, %struct.TYPE_10__*, %struct.wm831x* }
%struct.TYPE_10__ = type { i32, i32* }

@.str = private unnamed_addr constant [4 x i8] c"ALM\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WM831X_RTC_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to read RTC control: %d\0A\00", align 1
@WM831X_RTC_ALM_ENA = common dso_local global i32 0, align 4
@wm831x_rtc_ops = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@wm831x_alm_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"RTC alarm\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to request alarm IRQ %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm831x_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.wm831x*, align 8
  %5 = alloca %struct.wm831x_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.wm831x* @dev_get_drvdata(i32 %11)
  store %struct.wm831x* %12, %struct.wm831x** %4, align 8
  %13 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = call i32 @platform_get_irq_byname(%struct.platform_device* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @wm831x_irq(%struct.wm831x* %13, i32 %15)
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.wm831x_rtc* @devm_kzalloc(%struct.TYPE_11__* %18, i32 24, i32 %19)
  store %struct.wm831x_rtc* %20, %struct.wm831x_rtc** %5, align 8
  %21 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %5, align 8
  %22 = icmp eq %struct.wm831x_rtc* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %110

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %5, align 8
  %29 = call i32 @platform_set_drvdata(%struct.platform_device* %27, %struct.wm831x_rtc* %28)
  %30 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %31 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %5, align 8
  %32 = getelementptr inbounds %struct.wm831x_rtc, %struct.wm831x_rtc* %31, i32 0, i32 2
  store %struct.wm831x* %30, %struct.wm831x** %32, align 8
  %33 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %34 = load i32, i32* @WM831X_RTC_CONTROL, align 4
  %35 = call i32 @wm831x_reg_read(%struct.wm831x* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %26
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (%struct.TYPE_11__*, i8*, i32, ...) @dev_err(%struct.TYPE_11__* %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %110

44:                                               ; preds = %26
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @WM831X_RTC_ALM_ENA, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %5, align 8
  %51 = getelementptr inbounds %struct.wm831x_rtc, %struct.wm831x_rtc* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  br label %52

52:                                               ; preds = %49, %44
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = call i32 @device_init_wakeup(%struct.TYPE_11__* %54, i32 1)
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call %struct.TYPE_10__* @devm_rtc_allocate_device(%struct.TYPE_11__* %57)
  %59 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %5, align 8
  %60 = getelementptr inbounds %struct.wm831x_rtc, %struct.wm831x_rtc* %59, i32 0, i32 1
  store %struct.TYPE_10__* %58, %struct.TYPE_10__** %60, align 8
  %61 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %5, align 8
  %62 = getelementptr inbounds %struct.wm831x_rtc, %struct.wm831x_rtc* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = call i64 @IS_ERR(%struct.TYPE_10__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %52
  %67 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %5, align 8
  %68 = getelementptr inbounds %struct.wm831x_rtc, %struct.wm831x_rtc* %67, i32 0, i32 1
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = call i32 @PTR_ERR(%struct.TYPE_10__* %69)
  store i32 %70, i32* %2, align 4
  br label %110

71:                                               ; preds = %52
  %72 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %5, align 8
  %73 = getelementptr inbounds %struct.wm831x_rtc, %struct.wm831x_rtc* %72, i32 0, i32 1
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  store i32* @wm831x_rtc_ops, i32** %75, align 8
  %76 = load i32, i32* @U32_MAX, align 4
  %77 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %5, align 8
  %78 = getelementptr inbounds %struct.wm831x_rtc, %struct.wm831x_rtc* %77, i32 0, i32 1
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 8
  %81 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %5, align 8
  %82 = getelementptr inbounds %struct.wm831x_rtc, %struct.wm831x_rtc* %81, i32 0, i32 1
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = call i32 @rtc_register_device(%struct.TYPE_10__* %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %71
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %2, align 4
  br label %110

89:                                               ; preds = %71
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @wm831x_alm_irq, align 4
  %94 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %95 = load i32, i32* @IRQF_ONESHOT, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %5, align 8
  %98 = call i32 @devm_request_threaded_irq(%struct.TYPE_11__* %91, i32 %92, i32* null, i32 %93, i32 %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.wm831x_rtc* %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %89
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 (%struct.TYPE_11__*, i8*, i32, ...) @dev_err(%struct.TYPE_11__* %103, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %101, %89
  %108 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %109 = call i32 @wm831x_rtc_add_randomness(%struct.wm831x* %108)
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %107, %87, %66, %38, %23
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.wm831x* @dev_get_drvdata(i32) #1

declare dso_local i32 @wm831x_irq(%struct.wm831x*, i32) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local %struct.wm831x_rtc* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.wm831x_rtc*) #1

declare dso_local i32 @wm831x_reg_read(%struct.wm831x*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, i32, ...) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_10__* @devm_rtc_allocate_device(%struct.TYPE_11__*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_10__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_10__*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_10__*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_11__*, i32, i32*, i32, i32, i8*, %struct.wm831x_rtc*) #1

declare dso_local i32 @wm831x_rtc_add_randomness(%struct.wm831x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
