; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_rk808-regulator.c_rk808_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_rk808-regulator.c_rk808_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_desc = type { i32 }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.rk808 = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.regulator_config = type { i32, %struct.rk808_regulator_data*, i32* }
%struct.rk808_regulator_data = type { i32 }
%struct.regulator_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rk805_reg = common dso_local global %struct.regulator_desc* null, align 8
@RK805_NUM_REGULATORS = common dso_local global i32 0, align 4
@rk808_reg = common dso_local global %struct.regulator_desc* null, align 8
@RK808_NUM_REGULATORS = common dso_local global i32 0, align 4
@rk809_reg = common dso_local global %struct.regulator_desc* null, align 8
@RK809_NUM_REGULATORS = common dso_local global i32 0, align 4
@rk817_reg = common dso_local global %struct.regulator_desc* null, align 8
@RK817_NUM_REGULATORS = common dso_local global i32 0, align 4
@rk818_reg = common dso_local global %struct.regulator_desc* null, align 8
@RK818_NUM_REGULATORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unsupported RK8XX ID %lu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to register %d regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rk808_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk808_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rk808*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.regulator_config, align 8
  %7 = alloca %struct.regulator_dev*, align 8
  %8 = alloca %struct.rk808_regulator_data*, align 8
  %9 = alloca %struct.regulator_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.rk808* @dev_get_drvdata(i32 %16)
  store %struct.rk808* %17, %struct.rk808** %4, align 8
  %18 = load %struct.rk808*, %struct.rk808** %4, align 8
  %19 = getelementptr inbounds %struct.rk808, %struct.rk808* %18, i32 0, i32 2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %19, align 8
  store %struct.i2c_client* %20, %struct.i2c_client** %5, align 8
  %21 = bitcast %struct.regulator_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 24, i1 false)
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.rk808_regulator_data* @devm_kzalloc(%struct.TYPE_4__* %23, i32 4, i32 %24)
  store %struct.rk808_regulator_data* %25, %struct.rk808_regulator_data** %8, align 8
  %26 = load %struct.rk808_regulator_data*, %struct.rk808_regulator_data** %8, align 8
  %27 = icmp ne %struct.rk808_regulator_data* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %113

31:                                               ; preds = %1
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = load %struct.rk808*, %struct.rk808** %4, align 8
  %37 = getelementptr inbounds %struct.rk808, %struct.rk808* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.rk808_regulator_data*, %struct.rk808_regulator_data** %8, align 8
  %40 = call i32 @rk808_regulator_dt_parse_pdata(%struct.TYPE_4__* %33, i32* %35, i32 %38, %struct.rk808_regulator_data* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %2, align 4
  br label %113

45:                                               ; preds = %31
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = load %struct.rk808_regulator_data*, %struct.rk808_regulator_data** %8, align 8
  %48 = call i32 @platform_set_drvdata(%struct.platform_device* %46, %struct.rk808_regulator_data* %47)
  %49 = load %struct.rk808*, %struct.rk808** %4, align 8
  %50 = getelementptr inbounds %struct.rk808, %struct.rk808* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %67 [
    i32 132, label %52
    i32 131, label %55
    i32 130, label %58
    i32 129, label %61
    i32 128, label %64
  ]

52:                                               ; preds = %45
  %53 = load %struct.regulator_desc*, %struct.regulator_desc** @rk805_reg, align 8
  store %struct.regulator_desc* %53, %struct.regulator_desc** %9, align 8
  %54 = load i32, i32* @RK805_NUM_REGULATORS, align 4
  store i32 %54, i32* %12, align 4
  br label %76

55:                                               ; preds = %45
  %56 = load %struct.regulator_desc*, %struct.regulator_desc** @rk808_reg, align 8
  store %struct.regulator_desc* %56, %struct.regulator_desc** %9, align 8
  %57 = load i32, i32* @RK808_NUM_REGULATORS, align 4
  store i32 %57, i32* %12, align 4
  br label %76

58:                                               ; preds = %45
  %59 = load %struct.regulator_desc*, %struct.regulator_desc** @rk809_reg, align 8
  store %struct.regulator_desc* %59, %struct.regulator_desc** %9, align 8
  %60 = load i32, i32* @RK809_NUM_REGULATORS, align 4
  store i32 %60, i32* %12, align 4
  br label %76

61:                                               ; preds = %45
  %62 = load %struct.regulator_desc*, %struct.regulator_desc** @rk817_reg, align 8
  store %struct.regulator_desc* %62, %struct.regulator_desc** %9, align 8
  %63 = load i32, i32* @RK817_NUM_REGULATORS, align 4
  store i32 %63, i32* %12, align 4
  br label %76

64:                                               ; preds = %45
  %65 = load %struct.regulator_desc*, %struct.regulator_desc** @rk818_reg, align 8
  store %struct.regulator_desc* %65, %struct.regulator_desc** %9, align 8
  %66 = load i32, i32* @RK818_NUM_REGULATORS, align 4
  store i32 %66, i32* %12, align 4
  br label %76

67:                                               ; preds = %45
  %68 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = load %struct.rk808*, %struct.rk808** %4, align 8
  %71 = getelementptr inbounds %struct.rk808, %struct.rk808* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %113

76:                                               ; preds = %64, %61, %58, %55, %52
  %77 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %78 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  store i32* %78, i32** %79, align 8
  %80 = load %struct.rk808_regulator_data*, %struct.rk808_regulator_data** %8, align 8
  %81 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store %struct.rk808_regulator_data* %80, %struct.rk808_regulator_data** %81, align 8
  %82 = load %struct.rk808*, %struct.rk808** %4, align 8
  %83 = getelementptr inbounds %struct.rk808, %struct.rk808* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store i32 %84, i32* %85, align 8
  store i32 0, i32* %11, align 4
  br label %86

86:                                               ; preds = %109, %76
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %112

90:                                               ; preds = %86
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = load %struct.regulator_desc*, %struct.regulator_desc** %9, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %93, i64 %95
  %97 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_4__* %92, %struct.regulator_desc* %96, %struct.regulator_config* %6)
  store %struct.regulator_dev* %97, %struct.regulator_dev** %7, align 8
  %98 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %99 = call i64 @IS_ERR(%struct.regulator_dev* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %90
  %102 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 0
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @dev_err(i32* %103, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  %106 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %107 = call i32 @PTR_ERR(%struct.regulator_dev* %106)
  store i32 %107, i32* %2, align 4
  br label %113

108:                                              ; preds = %90
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  br label %86

112:                                              ; preds = %86
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %101, %67, %43, %28
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.rk808* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.rk808_regulator_data* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @rk808_regulator_dt_parse_pdata(%struct.TYPE_4__*, i32*, i32, %struct.rk808_regulator_data*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rk808_regulator_data*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_4__*, %struct.regulator_desc*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
