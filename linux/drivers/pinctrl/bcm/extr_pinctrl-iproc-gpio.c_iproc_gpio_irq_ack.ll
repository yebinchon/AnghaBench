; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-iproc-gpio.c_iproc_gpio_irq_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-iproc-gpio.c_iproc_gpio_irq_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.iproc_gpio = type { i64 }

@IPROC_GPIO_INT_CLR_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @iproc_gpio_irq_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iproc_gpio_irq_ack(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.iproc_gpio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %10 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %9)
  store %struct.gpio_chip* %10, %struct.gpio_chip** %3, align 8
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %12 = call %struct.iproc_gpio* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.iproc_gpio* %12, %struct.iproc_gpio** %4, align 8
  %13 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %14 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @IPROC_GPIO_INT_CLR_OFFSET, align 4
  %18 = call i32 @IPROC_GPIO_REG(i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @IPROC_GPIO_SHIFT(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @BIT(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.iproc_gpio*, %struct.iproc_gpio** %4, align 8
  %25 = getelementptr inbounds %struct.iproc_gpio, %struct.iproc_gpio* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = call i32 @writel(i32 %23, i64 %29)
  ret void
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.iproc_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @IPROC_GPIO_REG(i32, i32) #1

declare dso_local i32 @IPROC_GPIO_SHIFT(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
