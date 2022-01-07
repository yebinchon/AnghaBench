; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da903x.c_da903x_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da903x.c_da903x_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.da903x_regulator_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32*, i32, i32 }
%struct.regulator_dev = type { i32 }
%struct.regulator_config = type { %struct.da903x_regulator_info*, i32, i32* }

@.str = private unnamed_addr constant [32 x i8] c"invalid regulator ID specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DA9034_ID_LDO12 = common dso_local global i64 0, align 8
@da9034_regulator_ldo12_ops = common dso_local global i32 0, align 4
@da9034_ldo12_ranges = common dso_local global i32 0, align 4
@DA9030_ID_LDO14 = common dso_local global i64 0, align 8
@da9030_regulator_ldo14_ops = common dso_local global i32 0, align 4
@DA9030_ID_LDO1 = common dso_local global i64 0, align 8
@DA9030_ID_LDO15 = common dso_local global i64 0, align 8
@da9030_regulator_ldo1_15_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to register regulator %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da903x_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da903x_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.da903x_regulator_info*, align 8
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca %struct.regulator_config, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.da903x_regulator_info* null, %struct.da903x_regulator_info** %4, align 8
  %7 = bitcast %struct.regulator_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 24, i1 false)
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.da903x_regulator_info* @find_regulator_info(i32 %10)
  store %struct.da903x_regulator_info* %11, %struct.da903x_regulator_info** %4, align 8
  %12 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %4, align 8
  %13 = icmp eq %struct.da903x_regulator_info* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 (i32*, i8*, ...) @dev_err(i32* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %104

20:                                               ; preds = %1
  %21 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %4, align 8
  %22 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DA9034_ID_LDO12, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %20
  %28 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %4, align 8
  %29 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  store i32* @da9034_regulator_ldo12_ops, i32** %30, align 8
  %31 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %4, align 8
  %32 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 16, i32* %33, align 8
  %34 = load i32, i32* @da9034_ldo12_ranges, align 4
  %35 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %4, align 8
  %36 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 5
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @da9034_ldo12_ranges, align 4
  %39 = call i32 @ARRAY_SIZE(i32 %38)
  %40 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %4, align 8
  %41 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 4
  store i32 %39, i32* %42, align 8
  br label %43

43:                                               ; preds = %27, %20
  %44 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %4, align 8
  %45 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DA9030_ID_LDO14, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %4, align 8
  %52 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  store i32* @da9030_regulator_ldo14_ops, i32** %53, align 8
  br label %54

54:                                               ; preds = %50, %43
  %55 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %4, align 8
  %56 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DA9030_ID_LDO1, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %68, label %61

61:                                               ; preds = %54
  %62 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %4, align 8
  %63 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @DA9030_ID_LDO15, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %61, %54
  %69 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %4, align 8
  %70 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  store i32* @da9030_regulator_ldo1_15_ops, i32** %71, align 8
  br label %72

72:                                               ; preds = %68, %61
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  store i32* %74, i32** %75, align 8
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = call i32 @dev_get_platdata(i32* %77)
  %79 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store i32 %78, i32* %79, align 8
  %80 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %4, align 8
  %81 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store %struct.da903x_regulator_info* %80, %struct.da903x_regulator_info** %81, align 8
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %4, align 8
  %85 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %84, i32 0, i32 0
  %86 = call %struct.regulator_dev* @devm_regulator_register(i32* %83, %struct.TYPE_2__* %85, %struct.regulator_config* %6)
  store %struct.regulator_dev* %86, %struct.regulator_dev** %5, align 8
  %87 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %88 = call i64 @IS_ERR(%struct.regulator_dev* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %72
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %4, align 8
  %94 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i32*, i8*, ...) @dev_err(i32* %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  %98 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %99 = call i32 @PTR_ERR(%struct.regulator_dev* %98)
  store i32 %99, i32* %2, align 4
  br label %104

100:                                              ; preds = %72
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %103 = call i32 @platform_set_drvdata(%struct.platform_device* %101, %struct.regulator_dev* %102)
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %100, %90, %14
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.da903x_regulator_info* @find_regulator_info(i32) #2

declare dso_local i32 @dev_err(i32*, i8*, ...) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @dev_get_platdata(i32*) #2

declare dso_local %struct.regulator_dev* @devm_regulator_register(i32*, %struct.TYPE_2__*, %struct.regulator_config*) #2

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.regulator_dev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
