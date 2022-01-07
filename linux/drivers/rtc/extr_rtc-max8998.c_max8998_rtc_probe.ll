; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8998.c_max8998_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max8998.c_max8998_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.max8998_dev = type { i32, i32, %struct.max8998_platform_data* }
%struct.max8998_platform_data = type { i64 }
%struct.max8998_rtc_info = type { i32, i32, i32, i32, %struct.max8998_dev*, %struct.TYPE_9__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"max8998-rtc\00", align 1
@max8998_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to register RTC device: %d\0A\00", align 1
@MAX8998_IRQ_ALARM0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to map alarm IRQ\0A\00", align 1
@max8998_rtc_alarm_irq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"rtc-alarm0\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to request alarm IRQ: %d: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"RTC CHIP NAME: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"LP3974 with RTC REGERR option. RTC updates will be extremely slow.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max8998_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8998_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.max8998_dev*, align 8
  %5 = alloca %struct.max8998_platform_data*, align 8
  %6 = alloca %struct.max8998_rtc_info*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.max8998_dev* @dev_get_drvdata(i32 %11)
  store %struct.max8998_dev* %12, %struct.max8998_dev** %4, align 8
  %13 = load %struct.max8998_dev*, %struct.max8998_dev** %4, align 8
  %14 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %13, i32 0, i32 2
  %15 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %14, align 8
  store %struct.max8998_platform_data* %15, %struct.max8998_platform_data** %5, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.max8998_rtc_info* @devm_kzalloc(%struct.TYPE_9__* %17, i32 32, i32 %18)
  store %struct.max8998_rtc_info* %19, %struct.max8998_rtc_info** %6, align 8
  %20 = load %struct.max8998_rtc_info*, %struct.max8998_rtc_info** %6, align 8
  %21 = icmp ne %struct.max8998_rtc_info* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %127

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.max8998_rtc_info*, %struct.max8998_rtc_info** %6, align 8
  %29 = getelementptr inbounds %struct.max8998_rtc_info, %struct.max8998_rtc_info* %28, i32 0, i32 5
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %29, align 8
  %30 = load %struct.max8998_dev*, %struct.max8998_dev** %4, align 8
  %31 = load %struct.max8998_rtc_info*, %struct.max8998_rtc_info** %6, align 8
  %32 = getelementptr inbounds %struct.max8998_rtc_info, %struct.max8998_rtc_info* %31, i32 0, i32 4
  store %struct.max8998_dev* %30, %struct.max8998_dev** %32, align 8
  %33 = load %struct.max8998_dev*, %struct.max8998_dev** %4, align 8
  %34 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.max8998_rtc_info*, %struct.max8998_rtc_info** %6, align 8
  %37 = getelementptr inbounds %struct.max8998_rtc_info, %struct.max8998_rtc_info* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = load %struct.max8998_rtc_info*, %struct.max8998_rtc_info** %6, align 8
  %40 = call i32 @platform_set_drvdata(%struct.platform_device* %38, %struct.max8998_rtc_info* %39)
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load i32, i32* @THIS_MODULE, align 4
  %44 = call i32 @devm_rtc_device_register(%struct.TYPE_9__* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* @max8998_rtc_ops, i32 %43)
  %45 = load %struct.max8998_rtc_info*, %struct.max8998_rtc_info** %6, align 8
  %46 = getelementptr inbounds %struct.max8998_rtc_info, %struct.max8998_rtc_info* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.max8998_rtc_info*, %struct.max8998_rtc_info** %6, align 8
  %48 = getelementptr inbounds %struct.max8998_rtc_info, %struct.max8998_rtc_info* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @IS_ERR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %25
  %53 = load %struct.max8998_rtc_info*, %struct.max8998_rtc_info** %6, align 8
  %54 = getelementptr inbounds %struct.max8998_rtc_info, %struct.max8998_rtc_info* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @PTR_ERR(i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load i32, i32* %7, align 4
  %60 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @dev_err(%struct.TYPE_9__* %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %127

62:                                               ; preds = %25
  %63 = load %struct.max8998_dev*, %struct.max8998_dev** %4, align 8
  %64 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  br label %104

68:                                               ; preds = %62
  %69 = load %struct.max8998_dev*, %struct.max8998_dev** %4, align 8
  %70 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @MAX8998_IRQ_ALARM0, align 4
  %73 = call i32 @irq_create_mapping(i32 %71, i32 %72)
  %74 = load %struct.max8998_rtc_info*, %struct.max8998_rtc_info** %6, align 8
  %75 = getelementptr inbounds %struct.max8998_rtc_info, %struct.max8998_rtc_info* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.max8998_rtc_info*, %struct.max8998_rtc_info** %6, align 8
  %77 = getelementptr inbounds %struct.max8998_rtc_info, %struct.max8998_rtc_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %68
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = call i32 @dev_warn(%struct.TYPE_9__* %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %104

84:                                               ; preds = %68
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = load %struct.max8998_rtc_info*, %struct.max8998_rtc_info** %6, align 8
  %88 = getelementptr inbounds %struct.max8998_rtc_info, %struct.max8998_rtc_info* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @max8998_rtc_alarm_irq, align 4
  %91 = load %struct.max8998_rtc_info*, %struct.max8998_rtc_info** %6, align 8
  %92 = call i32 @devm_request_threaded_irq(%struct.TYPE_9__* %86, i32 %89, i32* null, i32 %90, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct.max8998_rtc_info* %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %84
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = load %struct.max8998_rtc_info*, %struct.max8998_rtc_info** %6, align 8
  %99 = getelementptr inbounds %struct.max8998_rtc_info, %struct.max8998_rtc_info* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @dev_err(%struct.TYPE_9__* %97, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %95, %84
  br label %104

104:                                              ; preds = %103, %80, %67
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 1
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @dev_info(%struct.TYPE_9__* %106, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %111)
  %113 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %5, align 8
  %114 = icmp ne %struct.max8998_platform_data* %113, null
  br i1 %114, label %115, label %126

115:                                              ; preds = %104
  %116 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %5, align 8
  %117 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load %struct.max8998_rtc_info*, %struct.max8998_rtc_info** %6, align 8
  %122 = getelementptr inbounds %struct.max8998_rtc_info, %struct.max8998_rtc_info* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = call i32 @dev_warn(%struct.TYPE_9__* %124, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0))
  br label %126

126:                                              ; preds = %120, %115, %104
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %126, %52, %22
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.max8998_dev* @dev_get_drvdata(i32) #1

declare dso_local %struct.max8998_rtc_info* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.max8998_rtc_info*) #1

declare dso_local i32 @devm_rtc_device_register(%struct.TYPE_9__*, i8*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, i32, ...) #1

declare dso_local i32 @irq_create_mapping(i32, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_9__*, i32, i32*, i32, i32, i8*, %struct.max8998_rtc_info*) #1

declare dso_local i32 @dev_info(%struct.TYPE_9__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
