; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-iproc-gpio.c_iproc_gpio_direction_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-iproc-gpio.c_iproc_gpio_direction_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.iproc_gpio = type { i32, i32 }

@IPROC_GPIO_OUT_EN_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"gpio:%u set input\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @iproc_gpio_direction_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_gpio_direction_input(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iproc_gpio*, align 8
  %6 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %8 = call %struct.iproc_gpio* @gpiochip_get_data(%struct.gpio_chip* %7)
  store %struct.iproc_gpio* %8, %struct.iproc_gpio** %5, align 8
  %9 = load %struct.iproc_gpio*, %struct.iproc_gpio** %5, align 8
  %10 = getelementptr inbounds %struct.iproc_gpio, %struct.iproc_gpio* %9, i32 0, i32 1
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @raw_spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.iproc_gpio*, %struct.iproc_gpio** %5, align 8
  %14 = load i32, i32* @IPROC_GPIO_OUT_EN_OFFSET, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @iproc_set_bit(%struct.iproc_gpio* %13, i32 %14, i32 %15, i32 0)
  %17 = load %struct.iproc_gpio*, %struct.iproc_gpio** %5, align 8
  %18 = getelementptr inbounds %struct.iproc_gpio, %struct.iproc_gpio* %17, i32 0, i32 1
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @raw_spin_unlock_irqrestore(i32* %18, i64 %19)
  %21 = load %struct.iproc_gpio*, %struct.iproc_gpio** %5, align 8
  %22 = getelementptr inbounds %struct.iproc_gpio, %struct.iproc_gpio* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %24)
  ret i32 0
}

declare dso_local %struct.iproc_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iproc_set_bit(%struct.iproc_gpio*, i32, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
