; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8925-regulator.c_max8925_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8925-regulator.c_max8925_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8925_regulator_info = type { i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.max8925_chip = type { i32, i32 }
%struct.regulator_init_data = type { i32 }
%struct.regulator_config = type { %struct.regulator_init_data*, %struct.max8925_regulator_info*, i32 }
%struct.resource = type { i64 }
%struct.regulator_dev = type { i32 }

@IORESOURCE_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"No REG resource!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@max8925_regulator_info = common dso_local global %struct.max8925_regulator_info* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to find regulator %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to register regulator %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max8925_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8925_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.max8925_chip*, align 8
  %5 = alloca %struct.regulator_init_data*, align 8
  %6 = alloca %struct.regulator_config, align 8
  %7 = alloca %struct.max8925_regulator_info*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.regulator_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.max8925_chip* @dev_get_drvdata(i32 %14)
  store %struct.max8925_chip* %15, %struct.max8925_chip** %4, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call %struct.regulator_init_data* @dev_get_platdata(%struct.TYPE_5__* %17)
  store %struct.regulator_init_data* %18, %struct.regulator_init_data** %5, align 8
  %19 = bitcast %struct.regulator_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 24, i1 false)
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load i32, i32* @IORESOURCE_REG, align 4
  %22 = call %struct.resource* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  store %struct.resource* %22, %struct.resource** %8, align 8
  %23 = load %struct.resource*, %struct.resource** %8, align 8
  %24 = icmp ne %struct.resource* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %108

31:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %51, %31
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.max8925_regulator_info*, %struct.max8925_regulator_info** @max8925_regulator_info, align 8
  %35 = call i32 @ARRAY_SIZE(%struct.max8925_regulator_info* %34)
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %32
  %38 = load %struct.max8925_regulator_info*, %struct.max8925_regulator_info** @max8925_regulator_info, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.max8925_regulator_info, %struct.max8925_regulator_info* %38, i64 %40
  store %struct.max8925_regulator_info* %41, %struct.max8925_regulator_info** %7, align 8
  %42 = load %struct.max8925_regulator_info*, %struct.max8925_regulator_info** %7, align 8
  %43 = getelementptr inbounds %struct.max8925_regulator_info, %struct.max8925_regulator_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.resource*, %struct.resource** %8, align 8
  %46 = getelementptr inbounds %struct.resource, %struct.resource* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %54

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %32

54:                                               ; preds = %49, %32
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.max8925_regulator_info*, %struct.max8925_regulator_info** @max8925_regulator_info, align 8
  %57 = call i32 @ARRAY_SIZE(%struct.max8925_regulator_info* %56)
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load %struct.resource*, %struct.resource** %8, align 8
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %108

68:                                               ; preds = %54
  %69 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %70 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.max8925_regulator_info*, %struct.max8925_regulator_info** %7, align 8
  %73 = getelementptr inbounds %struct.max8925_regulator_info, %struct.max8925_regulator_info* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %75 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  store i32 %76, i32* %77, align 8
  %78 = load %struct.max8925_regulator_info*, %struct.max8925_regulator_info** %7, align 8
  %79 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store %struct.max8925_regulator_info* %78, %struct.max8925_regulator_info** %79, align 8
  %80 = load %struct.regulator_init_data*, %struct.regulator_init_data** %5, align 8
  %81 = icmp ne %struct.regulator_init_data* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %68
  %83 = load %struct.regulator_init_data*, %struct.regulator_init_data** %5, align 8
  %84 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store %struct.regulator_init_data* %83, %struct.regulator_init_data** %84, align 8
  br label %85

85:                                               ; preds = %82, %68
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = load %struct.max8925_regulator_info*, %struct.max8925_regulator_info** %7, align 8
  %89 = getelementptr inbounds %struct.max8925_regulator_info, %struct.max8925_regulator_info* %88, i32 0, i32 1
  %90 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_5__* %87, %struct.TYPE_6__* %89, %struct.regulator_config* %6)
  store %struct.regulator_dev* %90, %struct.regulator_dev** %9, align 8
  %91 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %92 = call i64 @IS_ERR(%struct.regulator_dev* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %85
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = load %struct.max8925_regulator_info*, %struct.max8925_regulator_info** %7, align 8
  %98 = getelementptr inbounds %struct.max8925_regulator_info, %struct.max8925_regulator_info* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %96, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %100)
  %102 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %103 = call i32 @PTR_ERR(%struct.regulator_dev* %102)
  store i32 %103, i32* %2, align 4
  br label %108

104:                                              ; preds = %85
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %107 = call i32 @platform_set_drvdata(%struct.platform_device* %105, %struct.regulator_dev* %106)
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %104, %94, %59, %25
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.max8925_chip* @dev_get_drvdata(i32) #1

declare dso_local %struct.regulator_init_data* @dev_get_platdata(%struct.TYPE_5__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.max8925_regulator_info*) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_5__*, %struct.TYPE_6__*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
