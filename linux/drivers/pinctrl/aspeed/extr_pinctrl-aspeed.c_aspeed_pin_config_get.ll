; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed.c_aspeed_pin_config_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed.c_aspeed_pin_config_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.aspeed_pin_config_map = type { i64 }
%struct.aspeed_pinctrl_data = type { i32 }
%struct.aspeed_pin_config = type { i32, i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@MAP_TYPE_VAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PIN_CONFIG_DRIVE_STRENGTH = common dso_local global i32 0, align 4
@PIN_CONFIG_BIAS_PULL_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aspeed_pin_config_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.aspeed_pin_config_map*, align 8
  %10 = alloca %struct.aspeed_pinctrl_data*, align 8
  %11 = alloca %struct.aspeed_pin_config*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @pinconf_to_config_param(i64 %16)
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %13, align 4
  %18 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %19 = call %struct.aspeed_pinctrl_data* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %18)
  store %struct.aspeed_pinctrl_data* %19, %struct.aspeed_pinctrl_data** %10, align 8
  %20 = load %struct.aspeed_pinctrl_data*, %struct.aspeed_pinctrl_data** %10, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.aspeed_pin_config* @find_pinconf_config(%struct.aspeed_pinctrl_data* %20, i32 %21, i32 %22)
  store %struct.aspeed_pin_config* %23, %struct.aspeed_pin_config** %11, align 8
  %24 = load %struct.aspeed_pin_config*, %struct.aspeed_pin_config** %11, align 8
  %25 = icmp ne %struct.aspeed_pin_config* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %94

29:                                               ; preds = %3
  %30 = load %struct.aspeed_pinctrl_data*, %struct.aspeed_pinctrl_data** %10, align 8
  %31 = getelementptr inbounds %struct.aspeed_pinctrl_data, %struct.aspeed_pinctrl_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.aspeed_pin_config*, %struct.aspeed_pin_config** %11, align 8
  %34 = getelementptr inbounds %struct.aspeed_pin_config, %struct.aspeed_pin_config* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @regmap_read(i32 %32, i32 %35, i32* %12)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %4, align 4
  br label %94

41:                                               ; preds = %29
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @MAP_TYPE_VAL, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.aspeed_pin_config*, %struct.aspeed_pin_config** %11, align 8
  %46 = getelementptr inbounds %struct.aspeed_pin_config, %struct.aspeed_pin_config* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @BIT(i32 %47)
  %49 = and i32 %44, %48
  %50 = load %struct.aspeed_pin_config*, %struct.aspeed_pin_config** %11, align 8
  %51 = getelementptr inbounds %struct.aspeed_pin_config, %struct.aspeed_pin_config* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = lshr i32 %49, %52
  %54 = call %struct.aspeed_pin_config_map* @find_pinconf_map(i32 %42, i32 %43, i32 %53)
  store %struct.aspeed_pin_config_map* %54, %struct.aspeed_pin_config_map** %9, align 8
  %55 = load %struct.aspeed_pin_config_map*, %struct.aspeed_pin_config_map** %9, align 8
  %56 = icmp ne %struct.aspeed_pin_config_map* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %41
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %94

60:                                               ; preds = %41
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @PIN_CONFIG_DRIVE_STRENGTH, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load %struct.aspeed_pin_config_map*, %struct.aspeed_pin_config_map** %9, align 8
  %66 = getelementptr inbounds %struct.aspeed_pin_config_map, %struct.aspeed_pin_config_map* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %14, align 4
  br label %83

69:                                               ; preds = %60
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @PIN_CONFIG_BIAS_PULL_DOWN, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load %struct.aspeed_pin_config_map*, %struct.aspeed_pin_config_map** %9, align 8
  %75 = getelementptr inbounds %struct.aspeed_pin_config_map, %struct.aspeed_pin_config_map* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  %78 = xor i1 %77, true
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %14, align 4
  br label %82

81:                                               ; preds = %69
  store i32 1, i32* %14, align 4
  br label %82

82:                                               ; preds = %81, %73
  br label %83

83:                                               ; preds = %82, %64
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %94

89:                                               ; preds = %83
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %14, align 4
  %92 = call i64 @pinconf_to_config_packed(i32 %90, i32 %91)
  %93 = load i64*, i64** %7, align 8
  store i64 %92, i64* %93, align 8
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %89, %86, %57, %39, %26
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local %struct.aspeed_pinctrl_data* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.aspeed_pin_config* @find_pinconf_config(%struct.aspeed_pinctrl_data*, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local %struct.aspeed_pin_config_map* @find_pinconf_map(i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
