; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_gpio_irq_request_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_gpio_irq_request_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.stm32_gpio_bank* }
%struct.stm32_gpio_bank = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.stm32_pinctrl = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"unable to lock HW IRQ %lu for IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*)* @stm32_gpio_irq_request_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_gpio_irq_request_resources(%struct.irq_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca %struct.stm32_gpio_bank*, align 8
  %5 = alloca %struct.stm32_pinctrl*, align 8
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %8 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %10, align 8
  store %struct.stm32_gpio_bank* %11, %struct.stm32_gpio_bank** %4, align 8
  %12 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %4, align 8
  %13 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.stm32_pinctrl* @dev_get_drvdata(i32 %15)
  store %struct.stm32_pinctrl* %16, %struct.stm32_pinctrl** %5, align 8
  %17 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %4, align 8
  %18 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %17, i32 0, i32 0
  %19 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %20 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @stm32_gpio_direction_input(%struct.TYPE_5__* %18, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %46

27:                                               ; preds = %1
  %28 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %4, align 8
  %29 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %28, i32 0, i32 0
  %30 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %31 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @gpiochip_lock_as_irq(%struct.TYPE_5__* %29, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %27
  %37 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %5, align 8
  %38 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %41 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %46

45:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %36, %25
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.stm32_pinctrl* @dev_get_drvdata(i32) #1

declare dso_local i32 @stm32_gpio_direction_input(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @gpiochip_lock_as_irq(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
