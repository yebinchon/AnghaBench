; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-amd.c_amd_gpio_get_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-amd.c_amd_gpio_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.amd_gpio = type { i32, i64 }

@PIN_STS_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @amd_gpio_get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_gpio_get_value(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.amd_gpio*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = call %struct.amd_gpio* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.amd_gpio* %9, %struct.amd_gpio** %7, align 8
  %10 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %11 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @raw_spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %15 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = mul i32 %17, 4
  %19 = zext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %23 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %22, i32 0, i32 0
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @raw_spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @PIN_STS_OFF, align 4
  %28 = call i32 @BIT(i32 %27)
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  ret i32 %33
}

declare dso_local %struct.amd_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
