; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_axp20x-regulator.c_axp20x_set_ramp_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_axp20x-regulator.c_axp20x_set_ramp_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.axp20x_dev = type { i32, i32, i32 }

@AXP20X_DCDC2 = common dso_local global i32 0, align 4
@axp209_dcdc2_ldo3_slew_rates = common dso_local global i32* null, align 8
@AXP20X_DCDC2_LDO3_V_RAMP = common dso_local global i32 0, align 4
@AXP20X_DCDC2_LDO3_V_RAMP_DCDC2_RATE_MASK = common dso_local global i32 0, align 4
@AXP20X_DCDC2_LDO3_V_RAMP_DCDC2_EN_MASK = common dso_local global i32 0, align 4
@AXP20X_DCDC2_LDO3_V_RAMP_DCDC2_EN = common dso_local global i32 0, align 4
@AXP20X_LDO3 = common dso_local global i32 0, align 4
@AXP20X_DCDC2_LDO3_V_RAMP_LDO3_RATE_MASK = common dso_local global i32 0, align 4
@AXP20X_DCDC2_LDO3_V_RAMP_LDO3_EN_MASK = common dso_local global i32 0, align 4
@AXP20X_DCDC2_LDO3_V_RAMP_LDO3_EN = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unsupported ramp value %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @axp20x_set_ramp_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_set_ramp_delay(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.axp20x_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %16 = call %struct.axp20x_dev* @rdev_get_drvdata(%struct.regulator_dev* %15)
  store %struct.axp20x_dev* %16, %struct.axp20x_dev** %6, align 8
  %17 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %18 = call i32 @rdev_get_id(%struct.regulator_dev* %17)
  store i32 %18, i32* %7, align 4
  store i32 255, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %19 = load %struct.axp20x_dev*, %struct.axp20x_dev** %6, align 8
  %20 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %73 [
    i32 128, label %22
  ]

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @AXP20X_DCDC2, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %22
  %27 = load i32*, i32** @axp209_dcdc2_ldo3_slew_rates, align 8
  store i32* %27, i32** %12, align 8
  %28 = load i32*, i32** @axp209_dcdc2_ldo3_slew_rates, align 8
  %29 = call i32 @ARRAY_SIZE(i32* %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* @AXP20X_DCDC2_LDO3_V_RAMP, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @AXP20X_DCDC2_LDO3_V_RAMP_DCDC2_RATE_MASK, align 4
  %32 = load i32, i32* @AXP20X_DCDC2_LDO3_V_RAMP_DCDC2_EN_MASK, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* @AXP20X_DCDC2_LDO3_V_RAMP_DCDC2_EN, align 4
  br label %43

38:                                               ; preds = %26
  %39 = load i32, i32* @AXP20X_DCDC2_LDO3_V_RAMP_DCDC2_EN, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  br label %43

43:                                               ; preds = %38, %36
  %44 = phi i32 [ %37, %36 ], [ %42, %38 ]
  store i32 %44, i32* %10, align 4
  br label %76

45:                                               ; preds = %22
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @AXP20X_LDO3, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %45
  %50 = load i32*, i32** @axp209_dcdc2_ldo3_slew_rates, align 8
  store i32* %50, i32** %12, align 8
  %51 = load i32*, i32** @axp209_dcdc2_ldo3_slew_rates, align 8
  %52 = call i32 @ARRAY_SIZE(i32* %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* @AXP20X_DCDC2_LDO3_V_RAMP, align 4
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* @AXP20X_DCDC2_LDO3_V_RAMP_LDO3_RATE_MASK, align 4
  %55 = load i32, i32* @AXP20X_DCDC2_LDO3_V_RAMP_LDO3_EN_MASK, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* @AXP20X_DCDC2_LDO3_V_RAMP_LDO3_EN, align 4
  br label %66

61:                                               ; preds = %49
  %62 = load i32, i32* @AXP20X_DCDC2_LDO3_V_RAMP_LDO3_EN, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  br label %66

66:                                               ; preds = %61, %59
  %67 = phi i32 [ %60, %59 ], [ %65, %61 ]
  store i32 %67, i32* %10, align 4
  br label %76

68:                                               ; preds = %45
  %69 = load i32, i32* %13, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %76

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %2, %72
  %74 = load i32, i32* @ENOTSUPP, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %125

76:                                               ; preds = %71, %66, %43
  %77 = load i32, i32* %5, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %11, align 4
  br label %117

81:                                               ; preds = %76
  store i32 0, i32* %14, align 4
  br label %82

82:                                               ; preds = %99, %81
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %82
  %87 = load i32, i32* %5, align 4
  %88 = load i32*, i32** %12, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp sle i32 %87, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @AXP20X_DCDC2_LDO3_V_RAMP_LDO3_RATE(i32 %95)
  store i32 %96, i32* %11, align 4
  br label %98

97:                                               ; preds = %86
  br label %102

98:                                               ; preds = %94
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %14, align 4
  br label %82

102:                                              ; preds = %97, %82
  %103 = load i32, i32* %11, align 4
  %104 = icmp eq i32 %103, 255
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load %struct.axp20x_dev*, %struct.axp20x_dev** %6, align 8
  %107 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @dev_err(i32 %108, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %125

113:                                              ; preds = %102
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %11, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %113, %79
  %118 = load %struct.axp20x_dev*, %struct.axp20x_dev** %6, align 8
  %119 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @regmap_update_bits(i32 %120, i32 %121, i32 %122, i32 %123)
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %117, %105, %73
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.axp20x_dev* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @AXP20X_DCDC2_LDO3_V_RAMP_LDO3_RATE(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
