; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bd70528.c_bd70528_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bd70528.c_bd70528_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.bd70528_rtc = type { %struct.TYPE_9__*, %struct.rohm_regmap_dev* }
%struct.rohm_regmap_dev = type { i32 }
%struct.rtc_device = type { i32*, i32, i32 }
%struct.rtc_time = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"No MFD driver data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"bd70528-rtc-alm\00", align 1
@BD70528_REG_RTC_HOUR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to reag RTC clock\0A\00", align 1
@BD70528_MASK_RTC_HOUR_24H = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Setting 24H clock for RTC failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"RTC device creation failed\0A\00", align 1
@RTC_TIMESTAMP_BEGIN_2000 = common dso_local global i32 0, align 4
@RTC_TIMESTAMP_END_2099 = common dso_local global i32 0, align 4
@bd70528_rtc_ops = common dso_local global i32 0, align 4
@alm_hndlr = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"bd70528-rtc\00", align 1
@BD70528_REG_INT_MAIN_MASK = common dso_local global i32 0, align 4
@BD70528_INT_RTC_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to enable RTC interrupts\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bd70528_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd70528_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.bd70528_rtc*, align 8
  %5 = alloca %struct.rohm_regmap_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtc_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtc_time, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.rohm_regmap_dev* @dev_get_drvdata(i32 %14)
  store %struct.rohm_regmap_dev* %15, %struct.rohm_regmap_dev** %5, align 8
  %16 = load %struct.rohm_regmap_dev*, %struct.rohm_regmap_dev** %5, align 8
  %17 = icmp ne %struct.rohm_regmap_dev* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 @dev_err(%struct.TYPE_9__* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %143

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.bd70528_rtc* @devm_kzalloc(%struct.TYPE_9__* %26, i32 16, i32 %27)
  store %struct.bd70528_rtc* %28, %struct.bd70528_rtc** %4, align 8
  %29 = load %struct.bd70528_rtc*, %struct.bd70528_rtc** %4, align 8
  %30 = icmp ne %struct.bd70528_rtc* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %143

34:                                               ; preds = %24
  %35 = load %struct.rohm_regmap_dev*, %struct.rohm_regmap_dev** %5, align 8
  %36 = load %struct.bd70528_rtc*, %struct.bd70528_rtc** %4, align 8
  %37 = getelementptr inbounds %struct.bd70528_rtc, %struct.bd70528_rtc* %36, i32 0, i32 1
  store %struct.rohm_regmap_dev* %35, %struct.rohm_regmap_dev** %37, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load %struct.bd70528_rtc*, %struct.bd70528_rtc** %4, align 8
  %41 = getelementptr inbounds %struct.bd70528_rtc, %struct.bd70528_rtc* %40, i32 0, i32 0
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %41, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = call i32 @platform_get_irq_byname(%struct.platform_device* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %2, align 4
  br label %143

48:                                               ; preds = %34
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = load %struct.bd70528_rtc*, %struct.bd70528_rtc** %4, align 8
  %51 = call i32 @platform_set_drvdata(%struct.platform_device* %49, %struct.bd70528_rtc* %50)
  %52 = load %struct.rohm_regmap_dev*, %struct.rohm_regmap_dev** %5, align 8
  %53 = getelementptr inbounds %struct.rohm_regmap_dev, %struct.rohm_regmap_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @BD70528_REG_RTC_HOUR, align 4
  %56 = call i32 @regmap_read(i32 %54, i32 %55, i32* %9)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %48
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call i32 @dev_err(%struct.TYPE_9__* %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %143

64:                                               ; preds = %48
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @BD70528_MASK_RTC_HOUR_24H, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %88, label %69

69:                                               ; preds = %64
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = call i32 @bd70528_get_time(%struct.TYPE_9__* %71, %struct.rtc_time* %10)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %69
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = call i32 @bd70528_set_time(%struct.TYPE_9__* %77, %struct.rtc_time* %10)
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %75, %69
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = call i32 @dev_err(%struct.TYPE_9__* %84, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %2, align 4
  br label %143

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %87, %64
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i32 @device_set_wakeup_capable(%struct.TYPE_9__* %90, i32 1)
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i32 @device_wakeup_enable(%struct.TYPE_9__* %93)
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call %struct.rtc_device* @devm_rtc_allocate_device(%struct.TYPE_9__* %96)
  store %struct.rtc_device* %97, %struct.rtc_device** %7, align 8
  %98 = load %struct.rtc_device*, %struct.rtc_device** %7, align 8
  %99 = call i64 @IS_ERR(%struct.rtc_device* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %88
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = call i32 @dev_err(%struct.TYPE_9__* %103, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %105 = load %struct.rtc_device*, %struct.rtc_device** %7, align 8
  %106 = call i32 @PTR_ERR(%struct.rtc_device* %105)
  store i32 %106, i32* %2, align 4
  br label %143

107:                                              ; preds = %88
  %108 = load i32, i32* @RTC_TIMESTAMP_BEGIN_2000, align 4
  %109 = load %struct.rtc_device*, %struct.rtc_device** %7, align 8
  %110 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @RTC_TIMESTAMP_END_2099, align 4
  %112 = load %struct.rtc_device*, %struct.rtc_device** %7, align 8
  %113 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 8
  %114 = load %struct.rtc_device*, %struct.rtc_device** %7, align 8
  %115 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %114, i32 0, i32 0
  store i32* @bd70528_rtc_ops, i32** %115, align 8
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @IRQF_ONESHOT, align 4
  %120 = load %struct.rtc_device*, %struct.rtc_device** %7, align 8
  %121 = call i32 @devm_request_threaded_irq(%struct.TYPE_9__* %117, i32 %118, i32* null, i32* @alm_hndlr, i32 %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), %struct.rtc_device* %120)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %107
  %125 = load i32, i32* %6, align 4
  store i32 %125, i32* %2, align 4
  br label %143

126:                                              ; preds = %107
  %127 = load %struct.rohm_regmap_dev*, %struct.rohm_regmap_dev** %5, align 8
  %128 = getelementptr inbounds %struct.rohm_regmap_dev, %struct.rohm_regmap_dev* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @BD70528_REG_INT_MAIN_MASK, align 4
  %131 = load i32, i32* @BD70528_INT_RTC_MASK, align 4
  %132 = call i32 @regmap_update_bits(i32 %129, i32 %130, i32 %131, i32 0)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %126
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = call i32 @dev_err(%struct.TYPE_9__* %137, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %2, align 4
  br label %143

140:                                              ; preds = %126
  %141 = load %struct.rtc_device*, %struct.rtc_device** %7, align 8
  %142 = call i32 @rtc_register_device(%struct.rtc_device* %141)
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %140, %135, %124, %101, %82, %59, %46, %31, %18
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local %struct.rohm_regmap_dev* @dev_get_drvdata(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local %struct.bd70528_rtc* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.bd70528_rtc*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @bd70528_get_time(%struct.TYPE_9__*, %struct.rtc_time*) #1

declare dso_local i32 @bd70528_set_time(%struct.TYPE_9__*, %struct.rtc_time*) #1

declare dso_local i32 @device_set_wakeup_capable(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @device_wakeup_enable(%struct.TYPE_9__*) #1

declare dso_local %struct.rtc_device* @devm_rtc_allocate_device(%struct.TYPE_9__*) #1

declare dso_local i64 @IS_ERR(%struct.rtc_device*) #1

declare dso_local i32 @PTR_ERR(%struct.rtc_device*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_9__*, i32, i32*, i32*, i32, i8*, %struct.rtc_device*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @rtc_register_device(%struct.rtc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
