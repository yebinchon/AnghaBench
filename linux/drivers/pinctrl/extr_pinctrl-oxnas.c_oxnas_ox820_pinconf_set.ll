; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-oxnas.c_oxnas_ox820_pinconf_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-oxnas.c_oxnas_ox820_pinconf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.oxnas_pinctrl = type { i32, i32 }
%struct.oxnas_gpio_bank = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@PINMUX_820_BANK_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"setting pin %d bank %d mask 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"   pullup\0A\00", align 1
@PINMUX_820_PULLUP_CTRL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Property %u not supported\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @oxnas_ox820_pinconf_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxnas_ox820_pinconf_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.oxnas_pinctrl*, align 8
  %11 = alloca %struct.oxnas_gpio_bank*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %18 = call %struct.oxnas_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %17)
  store %struct.oxnas_pinctrl* %18, %struct.oxnas_pinctrl** %10, align 8
  %19 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %10, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.oxnas_gpio_bank* @pctl_to_bank(%struct.oxnas_pinctrl* %19, i32 %20)
  store %struct.oxnas_gpio_bank* %21, %struct.oxnas_gpio_bank** %11, align 8
  %22 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %11, align 8
  %23 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @PINMUX_820_BANK_OFFSET, align 4
  br label %29

28:                                               ; preds = %4
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %11, align 8
  %34 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %32, %36
  store i64 %37, i64* %15, align 8
  %38 = load i64, i64* %15, align 8
  %39 = call i64 @BIT(i64 %38)
  store i64 %39, i64* %16, align 8
  %40 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %10, align 8
  %41 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.oxnas_gpio_bank*, %struct.oxnas_gpio_bank** %11, align 8
  %45 = getelementptr inbounds %struct.oxnas_gpio_bank, %struct.oxnas_gpio_bank* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %16, align 8
  %49 = call i32 (i32, i8*, ...) @dev_dbg(i32 %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %43, i64 %47, i64 %48)
  store i32 0, i32* %14, align 4
  br label %50

50:                                               ; preds = %85, %29
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %88

54:                                               ; preds = %50
  %55 = load i64*, i64** %8, align 8
  %56 = load i32, i32* %14, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @pinconf_to_config_param(i64 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  switch i32 %61, label %76 [
    i32 128, label %62
  ]

62:                                               ; preds = %54
  %63 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %10, align 8
  %64 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i8*, ...) @dev_dbg(i32 %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %10, align 8
  %68 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @PINMUX_820_PULLUP_CTRL, align 4
  %72 = add i32 %70, %71
  %73 = load i64, i64* %16, align 8
  %74 = load i64, i64* %16, align 8
  %75 = call i32 @regmap_write_bits(i32 %69, i32 %72, i64 %73, i64 %74)
  br label %84

76:                                               ; preds = %54
  %77 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %10, align 8
  %78 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @ENOTSUPP, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %89

84:                                               ; preds = %62
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %14, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %14, align 4
  br label %50

88:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %76
  %90 = load i32, i32* %5, align 4
  ret i32 %90
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
