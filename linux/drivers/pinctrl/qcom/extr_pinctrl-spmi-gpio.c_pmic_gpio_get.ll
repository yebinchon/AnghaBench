; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-gpio.c_pmic_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-gpio.c_pmic_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.pmic_gpio_state = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pmic_gpio_pad* }
%struct.pmic_gpio_pad = type { i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PMIC_MPP_REG_RT_STS = common dso_local global i32 0, align 4
@PMIC_MPP_REG_RT_STS_VAL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @pmic_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pmic_gpio_state*, align 8
  %7 = alloca %struct.pmic_gpio_pad*, align 8
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.pmic_gpio_state* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.pmic_gpio_state* %10, %struct.pmic_gpio_state** %6, align 8
  %11 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %6, align 8
  %12 = getelementptr inbounds %struct.pmic_gpio_state, %struct.pmic_gpio_state* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %21, align 8
  store %struct.pmic_gpio_pad* %22, %struct.pmic_gpio_pad** %7, align 8
  %23 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %7, align 8
  %24 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %58

30:                                               ; preds = %2
  %31 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %7, align 8
  %32 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %30
  %36 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %6, align 8
  %37 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %7, align 8
  %38 = load i32, i32* @PMIC_MPP_REG_RT_STS, align 4
  %39 = call i32 @pmic_gpio_read(%struct.pmic_gpio_state* %36, %struct.pmic_gpio_pad* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %58

44:                                               ; preds = %35
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @PMIC_MPP_REG_RT_STS_VAL_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %7, align 8
  %49 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %44, %30
  %51 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %7, align 8
  %52 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %50, %42, %27
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.pmic_gpio_state* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @pmic_gpio_read(%struct.pmic_gpio_state*, %struct.pmic_gpio_pad*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
