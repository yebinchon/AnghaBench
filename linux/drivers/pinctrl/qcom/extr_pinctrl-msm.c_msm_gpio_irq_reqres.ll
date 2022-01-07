; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-msm.c_msm_gpio_irq_reqres.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-msm.c_msm_gpio_irq_reqres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32, i32 }
%struct.msm_pinctrl = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"unable to lock HW IRQ %lu for IRQ\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*)* @msm_gpio_irq_reqres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_gpio_irq_reqres(%struct.irq_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca %struct.msm_pinctrl*, align 8
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %8 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.gpio_chip* %8, %struct.gpio_chip** %4, align 8
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.msm_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.msm_pinctrl* %10, %struct.msm_pinctrl** %5, align 8
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @try_module_get(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %59

19:                                               ; preds = %1
  %20 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %5, align 8
  %21 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %24 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @msm_pinmux_request_gpio(i32 %22, i32* null, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %53

30:                                               ; preds = %19
  %31 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %32 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %33 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @msm_gpio_direction_input(%struct.gpio_chip* %31, i32 %34)
  %36 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %37 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %38 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @gpiochip_lock_as_irq(%struct.gpio_chip* %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %30
  %43 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %44 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %47 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %53

52:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %59

53:                                               ; preds = %42, %29
  %54 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %55 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @module_put(i32 %56)
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %53, %52, %16
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.msm_pinctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @msm_pinmux_request_gpio(i32, i32*, i32) #1

declare dso_local i32 @msm_gpio_direction_input(%struct.gpio_chip*, i32) #1

declare dso_local i64 @gpiochip_lock_as_irq(%struct.gpio_chip*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
