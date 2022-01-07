; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_max77620_thermal.c_max77620_thermal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_max77620_thermal.c_max77620_thermal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.max77620_therm_info = type { i64, i64, i32, i32, %struct.TYPE_7__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Alarm irq number not available\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to get parent regmap\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@max77620_thermal_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to register thermal zone: %d\0A\00", align 1
@max77620_thermal_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to request irq1: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to request irq2: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max77620_thermal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77620_thermal_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.max77620_therm_info*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.max77620_therm_info* @devm_kzalloc(%struct.TYPE_7__* %7, i32 32, i32 %8)
  store %struct.max77620_therm_info* %9, %struct.max77620_therm_info** %4, align 8
  %10 = load %struct.max77620_therm_info*, %struct.max77620_therm_info** %4, align 8
  %11 = icmp ne %struct.max77620_therm_info* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %142

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = call i8* @platform_get_irq(%struct.platform_device* %16, i32 0)
  %18 = ptrtoint i8* %17 to i64
  %19 = load %struct.max77620_therm_info*, %struct.max77620_therm_info** %4, align 8
  %20 = getelementptr inbounds %struct.max77620_therm_info, %struct.max77620_therm_info* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = call i8* @platform_get_irq(%struct.platform_device* %21, i32 1)
  %23 = ptrtoint i8* %22 to i64
  %24 = load %struct.max77620_therm_info*, %struct.max77620_therm_info** %4, align 8
  %25 = getelementptr inbounds %struct.max77620_therm_info, %struct.max77620_therm_info* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load %struct.max77620_therm_info*, %struct.max77620_therm_info** %4, align 8
  %27 = getelementptr inbounds %struct.max77620_therm_info, %struct.max77620_therm_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %15
  %31 = load %struct.max77620_therm_info*, %struct.max77620_therm_info** %4, align 8
  %32 = getelementptr inbounds %struct.max77620_therm_info, %struct.max77620_therm_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30, %15
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %142

41:                                               ; preds = %30
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.max77620_therm_info*, %struct.max77620_therm_info** %4, align 8
  %45 = getelementptr inbounds %struct.max77620_therm_info, %struct.max77620_therm_info* %44, i32 0, i32 4
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %45, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_get_regmap(i32 %49, i32* null)
  %51 = load %struct.max77620_therm_info*, %struct.max77620_therm_info** %4, align 8
  %52 = getelementptr inbounds %struct.max77620_therm_info, %struct.max77620_therm_info* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.max77620_therm_info*, %struct.max77620_therm_info** %4, align 8
  %54 = getelementptr inbounds %struct.max77620_therm_info, %struct.max77620_therm_info* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %41
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %142

63:                                               ; preds = %41
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @device_set_of_node_from_dev(%struct.TYPE_7__* %65, i32 %69)
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load %struct.max77620_therm_info*, %struct.max77620_therm_info** %4, align 8
  %74 = call i32 @devm_thermal_zone_of_sensor_register(%struct.TYPE_7__* %72, i32 0, %struct.max77620_therm_info* %73, i32* @max77620_thermal_ops)
  %75 = load %struct.max77620_therm_info*, %struct.max77620_therm_info** %4, align 8
  %76 = getelementptr inbounds %struct.max77620_therm_info, %struct.max77620_therm_info* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.max77620_therm_info*, %struct.max77620_therm_info** %4, align 8
  %78 = getelementptr inbounds %struct.max77620_therm_info, %struct.max77620_therm_info* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @IS_ERR(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %63
  %83 = load %struct.max77620_therm_info*, %struct.max77620_therm_info** %4, align 8
  %84 = getelementptr inbounds %struct.max77620_therm_info, %struct.max77620_therm_info* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @PTR_ERR(i32 %85)
  store i32 %86, i32* %5, align 4
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = load i32, i32* %5, align 4
  %90 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %88, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %5, align 4
  store i32 %91, i32* %2, align 4
  br label %142

92:                                               ; preds = %63
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = load %struct.max77620_therm_info*, %struct.max77620_therm_info** %4, align 8
  %96 = getelementptr inbounds %struct.max77620_therm_info, %struct.max77620_therm_info* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* @max77620_thermal_irq, align 4
  %99 = load i32, i32* @IRQF_ONESHOT, align 4
  %100 = load i32, i32* @IRQF_SHARED, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = call i32 @dev_name(%struct.TYPE_7__* %103)
  %105 = load %struct.max77620_therm_info*, %struct.max77620_therm_info** %4, align 8
  %106 = call i32 @devm_request_threaded_irq(%struct.TYPE_7__* %94, i64 %97, i32* null, i32 %98, i32 %101, i32 %104, %struct.max77620_therm_info* %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %92
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = load i32, i32* %5, align 4
  %113 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %5, align 4
  store i32 %114, i32* %2, align 4
  br label %142

115:                                              ; preds = %92
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = load %struct.max77620_therm_info*, %struct.max77620_therm_info** %4, align 8
  %119 = getelementptr inbounds %struct.max77620_therm_info, %struct.max77620_therm_info* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* @max77620_thermal_irq, align 4
  %122 = load i32, i32* @IRQF_ONESHOT, align 4
  %123 = load i32, i32* @IRQF_SHARED, align 4
  %124 = or i32 %122, %123
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = call i32 @dev_name(%struct.TYPE_7__* %126)
  %128 = load %struct.max77620_therm_info*, %struct.max77620_therm_info** %4, align 8
  %129 = call i32 @devm_request_threaded_irq(%struct.TYPE_7__* %117, i64 %120, i32* null, i32 %121, i32 %124, i32 %127, %struct.max77620_therm_info* %128)
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %115
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = load i32, i32* %5, align 4
  %136 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %134, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* %5, align 4
  store i32 %137, i32* %2, align 4
  br label %142

138:                                              ; preds = %115
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = load %struct.max77620_therm_info*, %struct.max77620_therm_info** %4, align 8
  %141 = call i32 @platform_set_drvdata(%struct.platform_device* %139, %struct.max77620_therm_info* %140)
  store i32 0, i32* %2, align 4
  br label %142

142:                                              ; preds = %138, %132, %109, %82, %57, %35, %12
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local %struct.max77620_therm_info* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i8* @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @device_set_of_node_from_dev(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @devm_thermal_zone_of_sensor_register(%struct.TYPE_7__*, i32, %struct.max77620_therm_info*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_7__*, i64, i32*, i32, i32, i32, %struct.max77620_therm_info*) #1

declare dso_local i32 @dev_name(%struct.TYPE_7__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.max77620_therm_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
