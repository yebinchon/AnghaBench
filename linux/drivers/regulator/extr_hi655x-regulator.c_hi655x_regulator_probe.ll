; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_hi655x-regulator.c_hi655x_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_hi655x-regulator.c_hi655x_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.hi655x_regulator = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.hi655x_pmic = type { i32 }
%struct.regulator_config = type { %struct.hi655x_regulator*, i32, i32 }
%struct.regulator_dev = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"no pmic in the regulator parent node\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@regulators = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to register regulator %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hi655x_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi655x_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hi655x_regulator*, align 8
  %6 = alloca %struct.hi655x_pmic*, align 8
  %7 = alloca %struct.regulator_config, align 8
  %8 = alloca %struct.regulator_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = bitcast %struct.regulator_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 16, i1 false)
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.hi655x_pmic* @dev_get_drvdata(i32 %13)
  store %struct.hi655x_pmic* %14, %struct.hi655x_pmic** %6, align 8
  %15 = load %struct.hi655x_pmic*, %struct.hi655x_pmic** %6, align 8
  %16 = icmp ne %struct.hi655x_pmic* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %80

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.hi655x_regulator* @devm_kzalloc(%struct.TYPE_9__* %25, i32 4, i32 %26)
  store %struct.hi655x_regulator* %27, %struct.hi655x_regulator** %5, align 8
  %28 = load %struct.hi655x_regulator*, %struct.hi655x_regulator** %5, align 8
  %29 = icmp ne %struct.hi655x_regulator* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %80

33:                                               ; preds = %23
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load %struct.hi655x_regulator*, %struct.hi655x_regulator** %5, align 8
  %36 = call i32 @platform_set_drvdata(%struct.platform_device* %34, %struct.hi655x_regulator* %35)
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = load %struct.hi655x_pmic*, %struct.hi655x_pmic** %6, align 8
  %43 = getelementptr inbounds %struct.hi655x_pmic, %struct.hi655x_pmic* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 1
  store i32 %44, i32* %45, align 8
  %46 = load %struct.hi655x_regulator*, %struct.hi655x_regulator** %5, align 8
  %47 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 0
  store %struct.hi655x_regulator* %46, %struct.hi655x_regulator** %47, align 8
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %76, %33
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @regulators, align 8
  %51 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %50)
  %52 = icmp ult i32 %49, %51
  br i1 %52, label %53, label %79

53:                                               ; preds = %48
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** @regulators, align 8
  %57 = load i32, i32* %4, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_9__* %55, i32* %60, %struct.regulator_config* %7)
  store %struct.regulator_dev* %61, %struct.regulator_dev** %8, align 8
  %62 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %63 = call i64 @IS_ERR(%struct.regulator_dev* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %53
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load %struct.hi655x_regulator*, %struct.hi655x_regulator** %5, align 8
  %69 = getelementptr inbounds %struct.hi655x_regulator, %struct.hi655x_regulator* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %74 = call i32 @PTR_ERR(%struct.regulator_dev* %73)
  store i32 %74, i32* %2, align 4
  br label %80

75:                                               ; preds = %53
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %4, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %48

79:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %65, %30, %17
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.hi655x_pmic* @dev_get_drvdata(i32) #2

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #2

declare dso_local %struct.hi655x_regulator* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.hi655x_regulator*) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #2

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_9__*, i32*, %struct.regulator_config*) #2

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
