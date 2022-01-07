; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_mcp16502.c_mcp16502_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_mcp16502.c_mcp16502_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.regulator_config = type { %struct.mcp16502*, %struct.regulator_dev*, %struct.device* }
%struct.mcp16502 = type { %struct.regulator_dev* }
%struct.regulator_dev = type { i32 }
%struct.regmap = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mcp16502_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"regmap init failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"lpm\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to get lpm pin: %ld\0A\00", align 1
@NUM_REGULATORS = common dso_local global i32 0, align 4
@mcp16502_desc = common dso_local global %struct.TYPE_3__* null, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to register %s regulator %ld\0A\00", align 1
@MCP16502_OPMODE_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mcp16502_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp16502_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.regulator_config, align 8
  %7 = alloca %struct.regulator_dev*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.mcp16502*, align 8
  %10 = alloca %struct.regmap*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %13 = bitcast %struct.regulator_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load %struct.device*, %struct.device** %8, align 8
  %17 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  store %struct.device* %16, %struct.device** %17, align 8
  %18 = load %struct.device*, %struct.device** %8, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.mcp16502* @devm_kzalloc(%struct.device* %18, i32 8, i32 %19)
  store %struct.mcp16502* %20, %struct.mcp16502** %9, align 8
  %21 = load %struct.mcp16502*, %struct.mcp16502** %9, align 8
  %22 = icmp ne %struct.mcp16502* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %108

26:                                               ; preds = %2
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = call %struct.regulator_dev* @devm_regmap_init_i2c(%struct.i2c_client* %27, i32* @mcp16502_regmap_config)
  %29 = bitcast %struct.regulator_dev* %28 to %struct.regmap*
  store %struct.regmap* %29, %struct.regmap** %10, align 8
  %30 = load %struct.regmap*, %struct.regmap** %10, align 8
  %31 = bitcast %struct.regmap* %30 to %struct.regulator_dev*
  %32 = call i64 @IS_ERR(%struct.regulator_dev* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load %struct.regmap*, %struct.regmap** %10, align 8
  %36 = bitcast %struct.regmap* %35 to %struct.regulator_dev*
  %37 = call i32 @PTR_ERR(%struct.regulator_dev* %36)
  store i32 %37, i32* %12, align 4
  %38 = load %struct.device*, %struct.device** %8, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %3, align 4
  br label %108

42:                                               ; preds = %26
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = load %struct.mcp16502*, %struct.mcp16502** %9, align 8
  %45 = call i32 @i2c_set_clientdata(%struct.i2c_client* %43, %struct.mcp16502* %44)
  %46 = load %struct.regmap*, %struct.regmap** %10, align 8
  %47 = bitcast %struct.regmap* %46 to %struct.regulator_dev*
  %48 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store %struct.regulator_dev* %47, %struct.regulator_dev** %48, align 8
  %49 = load %struct.mcp16502*, %struct.mcp16502** %9, align 8
  %50 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store %struct.mcp16502* %49, %struct.mcp16502** %50, align 8
  %51 = load %struct.device*, %struct.device** %8, align 8
  %52 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %53 = call %struct.regulator_dev* @devm_gpiod_get(%struct.device* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load %struct.mcp16502*, %struct.mcp16502** %9, align 8
  %55 = getelementptr inbounds %struct.mcp16502, %struct.mcp16502* %54, i32 0, i32 0
  store %struct.regulator_dev* %53, %struct.regulator_dev** %55, align 8
  %56 = load %struct.mcp16502*, %struct.mcp16502** %9, align 8
  %57 = getelementptr inbounds %struct.mcp16502, %struct.mcp16502* %56, i32 0, i32 0
  %58 = load %struct.regulator_dev*, %struct.regulator_dev** %57, align 8
  %59 = call i64 @IS_ERR(%struct.regulator_dev* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %42
  %62 = load %struct.device*, %struct.device** %8, align 8
  %63 = load %struct.mcp16502*, %struct.mcp16502** %9, align 8
  %64 = getelementptr inbounds %struct.mcp16502, %struct.mcp16502* %63, i32 0, i32 0
  %65 = load %struct.regulator_dev*, %struct.regulator_dev** %64, align 8
  %66 = call i32 @PTR_ERR(%struct.regulator_dev* %65)
  %67 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load %struct.mcp16502*, %struct.mcp16502** %9, align 8
  %69 = getelementptr inbounds %struct.mcp16502, %struct.mcp16502* %68, i32 0, i32 0
  %70 = load %struct.regulator_dev*, %struct.regulator_dev** %69, align 8
  %71 = call i32 @PTR_ERR(%struct.regulator_dev* %70)
  store i32 %71, i32* %3, align 4
  br label %108

72:                                               ; preds = %42
  store i32 0, i32* %11, align 4
  br label %73

73:                                               ; preds = %101, %72
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @NUM_REGULATORS, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %104

77:                                               ; preds = %73
  %78 = load %struct.device*, %struct.device** %8, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mcp16502_desc, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = call %struct.regulator_dev* @devm_regulator_register(%struct.device* %78, %struct.TYPE_3__* %82, %struct.regulator_config* %6)
  store %struct.regulator_dev* %83, %struct.regulator_dev** %7, align 8
  %84 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %85 = call i64 @IS_ERR(%struct.regulator_dev* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %77
  %88 = load %struct.device*, %struct.device** %8, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mcp16502_desc, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %96 = call i32 @PTR_ERR(%struct.regulator_dev* %95)
  %97 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %88, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %94, i32 %96)
  %98 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %99 = call i32 @PTR_ERR(%struct.regulator_dev* %98)
  store i32 %99, i32* %3, align 4
  br label %108

100:                                              ; preds = %77
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %73

104:                                              ; preds = %73
  %105 = load %struct.mcp16502*, %struct.mcp16502** %9, align 8
  %106 = load i32, i32* @MCP16502_OPMODE_ACTIVE, align 4
  %107 = call i32 @mcp16502_gpio_set_mode(%struct.mcp16502* %105, i32 %106)
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %104, %87, %61, %34, %23
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.mcp16502* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local %struct.regulator_dev* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #2

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #2

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.mcp16502*) #2

declare dso_local %struct.regulator_dev* @devm_gpiod_get(%struct.device*, i8*, i32) #2

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.device*, %struct.TYPE_3__*, %struct.regulator_config*) #2

declare dso_local i32 @mcp16502_gpio_set_mode(%struct.mcp16502*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
