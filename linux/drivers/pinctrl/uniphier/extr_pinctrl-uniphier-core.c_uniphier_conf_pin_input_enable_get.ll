; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/uniphier/extr_pinctrl-uniphier-core.c_uniphier_conf_pin_input_enable_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/uniphier/extr_pinctrl-uniphier-core.c_uniphier_conf_pin_input_enable_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.uniphier_pinctrl_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pin_desc = type { i32 }

@UNIPHIER_PIN_IECTRL_NONE = common dso_local global i32 0, align 4
@UNIPHIER_PINCTRL_CAPS_PERPIN_IECTRL = common dso_local global i32 0, align 4
@UNIPHIER_PINCTRL_IECTRL_BASE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32)* @uniphier_conf_pin_input_enable_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_conf_pin_input_enable_get(%struct.pinctrl_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uniphier_pinctrl_priv*, align 8
  %7 = alloca %struct.pin_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %14 = call %struct.uniphier_pinctrl_priv* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %13)
  store %struct.uniphier_pinctrl_priv* %14, %struct.uniphier_pinctrl_priv** %6, align 8
  %15 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.pin_desc* @pin_desc_get(%struct.pinctrl_dev* %15, i32 %16)
  store %struct.pin_desc* %17, %struct.pin_desc** %7, align 8
  %18 = load %struct.pin_desc*, %struct.pin_desc** %7, align 8
  %19 = getelementptr inbounds %struct.pin_desc, %struct.pin_desc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @uniphier_pin_get_iectrl(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @UNIPHIER_PIN_IECTRL_NONE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

26:                                               ; preds = %2
  %27 = load %struct.uniphier_pinctrl_priv*, %struct.uniphier_pinctrl_priv** %6, align 8
  %28 = getelementptr inbounds %struct.uniphier_pinctrl_priv, %struct.uniphier_pinctrl_priv* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @UNIPHIER_PINCTRL_CAPS_PERPIN_IECTRL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %35, %26
  %38 = load i32, i32* @UNIPHIER_PINCTRL_IECTRL_BASE, align 4
  %39 = load i32, i32* %8, align 4
  %40 = udiv i32 %39, 32
  %41 = mul i32 %40, 4
  %42 = add i32 %38, %41
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = urem i32 %43, 32
  %45 = call i32 @BIT(i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.uniphier_pinctrl_priv*, %struct.uniphier_pinctrl_priv** %6, align 8
  %47 = getelementptr inbounds %struct.uniphier_pinctrl_priv, %struct.uniphier_pinctrl_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @regmap_read(i32 %48, i32 %49, i32* %11)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %37
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %3, align 4
  br label %66

55:                                               ; preds = %37
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %10, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  br label %64

64:                                               ; preds = %61, %60
  %65 = phi i32 [ 0, %60 ], [ %63, %61 ]
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %53, %25
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.uniphier_pinctrl_priv* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.pin_desc* @pin_desc_get(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @uniphier_pin_get_iectrl(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
