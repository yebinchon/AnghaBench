; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-wm8350.c_wm8350_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-wm8350.c_wm8350_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.wm8350 = type { i32, %struct.wm8350_rtc }
%struct.wm8350_rtc = type { i32 }

@WM8350_RTC_TIME_CONTROL = common dso_local global i32 0, align 4
@WM8350_RTC_BCD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"RTC BCD mode not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM8350_RTC_12HR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"RTC 12 hour mode not supported\0A\00", align 1
@WM8350_POWER_MGMT_5 = common dso_local global i32 0, align 4
@WM8350_RTC_TICK_ENA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Starting RTC\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to enable RTC: %d\0A\00", align 1
@WM8350_RTC_STS = common dso_local global i32 0, align 4
@WM8350_RTC_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"failed to start: %d\0A\00", align 1
@WM8350_SET_TIME_RETRIES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"failed to start: timeout\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"wm8350\00", align 1
@wm8350_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"failed to register RTC: %d\0A\00", align 1
@WM8350_IRQ_RTC_SEC = common dso_local global i32 0, align 4
@wm8350_rtc_update_handler = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"RTC Seconds\00", align 1
@WM8350_IRQ_RTC_ALM = common dso_local global i32 0, align 4
@wm8350_rtc_alarm_handler = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"RTC Alarm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm8350_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.wm8350*, align 8
  %5 = alloca %struct.wm8350_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = call %struct.wm8350* @platform_get_drvdata(%struct.platform_device* %10)
  store %struct.wm8350* %11, %struct.wm8350** %4, align 8
  %12 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %13 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %12, i32 0, i32 1
  store %struct.wm8350_rtc* %13, %struct.wm8350_rtc** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %15 = load i32, i32* @WM8350_RTC_TIME_CONTROL, align 4
  %16 = call i32 @wm8350_reg_read(%struct.wm8350* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @WM8350_RTC_BCD, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call i32 (i32*, i8*, ...) @dev_err(i32* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %152

27:                                               ; preds = %1
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @WM8350_RTC_12HR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 (i32*, i8*, ...) @dev_err(i32* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %152

38:                                               ; preds = %27
  %39 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %40 = load i32, i32* @WM8350_POWER_MGMT_5, align 4
  %41 = call i32 @wm8350_reg_read(%struct.wm8350* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @WM8350_RTC_TICK_ENA, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %68, label %46

46:                                               ; preds = %38
  %47 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %48 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_info(i32 %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %52 = call i32 @wm8350_reg_unlock(%struct.wm8350* %51)
  %53 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %54 = load i32, i32* @WM8350_POWER_MGMT_5, align 4
  %55 = load i32, i32* @WM8350_RTC_TICK_ENA, align 4
  %56 = call i32 @wm8350_set_bits(%struct.wm8350* %53, i32 %54, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %46
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load i32, i32* %6, align 4
  %63 = call i32 (i32*, i8*, ...) @dev_err(i32* %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %152

65:                                               ; preds = %46
  %66 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %67 = call i32 @wm8350_reg_lock(%struct.wm8350* %66)
  br label %68

68:                                               ; preds = %65, %38
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @WM8350_RTC_STS, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %113

73:                                               ; preds = %68
  %74 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %75 = load i32, i32* @WM8350_RTC_TIME_CONTROL, align 4
  %76 = load i32, i32* @WM8350_RTC_SET, align 4
  %77 = call i32 @wm8350_clear_bits(%struct.wm8350* %74, i32 %75, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = load i32, i32* %6, align 4
  %84 = call i32 (i32*, i8*, ...) @dev_err(i32* %82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %152

86:                                               ; preds = %73
  %87 = load i32, i32* @WM8350_SET_TIME_RETRIES, align 4
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %101, %86
  %89 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %90 = load i32, i32* @WM8350_RTC_TIME_CONTROL, align 4
  %91 = call i32 @wm8350_reg_read(%struct.wm8350* %89, i32 %90)
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @WM8350_RTC_STS, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br label %101

101:                                              ; preds = %97, %92
  %102 = phi i1 [ false, %92 ], [ %100, %97 ]
  br i1 %102, label %88, label %103

103:                                              ; preds = %101
  %104 = load i32, i32* %9, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = call i32 (i32*, i8*, ...) @dev_err(i32* %108, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %110 = load i32, i32* @ENODEV, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %152

112:                                              ; preds = %103
  br label %113

113:                                              ; preds = %112, %68
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = call i32 @device_init_wakeup(i32* %115, i32 1)
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = load i32, i32* @THIS_MODULE, align 4
  %120 = call i32 @devm_rtc_device_register(i32* %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32* @wm8350_rtc_ops, i32 %119)
  %121 = load %struct.wm8350_rtc*, %struct.wm8350_rtc** %5, align 8
  %122 = getelementptr inbounds %struct.wm8350_rtc, %struct.wm8350_rtc* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  %123 = load %struct.wm8350_rtc*, %struct.wm8350_rtc** %5, align 8
  %124 = getelementptr inbounds %struct.wm8350_rtc, %struct.wm8350_rtc* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @IS_ERR(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %113
  %129 = load %struct.wm8350_rtc*, %struct.wm8350_rtc** %5, align 8
  %130 = getelementptr inbounds %struct.wm8350_rtc, %struct.wm8350_rtc* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @PTR_ERR(i32 %131)
  store i32 %132, i32* %6, align 4
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = load i32, i32* %6, align 4
  %136 = call i32 (i32*, i8*, ...) @dev_err(i32* %134, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* %6, align 4
  store i32 %137, i32* %2, align 4
  br label %152

138:                                              ; preds = %113
  %139 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %140 = load i32, i32* @WM8350_IRQ_RTC_SEC, align 4
  %141 = load i32, i32* @wm8350_rtc_update_handler, align 4
  %142 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %143 = call i32 @wm8350_register_irq(%struct.wm8350* %139, i32 %140, i32 %141, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), %struct.wm8350* %142)
  %144 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %145 = load i32, i32* @WM8350_IRQ_RTC_SEC, align 4
  %146 = call i32 @wm8350_mask_irq(%struct.wm8350* %144, i32 %145)
  %147 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %148 = load i32, i32* @WM8350_IRQ_RTC_ALM, align 4
  %149 = load i32, i32* @wm8350_rtc_alarm_handler, align 4
  %150 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %151 = call i32 @wm8350_register_irq(%struct.wm8350* %147, i32 %148, i32 %149, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), %struct.wm8350* %150)
  store i32 0, i32* %2, align 4
  br label %152

152:                                              ; preds = %138, %128, %106, %80, %59, %32, %21
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local %struct.wm8350* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @wm8350_reg_read(%struct.wm8350*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @wm8350_reg_unlock(%struct.wm8350*) #1

declare dso_local i32 @wm8350_set_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @wm8350_reg_lock(%struct.wm8350*) #1

declare dso_local i32 @wm8350_clear_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @devm_rtc_device_register(i32*, i8*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @wm8350_register_irq(%struct.wm8350*, i32, i32, i32, i8*, %struct.wm8350*) #1

declare dso_local i32 @wm8350_mask_irq(%struct.wm8350*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
