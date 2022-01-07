; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65023-regulator.c_tps_65023_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65023-regulator.c_tps_65023_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32, i64 }
%struct.regulator_init_data = type { i32 }
%struct.regulator_config = type { %struct.regulator_init_data*, i32, %struct.tps_pmic*, i32* }
%struct.tps_pmic = type { i32, i32*, %struct.tps_driver_data* }
%struct.tps_driver_data = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tps65023_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@TPS65023_NUM_REGULATOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to register %s\0A\00", align 1
@TPS65023_REG_CON_CTRL2 = common dso_local global i32 0, align 4
@TPS65023_REG_CTRL2_CORE_ADJ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tps_65023_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps_65023_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.regulator_init_data*, align 8
  %7 = alloca %struct.regulator_config, align 8
  %8 = alloca %struct.tps_pmic*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = call %struct.regulator_init_data* @dev_get_platdata(i32* %12)
  store %struct.regulator_init_data* %13, %struct.regulator_init_data** %6, align 8
  %14 = bitcast %struct.regulator_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 32, i1 false)
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.tps_pmic* @devm_kzalloc(i32* %16, i32 24, i32 %17)
  store %struct.tps_pmic* %18, %struct.tps_pmic** %8, align 8
  %19 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %20 = icmp ne %struct.tps_pmic* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %129

24:                                               ; preds = %2
  %25 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %26 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.tps_driver_data*
  %29 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %30 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %29, i32 0, i32 2
  store %struct.tps_driver_data* %28, %struct.tps_driver_data** %30, align 8
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %31, i32* @tps65023_regmap_config)
  %33 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %34 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %36 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %24
  %41 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %42 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %3, align 4
  br label %129

50:                                               ; preds = %24
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 3
  store i32* %52, i32** %53, align 8
  %54 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %55 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 2
  store %struct.tps_pmic* %54, %struct.tps_pmic** %55, align 8
  %56 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %57 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 1
  store i32 %58, i32* %59, align 8
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %116, %50
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @TPS65023_NUM_REGULATOR, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %119

64:                                               ; preds = %60
  %65 = load %struct.regulator_init_data*, %struct.regulator_init_data** %6, align 8
  %66 = icmp ne %struct.regulator_init_data* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load %struct.regulator_init_data*, %struct.regulator_init_data** %6, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %68, i64 %70
  %72 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 0
  store %struct.regulator_init_data* %71, %struct.regulator_init_data** %72, align 8
  br label %73

73:                                               ; preds = %67, %64
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 0
  %76 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %77 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %76, i32 0, i32 2
  %78 = load %struct.tps_driver_data*, %struct.tps_driver_data** %77, align 8
  %79 = getelementptr inbounds %struct.tps_driver_data, %struct.tps_driver_data* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = call i32 @devm_regulator_register(i32* %75, i32* %83, %struct.regulator_config* %7)
  %85 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %86 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %84, i32* %90, align 4
  %91 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %92 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @IS_ERR(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %73
  %101 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %102 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %101, i32 0, i32 0
  %103 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %104 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @dev_err(i32* %102, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  %107 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %108 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @PTR_ERR(i32 %113)
  store i32 %114, i32* %3, align 4
  br label %129

115:                                              ; preds = %73
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %60

119:                                              ; preds = %60
  %120 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %121 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %122 = call i32 @i2c_set_clientdata(%struct.i2c_client* %120, %struct.tps_pmic* %121)
  %123 = load %struct.tps_pmic*, %struct.tps_pmic** %8, align 8
  %124 = getelementptr inbounds %struct.tps_pmic, %struct.tps_pmic* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @TPS65023_REG_CON_CTRL2, align 4
  %127 = load i32, i32* @TPS65023_REG_CTRL2_CORE_ADJ, align 4
  %128 = call i32 @regmap_update_bits(i32 %125, i32 %126, i32 %127, i32 0)
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %119, %100, %40, %21
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.regulator_init_data* @dev_get_platdata(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.tps_pmic* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @devm_regulator_register(i32*, i32*, %struct.regulator_config*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tps_pmic*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
