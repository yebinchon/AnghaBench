; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_isl9305.c_isl9305_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_isl9305.c_isl9305_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.i2c_client = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.isl9305_pdata* }
%struct.isl9305_pdata = type { i32** }
%struct.i2c_device_id = type { i32 }
%struct.regulator_config = type { i32*, %struct.TYPE_7__* }
%struct.regulator_dev = type { i32 }
%struct.regmap = type opaque

@isl9305_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to create regmap: %d\0A\00", align 1
@isl9305_regulators = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to register %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @isl9305_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl9305_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.regulator_config, align 8
  %7 = alloca %struct.isl9305_pdata*, align 8
  %8 = alloca %struct.regulator_dev*, align 8
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = bitcast %struct.regulator_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.isl9305_pdata*, %struct.isl9305_pdata** %15, align 8
  store %struct.isl9305_pdata* %16, %struct.isl9305_pdata** %7, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = call %struct.regulator_dev* @devm_regmap_init_i2c(%struct.i2c_client* %17, i32* @isl9305_regmap)
  %19 = bitcast %struct.regulator_dev* %18 to %struct.regmap*
  store %struct.regmap* %19, %struct.regmap** %9, align 8
  %20 = load %struct.regmap*, %struct.regmap** %9, align 8
  %21 = bitcast %struct.regmap* %20 to %struct.regulator_dev*
  %22 = call i64 @IS_ERR(%struct.regulator_dev* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load %struct.regmap*, %struct.regmap** %9, align 8
  %26 = bitcast %struct.regmap* %25 to %struct.regulator_dev*
  %27 = call i32 @PTR_ERR(%struct.regulator_dev* %26)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load i32, i32* %11, align 4
  %31 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @dev_err(%struct.TYPE_7__* %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %3, align 4
  br label %86

33:                                               ; preds = %2
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %36, align 8
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %82, %33
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @isl9305_regulators, align 8
  %40 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %39)
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %85

42:                                               ; preds = %37
  %43 = load %struct.isl9305_pdata*, %struct.isl9305_pdata** %7, align 8
  %44 = icmp ne %struct.isl9305_pdata* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load %struct.isl9305_pdata*, %struct.isl9305_pdata** %7, align 8
  %47 = getelementptr inbounds %struct.isl9305_pdata, %struct.isl9305_pdata* %46, i32 0, i32 0
  %48 = load i32**, i32*** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store i32* %52, i32** %53, align 8
  br label %56

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %54, %45
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @isl9305_regulators, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_7__* %58, %struct.TYPE_6__* %62, %struct.regulator_config* %6)
  store %struct.regulator_dev* %63, %struct.regulator_dev** %8, align 8
  %64 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %65 = call i64 @IS_ERR(%struct.regulator_dev* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %56
  %68 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %69 = call i32 @PTR_ERR(%struct.regulator_dev* %68)
  store i32 %69, i32* %11, align 4
  %70 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %71 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** @isl9305_regulators, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @dev_err(%struct.TYPE_7__* %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %3, align 4
  br label %86

81:                                               ; preds = %56
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %37

85:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %67, %24
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.regulator_dev* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #2

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i32, ...) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #2

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_7__*, %struct.TYPE_6__*, %struct.regulator_config*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
