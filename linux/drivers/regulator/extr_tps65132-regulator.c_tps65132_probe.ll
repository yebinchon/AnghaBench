; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65132-regulator.c_tps65132_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65132-regulator.c_tps65132_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tps65132_regulator = type { %struct.device* }
%struct.regulator_dev = type { i32 }
%struct.regmap = type opaque
%struct.regulator_config = type { %struct.tps65132_regulator*, %struct.device*, %struct.regulator_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tps65132_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"regmap init failed: %d\0A\00", align 1
@TPS65132_MAX_REGULATORS = common dso_local global i32 0, align 4
@tps_regs_desc = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"regulator %s register failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tps65132_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65132_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.tps65132_regulator*, align 8
  %8 = alloca %struct.regulator_dev*, align 8
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca %struct.regulator_config, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = bitcast %struct.regulator_config* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.tps65132_regulator* @devm_kzalloc(%struct.device* %16, i32 8, i32 %17)
  store %struct.tps65132_regulator* %18, %struct.tps65132_regulator** %7, align 8
  %19 = load %struct.tps65132_regulator*, %struct.tps65132_regulator** %7, align 8
  %20 = icmp ne %struct.tps65132_regulator* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %86

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = call %struct.regulator_dev* @devm_regmap_init_i2c(%struct.i2c_client* %25, i32* @tps65132_regmap_config)
  %27 = bitcast %struct.regulator_dev* %26 to %struct.regmap*
  store %struct.regmap* %27, %struct.regmap** %9, align 8
  %28 = load %struct.regmap*, %struct.regmap** %9, align 8
  %29 = bitcast %struct.regmap* %28 to %struct.regulator_dev*
  %30 = call i64 @IS_ERR(%struct.regulator_dev* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load %struct.regmap*, %struct.regmap** %9, align 8
  %34 = bitcast %struct.regmap* %33 to %struct.regulator_dev*
  %35 = call i32 @PTR_ERR(%struct.regulator_dev* %34)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %3, align 4
  br label %86

40:                                               ; preds = %24
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load %struct.tps65132_regulator*, %struct.tps65132_regulator** %7, align 8
  %43 = call i32 @i2c_set_clientdata(%struct.i2c_client* %41, %struct.tps65132_regulator* %42)
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = load %struct.tps65132_regulator*, %struct.tps65132_regulator** %7, align 8
  %46 = getelementptr inbounds %struct.tps65132_regulator, %struct.tps65132_regulator* %45, i32 0, i32 0
  store %struct.device* %44, %struct.device** %46, align 8
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %82, %40
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @TPS65132_MAX_REGULATORS, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %85

51:                                               ; preds = %47
  %52 = load %struct.regmap*, %struct.regmap** %9, align 8
  %53 = bitcast %struct.regmap* %52 to %struct.regulator_dev*
  %54 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 2
  store %struct.regulator_dev* %53, %struct.regulator_dev** %54, align 8
  %55 = load %struct.device*, %struct.device** %6, align 8
  %56 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 1
  store %struct.device* %55, %struct.device** %56, align 8
  %57 = load %struct.tps65132_regulator*, %struct.tps65132_regulator** %7, align 8
  %58 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 0
  store %struct.tps65132_regulator* %57, %struct.tps65132_regulator** %58, align 8
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tps_regs_desc, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = call %struct.regulator_dev* @devm_regulator_register(%struct.device* %59, %struct.TYPE_3__* %63, %struct.regulator_config* %10)
  store %struct.regulator_dev* %64, %struct.regulator_dev** %8, align 8
  %65 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %66 = call i64 @IS_ERR(%struct.regulator_dev* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %51
  %69 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %70 = call i32 @PTR_ERR(%struct.regulator_dev* %69)
  store i32 %70, i32* %12, align 4
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tps_regs_desc, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %3, align 4
  br label %86

81:                                               ; preds = %51
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %47

85:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %68, %32, %21
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.tps65132_regulator* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local %struct.regulator_dev* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #2

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #2

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tps65132_regulator*) #2

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.device*, %struct.TYPE_3__*, %struct.regulator_config*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
