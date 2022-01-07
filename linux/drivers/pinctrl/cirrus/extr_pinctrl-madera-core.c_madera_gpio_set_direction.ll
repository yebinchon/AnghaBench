; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/cirrus/extr_pinctrl-madera-core.c_madera_gpio_set_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/cirrus/extr_pinctrl-madera-core.c_madera_gpio_set_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }
%struct.madera_pin_private = type { i32, %struct.madera* }
%struct.madera = type { i32 }

@MADERA_GPIO1_CTRL_2 = common dso_local global i32 0, align 4
@MADERA_GP1_DIR = common dso_local global i32 0, align 4
@MADERA_GP1_DIR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to write to 0x%x (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*, i32, i32)* @madera_gpio_set_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_gpio_set_direction(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca %struct.pinctrl_gpio_range*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.madera_pin_private*, align 8
  %10 = alloca %struct.madera*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %15 = call %struct.madera_pin_private* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %14)
  store %struct.madera_pin_private* %15, %struct.madera_pin_private** %9, align 8
  %16 = load %struct.madera_pin_private*, %struct.madera_pin_private** %9, align 8
  %17 = getelementptr inbounds %struct.madera_pin_private, %struct.madera_pin_private* %16, i32 0, i32 1
  %18 = load %struct.madera*, %struct.madera** %17, align 8
  store %struct.madera* %18, %struct.madera** %10, align 8
  %19 = load i32, i32* @MADERA_GPIO1_CTRL_2, align 4
  %20 = load i32, i32* %7, align 4
  %21 = mul i32 2, %20
  %22 = add i32 %19, %21
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @MADERA_GP1_DIR, align 4
  store i32 %26, i32* %12, align 4
  br label %28

27:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %27, %25
  %29 = load %struct.madera*, %struct.madera** %10, align 8
  %30 = getelementptr inbounds %struct.madera, %struct.madera* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @MADERA_GP1_DIR_MASK, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @regmap_update_bits(i32 %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %28
  %39 = load %struct.madera_pin_private*, %struct.madera_pin_private** %9, align 8
  %40 = getelementptr inbounds %struct.madera_pin_private, %struct.madera_pin_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %38, %28
  %46 = load i32, i32* %13, align 4
  ret i32 %46
}

declare dso_local %struct.madera_pin_private* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
