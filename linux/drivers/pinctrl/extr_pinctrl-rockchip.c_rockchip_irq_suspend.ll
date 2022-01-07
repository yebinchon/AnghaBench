; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_irq_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_irq_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irq_chip_generic = type { i32, %struct.rockchip_pin_bank* }
%struct.rockchip_pin_bank = type { i32, i32 }

@GPIO_INTMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @rockchip_irq_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_irq_suspend(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.irq_chip_generic*, align 8
  %4 = alloca %struct.rockchip_pin_bank*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = call %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data* %5)
  store %struct.irq_chip_generic* %6, %struct.irq_chip_generic** %3, align 8
  %7 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %8 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %7, i32 0, i32 1
  %9 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %8, align 8
  store %struct.rockchip_pin_bank* %9, %struct.rockchip_pin_bank** %4, align 8
  %10 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %4, align 8
  %11 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @clk_enable(i32 %12)
  %14 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %15 = load i32, i32* @GPIO_INTMASK, align 4
  %16 = call i32 @irq_reg_readl(%struct.irq_chip_generic* %14, i32 %15)
  %17 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %4, align 8
  %18 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %20 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %21 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = xor i32 %22, -1
  %24 = load i32, i32* @GPIO_INTMASK, align 4
  %25 = call i32 @irq_reg_writel(%struct.irq_chip_generic* %19, i32 %23, i32 %24)
  %26 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %4, align 8
  %27 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @clk_disable(i32 %28)
  ret void
}

declare dso_local %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @irq_reg_readl(%struct.irq_chip_generic*, i32) #1

declare dso_local i32 @irq_reg_writel(%struct.irq_chip_generic*, i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
