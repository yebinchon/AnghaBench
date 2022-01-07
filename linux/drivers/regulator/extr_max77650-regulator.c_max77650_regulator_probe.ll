; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max77650-regulator.c_max77650_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max77650-regulator.c_max77650_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77650_regulator_desc = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i64, %struct.device* }
%struct.regulator_config = type { %struct.max77650_regulator_desc*, %struct.device* }
%struct.regulator_dev = type { i32 }
%struct.regmap = type { i32 }

@MAX77650_REGULATOR_NUM_REGULATORS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MAX77650_REG_CID = common dso_local global i32 0, align 4
@max77650_LDO_desc = common dso_local global %struct.max77650_regulator_desc zeroinitializer, align 4
@MAX77650_REGULATOR_ID_LDO = common dso_local global i64 0, align 8
@max77650_SBB0_desc = common dso_local global %struct.max77650_regulator_desc zeroinitializer, align 4
@MAX77650_REGULATOR_ID_SBB0 = common dso_local global i64 0, align 8
@max77650_SBB1_desc = common dso_local global %struct.max77650_regulator_desc zeroinitializer, align 4
@MAX77650_REGULATOR_ID_SBB1 = common dso_local global i64 0, align 8
@max77650_SBB2_desc = common dso_local global %struct.max77650_regulator_desc zeroinitializer, align 4
@MAX77650_REGULATOR_ID_SBB2 = common dso_local global i64 0, align 8
@max77651_SBB1_desc = common dso_local global %struct.max77650_regulator_desc zeroinitializer, align 4
@max77651_SBB2_desc = common dso_local global %struct.max77650_regulator_desc zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max77650_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77650_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.max77650_regulator_desc**, align 8
  %5 = alloca %struct.max77650_regulator_desc*, align 8
  %6 = alloca %struct.regulator_config, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.regulator_dev*, align 8
  %10 = alloca %struct.regmap*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = bitcast %struct.regulator_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 16, i1 false)
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %7, align 8
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 1
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %8, align 8
  %20 = load %struct.device*, %struct.device** %7, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %8, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.device*, %struct.device** %7, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %24, %1
  %31 = load %struct.device*, %struct.device** %7, align 8
  %32 = load i32, i32* @MAX77650_REGULATOR_NUM_REGULATORS, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.max77650_regulator_desc** @devm_kcalloc(%struct.device* %31, i32 %32, i32 8, i32 %33)
  store %struct.max77650_regulator_desc** %34, %struct.max77650_regulator_desc*** %4, align 8
  %35 = load %struct.max77650_regulator_desc**, %struct.max77650_regulator_desc*** %4, align 8
  %36 = icmp ne %struct.max77650_regulator_desc** %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %112

40:                                               ; preds = %30
  %41 = load %struct.device*, %struct.device** %8, align 8
  %42 = call %struct.regmap* @dev_get_regmap(%struct.device* %41, i32* null)
  store %struct.regmap* %42, %struct.regmap** %10, align 8
  %43 = load %struct.regmap*, %struct.regmap** %10, align 8
  %44 = icmp ne %struct.regmap* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %112

48:                                               ; preds = %40
  %49 = load %struct.regmap*, %struct.regmap** %10, align 8
  %50 = load i32, i32* @MAX77650_REG_CID, align 4
  %51 = call i32 @regmap_read(%struct.regmap* %49, i32 %50, i32* %11)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %2, align 4
  br label %112

56:                                               ; preds = %48
  %57 = load %struct.max77650_regulator_desc**, %struct.max77650_regulator_desc*** %4, align 8
  %58 = load i64, i64* @MAX77650_REGULATOR_ID_LDO, align 8
  %59 = getelementptr inbounds %struct.max77650_regulator_desc*, %struct.max77650_regulator_desc** %57, i64 %58
  store %struct.max77650_regulator_desc* @max77650_LDO_desc, %struct.max77650_regulator_desc** %59, align 8
  %60 = load %struct.max77650_regulator_desc**, %struct.max77650_regulator_desc*** %4, align 8
  %61 = load i64, i64* @MAX77650_REGULATOR_ID_SBB0, align 8
  %62 = getelementptr inbounds %struct.max77650_regulator_desc*, %struct.max77650_regulator_desc** %60, i64 %61
  store %struct.max77650_regulator_desc* @max77650_SBB0_desc, %struct.max77650_regulator_desc** %62, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @MAX77650_CID_BITS(i32 %63)
  switch i32 %64, label %79 [
    i32 131, label %65
    i32 130, label %65
    i32 129, label %72
    i32 128, label %72
  ]

