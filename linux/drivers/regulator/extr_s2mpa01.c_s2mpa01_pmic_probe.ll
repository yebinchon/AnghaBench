; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_s2mpa01.c_s2mpa01_pmic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_s2mpa01.c_s2mpa01_pmic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sec_pmic_dev = type { i32, i32 }
%struct.sec_platform_data = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.regulator_config = type { i32, %struct.s2mpa01_info*, i32, i32 }
%struct.s2mpa01_info = type { i32 }
%struct.regulator_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@S2MPA01_REGULATOR_MAX = common dso_local global i32 0, align 4
@regulators = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"regulator init failed for %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s2mpa01_pmic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2mpa01_pmic_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sec_pmic_dev*, align 8
  %5 = alloca %struct.sec_platform_data*, align 8
  %6 = alloca %struct.regulator_config, align 8
  %7 = alloca %struct.s2mpa01_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.regulator_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.sec_pmic_dev* @dev_get_drvdata(i32 %13)
  store %struct.sec_pmic_dev* %14, %struct.sec_pmic_dev** %4, align 8
  %15 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %4, align 8
  %16 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.sec_platform_data* @dev_get_platdata(i32 %17)
  store %struct.sec_platform_data* %18, %struct.sec_platform_data** %5, align 8
  %19 = bitcast %struct.regulator_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 24, i1 false)
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.s2mpa01_info* @devm_kzalloc(%struct.TYPE_6__* %21, i32 4, i32 %22)
  store %struct.s2mpa01_info* %23, %struct.s2mpa01_info** %7, align 8
  %24 = load %struct.s2mpa01_info*, %struct.s2mpa01_info** %7, align 8
  %25 = icmp ne %struct.s2mpa01_info* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %80

29:                                               ; preds = %1
  %30 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %4, align 8
  %31 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 3
  store i32 %32, i32* %33, align 4
  %34 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %4, align 8
  %35 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = load %struct.s2mpa01_info*, %struct.s2mpa01_info** %7, align 8
  %39 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store %struct.s2mpa01_info* %38, %struct.s2mpa01_info** %39, align 8
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %76, %29
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @S2MPA01_REGULATOR_MAX, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %79

44:                                               ; preds = %40
  %45 = load %struct.sec_platform_data*, %struct.sec_platform_data** %5, align 8
  %46 = icmp ne %struct.sec_platform_data* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load %struct.sec_platform_data*, %struct.sec_platform_data** %5, align 8
  %49 = getelementptr inbounds %struct.sec_platform_data, %struct.sec_platform_data* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store i32 %55, i32* %56, align 8
  br label %57

57:                                               ; preds = %47, %44
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = load i32*, i32** @regulators, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_6__* %59, i32* %63, %struct.regulator_config* %6)
  store %struct.regulator_dev* %64, %struct.regulator_dev** %9, align 8
  %65 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %66 = call i64 @IS_ERR(%struct.regulator_dev* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %57
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @dev_err(%struct.TYPE_6__* %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %74 = call i32 @PTR_ERR(%struct.regulator_dev* %73)
  store i32 %74, i32* %2, align 4
  br label %80

75:                                               ; preds = %57
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %40

79:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %68, %26
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.sec_pmic_dev* @dev_get_drvdata(i32) #1

declare dso_local %struct.sec_platform_data* @dev_get_platdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.s2mpa01_info* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_6__*, i32*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
