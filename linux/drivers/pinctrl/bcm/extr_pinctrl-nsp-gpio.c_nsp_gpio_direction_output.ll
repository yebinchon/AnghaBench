; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-nsp-gpio.c_nsp_gpio_direction_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-nsp-gpio.c_nsp_gpio_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.nsp_gpio = type { i32, i32 }

@REG = common dso_local global i32 0, align 4
@NSP_GPIO_OUT_EN = common dso_local global i32 0, align 4
@NSP_GPIO_DATA_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"gpio:%u set output, value:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @nsp_gpio_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp_gpio_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nsp_gpio*, align 8
  %8 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.nsp_gpio* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.nsp_gpio* %10, %struct.nsp_gpio** %7, align 8
  %11 = load %struct.nsp_gpio*, %struct.nsp_gpio** %7, align 8
  %12 = getelementptr inbounds %struct.nsp_gpio, %struct.nsp_gpio* %11, i32 0, i32 1
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @raw_spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.nsp_gpio*, %struct.nsp_gpio** %7, align 8
  %16 = load i32, i32* @REG, align 4
  %17 = load i32, i32* @NSP_GPIO_OUT_EN, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @nsp_set_bit(%struct.nsp_gpio* %15, i32 %16, i32 %17, i32 %18, i32 1)
  %20 = load %struct.nsp_gpio*, %struct.nsp_gpio** %7, align 8
  %21 = load i32, i32* @REG, align 4
  %22 = load i32, i32* @NSP_GPIO_DATA_OUT, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @nsp_set_bit(%struct.nsp_gpio* %20, i32 %21, i32 %22, i32 %23, i32 %28)
  %30 = load %struct.nsp_gpio*, %struct.nsp_gpio** %7, align 8
  %31 = getelementptr inbounds %struct.nsp_gpio, %struct.nsp_gpio* %30, i32 0, i32 1
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @raw_spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.nsp_gpio*, %struct.nsp_gpio** %7, align 8
  %35 = getelementptr inbounds %struct.nsp_gpio, %struct.nsp_gpio* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @dev_dbg(i32 %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  ret i32 0
}

declare dso_local %struct.nsp_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nsp_set_bit(%struct.nsp_gpio*, i32, i32, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
