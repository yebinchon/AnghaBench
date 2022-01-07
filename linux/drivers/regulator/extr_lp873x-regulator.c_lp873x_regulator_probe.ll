; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp873x-regulator.c_lp873x_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp873x-regulator.c_lp873x_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.platform_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.lp873x = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.regulator_config = type { i32, %struct.lp873x*, %struct.TYPE_6__* }
%struct.regulator_dev = type { i32 }

@regulators = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"failed to register %s regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lp873x_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp873x_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lp873x*, align 8
  %5 = alloca %struct.regulator_config, align 8
  %6 = alloca %struct.regulator_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.lp873x* @dev_get_drvdata(i32 %11)
  store %struct.lp873x* %12, %struct.lp873x** %4, align 8
  %13 = bitcast %struct.regulator_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = load %struct.lp873x*, %struct.lp873x** %4, align 8
  %16 = call i32 @platform_set_drvdata(%struct.platform_device* %14, %struct.lp873x* %15)
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 2
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %19, align 8
  %20 = load %struct.lp873x*, %struct.lp873x** %4, align 8
  %21 = getelementptr inbounds %struct.lp873x, %struct.lp873x* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.lp873x*, %struct.lp873x** %4, align 8
  %29 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 1
  store %struct.lp873x* %28, %struct.lp873x** %29, align 8
  %30 = load %struct.lp873x*, %struct.lp873x** %4, align 8
  %31 = getelementptr inbounds %struct.lp873x, %struct.lp873x* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %5, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %62, %1
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @regulators, align 8
  %37 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %36)
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %65

39:                                               ; preds = %34
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @regulators, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_6__* %41, i32* %46, %struct.regulator_config* %5)
  store %struct.regulator_dev* %47, %struct.regulator_dev** %6, align 8
  %48 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %49 = call i64 @IS_ERR(%struct.regulator_dev* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %39
  %52 = load %struct.lp873x*, %struct.lp873x** %4, align 8
  %53 = getelementptr inbounds %struct.lp873x, %struct.lp873x* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_err(%struct.TYPE_7__* %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %60 = call i32 @PTR_ERR(%struct.regulator_dev* %59)
  store i32 %60, i32* %2, align 4
  br label %66

61:                                               ; preds = %39
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %34

65:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %51
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.lp873x* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lp873x*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_6__*, i32*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
