; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-cherryview.c_chv_gpio_get_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-cherryview.c_chv_gpio_get_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.chv_pinctrl = type { i32 }

@chv_lock = common dso_local global i32 0, align 4
@CHV_PADCTRL0 = common dso_local global i32 0, align 4
@CHV_PADCTRL0_GPIOCFG_MASK = common dso_local global i32 0, align 4
@CHV_PADCTRL0_GPIOCFG_SHIFT = common dso_local global i32 0, align 4
@CHV_PADCTRL0_GPIOCFG_GPO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @chv_gpio_get_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chv_gpio_get_direction(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.chv_pinctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %10 = call %struct.chv_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.chv_pinctrl* %10, %struct.chv_pinctrl** %5, align 8
  %11 = load i64, i64* %8, align 8
  %12 = call i32 @raw_spin_lock_irqsave(i32* @chv_lock, i64 %11)
  %13 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @CHV_PADCTRL0, align 4
  %16 = call i32 @chv_padreg(%struct.chv_pinctrl* %13, i32 %14, i32 %15)
  %17 = call i32 @readl(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @raw_spin_unlock_irqrestore(i32* @chv_lock, i64 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @CHV_PADCTRL0_GPIOCFG_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @CHV_PADCTRL0_GPIOCFG_SHIFT, align 4
  %24 = load i32, i32* %7, align 4
  %25 = ashr i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @CHV_PADCTRL0_GPIOCFG_GPO, align 4
  %28 = icmp ne i32 %26, %27
  %29 = zext i1 %28 to i32
  ret i32 %29
}

declare dso_local %struct.chv_pinctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @chv_padreg(%struct.chv_pinctrl*, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
