; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_rt5033-regulator.c_rt5033_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_rt5033-regulator.c_rt5033_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rt5033_dev = type { i32, i32 }
%struct.regulator_config = type { i32, %struct.rt5033_dev*, i32 }
%struct.regulator_dev = type { i32 }

@rt5033_supported_regulators = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"Regulator init failed %d: with error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rt5033_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5033_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rt5033_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.regulator_config, align 8
  %8 = alloca %struct.regulator_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.rt5033_dev* @dev_get_drvdata(i32 %12)
  store %struct.rt5033_dev* %13, %struct.rt5033_dev** %4, align 8
  %14 = bitcast %struct.regulator_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 24, i1 false)
  %15 = load %struct.rt5033_dev*, %struct.rt5033_dev** %4, align 8
  %16 = getelementptr inbounds %struct.rt5033_dev, %struct.rt5033_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 2
  store i32 %17, i32* %18, align 8
  %19 = load %struct.rt5033_dev*, %struct.rt5033_dev** %4, align 8
  %20 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 1
  store %struct.rt5033_dev* %19, %struct.rt5033_dev** %20, align 8
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %51, %1
  %22 = load i32, i32* %6, align 4
  %23 = load i32*, i32** @rt5033_supported_regulators, align 8
  %24 = call i32 @ARRAY_SIZE(i32* %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %21
  %27 = load %struct.rt5033_dev*, %struct.rt5033_dev** %4, align 8
  %28 = getelementptr inbounds %struct.rt5033_dev, %struct.rt5033_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load i32*, i32** @rt5033_supported_regulators, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_3__* %32, i32* %36, %struct.regulator_config* %7)
  store %struct.regulator_dev* %37, %struct.regulator_dev** %8, align 8
  %38 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %39 = call i64 @IS_ERR(%struct.regulator_dev* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %26
  %42 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %43 = call i32 @PTR_ERR(%struct.regulator_dev* %42)
  store i32 %43, i32* %5, align 4
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @dev_err(%struct.TYPE_3__* %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %55

50:                                               ; preds = %26
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %21

54:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %41
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.rt5033_dev* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_3__*, i32*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
