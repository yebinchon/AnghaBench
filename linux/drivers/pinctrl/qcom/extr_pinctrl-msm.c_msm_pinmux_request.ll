; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-msm.c_msm_pinmux_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-msm.c_msm_pinmux_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.msm_pinctrl = type { %struct.gpio_chip }
%struct.gpio_chip = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32)* @msm_pinmux_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_pinmux_request(%struct.pinctrl_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pinctrl_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.msm_pinctrl*, align 8
  %6 = alloca %struct.gpio_chip*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %8 = call %struct.msm_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %7)
  store %struct.msm_pinctrl* %8, %struct.msm_pinctrl** %5, align 8
  %9 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %5, align 8
  %10 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %9, i32 0, i32 0
  store %struct.gpio_chip* %10, %struct.gpio_chip** %6, align 8
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @gpiochip_line_is_valid(%struct.gpio_chip* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  br label %19

19:                                               ; preds = %16, %15
  %20 = phi i32 [ 0, %15 ], [ %18, %16 ]
  ret i32 %20
}

declare dso_local %struct.msm_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i64 @gpiochip_line_is_valid(%struct.gpio_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
