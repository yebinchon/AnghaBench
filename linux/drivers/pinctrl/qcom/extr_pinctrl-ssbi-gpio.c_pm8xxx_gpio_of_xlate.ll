; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-gpio.c_pm8xxx_gpio_of_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-gpio.c_pm8xxx_gpio_of_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.of_phandle_args = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@PM8XXX_GPIO_PHYSICAL_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, %struct.of_phandle_args*, i32*)* @pm8xxx_gpio_of_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_gpio_of_xlate(%struct.gpio_chip* %0, %struct.of_phandle_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca %struct.of_phandle_args*, align 8
  %7 = alloca i32*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %9 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %33

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load %struct.of_phandle_args*, %struct.of_phandle_args** %6, align 8
  %20 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %18, %15
  %26 = load %struct.of_phandle_args*, %struct.of_phandle_args** %6, align 8
  %27 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PM8XXX_GPIO_PHYSICAL_OFFSET, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %25, %12
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
