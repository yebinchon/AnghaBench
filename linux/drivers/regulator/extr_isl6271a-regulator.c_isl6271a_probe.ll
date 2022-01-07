; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_isl6271a-regulator.c_isl6271a_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_isl6271a-regulator.c_isl6271a_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.regulator_dev = type { i32 }
%struct.regulator_config = type { %struct.isl_pmic*, %struct.regulator_init_data*, i32* }
%struct.isl_pmic = type { i32, %struct.i2c_client* }
%struct.regulator_init_data = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@isl_rd = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"failed to register %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @isl6271a_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl6271a_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.regulator_dev*, align 8
  %7 = alloca %struct.regulator_config, align 8
  %8 = alloca %struct.regulator_init_data*, align 8
  %9 = alloca %struct.isl_pmic*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = bitcast %struct.regulator_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = call %struct.regulator_init_data* @dev_get_platdata(i32* %13)
  store %struct.regulator_init_data* %14, %struct.regulator_init_data** %8, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %19 = call i32 @i2c_check_functionality(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %85

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.isl_pmic* @devm_kzalloc(i32* %26, i32 16, i32 %27)
  store %struct.isl_pmic* %28, %struct.isl_pmic** %9, align 8
  %29 = load %struct.isl_pmic*, %struct.isl_pmic** %9, align 8
  %30 = icmp ne %struct.isl_pmic* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %85

34:                                               ; preds = %24
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load %struct.isl_pmic*, %struct.isl_pmic** %9, align 8
  %37 = getelementptr inbounds %struct.isl_pmic, %struct.isl_pmic* %36, i32 0, i32 1
  store %struct.i2c_client* %35, %struct.i2c_client** %37, align 8
  %38 = load %struct.isl_pmic*, %struct.isl_pmic** %9, align 8
  %39 = getelementptr inbounds %struct.isl_pmic, %struct.isl_pmic* %38, i32 0, i32 0
  %40 = call i32 @mutex_init(i32* %39)
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %78, %34
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 3
  br i1 %43, label %44, label %81

44:                                               ; preds = %41
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 2
  store i32* %46, i32** %47, align 8
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.regulator_init_data*, %struct.regulator_init_data** %8, align 8
  %52 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 1
  store %struct.regulator_init_data* %51, %struct.regulator_init_data** %52, align 8
  br label %55

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 1
  store %struct.regulator_init_data* null, %struct.regulator_init_data** %54, align 8
  br label %55

55:                                               ; preds = %53, %50
  %56 = load %struct.isl_pmic*, %struct.isl_pmic** %9, align 8
  %57 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 0
  store %struct.isl_pmic* %56, %struct.isl_pmic** %57, align 8
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 0
  %60 = load i32*, i32** @isl_rd, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = call %struct.regulator_dev* @devm_regulator_register(i32* %59, i32* %63, %struct.regulator_config* %7)
  store %struct.regulator_dev* %64, %struct.regulator_dev** %6, align 8
  %65 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %66 = call i64 @IS_ERR(%struct.regulator_dev* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %55
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 0
  %71 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %72 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %76 = call i32 @PTR_ERR(%struct.regulator_dev* %75)
  store i32 %76, i32* %3, align 4
  br label %85

77:                                               ; preds = %55
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %41

81:                                               ; preds = %41
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = load %struct.isl_pmic*, %struct.isl_pmic** %9, align 8
  %84 = call i32 @i2c_set_clientdata(%struct.i2c_client* %82, %struct.isl_pmic* %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %81, %68, %31, %21
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.regulator_init_data* @dev_get_platdata(i32*) #2

declare dso_local i32 @i2c_check_functionality(i32, i32) #2

declare dso_local %struct.isl_pmic* @devm_kzalloc(i32*, i32, i32) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local %struct.regulator_dev* @devm_regulator_register(i32*, i32*, %struct.regulator_config*) #2

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.isl_pmic*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
