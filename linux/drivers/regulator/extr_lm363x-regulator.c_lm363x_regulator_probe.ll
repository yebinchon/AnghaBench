; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lm363x-regulator.c_lm363x_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lm363x-regulator.c_lm363x_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.ti_lmu = type { %struct.regmap* }
%struct.regmap = type { i32 }
%struct.regulator_config = type { %struct.regulator_dev*, %struct.regmap*, %struct.device* }
%struct.regulator_dev = type { i32 }
%struct.gpio_desc = type opaque

@.str = private unnamed_addr constant [22 x i8] c"External pin err: %d\0A\00", align 1
@lm363x_regulator_desc = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"[%d] regulator register err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lm363x_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm363x_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ti_lmu*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.regulator_config, align 8
  %7 = alloca %struct.regulator_dev*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gpio_desc*, align 8
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.ti_lmu* @dev_get_drvdata(i32 %15)
  store %struct.ti_lmu* %16, %struct.ti_lmu** %4, align 8
  %17 = load %struct.ti_lmu*, %struct.ti_lmu** %4, align 8
  %18 = getelementptr inbounds %struct.ti_lmu, %struct.ti_lmu* %17, i32 0, i32 0
  %19 = load %struct.regmap*, %struct.regmap** %18, align 8
  store %struct.regmap* %19, %struct.regmap** %5, align 8
  %20 = bitcast %struct.regulator_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 24, i1 false)
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 1
  store %struct.device* %22, %struct.device** %8, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.device*, %struct.device** %8, align 8
  %27 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  store %struct.device* %26, %struct.device** %27, align 8
  %28 = load %struct.regmap*, %struct.regmap** %5, align 8
  %29 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store %struct.regmap* %28, %struct.regmap** %29, align 8
  %30 = load %struct.device*, %struct.device** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call %struct.regulator_dev* @lm363x_regulator_of_get_enable_gpio(%struct.device* %30, i32 %31)
  %33 = bitcast %struct.regulator_dev* %32 to %struct.gpio_desc*
  store %struct.gpio_desc* %33, %struct.gpio_desc** %10, align 8
  %34 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  %35 = bitcast %struct.gpio_desc* %34 to %struct.regulator_dev*
  %36 = call i64 @IS_ERR(%struct.regulator_dev* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %1
  %39 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  %40 = bitcast %struct.gpio_desc* %39 to %struct.regulator_dev*
  %41 = call i32 @PTR_ERR(%struct.regulator_dev* %40)
  store i32 %41, i32* %2, align 4
  br label %82

42:                                               ; preds = %1
  %43 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  %44 = icmp ne %struct.gpio_desc* %43, null
  br i1 %44, label %45, label %63

45:                                               ; preds = %42
  %46 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  %47 = bitcast %struct.gpio_desc* %46 to %struct.regulator_dev*
  %48 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store %struct.regulator_dev* %47, %struct.regulator_dev** %48, align 8
  %49 = load %struct.regmap*, %struct.regmap** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @lm363x_regulator_set_ext_en(%struct.regmap* %49, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %45
  %55 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  %56 = bitcast %struct.gpio_desc* %55 to %struct.regulator_dev*
  %57 = call i32 @gpiod_put(%struct.regulator_dev* %56)
  %58 = load %struct.device*, %struct.device** %8, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %2, align 4
  br label %82

62:                                               ; preds = %45
  br label %63

63:                                               ; preds = %62, %42
  %64 = load %struct.device*, %struct.device** %8, align 8
  %65 = load i32*, i32** @lm363x_regulator_desc, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = call %struct.regulator_dev* @devm_regulator_register(%struct.device* %64, i32* %68, %struct.regulator_config* %6)
  store %struct.regulator_dev* %69, %struct.regulator_dev** %7, align 8
  %70 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %71 = call i64 @IS_ERR(%struct.regulator_dev* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %63
  %74 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %75 = call i32 @PTR_ERR(%struct.regulator_dev* %74)
  store i32 %75, i32* %11, align 4
  %76 = load %struct.device*, %struct.device** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %2, align 4
  br label %82

81:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %73, %54, %38
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.ti_lmu* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.regulator_dev* @lm363x_regulator_of_get_enable_gpio(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @lm363x_regulator_set_ext_en(%struct.regmap*, i32) #1

declare dso_local i32 @gpiod_put(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.device*, i32*, %struct.regulator_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
