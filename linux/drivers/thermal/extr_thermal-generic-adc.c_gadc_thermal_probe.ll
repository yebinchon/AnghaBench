; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal-generic-adc.c_gadc_thermal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal-generic-adc.c_gadc_thermal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.gadc_thermal_info = type { i32, i32, %struct.TYPE_6__* }

@.str = private unnamed_addr constant [25 x i8] c"Only DT based supported\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"sensor-channel\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"IIO channel not found: %d\0A\00", align 1
@gadc_thermal_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Thermal zone sensor register failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gadc_thermal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gadc_thermal_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.gadc_thermal_info*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %87

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.gadc_thermal_info* @devm_kzalloc(%struct.TYPE_6__* %19, i32 16, i32 %20)
  store %struct.gadc_thermal_info* %21, %struct.gadc_thermal_info** %4, align 8
  %22 = load %struct.gadc_thermal_info*, %struct.gadc_thermal_info** %4, align 8
  %23 = icmp ne %struct.gadc_thermal_info* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %87

27:                                               ; preds = %17
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load %struct.gadc_thermal_info*, %struct.gadc_thermal_info** %4, align 8
  %31 = call i32 @gadc_thermal_read_linear_lookup_table(%struct.TYPE_6__* %29, %struct.gadc_thermal_info* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %87

36:                                               ; preds = %27
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load %struct.gadc_thermal_info*, %struct.gadc_thermal_info** %4, align 8
  %40 = getelementptr inbounds %struct.gadc_thermal_info, %struct.gadc_thermal_info* %39, i32 0, i32 2
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %40, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = load %struct.gadc_thermal_info*, %struct.gadc_thermal_info** %4, align 8
  %43 = call i32 @platform_set_drvdata(%struct.platform_device* %41, %struct.gadc_thermal_info* %42)
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i32 @devm_iio_channel_get(%struct.TYPE_6__* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.gadc_thermal_info*, %struct.gadc_thermal_info** %4, align 8
  %48 = getelementptr inbounds %struct.gadc_thermal_info, %struct.gadc_thermal_info* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.gadc_thermal_info*, %struct.gadc_thermal_info** %4, align 8
  %50 = getelementptr inbounds %struct.gadc_thermal_info, %struct.gadc_thermal_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @IS_ERR(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %36
  %55 = load %struct.gadc_thermal_info*, %struct.gadc_thermal_info** %4, align 8
  %56 = getelementptr inbounds %struct.gadc_thermal_info, %struct.gadc_thermal_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @PTR_ERR(i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load i32, i32* %5, align 4
  %62 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %87

64:                                               ; preds = %36
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load %struct.gadc_thermal_info*, %struct.gadc_thermal_info** %4, align 8
  %68 = call i32 @devm_thermal_zone_of_sensor_register(%struct.TYPE_6__* %66, i32 0, %struct.gadc_thermal_info* %67, i32* @gadc_thermal_ops)
  %69 = load %struct.gadc_thermal_info*, %struct.gadc_thermal_info** %4, align 8
  %70 = getelementptr inbounds %struct.gadc_thermal_info, %struct.gadc_thermal_info* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.gadc_thermal_info*, %struct.gadc_thermal_info** %4, align 8
  %72 = getelementptr inbounds %struct.gadc_thermal_info, %struct.gadc_thermal_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @IS_ERR(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %64
  %77 = load %struct.gadc_thermal_info*, %struct.gadc_thermal_info** %4, align 8
  %78 = getelementptr inbounds %struct.gadc_thermal_info, %struct.gadc_thermal_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @PTR_ERR(i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = load i32, i32* %5, align 4
  %84 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %82, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %87

86:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %76, %54, %34, %24, %11
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local %struct.gadc_thermal_info* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @gadc_thermal_read_linear_lookup_table(%struct.TYPE_6__*, %struct.gadc_thermal_info*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.gadc_thermal_info*) #1

declare dso_local i32 @devm_iio_channel_get(%struct.TYPE_6__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_thermal_zone_of_sensor_register(%struct.TYPE_6__*, i32, %struct.gadc_thermal_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
