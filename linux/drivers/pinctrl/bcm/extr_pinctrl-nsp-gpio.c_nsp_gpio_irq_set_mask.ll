; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-nsp-gpio.c_nsp_gpio_irq_set_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-nsp-gpio.c_nsp_gpio_irq_set_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32, i32 }
%struct.nsp_gpio = type { i32 }

@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@REG = common dso_local global i32 0, align 4
@NSP_GPIO_EVENT_INT_MASK = common dso_local global i32 0, align 4
@NSP_GPIO_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*, i32)* @nsp_gpio_irq_set_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nsp_gpio_irq_set_mask(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nsp_gpio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %9 = call %struct.nsp_gpio* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.nsp_gpio* %9, %struct.nsp_gpio** %5, align 8
  %10 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %11 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %14 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @irq_get_trigger_type(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %19 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.nsp_gpio*, %struct.nsp_gpio** %5, align 8
  %25 = load i32, i32* @REG, align 4
  %26 = load i32, i32* @NSP_GPIO_EVENT_INT_MASK, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @nsp_set_bit(%struct.nsp_gpio* %24, i32 %25, i32 %26, i32 %27, i32 %28)
  br label %37

30:                                               ; preds = %2
  %31 = load %struct.nsp_gpio*, %struct.nsp_gpio** %5, align 8
  %32 = load i32, i32* @REG, align 4
  %33 = load i32, i32* @NSP_GPIO_INT_MASK, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @nsp_set_bit(%struct.nsp_gpio* %31, i32 %32, i32 %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %30, %23
  ret void
}

declare dso_local %struct.nsp_gpio* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @irq_get_trigger_type(i32) #1

declare dso_local i32 @nsp_set_bit(%struct.nsp_gpio*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
