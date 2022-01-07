; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-pic32.c_pic32_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-pic32.c_pic32_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.pic32_gpio_bank = type { i64 }

@PORT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @pic32_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pic32_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pic32_gpio_bank*, align 8
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.pic32_gpio_bank* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.pic32_gpio_bank* %10, %struct.pic32_gpio_bank** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @BIT(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %7, align 8
  %18 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @PORT_REG, align 4
  %21 = call i64 @PIC32_SET(i32 %20)
  %22 = add nsw i64 %19, %21
  %23 = call i32 @writel(i32 %16, i64 %22)
  br label %33

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.pic32_gpio_bank*, %struct.pic32_gpio_bank** %7, align 8
  %27 = getelementptr inbounds %struct.pic32_gpio_bank, %struct.pic32_gpio_bank* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @PORT_REG, align 4
  %30 = call i64 @PIC32_CLR(i32 %29)
  %31 = add nsw i64 %28, %30
  %32 = call i32 @writel(i32 %25, i64 %31)
  br label %33

33:                                               ; preds = %24, %15
  ret void
}

declare dso_local %struct.pic32_gpio_bank* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @PIC32_SET(i32) #1

declare dso_local i64 @PIC32_CLR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
