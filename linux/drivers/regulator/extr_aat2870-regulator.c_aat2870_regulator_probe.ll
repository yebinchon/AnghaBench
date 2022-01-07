; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_aat2870-regulator.c_aat2870_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_aat2870-regulator.c_aat2870_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.aat2870_regulator = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.regulator_config = type { i32, %struct.aat2870_regulator*, %struct.TYPE_5__* }
%struct.regulator_dev = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Invalid device ID, %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to register regulator %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @aat2870_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aat2870_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.aat2870_regulator*, align 8
  %5 = alloca %struct.regulator_config, align 8
  %6 = alloca %struct.regulator_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = bitcast %struct.regulator_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 24, i1 false)
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.aat2870_regulator* @aat2870_get_regulator(i32 %10)
  store %struct.aat2870_regulator* %11, %struct.aat2870_regulator** %4, align 8
  %12 = load %struct.aat2870_regulator*, %struct.aat2870_regulator** %4, align 8
  %13 = icmp ne %struct.aat2870_regulator* %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_err(%struct.TYPE_5__* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %62

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_get_drvdata(i32 %27)
  %29 = load %struct.aat2870_regulator*, %struct.aat2870_regulator** %4, align 8
  %30 = getelementptr inbounds %struct.aat2870_regulator, %struct.aat2870_regulator* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 2
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %33, align 8
  %34 = load %struct.aat2870_regulator*, %struct.aat2870_regulator** %4, align 8
  %35 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 1
  store %struct.aat2870_regulator* %34, %struct.aat2870_regulator** %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 @dev_get_platdata(%struct.TYPE_5__* %37)
  %39 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load %struct.aat2870_regulator*, %struct.aat2870_regulator** %4, align 8
  %43 = getelementptr inbounds %struct.aat2870_regulator, %struct.aat2870_regulator* %42, i32 0, i32 0
  %44 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_5__* %41, %struct.TYPE_6__* %43, %struct.regulator_config* %5)
  store %struct.regulator_dev* %44, %struct.regulator_dev** %6, align 8
  %45 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %46 = call i64 @IS_ERR(%struct.regulator_dev* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %23
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load %struct.aat2870_regulator*, %struct.aat2870_regulator** %4, align 8
  %52 = getelementptr inbounds %struct.aat2870_regulator, %struct.aat2870_regulator* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dev_err(%struct.TYPE_5__* %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %57 = call i32 @PTR_ERR(%struct.regulator_dev* %56)
  store i32 %57, i32* %2, align 4
  br label %62

58:                                               ; preds = %23
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %61 = call i32 @platform_set_drvdata(%struct.platform_device* %59, %struct.regulator_dev* %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %58, %48, %14
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.aat2870_regulator* @aat2870_get_regulator(i32) #2

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, i32) #2

declare dso_local i32 @dev_get_drvdata(i32) #2

declare dso_local i32 @dev_get_platdata(%struct.TYPE_5__*) #2

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_5__*, %struct.TYPE_6__*, %struct.regulator_config*) #2

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