65:                                               ; preds = %56, %56
  %66 = load %struct.max77650_regulator_desc**, %struct.max77650_regulator_desc*** %4, align 8
  %67 = load i64, i64* @MAX77650_REGULATOR_ID_SBB1, align 8
  %68 = getelementptr inbounds %struct.max77650_regulator_desc*, %struct.max77650_regulator_desc** %66, i64 %67
  store %struct.max77650_regulator_desc* @max77650_SBB1_desc, %struct.max77650_regulator_desc** %68, align 8
  %69 = load %struct.max77650_regulator_desc**, %struct.max77650_regulator_desc*** %4, align 8
  %70 = load i64, i64* @MAX77650_REGULATOR_ID_SBB2, align 8
  %71 = getelementptr inbounds %struct.max77650_regulator_desc*, %struct.max77650_regulator_desc** %69, i64 %70
  store %struct.max77650_regulator_desc* @max77650_SBB2_desc, %struct.max77650_regulator_desc** %71, align 8
  br label %82

72:                                               ; preds = %56, %56
  %73 = load %struct.max77650_regulator_desc**, %struct.max77650_regulator_desc*** %4, align 8
  %74 = load i64, i64* @MAX77650_REGULATOR_ID_SBB1, align 8
  %75 = getelementptr inbounds %struct.max77650_regulator_desc*, %struct.max77650_regulator_desc** %73, i64 %74
  store %struct.max77650_regulator_desc* @max77651_SBB1_desc, %struct.max77650_regulator_desc** %75, align 8
  %76 = load %struct.max77650_regulator_desc**, %struct.max77650_regulator_desc*** %4, align 8
  %77 = load i64, i64* @MAX77650_REGULATOR_ID_SBB2, align 8
  %78 = getelementptr inbounds %struct.max77650_regulator_desc*, %struct.max77650_regulator_desc** %76, i64 %77
  store %struct.max77650_regulator_desc* @max77651_SBB2_desc, %struct.max77650_regulator_desc** %78, align 8
  br label %82

79:                                               ; preds = %56
  %80 = load i32, i32* @ENODEV, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %112

82:                                               ; preds = %72, %65
  %83 = load %struct.device*, %struct.device** %8, align 8
  %84 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store %struct.device* %83, %struct.device** %84, align 8
  store i32 0, i32* %12, align 4
  br label %85

85:                                               ; preds = %108, %82
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @MAX77650_REGULATOR_NUM_REGULATORS, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %111

89:                                               ; preds = %85
  %90 = load %struct.max77650_regulator_desc**, %struct.max77650_regulator_desc*** %4, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.max77650_regulator_desc*, %struct.max77650_regulator_desc** %90, i64 %92
  %94 = load %struct.max77650_regulator_desc*, %struct.max77650_regulator_desc** %93, align 8
  store %struct.max77650_regulator_desc* %94, %struct.max77650_regulator_desc** %5, align 8
  %95 = load %struct.max77650_regulator_desc*, %struct.max77650_regulator_desc** %5, align 8
  %96 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store %struct.max77650_regulator_desc* %95, %struct.max77650_regulator_desc** %96, align 8
  %97 = load %struct.device*, %struct.device** %7, align 8
  %98 = load %struct.max77650_regulator_desc*, %struct.max77650_regulator_desc** %5, align 8
  %99 = getelementptr inbounds %struct.max77650_regulator_desc, %struct.max77650_regulator_desc* %98, i32 0, i32 0
  %100 = call %struct.regulator_dev* @devm_regulator_register(%struct.device* %97, i32* %99, %struct.regulator_config* %6)
  store %struct.regulator_dev* %100, %struct.regulator_dev** %9, align 8
  %101 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %102 = call i64 @IS_ERR(%struct.regulator_dev* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %89
  %105 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %106 = call i32 @PTR_ERR(%struct.regulator_dev* %105)
  store i32 %106, i32* %2, align 4
  br label %112

107:                                              ; preds = %89
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  br label %85

111:                                              ; preds = %85
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %104, %79, %54, %45, %37
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.max77650_regulator_desc** @devm_kcalloc(%struct.device*, i32, i32, i32) #2

declare dso_local %struct.regmap* @dev_get_regmap(%struct.device*, i32*) #2

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #2

declare dso_local i32 @MAX77650_CID_BITS(i32) #2

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.device*, i32*, %struct.regulator_config*) #2

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
