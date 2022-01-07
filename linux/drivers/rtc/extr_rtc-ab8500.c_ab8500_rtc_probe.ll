; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab8500.c_ab8500_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab8500.c_ab8500_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.platform_device_id = type { i64 }
%struct.rtc_device = type { i32, i64, i32, i32, %struct.rtc_class_ops* }
%struct.rtc_class_ops = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"ALARM\00", align 1
@AB8500_RTC = common dso_local global i32 0, align 4
@AB8500_RTC_STAT_REG = common dso_local global i32 0, align 4
@RTC_STATUS_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"RTC supply failure\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@rtc_alarm_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"ab8500-rtc\00", align 1
@RTC_TIMESTAMP_BEGIN_2000 = common dso_local global i32 0, align 4
@ab8500_rtc_sysfs_files = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ab8500_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.platform_device_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtc_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = call %struct.platform_device_id* @platform_get_device_id(%struct.platform_device* %9)
  store %struct.platform_device_id* %10, %struct.platform_device_id** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = call i32 @platform_get_irq_byname(%struct.platform_device* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %2, align 4
  br label %108

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32, i32* @AB8500_RTC, align 4
  %21 = load i32, i32* @AB8500_RTC_STAT_REG, align 4
  %22 = load i32, i32* @RTC_STATUS_DATA, align 4
  %23 = load i32, i32* @RTC_STATUS_DATA, align 4
  %24 = call i32 @abx500_mask_and_set_register_interruptible(i32* %19, i32 %20, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %108

29:                                               ; preds = %17
  %30 = call i32 @usleep_range(i32 1000, i32 5000)
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load i32, i32* @AB8500_RTC, align 4
  %34 = load i32, i32* @AB8500_RTC_STAT_REG, align 4
  %35 = call i32 @abx500_get_register_interruptible(i32* %32, i32 %33, i32 %34, i32* %7)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %108

40:                                               ; preds = %29
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @RTC_STATUS_DATA, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %108

51:                                               ; preds = %40
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 @device_init_wakeup(i32* %53, i32 1)
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call %struct.rtc_device* @devm_rtc_allocate_device(i32* %56)
  store %struct.rtc_device* %57, %struct.rtc_device** %6, align 8
  %58 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %59 = call i64 @IS_ERR(%struct.rtc_device* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %63 = call i32 @PTR_ERR(%struct.rtc_device* %62)
  store i32 %63, i32* %2, align 4
  br label %108

64:                                               ; preds = %51
  %65 = load %struct.platform_device_id*, %struct.platform_device_id** %4, align 8
  %66 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.rtc_class_ops*
  %69 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %70 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %69, i32 0, i32 4
  store %struct.rtc_class_ops* %68, %struct.rtc_class_ops** %70, align 8
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @rtc_alarm_handler, align 4
  %75 = load i32, i32* @IRQF_ONESHOT, align 4
  %76 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %77 = call i32 @devm_request_threaded_irq(i32* %72, i32 %73, i32* null, i32 %74, i32 %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.rtc_device* %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %64
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %108

82:                                               ; preds = %64
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @dev_pm_set_wake_irq(i32* %84, i32 %85)
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %89 = call i32 @platform_set_drvdata(%struct.platform_device* %87, %struct.rtc_device* %88)
  %90 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %91 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  %92 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %93 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %92, i32 0, i32 1
  store i64 1006632959, i64* %93, align 8
  %94 = load i32, i32* @RTC_TIMESTAMP_BEGIN_2000, align 4
  %95 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %96 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  %97 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %98 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %97, i32 0, i32 2
  store i32 1, i32* %98, align 8
  %99 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %100 = call i32 @rtc_add_group(%struct.rtc_device* %99, i32* @ab8500_rtc_sysfs_files)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %82
  %104 = load i32, i32* %5, align 4
  store i32 %104, i32* %2, align 4
  br label %108

105:                                              ; preds = %82
  %106 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %107 = call i32 @rtc_register_device(%struct.rtc_device* %106)
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %105, %103, %80, %61, %45, %38, %27, %15
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.platform_device_id* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @abx500_mask_and_set_register_interruptible(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @abx500_get_register_interruptible(i32*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local %struct.rtc_device* @devm_rtc_allocate_device(i32*) #1

declare dso_local i64 @IS_ERR(%struct.rtc_device*) #1

declare dso_local i32 @PTR_ERR(%struct.rtc_device*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i8*, %struct.rtc_device*) #1

declare dso_local i32 @dev_pm_set_wake_irq(i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rtc_device*) #1

declare dso_local i32 @rtc_add_group(%struct.rtc_device*, i32*) #1

declare dso_local i32 @rtc_register_device(%struct.rtc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
