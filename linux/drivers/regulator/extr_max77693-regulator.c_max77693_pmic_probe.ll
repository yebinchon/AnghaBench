; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max77693-regulator.c_max77693_pmic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max77693-regulator.c_max77693_pmic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_desc = type { i32 }
%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.max77693_dev = type { i32 }
%struct.regulator_config = type { i32, i8*, i32 }
%struct.regulator_dev = type { i32 }
%struct.TYPE_4__ = type { i32 }

@max77693_supported_regulators = common dso_local global %struct.regulator_desc* null, align 8
@max77693_chg_reg_data = common dso_local global i32 0, align 4
@max77843_supported_regulators = common dso_local global %struct.regulator_desc* null, align 8
@max77843_chg_reg_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unsupported device type: %u\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to initialize regulator-%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max77693_pmic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_pmic_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.max77693_dev*, align 8
  %6 = alloca %struct.regulator_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.regulator_config, align 8
  %10 = alloca %struct.regulator_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = call %struct.TYPE_4__* @platform_get_device_id(%struct.platform_device* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.max77693_dev* @dev_get_drvdata(i32 %18)
  store %struct.max77693_dev* %19, %struct.max77693_dev** %5, align 8
  %20 = bitcast %struct.regulator_config* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 24, i1 false)
  %21 = load %struct.max77693_dev*, %struct.max77693_dev** %5, align 8
  %22 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %9, i32 0, i32 2
  store i32 %23, i32* %24, align 8
  %25 = load i32, i32* %4, align 4
  switch i32 %25, label %36 [
    i32 129, label %26
    i32 128, label %31
  ]

26:                                               ; preds = %1
  %27 = load %struct.regulator_desc*, %struct.regulator_desc** @max77693_supported_regulators, align 8
  store %struct.regulator_desc* %27, %struct.regulator_desc** %6, align 8
  %28 = load %struct.regulator_desc*, %struct.regulator_desc** @max77693_supported_regulators, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.regulator_desc* %28)
  store i32 %29, i32* %7, align 4
  %30 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %9, i32 0, i32 1
  store i8* bitcast (i32* @max77693_chg_reg_data to i8*), i8** %30, align 8
  br label %43

31:                                               ; preds = %1
  %32 = load %struct.regulator_desc*, %struct.regulator_desc** @max77843_supported_regulators, align 8
  store %struct.regulator_desc* %32, %struct.regulator_desc** %6, align 8
  %33 = load %struct.regulator_desc*, %struct.regulator_desc** @max77843_supported_regulators, align 8
  %34 = call i32 @ARRAY_SIZE(%struct.regulator_desc* %33)
  store i32 %34, i32* %7, align 4
  %35 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %9, i32 0, i32 1
  store i8* bitcast (i32* @max77843_chg_reg_data to i8*), i8** %35, align 8
  br label %43

36:                                               ; preds = %1
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @dev_err(%struct.TYPE_5__* %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %81

43:                                               ; preds = %31, %26
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %77, %43
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %80

48:                                               ; preds = %44
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.max77693_dev*, %struct.max77693_dev** %5, align 8
  %51 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %51, i64 %53
  %55 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @max77693_get_regmap(i32 %49, %struct.max77693_dev* %50, i32 %56)
  %58 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %9, i32 0, i32 0
  store i32 %57, i32* %58, align 8
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %61, i64 %63
  %65 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_5__* %60, %struct.regulator_desc* %64, %struct.regulator_config* %9)
  store %struct.regulator_dev* %65, %struct.regulator_dev** %10, align 8
  %66 = load %struct.regulator_dev*, %struct.regulator_dev** %10, align 8
  %67 = call i64 @IS_ERR(%struct.regulator_dev* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %48
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @dev_err(%struct.TYPE_5__* %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load %struct.regulator_dev*, %struct.regulator_dev** %10, align 8
  %75 = call i32 @PTR_ERR(%struct.regulator_dev* %74)
  store i32 %75, i32* %2, align 4
  br label %81

76:                                               ; preds = %48
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %44

80:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %69, %36
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.TYPE_4__* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local %struct.max77693_dev* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ARRAY_SIZE(%struct.regulator_desc*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @max77693_get_regmap(i32, %struct.max77693_dev*, i32) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_5__*, %struct.regulator_desc*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
