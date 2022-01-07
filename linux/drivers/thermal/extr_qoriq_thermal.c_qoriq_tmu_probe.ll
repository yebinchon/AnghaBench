; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_qoriq_thermal.c_qoriq_tmu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_qoriq_thermal.c_qoriq_tmu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.qoriq_tmu_data = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"little-endian\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to get memory region\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to enable clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to register sensors\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qoriq_tmu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qoriq_tmu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qoriq_tmu_data*, align 8
  %6 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %6, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.qoriq_tmu_data* @devm_kzalloc(%struct.TYPE_4__* %12, i32 12, i32 %13)
  store %struct.qoriq_tmu_data* %14, %struct.qoriq_tmu_data** %5, align 8
  %15 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %5, align 8
  %16 = icmp ne %struct.qoriq_tmu_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %101

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %5, align 8
  %23 = call i32 @platform_set_drvdata(%struct.platform_device* %21, %struct.qoriq_tmu_data* %22)
  %24 = load %struct.device_node*, %struct.device_node** %6, align 8
  %25 = call i32 @of_property_read_bool(%struct.device_node* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %5, align 8
  %27 = getelementptr inbounds %struct.qoriq_tmu_data, %struct.qoriq_tmu_data* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %28, i32 0)
  %30 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %5, align 8
  %31 = getelementptr inbounds %struct.qoriq_tmu_data, %struct.qoriq_tmu_data* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %5, align 8
  %33 = getelementptr inbounds %struct.qoriq_tmu_data, %struct.qoriq_tmu_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @IS_ERR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %20
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 @dev_err(%struct.TYPE_4__* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %5, align 8
  %42 = getelementptr inbounds %struct.qoriq_tmu_data, %struct.qoriq_tmu_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %2, align 4
  br label %101

45:                                               ; preds = %20
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 @devm_clk_get_optional(%struct.TYPE_4__* %47, i32* null)
  %49 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %5, align 8
  %50 = getelementptr inbounds %struct.qoriq_tmu_data, %struct.qoriq_tmu_data* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %5, align 8
  %52 = getelementptr inbounds %struct.qoriq_tmu_data, %struct.qoriq_tmu_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @IS_ERR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %45
  %57 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %5, align 8
  %58 = getelementptr inbounds %struct.qoriq_tmu_data, %struct.qoriq_tmu_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @PTR_ERR(i32 %59)
  store i32 %60, i32* %2, align 4
  br label %101

61:                                               ; preds = %45
  %62 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %5, align 8
  %63 = getelementptr inbounds %struct.qoriq_tmu_data, %struct.qoriq_tmu_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @clk_prepare_enable(i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i32 @dev_err(%struct.TYPE_4__* %70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %101

73:                                               ; preds = %61
  %74 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %5, align 8
  %75 = call i32 @qoriq_tmu_init_device(%struct.qoriq_tmu_data* %74)
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = call i32 @qoriq_tmu_calibration(%struct.platform_device* %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %93

81:                                               ; preds = %73
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = call i32 @qoriq_tmu_register_tmu_zone(%struct.platform_device* %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = call i32 @dev_err(%struct.TYPE_4__* %88, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %90 = load i32, i32* @ENODEV, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %93

92:                                               ; preds = %81
  store i32 0, i32* %2, align 4
  br label %101

93:                                               ; preds = %86, %80
  %94 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %5, align 8
  %95 = getelementptr inbounds %struct.qoriq_tmu_data, %struct.qoriq_tmu_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @clk_disable_unprepare(i32 %96)
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = call i32 @platform_set_drvdata(%struct.platform_device* %98, %struct.qoriq_tmu_data* null)
  %100 = load i32, i32* %4, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %93, %92, %68, %56, %37, %17
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.qoriq_tmu_data* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.qoriq_tmu_data*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get_optional(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @qoriq_tmu_init_device(%struct.qoriq_tmu_data*) #1

declare dso_local i32 @qoriq_tmu_calibration(%struct.platform_device*) #1

declare dso_local i32 @qoriq_tmu_register_tmu_zone(%struct.platform_device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
