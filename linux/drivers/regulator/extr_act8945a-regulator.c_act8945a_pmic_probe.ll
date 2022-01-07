; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_act8945a-regulator.c_act8945a_pmic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_act8945a-regulator.c_act8945a_pmic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_desc = type { i32 }
%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.regulator_config = type { %struct.act8945a_pmic*, %struct.TYPE_5__* }
%struct.act8945a_pmic = type { i32 }
%struct.regulator_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"could not retrieve regmap from parent device\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"active-semi,vsel-high\00", align 1
@act8945a_alt_regulators = common dso_local global %struct.regulator_desc* null, align 8
@act8945a_regulators = common dso_local global %struct.regulator_desc* null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to register %s regulator\0A\00", align 1
@ACT8945A_SYS_UNLK_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @act8945a_pmic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @act8945a_pmic_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.regulator_config, align 8
  %5 = alloca %struct.regulator_desc*, align 8
  %6 = alloca %struct.act8945a_pmic*, align 8
  %7 = alloca %struct.regulator_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = bitcast %struct.regulator_config* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.act8945a_pmic* @devm_kzalloc(%struct.TYPE_5__* %13, i32 4, i32 %14)
  store %struct.act8945a_pmic* %15, %struct.act8945a_pmic** %6, align 8
  %16 = load %struct.act8945a_pmic*, %struct.act8945a_pmic** %6, align 8
  %17 = icmp ne %struct.act8945a_pmic* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %112

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = call i32 @dev_get_regmap(%struct.TYPE_6__* %25, i32* null)
  %27 = load %struct.act8945a_pmic*, %struct.act8945a_pmic** %6, align 8
  %28 = getelementptr inbounds %struct.act8945a_pmic, %struct.act8945a_pmic* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.act8945a_pmic*, %struct.act8945a_pmic** %6, align 8
  %30 = getelementptr inbounds %struct.act8945a_pmic, %struct.act8945a_pmic* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %21
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %35, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %112

39:                                               ; preds = %21
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @of_property_read_bool(i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load %struct.regulator_desc*, %struct.regulator_desc** @act8945a_alt_regulators, align 8
  store %struct.regulator_desc* %50, %struct.regulator_desc** %5, align 8
  %51 = load %struct.regulator_desc*, %struct.regulator_desc** @act8945a_alt_regulators, align 8
  %52 = call i32 @ARRAY_SIZE(%struct.regulator_desc* %51)
  store i32 %52, i32* %9, align 4
  br label %57

53:                                               ; preds = %39
  %54 = load %struct.regulator_desc*, %struct.regulator_desc** @act8945a_regulators, align 8
  store %struct.regulator_desc* %54, %struct.regulator_desc** %5, align 8
  %55 = load %struct.regulator_desc*, %struct.regulator_desc** @act8945a_regulators, align 8
  %56 = call i32 @ARRAY_SIZE(%struct.regulator_desc* %55)
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %4, i32 0, i32 1
  store %struct.TYPE_5__* %59, %struct.TYPE_5__** %60, align 8
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %4, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 8
  %70 = load %struct.act8945a_pmic*, %struct.act8945a_pmic** %6, align 8
  %71 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %4, i32 0, i32 0
  store %struct.act8945a_pmic* %70, %struct.act8945a_pmic** %71, align 8
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %100, %57
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %103

76:                                               ; preds = %72
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %79, i64 %81
  %83 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_5__* %78, %struct.regulator_desc* %82, %struct.regulator_config* %4)
  store %struct.regulator_dev* %83, %struct.regulator_dev** %7, align 8
  %84 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %85 = call i64 @IS_ERR(%struct.regulator_dev* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %76
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %90, i64 %92
  %94 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %98 = call i32 @PTR_ERR(%struct.regulator_dev* %97)
  store i32 %98, i32* %2, align 4
  br label %112

99:                                               ; preds = %76
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %72

103:                                              ; preds = %72
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = load %struct.act8945a_pmic*, %struct.act8945a_pmic** %6, align 8
  %106 = call i32 @platform_set_drvdata(%struct.platform_device* %104, %struct.act8945a_pmic* %105)
  %107 = load %struct.act8945a_pmic*, %struct.act8945a_pmic** %6, align 8
  %108 = getelementptr inbounds %struct.act8945a_pmic, %struct.act8945a_pmic* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @ACT8945A_SYS_UNLK_REGS, align 4
  %111 = call i32 @regmap_write(i32 %109, i32 %110, i32 239)
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %103, %87, %33, %18
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.act8945a_pmic* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #2

declare dso_local i32 @dev_get_regmap(%struct.TYPE_6__*, i32*) #2

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #2

declare dso_local i32 @of_property_read_bool(i32, i8*) #2

declare dso_local i32 @ARRAY_SIZE(%struct.regulator_desc*) #2

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_5__*, %struct.regulator_desc*, %struct.regulator_config*) #2

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.act8945a_pmic*) #2

declare dso_local i32 @regmap_write(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
