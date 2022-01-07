; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_smd-regulator.c_rpm_reg_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_smd-regulator.c_rpm_reg_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.rpm_regulator_data = type { i64, i32, i32, i32, i32 }
%struct.of_device_id = type { %struct.rpm_regulator_data* }
%struct.regulator_config = type { %struct.qcom_rpm_reg*, %struct.TYPE_7__* }
%struct.qcom_rpm_reg = type { %struct.TYPE_8__, %struct.qcom_smd_rpm*, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i64, i32, i64, i32, i32 }
%struct.qcom_smd_rpm = type { i32 }
%struct.regulator_dev = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"unable to retrieve handle to rpm\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@rpm_of_match = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to match device\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@REGULATOR_VOLTAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to register %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rpm_reg_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpm_reg_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rpm_regulator_data*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.regulator_config, align 8
  %7 = alloca %struct.regulator_dev*, align 8
  %8 = alloca %struct.qcom_rpm_reg*, align 8
  %9 = alloca %struct.qcom_smd_rpm*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = bitcast %struct.regulator_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.qcom_smd_rpm* @dev_get_drvdata(i32 %14)
  store %struct.qcom_smd_rpm* %15, %struct.qcom_smd_rpm** %9, align 8
  %16 = load %struct.qcom_smd_rpm*, %struct.qcom_smd_rpm** %9, align 8
  %17 = icmp ne %struct.qcom_smd_rpm* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %136

24:                                               ; preds = %1
  %25 = load i32, i32* @rpm_of_match, align 4
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call %struct.of_device_id* @of_match_device(i32 %25, %struct.TYPE_7__* %27)
  store %struct.of_device_id* %28, %struct.of_device_id** %5, align 8
  %29 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %30 = icmp ne %struct.of_device_id* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %24
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %136

37:                                               ; preds = %24
  %38 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %39 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %38, i32 0, i32 0
  %40 = load %struct.rpm_regulator_data*, %struct.rpm_regulator_data** %39, align 8
  store %struct.rpm_regulator_data* %40, %struct.rpm_regulator_data** %4, align 8
  br label %41

41:                                               ; preds = %132, %37
  %42 = load %struct.rpm_regulator_data*, %struct.rpm_regulator_data** %4, align 8
  %43 = getelementptr inbounds %struct.rpm_regulator_data, %struct.rpm_regulator_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %135

46:                                               ; preds = %41
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.qcom_rpm_reg* @devm_kzalloc(%struct.TYPE_7__* %48, i32 64, i32 %49)
  store %struct.qcom_rpm_reg* %50, %struct.qcom_rpm_reg** %8, align 8
  %51 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %8, align 8
  %52 = icmp ne %struct.qcom_rpm_reg* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %136

56:                                               ; preds = %46
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %8, align 8
  %60 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %59, i32 0, i32 4
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %60, align 8
  %61 = load %struct.rpm_regulator_data*, %struct.rpm_regulator_data** %4, align 8
  %62 = getelementptr inbounds %struct.rpm_regulator_data, %struct.rpm_regulator_data* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %8, align 8
  %65 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.rpm_regulator_data*, %struct.rpm_regulator_data** %4, align 8
  %67 = getelementptr inbounds %struct.rpm_regulator_data, %struct.rpm_regulator_data* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %8, align 8
  %70 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.qcom_smd_rpm*, %struct.qcom_smd_rpm** %9, align 8
  %72 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %8, align 8
  %73 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %72, i32 0, i32 1
  store %struct.qcom_smd_rpm* %71, %struct.qcom_smd_rpm** %73, align 8
  %74 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %8, align 8
  %75 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %74, i32 0, i32 0
  %76 = load %struct.rpm_regulator_data*, %struct.rpm_regulator_data** %4, align 8
  %77 = getelementptr inbounds %struct.rpm_regulator_data, %struct.rpm_regulator_data* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @memcpy(%struct.TYPE_8__* %75, i32 %78, i32 40)
  %80 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %8, align 8
  %81 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i32 -1, i32* %82, align 8
  %83 = load i32, i32* @THIS_MODULE, align 4
  %84 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %8, align 8
  %85 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 5
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* @REGULATOR_VOLTAGE, align 4
  %88 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %8, align 8
  %89 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 4
  store i32 %87, i32* %90, align 8
  %91 = load %struct.rpm_regulator_data*, %struct.rpm_regulator_data** %4, align 8
  %92 = getelementptr inbounds %struct.rpm_regulator_data, %struct.rpm_regulator_data* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %8, align 8
  %95 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 3
  store i64 %93, i64* %96, align 8
  %97 = load %struct.rpm_regulator_data*, %struct.rpm_regulator_data** %4, align 8
  %98 = getelementptr inbounds %struct.rpm_regulator_data, %struct.rpm_regulator_data* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %8, align 8
  %101 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  store i32 %99, i32* %102, align 8
  %103 = load %struct.rpm_regulator_data*, %struct.rpm_regulator_data** %4, align 8
  %104 = getelementptr inbounds %struct.rpm_regulator_data, %struct.rpm_regulator_data* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %8, align 8
  %107 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  store i64 %105, i64* %108, align 8
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store %struct.TYPE_7__* %110, %struct.TYPE_7__** %111, align 8
  %112 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %8, align 8
  %113 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store %struct.qcom_rpm_reg* %112, %struct.qcom_rpm_reg** %113, align 8
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %8, align 8
  %117 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %116, i32 0, i32 0
  %118 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_7__* %115, %struct.TYPE_8__* %117, %struct.regulator_config* %6)
  store %struct.regulator_dev* %118, %struct.regulator_dev** %7, align 8
  %119 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %120 = call i64 @IS_ERR(%struct.regulator_dev* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %56
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = load %struct.rpm_regulator_data*, %struct.rpm_regulator_data** %4, align 8
  %126 = getelementptr inbounds %struct.rpm_regulator_data, %struct.rpm_regulator_data* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %124, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %127)
  %129 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %130 = call i32 @PTR_ERR(%struct.regulator_dev* %129)
  store i32 %130, i32* %2, align 4
  br label %136

131:                                              ; preds = %56
  br label %132

132:                                              ; preds = %131
  %133 = load %struct.rpm_regulator_data*, %struct.rpm_regulator_data** %4, align 8
  %134 = getelementptr inbounds %struct.rpm_regulator_data, %struct.rpm_regulator_data* %133, i32 1
  store %struct.rpm_regulator_data* %134, %struct.rpm_regulator_data** %4, align 8
  br label %41

135:                                              ; preds = %41
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %135, %122, %53, %31, %18
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.qcom_smd_rpm* @dev_get_drvdata(i32) #2

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #2

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_7__*) #2

declare dso_local %struct.qcom_rpm_reg* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @memcpy(%struct.TYPE_8__*, i32, i32) #2

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_7__*, %struct.TYPE_8__*, %struct.regulator_config*) #2

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
