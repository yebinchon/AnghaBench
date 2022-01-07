; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-max77620.c_max77620_pinconf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-max77620.c_max77620_pinconf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.max77620_pctrl_info = type { i32, %struct.TYPE_2__*, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@MAX77620_PIN_OD_DRV = common dso_local global i32 0, align 4
@MAX77620_PIN_PP_DRV = common dso_local global i32 0, align 4
@MAX77620_REG_PUE_GPIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Reg PUE_GPIO read failed: %d\0A\00", align 1
@MAX77620_REG_PDE_GPIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Reg PDE_GPIO read failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Properties not supported\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @max77620_pinconf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77620_pinconf_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.max77620_pctrl_info*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %15 = call %struct.max77620_pctrl_info* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %14)
  store %struct.max77620_pctrl_info* %15, %struct.max77620_pctrl_info** %8, align 8
  %16 = load %struct.max77620_pctrl_info*, %struct.max77620_pctrl_info** %8, align 8
  %17 = getelementptr inbounds %struct.max77620_pctrl_info, %struct.max77620_pctrl_info* %16, i32 0, i32 2
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %9, align 8
  %19 = load i64*, i64** %7, align 8
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @pinconf_to_config_param(i64 %20)
  store i32 %21, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %22 = load i32, i32* %10, align 4
  switch i32 %22, label %91 [
    i32 129, label %23
    i32 128, label %36
    i32 130, label %49
    i32 131, label %70
  ]

23:                                               ; preds = %3
  %24 = load %struct.max77620_pctrl_info*, %struct.max77620_pctrl_info** %8, align 8
  %25 = getelementptr inbounds %struct.max77620_pctrl_info, %struct.max77620_pctrl_info* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MAX77620_PIN_OD_DRV, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  store i32 1, i32* %12, align 4
  br label %35

35:                                               ; preds = %34, %23
  br label %96

36:                                               ; preds = %3
  %37 = load %struct.max77620_pctrl_info*, %struct.max77620_pctrl_info** %8, align 8
  %38 = getelementptr inbounds %struct.max77620_pctrl_info, %struct.max77620_pctrl_info* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MAX77620_PIN_PP_DRV, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  store i32 1, i32* %12, align 4
  br label %48

48:                                               ; preds = %47, %36
  br label %96

49:                                               ; preds = %3
  %50 = load %struct.max77620_pctrl_info*, %struct.max77620_pctrl_info** %8, align 8
  %51 = getelementptr inbounds %struct.max77620_pctrl_info, %struct.max77620_pctrl_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @MAX77620_REG_PUE_GPIO, align 4
  %54 = call i32 @regmap_read(i32 %52, i32 %53, i32* %11)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = load %struct.device*, %struct.device** %9, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %4, align 4
  br label %101

62:                                               ; preds = %49
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @BIT(i32 %64)
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 1, i32* %12, align 4
  br label %69

69:                                               ; preds = %68, %62
  br label %96

70:                                               ; preds = %3
  %71 = load %struct.max77620_pctrl_info*, %struct.max77620_pctrl_info** %8, align 8
  %72 = getelementptr inbounds %struct.max77620_pctrl_info, %struct.max77620_pctrl_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @MAX77620_REG_PDE_GPIO, align 4
  %75 = call i32 @regmap_read(i32 %73, i32 %74, i32* %11)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %70
  %79 = load %struct.device*, %struct.device** %9, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %4, align 4
  br label %101

83:                                               ; preds = %70
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @BIT(i32 %85)
  %87 = and i32 %84, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i32 1, i32* %12, align 4
  br label %90

90:                                               ; preds = %89, %83
  br label %96

91:                                               ; preds = %3
  %92 = load %struct.device*, %struct.device** %9, align 8
  %93 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i32, i32* @ENOTSUPP, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %101

96:                                               ; preds = %90, %69, %48, %35
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %12, align 4
  %99 = call i64 @pinconf_to_config_packed(i32 %97, i32 %98)
  %100 = load i64*, i64** %7, align 8
  store i64 %99, i64* %100, align 8
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %96, %91, %78, %57
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.max77620_pctrl_info* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
