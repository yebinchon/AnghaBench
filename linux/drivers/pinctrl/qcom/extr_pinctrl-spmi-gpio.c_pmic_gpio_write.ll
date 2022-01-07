; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-gpio.c_pmic_gpio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-gpio.c_pmic_gpio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmic_gpio_state = type { i32, i32 }
%struct.pmic_gpio_pad = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"write 0x%x failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmic_gpio_state*, %struct.pmic_gpio_pad*, i32, i32)* @pmic_gpio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic_gpio_write(%struct.pmic_gpio_state* %0, %struct.pmic_gpio_pad* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pmic_gpio_state*, align 8
  %6 = alloca %struct.pmic_gpio_pad*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pmic_gpio_state* %0, %struct.pmic_gpio_state** %5, align 8
  store %struct.pmic_gpio_pad* %1, %struct.pmic_gpio_pad** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %5, align 8
  %11 = getelementptr inbounds %struct.pmic_gpio_state, %struct.pmic_gpio_state* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %6, align 8
  %14 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @regmap_write(i32 %12, i64 %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %5, align 8
  %25 = getelementptr inbounds %struct.pmic_gpio_state, %struct.pmic_gpio_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %23, %4
  %30 = load i32, i32* %9, align 4
  ret i32 %30
}

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
