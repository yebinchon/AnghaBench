; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-oxnas.c_oxnas_ox810se_pinconf_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-oxnas.c_oxnas_ox810se_pinconf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.oxnas_pinctrl = type { i32, i32 }
%struct.oxnas_gpio_bank = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"setting pin %d bank %d mask 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"   pullup\0A\00", align 1
@PINMUX_810_PULLUP_CTRL1 = common dso_local global i32 0, align 4
@PINMUX_810_PULLUP_CTRL0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Property %u not supported\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @oxnas_ox810se_pinconf_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxnas_ox810se_pinconf_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.oxnas_pinctrl*, align 8
  %11 = alloca %struct.oxnas_gpio_bank*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %17 = call %struct.oxnas_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %16)
  store %struct.oxnas_pinctrl* %17, %struct.oxnas_pinctrl** %10, align 8
  %18 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.oxnas_gpio_bank* @pctl_to_bank(%struct.oxnas_pinctrl* %18, i32 %19)
  store %struct.oxnas_gpio_bank* %20, %struct.oxnas_gpio_bank** %11, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %11, align 8
  %24 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %22, %26
  store i64 %27, i64* %14, align 8
  %28 = load i64, i64* %14, align 8
  %29 = call i64 @BIT(i64 %28)
  store i64 %29, i64* %15, align 8
  %30 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %10, align 8
  %31 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %11, align 8
  %35 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %15, align 8
  %39 = call i32 (i32, i8*, ...) @dev_dbg(i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %33, i64 %37, i64 %38)
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %82, %4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %85

44:                                               ; preds = %40
  %45 = load i64*, i64** %8, align 8
  %46 = load i32, i32* %13, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @pinconf_to_config_param(i64 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  switch i32 %51, label %73 [
    i32 128, label %52
  ]

52:                                               ; preds = %44
  %53 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %10, align 8
  %54 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, ...) @dev_dbg(i32 %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %10, align 8
  %58 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %11, align 8
  %61 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  %65 = load i32, i32* @PINMUX_810_PULLUP_CTRL1, align 4
  br label %68

66:                                               ; preds = %52
  %67 = load i32, i32* @PINMUX_810_PULLUP_CTRL0, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  %70 = load i64, i64* %15, align 8
  %71 = load i64, i64* %15, align 8
  %72 = call i32 @regmap_write_bits(i32 %59, i32 %69, i64 %70, i64 %71)
  br label %81

73:                                               ; preds = %44
  %74 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %10, align 8
  %75 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @dev_err(i32 %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @ENOTSUPP, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %86

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %13, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %13, align 4
  br label %40

85:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %73
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local %struct.oxnas_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.oxnas_gpio_bank* @pctl_to_bank(%struct.oxnas_pinctrl*, i32) #1

declare dso_local i64 @BIT(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
