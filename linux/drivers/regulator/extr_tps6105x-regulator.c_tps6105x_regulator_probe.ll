; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6105x-regulator.c_tps6105x_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6105x-regulator.c_tps6105x_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tps6105x = type { %struct.TYPE_2__*, i32, i32, %struct.tps6105x_platform_data* }
%struct.TYPE_2__ = type { i32 }
%struct.tps6105x_platform_data = type { i64, i32 }
%struct.regulator_config = type { i32, %struct.tps6105x*, i32, i32* }

@TPS6105X_MODE_VOLTAGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"chip not in voltage mode mode, exit probe\0A\00", align 1
@tps6105x_regulator_desc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to register regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tps6105x_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps6105x_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tps6105x*, align 8
  %5 = alloca %struct.tps6105x_platform_data*, align 8
  %6 = alloca %struct.regulator_config, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.tps6105x* @dev_get_platdata(i32* %9)
  store %struct.tps6105x* %10, %struct.tps6105x** %4, align 8
  %11 = load %struct.tps6105x*, %struct.tps6105x** %4, align 8
  %12 = getelementptr inbounds %struct.tps6105x, %struct.tps6105x* %11, i32 0, i32 3
  %13 = load %struct.tps6105x_platform_data*, %struct.tps6105x_platform_data** %12, align 8
  store %struct.tps6105x_platform_data* %13, %struct.tps6105x_platform_data** %5, align 8
  %14 = bitcast %struct.regulator_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 32, i1 false)
  %15 = load %struct.tps6105x_platform_data*, %struct.tps6105x_platform_data** %5, align 8
  %16 = getelementptr inbounds %struct.tps6105x_platform_data, %struct.tps6105x_platform_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TPS6105X_MODE_VOLTAGE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 @dev_info(i32* %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %65

24:                                               ; preds = %1
  %25 = load %struct.tps6105x*, %struct.tps6105x** %4, align 8
  %26 = getelementptr inbounds %struct.tps6105x, %struct.tps6105x* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 3
  store i32* %28, i32** %29, align 8
  %30 = load %struct.tps6105x_platform_data*, %struct.tps6105x_platform_data** %5, align 8
  %31 = getelementptr inbounds %struct.tps6105x_platform_data, %struct.tps6105x_platform_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  store i32 %32, i32* %33, align 8
  %34 = load %struct.tps6105x*, %struct.tps6105x** %4, align 8
  %35 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store %struct.tps6105x* %34, %struct.tps6105x** %35, align 8
  %36 = load %struct.tps6105x*, %struct.tps6105x** %4, align 8
  %37 = getelementptr inbounds %struct.tps6105x, %struct.tps6105x* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call i32 @devm_regulator_register(i32* %41, i32* @tps6105x_regulator_desc, %struct.regulator_config* %6)
  %43 = load %struct.tps6105x*, %struct.tps6105x** %4, align 8
  %44 = getelementptr inbounds %struct.tps6105x, %struct.tps6105x* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.tps6105x*, %struct.tps6105x** %4, align 8
  %46 = getelementptr inbounds %struct.tps6105x, %struct.tps6105x* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %24
  %51 = load %struct.tps6105x*, %struct.tps6105x** %4, align 8
  %52 = getelementptr inbounds %struct.tps6105x, %struct.tps6105x* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @PTR_ERR(i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load %struct.tps6105x*, %struct.tps6105x** %4, align 8
  %56 = getelementptr inbounds %struct.tps6105x, %struct.tps6105x* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %65

61:                                               ; preds = %24
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = load %struct.tps6105x*, %struct.tps6105x** %4, align 8
  %64 = call i32 @platform_set_drvdata(%struct.platform_device* %62, %struct.tps6105x* %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %50, %20
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.tps6105x* @dev_get_platdata(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @devm_regulator_register(i32*, i32*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tps6105x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
