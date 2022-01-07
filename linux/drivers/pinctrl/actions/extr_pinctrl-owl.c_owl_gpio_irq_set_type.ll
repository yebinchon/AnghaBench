; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/actions/extr_pinctrl-owl.c_owl_gpio_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/actions/extr_pinctrl-owl.c_owl_gpio_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.owl_pinctrl = type { i32 }

@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @owl_gpio_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_gpio_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca %struct.owl_pinctrl*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %8 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.gpio_chip* %8, %struct.gpio_chip** %5, align 8
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %10 = call %struct.owl_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.owl_pinctrl* %10, %struct.owl_pinctrl** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %13 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %19 = load i32, i32* @handle_level_irq, align 4
  %20 = call i32 @irq_set_handler_locked(%struct.irq_data* %18, i32 %19)
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %23 = load i32, i32* @handle_edge_irq, align 4
  %24 = call i32 @irq_set_handler_locked(%struct.irq_data* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %6, align 8
  %27 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %28 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @irq_set_type(%struct.owl_pinctrl* %26, i32 %29, i32 %30)
  ret i32 0
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.owl_pinctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @irq_set_handler_locked(%struct.irq_data*, i32) #1

declare dso_local i32 @irq_set_type(%struct.owl_pinctrl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
