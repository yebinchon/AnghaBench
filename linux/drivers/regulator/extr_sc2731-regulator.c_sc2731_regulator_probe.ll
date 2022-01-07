; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_sc2731-regulator.c_sc2731_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_sc2731-regulator.c_sc2731_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.regmap = type { i32 }
%struct.regulator_config = type { %struct.regmap*, %struct.TYPE_7__* }
%struct.regulator_dev = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"failed to get regmap.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to release regulator lock\0A\00", align 1
@regulators = common dso_local global %struct.TYPE_6__* null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to register regulator %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sc2731_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc2731_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca %struct.regulator_config, align 8
  %8 = alloca %struct.regulator_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = bitcast %struct.regulator_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 16, i1 false)
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.regmap* @dev_get_regmap(i32 %13, i32* null)
  store %struct.regmap* %14, %struct.regmap** %6, align 8
  %15 = load %struct.regmap*, %struct.regmap** %6, align 8
  %16 = icmp ne %struct.regmap* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %72

23:                                               ; preds = %1
  %24 = load %struct.regmap*, %struct.regmap** %6, align 8
  %25 = call i32 @sc2731_regulator_unlock(%struct.regmap* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %72

33:                                               ; preds = %23
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 1
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %36, align 8
  %37 = load %struct.regmap*, %struct.regmap** %6, align 8
  %38 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 0
  store %struct.regmap* %37, %struct.regmap** %38, align 8
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %68, %33
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @regulators, align 8
  %42 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %41)
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %71

44:                                               ; preds = %39
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @regulators, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_7__* %46, %struct.TYPE_6__* %50, %struct.regulator_config* %7)
  store %struct.regulator_dev* %51, %struct.regulator_dev** %8, align 8
  %52 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %53 = call i64 @IS_ERR(%struct.regulator_dev* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %44
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @regulators, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %66 = call i32 @PTR_ERR(%struct.regulator_dev* %65)
  store i32 %66, i32* %2, align 4
  br label %72

67:                                               ; preds = %44
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %39

71:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %55, %28, %17
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.regmap* @dev_get_regmap(i32, i32*) #2

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #2

declare dso_local i32 @sc2731_regulator_unlock(%struct.regmap*) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #2

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_7__*, %struct.TYPE_6__*, %struct.regulator_config*) #2

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
