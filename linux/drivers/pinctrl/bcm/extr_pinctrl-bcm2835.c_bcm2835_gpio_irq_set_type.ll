; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm2835.c_bcm2835_gpio_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm2835.c_bcm2835_gpio_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.bcm2835_pinctrl = type { i32*, i32* }

@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @bcm2835_gpio_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_gpio_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca %struct.bcm2835_pinctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %13 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %12)
  store %struct.gpio_chip* %13, %struct.gpio_chip** %5, align 8
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %15 = call %struct.bcm2835_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %14)
  store %struct.bcm2835_pinctrl* %15, %struct.bcm2835_pinctrl** %6, align 8
  %16 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %17 = call i32 @irqd_to_hwirq(%struct.irq_data* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @GPIO_REG_SHIFT(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @GPIO_REG_OFFSET(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %6, align 8
  %23 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @raw_spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %6, align 8
  %32 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i64 @test_bit(i32 %30, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %2
  %40 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @__bcm2835_gpio_irq_set_type_enabled(%struct.bcm2835_pinctrl* %40, i32 %41, i32 %42)
  store i32 %43, i32* %11, align 4
  br label %49

44:                                               ; preds = %2
  %45 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @__bcm2835_gpio_irq_set_type_disabled(%struct.bcm2835_pinctrl* %45, i32 %46, i32 %47)
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %56 = load i32, i32* @handle_edge_irq, align 4
  %57 = call i32 @irq_set_handler_locked(%struct.irq_data* %55, i32 %56)
  br label %62

58:                                               ; preds = %49
  %59 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %60 = load i32, i32* @handle_level_irq, align 4
  %61 = call i32 @irq_set_handler_locked(%struct.irq_data* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %54
  %63 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %6, align 8
  %64 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i64, i64* %10, align 8
  %70 = call i32 @raw_spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load i32, i32* %11, align 4
  ret i32 %71
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.bcm2835_pinctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @GPIO_REG_SHIFT(i32) #1

declare dso_local i32 @GPIO_REG_OFFSET(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @__bcm2835_gpio_irq_set_type_enabled(%struct.bcm2835_pinctrl*, i32, i32) #1

declare dso_local i32 @__bcm2835_gpio_irq_set_type_disabled(%struct.bcm2835_pinctrl*, i32, i32) #1

declare dso_local i32 @irq_set_handler_locked(%struct.irq_data*, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
