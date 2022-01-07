; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_qoriq_thermal.c_qoriq_tmu_calibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_qoriq_thermal.c_qoriq_tmu_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.qoriq_tmu_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"fsl,tmu-range\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"missing calibration range.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"fsl,tmu-calibration\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"invalid calibration data.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qoriq_tmu_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qoriq_tmu_calibration(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.qoriq_tmu_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %9, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = call %struct.qoriq_tmu_data* @platform_get_drvdata(%struct.platform_device* %15)
  store %struct.qoriq_tmu_data* %16, %struct.qoriq_tmu_data** %10, align 8
  %17 = load %struct.device_node*, %struct.device_node** %9, align 8
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %19 = call i64 @of_property_read_u32_array(%struct.device_node* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %18, i32 4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call i32 @dev_err(%struct.TYPE_4__* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %105

27:                                               ; preds = %1
  %28 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %10, align 8
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %30 = load i32, i32* %29, align 16
  %31 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %10, align 8
  %32 = getelementptr inbounds %struct.qoriq_tmu_data, %struct.qoriq_tmu_data* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 5
  %35 = call i32 @tmu_write(%struct.qoriq_tmu_data* %28, i32 %30, i32* %34)
  %36 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %10, align 8
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %10, align 8
  %40 = getelementptr inbounds %struct.qoriq_tmu_data, %struct.qoriq_tmu_data* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 4
  %43 = call i32 @tmu_write(%struct.qoriq_tmu_data* %36, i32 %38, i32* %42)
  %44 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %10, align 8
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %10, align 8
  %48 = getelementptr inbounds %struct.qoriq_tmu_data, %struct.qoriq_tmu_data* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = call i32 @tmu_write(%struct.qoriq_tmu_data* %44, i32 %46, i32* %50)
  %52 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %10, align 8
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %10, align 8
  %56 = getelementptr inbounds %struct.qoriq_tmu_data, %struct.qoriq_tmu_data* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = call i32 @tmu_write(%struct.qoriq_tmu_data* %52, i32 %54, i32* %58)
  %60 = load %struct.device_node*, %struct.device_node** %9, align 8
  %61 = call i32* @of_get_property(%struct.device_node* %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32* %6)
  store i32* %61, i32** %8, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %27
  %65 = load i32, i32* %6, align 4
  %66 = srem i32 %65, 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %64, %27
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i32 @dev_err(%struct.TYPE_4__* %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %105

74:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %99, %74
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %75
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @of_read_number(i32* %80, i32 1)
  store i32 %81, i32* %5, align 4
  %82 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %10, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %10, align 8
  %85 = getelementptr inbounds %struct.qoriq_tmu_data, %struct.qoriq_tmu_data* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = call i32 @tmu_write(%struct.qoriq_tmu_data* %82, i32 %83, i32* %87)
  %89 = load i32*, i32** %8, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = call i32 @of_read_number(i32* %90, i32 1)
  store i32 %91, i32* %5, align 4
  %92 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %10, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.qoriq_tmu_data*, %struct.qoriq_tmu_data** %10, align 8
  %95 = getelementptr inbounds %struct.qoriq_tmu_data, %struct.qoriq_tmu_data* %94, i32 0, i32 0
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = call i32 @tmu_write(%struct.qoriq_tmu_data* %92, i32 %93, i32* %97)
  br label %99

99:                                               ; preds = %79
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 8
  store i32 %101, i32* %4, align 4
  %102 = load i32*, i32** %8, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  store i32* %103, i32** %8, align 8
  br label %75

104:                                              ; preds = %75
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %104, %68, %21
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.qoriq_tmu_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i64 @of_property_read_u32_array(%struct.device_node*, i8*, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @tmu_write(%struct.qoriq_tmu_data*, i32, i32*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_read_number(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
