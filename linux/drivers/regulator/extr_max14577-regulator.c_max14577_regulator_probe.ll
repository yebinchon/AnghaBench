; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max14577-regulator.c_max14577_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max14577-regulator.c_max14577_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_desc = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.max14577 = type { i32, i32 }
%struct.max14577_platform_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.regulator_config = type { i32, i32, i32, %struct.max14577*, i32 }
%struct.regulator_dev = type { i32 }

@max77836_supported_regulators = common dso_local global %struct.regulator_desc* null, align 8
@max14577_supported_regulators = common dso_local global %struct.regulator_desc* null, align 8
@.str = private unnamed_addr constant [48 x i8] c"Regulator init failed for %d/%s with error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max14577_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max14577_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.max14577*, align 8
  %5 = alloca %struct.max14577_platform_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.regulator_config, align 8
  %9 = alloca %struct.regulator_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.regulator_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.max14577* @dev_get_drvdata(i32 %16)
  store %struct.max14577* %17, %struct.max14577** %4, align 8
  %18 = load %struct.max14577*, %struct.max14577** %4, align 8
  %19 = getelementptr inbounds %struct.max14577, %struct.max14577* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.max14577_platform_data* @dev_get_platdata(i32 %20)
  store %struct.max14577_platform_data* %21, %struct.max14577_platform_data** %5, align 8
  store i32 0, i32* %7, align 4
  %22 = bitcast %struct.regulator_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 32, i1 false)
  %23 = load %struct.max14577*, %struct.max14577** %4, align 8
  %24 = getelementptr inbounds %struct.max14577, %struct.max14577* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  switch i32 %26, label %32 [
    i32 128, label %27
    i32 129, label %31
  ]

27:                                               ; preds = %1
  %28 = load %struct.regulator_desc*, %struct.regulator_desc** @max77836_supported_regulators, align 8
  store %struct.regulator_desc* %28, %struct.regulator_desc** %9, align 8
  %29 = load %struct.regulator_desc*, %struct.regulator_desc** @max77836_supported_regulators, align 8
  %30 = call i32 @ARRAY_SIZE(%struct.regulator_desc* %29)
  store i32 %30, i32* %10, align 4
  br label %36

31:                                               ; preds = %1
  br label %32

32:                                               ; preds = %1, %31
  %33 = load %struct.regulator_desc*, %struct.regulator_desc** @max14577_supported_regulators, align 8
  store %struct.regulator_desc* %33, %struct.regulator_desc** %9, align 8
  %34 = load %struct.regulator_desc*, %struct.regulator_desc** @max14577_supported_regulators, align 8
  %35 = call i32 @ARRAY_SIZE(%struct.regulator_desc* %34)
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load %struct.max14577*, %struct.max14577** %4, align 8
  %38 = getelementptr inbounds %struct.max14577, %struct.max14577* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 4
  store i32 %39, i32* %40, align 8
  %41 = load %struct.max14577*, %struct.max14577** %4, align 8
  %42 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 3
  store %struct.max14577* %41, %struct.max14577** %42, align 8
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %110, %36
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %113

47:                                               ; preds = %43
  %48 = load %struct.max14577_platform_data*, %struct.max14577_platform_data** %5, align 8
  %49 = icmp ne %struct.max14577_platform_data* %48, null
  br i1 %49, label %50, label %74

50:                                               ; preds = %47
  %51 = load %struct.max14577_platform_data*, %struct.max14577_platform_data** %5, align 8
  %52 = getelementptr inbounds %struct.max14577_platform_data, %struct.max14577_platform_data* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = icmp ne %struct.TYPE_4__* %53, null
  br i1 %54, label %55, label %74

55:                                               ; preds = %50
  %56 = load %struct.max14577_platform_data*, %struct.max14577_platform_data** %5, align 8
  %57 = getelementptr inbounds %struct.max14577_platform_data, %struct.max14577_platform_data* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 2
  store i32 %63, i32* %64, align 8
  %65 = load %struct.max14577_platform_data*, %struct.max14577_platform_data** %5, align 8
  %66 = getelementptr inbounds %struct.max14577_platform_data, %struct.max14577_platform_data* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 1
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %55, %50, %47
  %75 = load %struct.max14577*, %struct.max14577** %4, align 8
  %76 = load %struct.regulator_desc*, %struct.regulator_desc** %9, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %76, i64 %78
  %80 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @max14577_get_regmap(%struct.max14577* %75, i32 %81)
  %83 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 0
  store i32 %82, i32* %83, align 8
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load %struct.regulator_desc*, %struct.regulator_desc** %9, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %86, i64 %88
  %90 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_5__* %85, %struct.regulator_desc* %89, %struct.regulator_config* %8)
  store %struct.regulator_dev* %90, %struct.regulator_dev** %12, align 8
  %91 = load %struct.regulator_dev*, %struct.regulator_dev** %12, align 8
  %92 = call i64 @IS_ERR(%struct.regulator_dev* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %74
  %95 = load %struct.regulator_dev*, %struct.regulator_dev** %12, align 8
  %96 = call i32 @PTR_ERR(%struct.regulator_dev* %95)
  store i32 %96, i32* %7, align 4
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.regulator_desc*, %struct.regulator_desc** %9, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %100, i64 %102
  %104 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @dev_err(%struct.TYPE_5__* %98, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %99, i32 %105, i32 %106)
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %2, align 4
  br label %115

109:                                              ; preds = %74
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %43

113:                                              ; preds = %43
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %113, %94
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.max14577* @dev_get_drvdata(i32) #1

declare dso_local %struct.max14577_platform_data* @dev_get_platdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ARRAY_SIZE(%struct.regulator_desc*) #1

declare dso_local i32 @max14577_get_regmap(%struct.max14577*, i32) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_5__*, %struct.regulator_desc*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
