; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_gpio_irq_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_gpio_irq_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.st_gpio_bank = type { i64 }

@REG_PIO_CLR_PMASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @st_gpio_irq_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_gpio_irq_mask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.st_gpio_bank*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %5)
  store %struct.gpio_chip* %6, %struct.gpio_chip** %3, align 8
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %8 = call %struct.st_gpio_bank* @gpiochip_get_data(%struct.gpio_chip* %7)
  store %struct.st_gpio_bank* %8, %struct.st_gpio_bank** %4, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %10 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @BIT(i32 %11)
  %13 = load %struct.st_gpio_bank*, %struct.st_gpio_bank** %4, align 8
  %14 = getelementptr inbounds %struct.st_gpio_bank, %struct.st_gpio_bank* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @REG_PIO_CLR_PMASK, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 %12, i64 %17)
  ret void
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.st_gpio_bank* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
