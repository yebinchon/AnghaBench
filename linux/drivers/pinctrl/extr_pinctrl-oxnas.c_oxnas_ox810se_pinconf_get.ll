; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-oxnas.c_oxnas_ox810se_pinconf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-oxnas.c_oxnas_ox810se_pinconf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.oxnas_pinctrl = type { i32 }
%struct.oxnas_gpio_bank = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@PINMUX_810_PULLUP_CTRL1 = common dso_local global i32 0, align 4
@PINMUX_810_PULLUP_CTRL0 = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @oxnas_ox810se_pinconf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxnas_ox810se_pinconf_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.oxnas_pinctrl*, align 8
  %9 = alloca %struct.oxnas_gpio_bank*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %15 = call %struct.oxnas_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %14)
  store %struct.oxnas_pinctrl* %15, %struct.oxnas_pinctrl** %8, align 8
  %16 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.oxnas_gpio_bank* @pctl_to_bank(%struct.oxnas_pinctrl* %16, i32 %17)
  store %struct.oxnas_gpio_bank* %18, %struct.oxnas_gpio_bank** %9, align 8
  %19 = load i64*, i64** %7, align 8
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @pinconf_to_config_param(i64 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %9, align 8
  %25 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %23, %27
  %29 = call i32 @BIT(i64 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %10, align 4
  switch i32 %30, label %58 [
    i32 128, label %31
  ]

31:                                               ; preds = %3
  %32 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %8, align 8
  %33 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %9, align 8
  %36 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @PINMUX_810_PULLUP_CTRL1, align 4
  br label %43

41:                                               ; preds = %31
  %42 = load i32, i32* @PINMUX_810_PULLUP_CTRL0, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = call i32 @regmap_read(i32 %34, i32 %44, i32* %13)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %4, align 4
  br label %66

50:                                               ; preds = %43
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %11, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %13, align 4
  br label %61

58:                                               ; preds = %3
  %59 = load i32, i32* @ENOTSUPP, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %66

61:                                               ; preds = %50
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i64 @pinconf_to_config_packed(i32 %62, i32 %63)
  %65 = load i64*, i64** %7, align 8
  store i64 %64, i64* %65, align 8
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %61, %58, %48
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.oxnas_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.oxnas_gpio_bank* @pctl_to_bank(%struct.oxnas_pinctrl*, i32) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
