; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-37xx.c_armada_37xx_irq_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-37xx.c_armada_37xx_irq_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.armada_37xx_pinctrl = type { i32, i64 }

@IRQ_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @armada_37xx_irq_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @armada_37xx_irq_ack(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.armada_37xx_pinctrl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.gpio_chip* %8, %struct.gpio_chip** %3, align 8
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %10 = call %struct.armada_37xx_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.armada_37xx_pinctrl* %10, %struct.armada_37xx_pinctrl** %4, align 8
  %11 = load i64, i64* @IRQ_STATUS, align 8
  store i64 %11, i64* %5, align 8
  %12 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %13 = call i32 @armada_37xx_irq_update_reg(i64* %5, %struct.irq_data* %12)
  %14 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %4, align 8
  %15 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %14, i32 0, i32 0
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %19 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %4, align 8
  %22 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  %27 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %4, align 8
  %28 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %27, i32 0, i32 0
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  ret void
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.armada_37xx_pinctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @armada_37xx_irq_update_reg(i64*, %struct.irq_data*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
