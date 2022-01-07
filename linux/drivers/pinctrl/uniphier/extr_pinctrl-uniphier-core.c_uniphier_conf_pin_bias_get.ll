; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/uniphier/extr_pinctrl-uniphier-core.c_uniphier_conf_pin_bias_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/uniphier/extr_pinctrl-uniphier-core.c_uniphier_conf_pin_bias_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.uniphier_pinctrl_priv = type { i32 }
%struct.pin_desc = type { i32 }

@UNIPHIER_PIN_PULL_NONE = common dso_local global i32 0, align 4
@UNIPHIER_PIN_PULL_UP_FIXED = common dso_local global i32 0, align 4
@UNIPHIER_PIN_PULL_DOWN_FIXED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UNIPHIER_PIN_PULL_UP = common dso_local global i32 0, align 4
@UNIPHIER_PIN_PULL_DOWN = common dso_local global i32 0, align 4
@UNIPHIER_PINCTRL_PUPDCTRL_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @uniphier_conf_pin_bias_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_conf_pin_bias_get(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.uniphier_pinctrl_priv*, align 8
  %9 = alloca %struct.pin_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %18 = call %struct.uniphier_pinctrl_priv* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %17)
  store %struct.uniphier_pinctrl_priv* %18, %struct.uniphier_pinctrl_priv** %8, align 8
  %19 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.pin_desc* @pin_desc_get(%struct.pinctrl_dev* %19, i32 %20)
  store %struct.pin_desc* %21, %struct.pin_desc** %9, align 8
  %22 = load %struct.pin_desc*, %struct.pin_desc** %9, align 8
  %23 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @uniphier_pin_get_pull_dir(i32 %24)
  store i32 %25, i32* %10, align 4
  store i32 1, i32* %15, align 4
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %70 [
    i32 130, label %27
    i32 128, label %44
    i32 129, label %57
  ]

27:                                               ; preds = %3
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @UNIPHIER_PIN_PULL_NONE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %107

32:                                               ; preds = %27
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @UNIPHIER_PIN_PULL_UP_FIXED, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @UNIPHIER_PIN_PULL_DOWN_FIXED, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %32
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %107

43:                                               ; preds = %36
  store i32 0, i32* %15, align 4
  br label %72

44:                                               ; preds = %3
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @UNIPHIER_PIN_PULL_UP_FIXED, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %107

49:                                               ; preds = %44
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @UNIPHIER_PIN_PULL_UP, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %107

56:                                               ; preds = %49
  br label %72

57:                                               ; preds = %3
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @UNIPHIER_PIN_PULL_DOWN_FIXED, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %107

62:                                               ; preds = %57
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @UNIPHIER_PIN_PULL_DOWN, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %107

69:                                               ; preds = %62
  br label %72

70:                                               ; preds = %3
  %71 = call i32 (...) @BUG()
  br label %72

72:                                               ; preds = %70, %69, %56, %43
  %73 = load %struct.pin_desc*, %struct.pin_desc** %9, align 8
  %74 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @uniphier_pin_get_pupdctrl(i32 %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* @UNIPHIER_PINCTRL_PUPDCTRL_BASE, align 4
  %78 = load i32, i32* %11, align 4
  %79 = udiv i32 %78, 32
  %80 = mul i32 %79, 4
  %81 = add i32 %77, %80
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %11, align 4
  %83 = urem i32 %82, 32
  store i32 %83, i32* %13, align 4
  %84 = load %struct.uniphier_pinctrl_priv*, %struct.uniphier_pinctrl_priv** %8, align 8
  %85 = getelementptr inbounds %struct.uniphier_pinctrl_priv, %struct.uniphier_pinctrl_priv* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @regmap_read(i32 %86, i32 %87, i32* %14)
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %16, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %72
  %92 = load i32, i32* %16, align 4
  store i32 %92, i32* %4, align 4
  br label %107

93:                                               ; preds = %72
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %13, align 4
  %96 = lshr i32 %94, %95
  %97 = and i32 %96, 1
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  br label %105

102:                                              ; preds = %93
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  br label %105

105:                                              ; preds = %102, %101
  %106 = phi i32 [ 0, %101 ], [ %104, %102 ]
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %105, %91, %66, %61, %53, %48, %40, %31
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.uniphier_pinctrl_priv* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.pin_desc* @pin_desc_get(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @uniphier_pin_get_pull_dir(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @uniphier_pin_get_pupdctrl(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
