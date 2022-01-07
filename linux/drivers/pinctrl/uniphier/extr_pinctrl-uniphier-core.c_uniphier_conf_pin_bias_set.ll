; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/uniphier/extr_pinctrl-uniphier-core.c_uniphier_conf_pin_bias_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/uniphier/extr_pinctrl-uniphier-core.c_uniphier_conf_pin_bias_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.uniphier_pinctrl_priv = type { i32 }
%struct.pin_desc = type { i32, i32 }

@UNIPHIER_PIN_PULL_NONE = common dso_local global i32 0, align 4
@UNIPHIER_PIN_PULL_UP_FIXED = common dso_local global i32 0, align 4
@UNIPHIER_PIN_PULL_DOWN_FIXED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"can not disable pull register for pin %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UNIPHIER_PIN_PULL_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"pull-up is unsupported for pin %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"pull-up can not be total\0A\00", align 1
@UNIPHIER_PIN_PULL_DOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"pull-down is unsupported for pin %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"pull-down can not be total\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"pull-up/down is unsupported for pin %s\0A\00", align 1
@UNIPHIER_PINCTRL_PUPDCTRL_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32, i32)* @uniphier_conf_pin_bias_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_conf_pin_bias_set(%struct.pinctrl_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.uniphier_pinctrl_priv*, align 8
  %11 = alloca %struct.pin_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %18 = call %struct.uniphier_pinctrl_priv* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %17)
  store %struct.uniphier_pinctrl_priv* %18, %struct.uniphier_pinctrl_priv** %10, align 8
  %19 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.pin_desc* @pin_desc_get(%struct.pinctrl_dev* %19, i32 %20)
  store %struct.pin_desc* %21, %struct.pin_desc** %11, align 8
  %22 = load %struct.pin_desc*, %struct.pin_desc** %11, align 8
  %23 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @uniphier_pin_get_pull_dir(i32 %24)
  store i32 %25, i32* %12, align 4
  store i32 1, i32* %16, align 4
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %136 [
    i32 131, label %27
    i32 128, label %51
    i32 130, label %84
    i32 129, label %117
  ]

27:                                               ; preds = %4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @UNIPHIER_PIN_PULL_NONE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %160

32:                                               ; preds = %27
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @UNIPHIER_PIN_PULL_UP_FIXED, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @UNIPHIER_PIN_PULL_DOWN_FIXED, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36, %32
  %41 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %42 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pin_desc*, %struct.pin_desc** %11, align 8
  %45 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, ...) @dev_err(i32 %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %160

50:                                               ; preds = %36
  store i32 0, i32* %16, align 4
  br label %138

51:                                               ; preds = %4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @UNIPHIER_PIN_PULL_UP_FIXED, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %160

59:                                               ; preds = %55, %51
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @UNIPHIER_PIN_PULL_UP, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %65 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.pin_desc*, %struct.pin_desc** %11, align 8
  %68 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i8*, ...) @dev_err(i32 %66, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %160

73:                                               ; preds = %59
  %74 = load i32, i32* %9, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %78 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i32, i8*, ...) @dev_err(i32 %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %160

83:                                               ; preds = %73
  br label %138

84:                                               ; preds = %4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @UNIPHIER_PIN_PULL_DOWN_FIXED, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 0, i32* %5, align 4
  br label %160

92:                                               ; preds = %88, %84
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @UNIPHIER_PIN_PULL_DOWN, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %98 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.pin_desc*, %struct.pin_desc** %11, align 8
  %101 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32, i8*, ...) @dev_err(i32 %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %5, align 4
  br label %160

106:                                              ; preds = %92
  %107 = load i32, i32* %9, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %111 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i32, i8*, ...) @dev_err(i32 %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %5, align 4
  br label %160

116:                                              ; preds = %106
  br label %138

117:                                              ; preds = %4
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @UNIPHIER_PIN_PULL_NONE, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %117
  %122 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %123 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.pin_desc*, %struct.pin_desc** %11, align 8
  %126 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i32, i8*, ...) @dev_err(i32 %124, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %5, align 4
  br label %160

131:                                              ; preds = %117
  %132 = load i32, i32* %9, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  store i32 0, i32* %5, align 4
  br label %160

135:                                              ; preds = %131
  br label %138

136:                                              ; preds = %4
  %137 = call i32 (...) @BUG()
  br label %138

138:                                              ; preds = %136, %135, %116, %83, %50
  %139 = load %struct.pin_desc*, %struct.pin_desc** %11, align 8
  %140 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @uniphier_pin_get_pupdctrl(i32 %141)
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* @UNIPHIER_PINCTRL_PUPDCTRL_BASE, align 4
  %144 = load i32, i32* %13, align 4
  %145 = udiv i32 %144, 32
  %146 = mul i32 %145, 4
  %147 = add i32 %143, %146
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* %13, align 4
  %149 = urem i32 %148, 32
  store i32 %149, i32* %15, align 4
  %150 = load %struct.uniphier_pinctrl_priv*, %struct.uniphier_pinctrl_priv** %10, align 8
  %151 = getelementptr inbounds %struct.uniphier_pinctrl_priv, %struct.uniphier_pinctrl_priv* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %15, align 4
  %155 = shl i32 1, %154
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* %15, align 4
  %158 = shl i32 %156, %157
  %159 = call i32 @regmap_update_bits(i32 %152, i32 %153, i32 %155, i32 %158)
  store i32 %159, i32* %5, align 4
  br label %160

160:                                              ; preds = %138, %134, %121, %109, %96, %91, %76, %63, %58, %40, %31
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local %struct.uniphier_pinctrl_priv* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.pin_desc* @pin_desc_get(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @uniphier_pin_get_pull_dir(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @uniphier_pin_get_pupdctrl(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
