; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-oxnas.c_oxnas_ox820_pinconf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-oxnas.c_oxnas_ox820_pinconf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.oxnas_pinctrl = type { i32 }
%struct.oxnas_gpio_bank = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@PINMUX_820_BANK_OFFSET = common dso_local global i32 0, align 4
@PINMUX_820_PULLUP_CTRL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @oxnas_ox820_pinconf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxnas_ox820_pinconf_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
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
  %14 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %15 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %16 = call %struct.oxnas_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %15)
  store %struct.oxnas_pinctrl* %16, %struct.oxnas_pinctrl** %8, align 8
  %17 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.oxnas_gpio_bank* @pctl_to_bank(%struct.oxnas_pinctrl* %17, i32 %18)
  store %struct.oxnas_gpio_bank* %19, %struct.oxnas_gpio_bank** %9, align 8
  %20 = load i64*, i64** %7, align 8
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @pinconf_to_config_param(i64 %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %9, align 8
  %24 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @PINMUX_820_BANK_OFFSET, align 4
  br label %30

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ]
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %9, align 8
  %35 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %33, %37
  %39 = call i32 @BIT(i64 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %10, align 4
  switch i32 %40, label %61 [
    i32 128, label %41
  ]

41:                                               ; preds = %30
  %42 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %8, align 8
  %43 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @PINMUX_820_PULLUP_CTRL, align 4
  %47 = add i32 %45, %46
  %48 = call i32 @regmap_read(i32 %44, i32 %47, i32* %14)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %4, align 4
  br label %69

53:                                               ; preds = %41
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %12, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %14, align 4
  br label %64

61:                                               ; preds = %30
  %62 = load i32, i32* @ENOTSUPP, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %69

64:                                               ; preds = %53
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %14, align 4
  %67 = call i64 @pinconf_to_config_packed(i32 %65, i32 %66)
  %68 = load i64*, i64** %7, align 8
  store i64 %67, i64* %68, align 8
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %64, %61, %51
  %70 = load i32, i32* %4, align 4
  ret i32 %70
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
