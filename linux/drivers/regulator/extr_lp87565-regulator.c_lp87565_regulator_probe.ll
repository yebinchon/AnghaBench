; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp87565-regulator.c_lp87565_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp87565-regulator.c_lp87565_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.platform_device = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.lp87565 = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.regulator_config = type { i32, %struct.lp87565*, %struct.TYPE_5__* }
%struct.regulator_dev = type { i32 }

@LP87565_BUCK_10 = common dso_local global i32 0, align 4
@LP87565_BUCK_23 = common dso_local global i32 0, align 4
@LP87565_BUCK_3210 = common dso_local global i32 0, align 4
@LP87565_BUCK_0 = common dso_local global i32 0, align 4
@LP87565_BUCK_3 = common dso_local global i32 0, align 4
@regulators = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"failed to register %s regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lp87565_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp87565_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lp87565*, align 8
  %5 = alloca %struct.regulator_config, align 8
  %6 = alloca %struct.regulator_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.lp87565* @dev_get_drvdata(i32 %13)
  store %struct.lp87565* %14, %struct.lp87565** %4, align 8
  %15 = bitcast %struct.regulator_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load %struct.lp87565*, %struct.lp87565** %4, align 8
  %18 = call i32 @platform_set_drvdata(%struct.platform_device* %16, %struct.lp87565* %17)
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 2
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %21, align 8
  %22 = load %struct.lp87565*, %struct.lp87565** %4, align 8
  %23 = getelementptr inbounds %struct.lp87565, %struct.lp87565* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.lp87565*, %struct.lp87565** %4, align 8
  %31 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 1
  store %struct.lp87565* %30, %struct.lp87565** %31, align 8
  %32 = load %struct.lp87565*, %struct.lp87565** %4, align 8
  %33 = getelementptr inbounds %struct.lp87565, %struct.lp87565* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load %struct.lp87565*, %struct.lp87565** %4, align 8
  %37 = getelementptr inbounds %struct.lp87565, %struct.lp87565* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %45 [
    i32 128, label %39
    i32 129, label %42
  ]

39:                                               ; preds = %1
  %40 = load i32, i32* @LP87565_BUCK_10, align 4
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* @LP87565_BUCK_23, align 4
  store i32 %41, i32* %9, align 4
  br label %48

42:                                               ; preds = %1
  %43 = load i32, i32* @LP87565_BUCK_3210, align 4
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* @LP87565_BUCK_3210, align 4
  store i32 %44, i32* %9, align 4
  br label %48

45:                                               ; preds = %1
  %46 = load i32, i32* @LP87565_BUCK_0, align 4
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* @LP87565_BUCK_3, align 4
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %45, %42, %39
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %77, %48
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %54, label %80

54:                                               ; preds = %50
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @regulators, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_5__* %56, i32* %61, %struct.regulator_config* %5)
  store %struct.regulator_dev* %62, %struct.regulator_dev** %6, align 8
  %63 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %64 = call i64 @IS_ERR(%struct.regulator_dev* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %54
  %67 = load %struct.lp87565*, %struct.lp87565** %4, align 8
  %68 = getelementptr inbounds %struct.lp87565, %struct.lp87565* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dev_err(%struct.TYPE_6__* %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %75 = call i32 @PTR_ERR(%struct.regulator_dev* %74)
  store i32 %75, i32* %2, align 4
  br label %81

76:                                               ; preds = %54
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %50

80:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %66
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.lp87565* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lp87565*) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_5__*, i32*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
