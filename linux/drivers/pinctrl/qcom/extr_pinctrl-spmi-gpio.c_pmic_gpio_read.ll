; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-gpio.c_pmic_gpio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-gpio.c_pmic_gpio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmic_gpio_state = type { i32, i32 }
%struct.pmic_gpio_pad = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"read 0x%x failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmic_gpio_state*, %struct.pmic_gpio_pad*, i32)* @pmic_gpio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic_gpio_read(%struct.pmic_gpio_state* %0, %struct.pmic_gpio_pad* %1, i32 %2) #0 {
  %4 = alloca %struct.pmic_gpio_state*, align 8
  %5 = alloca %struct.pmic_gpio_pad*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pmic_gpio_state* %0, %struct.pmic_gpio_state** %4, align 8
  store %struct.pmic_gpio_pad* %1, %struct.pmic_gpio_pad** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %4, align 8
  %10 = getelementptr inbounds %struct.pmic_gpio_state, %struct.pmic_gpio_state* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %5, align 8
  %13 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = call i32 @regmap_read(i32 %11, i64 %17, i32* %7)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %4, align 8
  %23 = getelementptr inbounds %struct.pmic_gpio_state, %struct.pmic_gpio_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %27, %21
  %30 = load i32, i32* %8, align 4
  ret i32 %30
}

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
