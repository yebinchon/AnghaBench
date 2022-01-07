; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_mt6311-regulator.c_mt6311_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_mt6311-regulator.c_mt6311_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.regulator_config = type { %struct.regulator_dev*, i32* }
%struct.regulator_dev = type { i32 }
%struct.regmap = type opaque

@mt6311_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@MT6311_SWCID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to read DEVICE_ID reg: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Unsupported device id = 0x%x.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@MT6311_MAX_REGULATORS = common dso_local global i32 0, align 4
@mt6311_regulators = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to register MT6311 regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mt6311_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt6311_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.regulator_config, align 8
  %7 = alloca %struct.regulator_dev*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = bitcast %struct.regulator_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = call %struct.regulator_dev* @devm_regmap_init_i2c(%struct.i2c_client* %13, i32* @mt6311_regmap_config)
  %15 = bitcast %struct.regulator_dev* %14 to %struct.regmap*
  store %struct.regmap* %15, %struct.regmap** %8, align 8
  %16 = load %struct.regmap*, %struct.regmap** %8, align 8
  %17 = bitcast %struct.regmap* %16 to %struct.regulator_dev*
  %18 = call i64 @IS_ERR(%struct.regulator_dev* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.regmap*, %struct.regmap** %8, align 8
  %22 = bitcast %struct.regmap* %21 to %struct.regulator_dev*
  %23 = call i32 @PTR_ERR(%struct.regulator_dev* %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = load i32, i32* %10, align 4
  %27 = call i32 (i32*, i8*, ...) @dev_err(i32* %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %3, align 4
  br label %85

29:                                               ; preds = %2
  %30 = load %struct.regmap*, %struct.regmap** %8, align 8
  %31 = bitcast %struct.regmap* %30 to %struct.regulator_dev*
  %32 = load i32, i32* @MT6311_SWCID, align 4
  %33 = call i32 @regmap_read(%struct.regulator_dev* %31, i32 %32, i32* %11)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = load i32, i32* %10, align 4
  %40 = call i32 (i32*, i8*, ...) @dev_err(i32* %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %3, align 4
  br label %85

42:                                               ; preds = %29
  %43 = load i32, i32* %11, align 4
  switch i32 %43, label %45 [
    i32 130, label %44
    i32 129, label %44
    i32 128, label %44
  ]

44:                                               ; preds = %42, %42, %42
  br label %52

45:                                               ; preds = %42
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = load i32, i32* %11, align 4
  %49 = call i32 (i32*, i8*, ...) @dev_err(i32* %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %85

52:                                               ; preds = %44
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %81, %52
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @MT6311_MAX_REGULATORS, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %84

57:                                               ; preds = %53
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store i32* %59, i32** %60, align 8
  %61 = load %struct.regmap*, %struct.regmap** %8, align 8
  %62 = bitcast %struct.regmap* %61 to %struct.regulator_dev*
  %63 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store %struct.regulator_dev* %62, %struct.regulator_dev** %63, align 8
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  %66 = load i32*, i32** @mt6311_regulators, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = call %struct.regulator_dev* @devm_regulator_register(i32* %65, i32* %69, %struct.regulator_config* %6)
  store %struct.regulator_dev* %70, %struct.regulator_dev** %7, align 8
  %71 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %72 = call i64 @IS_ERR(%struct.regulator_dev* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %57
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 0
  %77 = call i32 (i32*, i8*, ...) @dev_err(i32* %76, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %78 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %79 = call i32 @PTR_ERR(%struct.regulator_dev* %78)
  store i32 %79, i32* %3, align 4
  br label %85

80:                                               ; preds = %57
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %53

84:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %74, %45, %36, %20
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.regulator_dev* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #2

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @dev_err(i32*, i8*, ...) #2

declare dso_local i32 @regmap_read(%struct.regulator_dev*, i32, i32*) #2

declare dso_local %struct.regulator_dev* @devm_regulator_register(i32*, i32*, %struct.regulator_config*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
