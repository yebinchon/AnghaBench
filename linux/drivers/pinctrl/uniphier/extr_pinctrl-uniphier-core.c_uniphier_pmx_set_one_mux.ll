; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/uniphier/extr_pinctrl-uniphier-core.c_uniphier_pmx_set_one_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/uniphier/extr_pinctrl-uniphier-core.c_uniphier_pmx_set_one_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.uniphier_pinctrl_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@UNIPHIER_PINCTRL_CAPS_DBGMUX_SEPARATE = common dso_local global i32 0, align 4
@UNIPHIER_PINCTRL_PINMUX_BASE = common dso_local global i32 0, align 4
@UNIPHIER_PINCTRL_LOAD_PINMUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @uniphier_pmx_set_one_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_pmx_set_one_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.uniphier_pinctrl_priv*, align 8
  %9 = alloca i32, align 4
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
  %21 = call i32 @uniphier_conf_pin_input_enable(%struct.pinctrl_dev* %19, i32 %20, i32 1)
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %16, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %16, align 4
  store i32 %25, i32* %4, align 4
  br label %102

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %102

30:                                               ; preds = %26
  %31 = load %struct.uniphier_pinctrl_priv*, %struct.uniphier_pinctrl_priv** %8, align 8
  %32 = getelementptr inbounds %struct.uniphier_pinctrl_priv, %struct.uniphier_pinctrl_priv* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @UNIPHIER_PINCTRL_CAPS_DBGMUX_SEPARATE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i32 4, i32* %9, align 4
  store i32 8, i32* %10, align 4
  store i32 1, i32* %15, align 4
  br label %41

40:                                               ; preds = %30
  store i32 8, i32* %9, align 4
  store i32 4, i32* %10, align 4
  store i32 0, i32* %15, align 4
  br label %41

41:                                               ; preds = %40, %39
  %42 = load i32, i32* @UNIPHIER_PINCTRL_PINMUX_BASE, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %9, align 4
  %45 = mul i32 %43, %44
  %46 = udiv i32 %45, 32
  %47 = load i32, i32* %10, align 4
  %48 = mul i32 %46, %47
  %49 = add i32 %42, %48
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %10, align 4
  %52 = add i32 %50, %51
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %9, align 4
  %55 = mul i32 %53, %54
  %56 = urem i32 %55, 32
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %9, align 4
  %58 = shl i32 1, %57
  %59 = sub i32 %58, 1
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %84, %41
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %87

64:                                               ; preds = %60
  %65 = load %struct.uniphier_pinctrl_priv*, %struct.uniphier_pinctrl_priv** %8, align 8
  %66 = getelementptr inbounds %struct.uniphier_pinctrl_priv, %struct.uniphier_pinctrl_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %13, align 4
  %71 = shl i32 %69, %70
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %13, align 4
  %74 = shl i32 %72, %73
  %75 = call i32 @regmap_update_bits(i32 %67, i32 %68, i32 %71, i32 %74)
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %64
  %79 = load i32, i32* %16, align 4
  store i32 %79, i32* %4, align 4
  br label %102

80:                                               ; preds = %64
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %7, align 4
  %83 = ashr i32 %82, %81
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %11, align 4
  %86 = add i32 %85, 4
  store i32 %86, i32* %11, align 4
  br label %60

87:                                               ; preds = %60
  %88 = load i32, i32* %15, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %87
  %91 = load %struct.uniphier_pinctrl_priv*, %struct.uniphier_pinctrl_priv** %8, align 8
  %92 = getelementptr inbounds %struct.uniphier_pinctrl_priv, %struct.uniphier_pinctrl_priv* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @UNIPHIER_PINCTRL_LOAD_PINMUX, align 4
  %95 = call i32 @regmap_write(i32 %93, i32 %94, i32 1)
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = load i32, i32* %16, align 4
  store i32 %99, i32* %4, align 4
  br label %102

100:                                              ; preds = %90
  br label %101

101:                                              ; preds = %100, %87
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %98, %78, %29, %24
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.uniphier_pinctrl_priv* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @uniphier_conf_pin_input_enable(%struct.pinctrl_dev*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
