; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_sy8106a-regulator.c_sy8106a_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_sy8106a-regulator.c_sy8106a_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.regulator_dev = type { i32 }
%struct.regulator_config = type { i32, i32, %struct.regulator_dev*, %struct.device* }
%struct.regmap = type opaque

@.str = private unnamed_addr constant [24 x i8] c"silergy,fixed-microvolt\00", align 1
@SY8106A_MIN_MV = common dso_local global i32 0, align 4
@SY8106A_MAX_MV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@sy8106a_regmap_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@sy8106a_reg = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SY8106A_REG_VOUT1_SEL = common dso_local global i32 0, align 4
@SY8106A_GO_BIT = common dso_local global i32 0, align 4
@SY8106A_STEP_MV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed to register SY8106A regulator: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @sy8106a_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sy8106a_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.regulator_dev*, align 8
  %8 = alloca %struct.regulator_config, align 8
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = bitcast %struct.regulator_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 24, i1 false)
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @of_property_read_u32(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %12)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %3, align 4
  br label %126

25:                                               ; preds = %2
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @SY8106A_MIN_MV, align 4
  %28 = mul nsw i32 %27, 1000
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @SY8106A_MAX_MV, align 4
  %33 = mul nsw i32 %32, 1000
  %34 = icmp sgt i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30, %25
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %126

38:                                               ; preds = %30
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = call %struct.regulator_dev* @devm_regmap_init_i2c(%struct.i2c_client* %39, i32* @sy8106a_regmap_config)
  %41 = bitcast %struct.regulator_dev* %40 to %struct.regmap*
  store %struct.regmap* %41, %struct.regmap** %9, align 8
  %42 = load %struct.regmap*, %struct.regmap** %9, align 8
  %43 = bitcast %struct.regmap* %42 to %struct.regulator_dev*
  %44 = call i64 @IS_ERR(%struct.regulator_dev* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %38
  %47 = load %struct.regmap*, %struct.regmap** %9, align 8
  %48 = bitcast %struct.regmap* %47 to %struct.regulator_dev*
  %49 = call i32 @PTR_ERR(%struct.regulator_dev* %48)
  store i32 %49, i32* %13, align 4
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %3, align 4
  br label %126

54:                                               ; preds = %38
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 3
  store %struct.device* %56, %struct.device** %57, align 8
  %58 = load %struct.regmap*, %struct.regmap** %9, align 8
  %59 = bitcast %struct.regmap* %58 to %struct.regulator_dev*
  %60 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 2
  store %struct.regulator_dev* %59, %struct.regulator_dev** %60, align 8
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = getelementptr inbounds %struct.device, %struct.device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = load %struct.device*, %struct.device** %6, align 8
  %66 = load %struct.device*, %struct.device** %6, align 8
  %67 = getelementptr inbounds %struct.device, %struct.device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @of_get_regulator_init_data(%struct.device* %65, i32 %68, i32* @sy8106a_reg)
  %70 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 0
  store i32 %69, i32* %70, align 8
  %71 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %54
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %126

77:                                               ; preds = %54
  %78 = load %struct.regmap*, %struct.regmap** %9, align 8
  %79 = bitcast %struct.regmap* %78 to %struct.regulator_dev*
  %80 = load i32, i32* @SY8106A_REG_VOUT1_SEL, align 4
  %81 = call i32 @regmap_read(%struct.regulator_dev* %79, i32 %80, i32* %10)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* %13, align 4
  store i32 %85, i32* %3, align 4
  br label %126

86:                                               ; preds = %77
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @SY8106A_GO_BIT, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %110, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %12, align 4
  %93 = sdiv i32 %92, 1000
  %94 = load i32, i32* @SY8106A_MIN_MV, align 4
  %95 = sub nsw i32 %93, %94
  %96 = load i32, i32* @SY8106A_STEP_MV, align 4
  %97 = sdiv i32 %95, %96
  store i32 %97, i32* %11, align 4
  %98 = load %struct.regmap*, %struct.regmap** %9, align 8
  %99 = bitcast %struct.regmap* %98 to %struct.regulator_dev*
  %100 = load i32, i32* @SY8106A_REG_VOUT1_SEL, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* @SY8106A_GO_BIT, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @regmap_write(%struct.regulator_dev* %99, i32 %100, i32 %103)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %91
  %108 = load i32, i32* %13, align 4
  store i32 %108, i32* %3, align 4
  br label %126

109:                                              ; preds = %91
  br label %110

110:                                              ; preds = %109, %86
  %111 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %112 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %111, i32 0, i32 0
  %113 = call %struct.regulator_dev* @devm_regulator_register(%struct.device* %112, i32* @sy8106a_reg, %struct.regulator_config* %8)
  store %struct.regulator_dev* %113, %struct.regulator_dev** %7, align 8
  %114 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %115 = call i64 @IS_ERR(%struct.regulator_dev* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %110
  %118 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %119 = call i32 @PTR_ERR(%struct.regulator_dev* %118)
  store i32 %119, i32* %13, align 4
  %120 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %121 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %120, i32 0, i32 0
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @dev_err(%struct.device* %121, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %13, align 4
  store i32 %124, i32* %3, align 4
  br label %126

125:                                              ; preds = %110
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %117, %107, %84, %74, %46, %35, %23
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #2

declare dso_local %struct.regulator_dev* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #2

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #2

declare dso_local i32 @of_get_regulator_init_data(%struct.device*, i32, i32*) #2

declare dso_local i32 @regmap_read(%struct.regulator_dev*, i32, i32*) #2

declare dso_local i32 @regmap_write(%struct.regulator_dev*, i32, i32) #2

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.device*, i32*, %struct.regulator_config*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
