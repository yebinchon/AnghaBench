; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lochnagar-regulator.c_lochnagar_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lochnagar-regulator.c_lochnagar_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.lochnagar = type { i32 }
%struct.regulator_config = type { %struct.lochnagar*, i32, %struct.device* }
%struct.of_device_id = type { %struct.regulator_desc* }
%struct.regulator_desc = type { i32 }
%struct.regulator_dev = type { i32 }

@lochnagar_of_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to register %s regulator: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lochnagar_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lochnagar_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.lochnagar*, align 8
  %6 = alloca %struct.regulator_config, align 8
  %7 = alloca %struct.of_device_id*, align 8
  %8 = alloca %struct.regulator_desc*, align 8
  %9 = alloca %struct.regulator_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.lochnagar* @dev_get_drvdata(i32 %15)
  store %struct.lochnagar* %16, %struct.lochnagar** %5, align 8
  %17 = bitcast %struct.regulator_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 24, i1 false)
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  store %struct.device* %18, %struct.device** %19, align 8
  %20 = load %struct.lochnagar*, %struct.lochnagar** %5, align 8
  %21 = getelementptr inbounds %struct.lochnagar, %struct.lochnagar* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store i32 %22, i32* %23, align 8
  %24 = load %struct.lochnagar*, %struct.lochnagar** %5, align 8
  %25 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store %struct.lochnagar* %24, %struct.lochnagar** %25, align 8
  %26 = load i32, i32* @lochnagar_of_match, align 4
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call %struct.of_device_id* @of_match_device(i32 %26, %struct.device* %27)
  store %struct.of_device_id* %28, %struct.of_device_id** %7, align 8
  %29 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %30 = icmp ne %struct.of_device_id* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %55

34:                                               ; preds = %1
  %35 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %36 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %35, i32 0, i32 0
  %37 = load %struct.regulator_desc*, %struct.regulator_desc** %36, align 8
  store %struct.regulator_desc* %37, %struct.regulator_desc** %8, align 8
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load %struct.regulator_desc*, %struct.regulator_desc** %8, align 8
  %40 = call %struct.regulator_dev* @devm_regulator_register(%struct.device* %38, %struct.regulator_desc* %39, %struct.regulator_config* %6)
  store %struct.regulator_dev* %40, %struct.regulator_dev** %9, align 8
  %41 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %42 = call i64 @IS_ERR(%struct.regulator_dev* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %34
  %45 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %46 = call i32 @PTR_ERR(%struct.regulator_dev* %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = load %struct.regulator_desc*, %struct.regulator_desc** %8, align 8
  %49 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %2, align 4
  br label %55

54:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %44, %31
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.lochnagar* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.device*, %struct.regulator_desc*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
