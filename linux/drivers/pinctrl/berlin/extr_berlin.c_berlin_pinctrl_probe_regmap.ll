; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/berlin/extr_berlin.c_berlin_pinctrl_probe_regmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/berlin/extr_berlin.c_berlin_pinctrl_probe_regmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.berlin_pinctrl_desc = type { i32 }
%struct.regmap = type { i32 }
%struct.berlin_pinctrl = type { i32, %struct.berlin_pinctrl_desc*, %struct.device*, %struct.regmap* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cannot build driver state: %d\0A\00", align 1
@berlin_pctrl_desc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to register pinctrl driver\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @berlin_pinctrl_probe_regmap(%struct.platform_device* %0, %struct.berlin_pinctrl_desc* %1, %struct.regmap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.berlin_pinctrl_desc*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.berlin_pinctrl*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.berlin_pinctrl_desc* %1, %struct.berlin_pinctrl_desc** %6, align 8
  store %struct.regmap* %2, %struct.regmap** %7, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %8, align 8
  %13 = load %struct.device*, %struct.device** %8, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.berlin_pinctrl* @devm_kzalloc(%struct.device* %13, i32 32, i32 %14)
  store %struct.berlin_pinctrl* %15, %struct.berlin_pinctrl** %9, align 8
  %16 = load %struct.berlin_pinctrl*, %struct.berlin_pinctrl** %9, align 8
  %17 = icmp ne %struct.berlin_pinctrl* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %63

21:                                               ; preds = %3
  %22 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %23 = load %struct.berlin_pinctrl*, %struct.berlin_pinctrl** %9, align 8
  %24 = call i32 @platform_set_drvdata(%struct.platform_device* %22, %struct.berlin_pinctrl* %23)
  %25 = load %struct.regmap*, %struct.regmap** %7, align 8
  %26 = load %struct.berlin_pinctrl*, %struct.berlin_pinctrl** %9, align 8
  %27 = getelementptr inbounds %struct.berlin_pinctrl, %struct.berlin_pinctrl* %26, i32 0, i32 3
  store %struct.regmap* %25, %struct.regmap** %27, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load %struct.berlin_pinctrl*, %struct.berlin_pinctrl** %9, align 8
  %31 = getelementptr inbounds %struct.berlin_pinctrl, %struct.berlin_pinctrl* %30, i32 0, i32 2
  store %struct.device* %29, %struct.device** %31, align 8
  %32 = load %struct.berlin_pinctrl_desc*, %struct.berlin_pinctrl_desc** %6, align 8
  %33 = load %struct.berlin_pinctrl*, %struct.berlin_pinctrl** %9, align 8
  %34 = getelementptr inbounds %struct.berlin_pinctrl, %struct.berlin_pinctrl* %33, i32 0, i32 1
  store %struct.berlin_pinctrl_desc* %32, %struct.berlin_pinctrl_desc** %34, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %36 = call i32 @berlin_pinctrl_build_state(%struct.platform_device* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %21
  %40 = load %struct.device*, %struct.device** %8, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %63

44:                                               ; preds = %21
  %45 = load %struct.device*, %struct.device** %8, align 8
  %46 = load %struct.berlin_pinctrl*, %struct.berlin_pinctrl** %9, align 8
  %47 = call i32 @devm_pinctrl_register(%struct.device* %45, i32* @berlin_pctrl_desc, %struct.berlin_pinctrl* %46)
  %48 = load %struct.berlin_pinctrl*, %struct.berlin_pinctrl** %9, align 8
  %49 = getelementptr inbounds %struct.berlin_pinctrl, %struct.berlin_pinctrl* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.berlin_pinctrl*, %struct.berlin_pinctrl** %9, align 8
  %51 = getelementptr inbounds %struct.berlin_pinctrl, %struct.berlin_pinctrl* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @IS_ERR(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %44
  %56 = load %struct.device*, %struct.device** %8, align 8
  %57 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.berlin_pinctrl*, %struct.berlin_pinctrl** %9, align 8
  %59 = getelementptr inbounds %struct.berlin_pinctrl, %struct.berlin_pinctrl* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @PTR_ERR(i32 %60)
  store i32 %61, i32* %4, align 4
  br label %63

62:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %55, %39, %18
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.berlin_pinctrl* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.berlin_pinctrl*) #1

declare dso_local i32 @berlin_pinctrl_build_state(%struct.platform_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @devm_pinctrl_register(%struct.device*, i32*, %struct.berlin_pinctrl*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
