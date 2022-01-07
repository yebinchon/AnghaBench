; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ingenic.c_ingenic_pinmux_gpio_set_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ingenic.c_ingenic_pinmux_gpio_set_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }
%struct.ingenic_pinctrl = type { i64 }

@PINS_PER_GPIO_CHIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"set pin P%c%u to %sput\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@ID_X1000 = common dso_local global i64 0, align 8
@JZ4760_GPIO_INT = common dso_local global i32 0, align 4
@GPIO_MSK = common dso_local global i32 0, align 4
@JZ4760_GPIO_PAT1 = common dso_local global i32 0, align 4
@ID_JZ4760 = common dso_local global i64 0, align 8
@JZ4740_GPIO_SELECT = common dso_local global i32 0, align 4
@JZ4740_GPIO_DIR = common dso_local global i32 0, align 4
@JZ4740_GPIO_FUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*, i32, i32)* @ingenic_pinmux_gpio_set_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingenic_pinmux_gpio_set_direction(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca %struct.pinctrl_gpio_range*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ingenic_pinctrl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %13 = call %struct.ingenic_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.ingenic_pinctrl* %13, %struct.ingenic_pinctrl** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @PINS_PER_GPIO_CHIP, align 4
  %16 = urem i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @PINS_PER_GPIO_CHIP, align 4
  %19 = udiv i32 %17, %18
  store i32 %19, i32* %11, align 4
  %20 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %21 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %11, align 4
  %24 = add i32 65, %23
  %25 = trunc i32 %24 to i8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %31 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8 signext %25, i32 %26, i8* %30)
  %32 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %9, align 8
  %33 = getelementptr inbounds %struct.ingenic_pinctrl, %struct.ingenic_pinctrl* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ID_X1000, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %4
  %38 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %9, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @JZ4760_GPIO_INT, align 4
  %41 = call i32 @ingenic_shadow_config_pin(%struct.ingenic_pinctrl* %38, i32 %39, i32 %40, i32 0)
  %42 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %9, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @GPIO_MSK, align 4
  %45 = call i32 @ingenic_shadow_config_pin(%struct.ingenic_pinctrl* %42, i32 %43, i32 %44, i32 1)
  %46 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %9, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @JZ4760_GPIO_PAT1, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @ingenic_shadow_config_pin(%struct.ingenic_pinctrl* %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %9, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @ingenic_shadow_config_pin_load(%struct.ingenic_pinctrl* %51, i32 %52)
  br label %92

54:                                               ; preds = %4
  %55 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %9, align 8
  %56 = getelementptr inbounds %struct.ingenic_pinctrl, %struct.ingenic_pinctrl* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ID_JZ4760, align 8
  %59 = icmp sge i64 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %54
  %61 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %9, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @JZ4760_GPIO_INT, align 4
  %64 = call i32 @ingenic_config_pin(%struct.ingenic_pinctrl* %61, i32 %62, i32 %63, i32 0)
  %65 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %9, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @GPIO_MSK, align 4
  %68 = call i32 @ingenic_config_pin(%struct.ingenic_pinctrl* %65, i32 %66, i32 %67, i32 1)
  %69 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %9, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @JZ4760_GPIO_PAT1, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @ingenic_config_pin(%struct.ingenic_pinctrl* %69, i32 %70, i32 %71, i32 %72)
  br label %91

74:                                               ; preds = %54
  %75 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %9, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @JZ4740_GPIO_SELECT, align 4
  %78 = call i32 @ingenic_config_pin(%struct.ingenic_pinctrl* %75, i32 %76, i32 %77, i32 0)
  %79 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %9, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @JZ4740_GPIO_DIR, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 @ingenic_config_pin(%struct.ingenic_pinctrl* %79, i32 %80, i32 %81, i32 %85)
  %87 = load %struct.ingenic_pinctrl*, %struct.ingenic_pinctrl** %9, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @JZ4740_GPIO_FUNC, align 4
  %90 = call i32 @ingenic_config_pin(%struct.ingenic_pinctrl* %87, i32 %88, i32 %89, i32 0)
  br label %91

91:                                               ; preds = %74, %60
  br label %92

92:                                               ; preds = %91, %37
  ret i32 0
}

declare dso_local %struct.ingenic_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8 signext, i32, i8*) #1

declare dso_local i32 @ingenic_shadow_config_pin(%struct.ingenic_pinctrl*, i32, i32, i32) #1

declare dso_local i32 @ingenic_shadow_config_pin_load(%struct.ingenic_pinctrl*, i32) #1

declare dso_local i32 @ingenic_config_pin(%struct.ingenic_pinctrl*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
