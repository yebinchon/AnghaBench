; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_bd70528-regulator.c_bd70528_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_bd70528-regulator.c_bd70528_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.rohm_regmap_dev = type { i32 }
%struct.regulator_config = type { i32, i32 }
%struct.regulator_dev = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"No MFD driver data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@bd70528_desc = common dso_local global %struct.TYPE_7__* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to register %s regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bd70528_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd70528_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rohm_regmap_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regulator_config, align 4
  %7 = alloca %struct.regulator_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.rohm_regmap_dev* @dev_get_drvdata(i32 %17)
  store %struct.rohm_regmap_dev* %18, %struct.rohm_regmap_dev** %4, align 8
  %19 = load %struct.rohm_regmap_dev*, %struct.rohm_regmap_dev** %4, align 8
  %20 = icmp ne %struct.rohm_regmap_dev* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %65

27:                                               ; preds = %1
  %28 = load %struct.rohm_regmap_dev*, %struct.rohm_regmap_dev** %4, align 8
  %29 = getelementptr inbounds %struct.rohm_regmap_dev, %struct.rohm_regmap_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %61, %27
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bd70528_desc, align 8
  %35 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %34)
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %64

37:                                               ; preds = %32
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bd70528_desc, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %42
  %44 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_6__* %39, %struct.TYPE_7__* %43, %struct.regulator_config* %6)
  store %struct.regulator_dev* %44, %struct.regulator_dev** %7, align 8
  %45 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %46 = call i64 @IS_ERR(%struct.regulator_dev* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %37
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bd70528_desc, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %59 = call i32 @PTR_ERR(%struct.regulator_dev* %58)
  store i32 %59, i32* %2, align 4
  br label %65

60:                                               ; preds = %37
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %32

64:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %48, %21
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.rohm_regmap_dev* @dev_get_drvdata(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_6__*, %struct.TYPE_7__*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
