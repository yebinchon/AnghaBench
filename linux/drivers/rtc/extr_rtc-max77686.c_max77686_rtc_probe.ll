; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max77686.c_max77686_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max77686.c_max77686_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.max77686_rtc_info = type { i32, i32, i32, i32, %struct.max77686_rtc_driver_data*, i32*, i32 }
%struct.max77686_rtc_driver_data = type { i32 }
%struct.platform_device_id = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to initialize RTC reg:%d\0A\00", align 1
@max77686_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to register RTC device: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX77686_RTCIRQ_RTCA1 = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@max77686_rtc_alarm_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"rtc-alarm1\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to request alarm IRQ: %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max77686_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77686_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.max77686_rtc_info*, align 8
  %5 = alloca %struct.platform_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.platform_device_id* @platform_get_device_id(%struct.platform_device* %7)
  store %struct.platform_device_id* %8, %struct.platform_device_id** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.max77686_rtc_info* @devm_kzalloc(i32* %10, i32 40, i32 %11)
  store %struct.max77686_rtc_info* %12, %struct.max77686_rtc_info** %4, align 8
  %13 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %4, align 8
  %14 = icmp ne %struct.max77686_rtc_info* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %126

18:                                               ; preds = %1
  %19 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %4, align 8
  %20 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %19, i32 0, i32 6
  %21 = call i32 @mutex_init(i32* %20)
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %4, align 8
  %25 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %24, i32 0, i32 5
  store i32* %23, i32** %25, align 8
  %26 = load %struct.platform_device_id*, %struct.platform_device_id** %5, align 8
  %27 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.max77686_rtc_driver_data*
  %30 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %4, align 8
  %31 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %30, i32 0, i32 4
  store %struct.max77686_rtc_driver_data* %29, %struct.max77686_rtc_driver_data** %31, align 8
  %32 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %4, align 8
  %33 = call i32 @max77686_init_rtc_regmap(%struct.max77686_rtc_info* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %18
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %126

38:                                               ; preds = %18
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %4, align 8
  %41 = call i32 @platform_set_drvdata(%struct.platform_device* %39, %struct.max77686_rtc_info* %40)
  %42 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %4, align 8
  %43 = call i32 @max77686_rtc_init_reg(%struct.max77686_rtc_info* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load i32, i32* %6, align 4
  %50 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %117

51:                                               ; preds = %38
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 @device_init_wakeup(i32* %53, i32 1)
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load %struct.platform_device_id*, %struct.platform_device_id** %5, align 8
  %58 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @THIS_MODULE, align 4
  %61 = call i32 @devm_rtc_device_register(i32* %56, i32 %59, i32* @max77686_rtc_ops, i32 %60)
  %62 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %4, align 8
  %63 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %4, align 8
  %65 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @IS_ERR(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %51
  %70 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %4, align 8
  %71 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @PTR_ERR(i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = load i32, i32* %6, align 4
  %77 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %6, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %69
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %80, %69
  br label %117

84:                                               ; preds = %51
  %85 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %4, align 8
  %86 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @MAX77686_RTCIRQ_RTCA1, align 4
  %89 = call i32 @regmap_irq_get_virq(i32 %87, i32 %88)
  %90 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %4, align 8
  %91 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %4, align 8
  %93 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp sle i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %84
  %97 = load i32, i32* @ENXIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %6, align 4
  br label %117

99:                                               ; preds = %84
  %100 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %4, align 8
  %101 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @max77686_rtc_alarm_irq, align 4
  %104 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %4, align 8
  %105 = call i32 @request_threaded_irq(i32 %102, i32* null, i32 %103, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.max77686_rtc_info* %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %99
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %4, align 8
  %112 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %110, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %113, i32 %114)
  br label %117

116:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  br label %126

117:                                              ; preds = %108, %96, %83, %46
  %118 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %4, align 8
  %119 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.max77686_rtc_info*, %struct.max77686_rtc_info** %4, align 8
  %122 = getelementptr inbounds %struct.max77686_rtc_info, %struct.max77686_rtc_info* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @regmap_del_irq_chip(i32 %120, i32 %123)
  %125 = load i32, i32* %6, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %117, %116, %36, %15
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.platform_device_id* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local %struct.max77686_rtc_info* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @max77686_init_rtc_regmap(%struct.max77686_rtc_info*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.max77686_rtc_info*) #1

declare dso_local i32 @max77686_rtc_init_reg(%struct.max77686_rtc_info*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @devm_rtc_device_register(i32*, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regmap_irq_get_virq(i32, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.max77686_rtc_info*) #1

declare dso_local i32 @regmap_del_irq_chip(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
