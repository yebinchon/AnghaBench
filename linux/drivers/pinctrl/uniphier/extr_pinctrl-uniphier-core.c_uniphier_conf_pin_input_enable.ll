; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/uniphier/extr_pinctrl-uniphier-core.c_uniphier_conf_pin_input_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/uniphier/extr_pinctrl-uniphier-core.c_uniphier_conf_pin_input_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.uniphier_pinctrl_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pin_desc = type { i32 }

@UNIPHIER_PINCTRL_CAPS_PERPIN_IECTRL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UNIPHIER_PIN_IECTRL_NONE = common dso_local global i32 0, align 4
@UNIPHIER_PINCTRL_IECTRL_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64)* @uniphier_conf_pin_input_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_conf_pin_input_enable(%struct.pinctrl_dev* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.uniphier_pinctrl_priv*, align 8
  %9 = alloca %struct.pin_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %14 = call %struct.uniphier_pinctrl_priv* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %13)
  store %struct.uniphier_pinctrl_priv* %14, %struct.uniphier_pinctrl_priv** %8, align 8
  %15 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.pin_desc* @pin_desc_get(%struct.pinctrl_dev* %15, i32 %16)
  store %struct.pin_desc* %17, %struct.pin_desc** %9, align 8
  %18 = load %struct.pin_desc*, %struct.pin_desc** %9, align 8
  %19 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @uniphier_pin_get_iectrl(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.uniphier_pinctrl_priv*, %struct.uniphier_pinctrl_priv** %8, align 8
  %23 = getelementptr inbounds %struct.uniphier_pinctrl_priv, %struct.uniphier_pinctrl_priv* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @UNIPHIER_PINCTRL_CAPS_PERPIN_IECTRL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %3
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %82

36:                                               ; preds = %30, %3
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @UNIPHIER_PIN_IECTRL_NONE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i64, i64* %7, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  br label %47

47:                                               ; preds = %44, %43
  %48 = phi i32 [ 0, %43 ], [ %46, %44 ]
  store i32 %48, i32* %4, align 4
  br label %82

49:                                               ; preds = %36
  %50 = load %struct.uniphier_pinctrl_priv*, %struct.uniphier_pinctrl_priv** %8, align 8
  %51 = getelementptr inbounds %struct.uniphier_pinctrl_priv, %struct.uniphier_pinctrl_priv* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @UNIPHIER_PINCTRL_CAPS_PERPIN_IECTRL, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %58, %49
  %61 = load i32, i32* @UNIPHIER_PINCTRL_IECTRL_BASE, align 4
  %62 = load i32, i32* %10, align 4
  %63 = udiv i32 %62, 32
  %64 = mul i32 %63, 4
  %65 = add i32 %61, %64
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = urem i32 %66, 32
  %68 = call i32 @BIT(i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load %struct.uniphier_pinctrl_priv*, %struct.uniphier_pinctrl_priv** %8, align 8
  %70 = getelementptr inbounds %struct.uniphier_pinctrl_priv, %struct.uniphier_pinctrl_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i64, i64* %7, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %60
  %77 = load i32, i32* %12, align 4
  br label %79

78:                                               ; preds = %60
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi i32 [ %77, %76 ], [ 0, %78 ]
  %81 = call i32 @regmap_update_bits(i32 %71, i32 %72, i32 %73, i32 %80)
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %79, %47, %33
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.uniphier_pinctrl_priv* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.pin_desc* @pin_desc_get(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @uniphier_pin_get_iectrl(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
