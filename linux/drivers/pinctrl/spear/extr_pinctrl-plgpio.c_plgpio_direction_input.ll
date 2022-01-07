; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/spear/extr_pinctrl-plgpio.c_plgpio_direction_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/spear/extr_pinctrl-plgpio.c_plgpio_direction_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.plgpio = type { i32 (i32)*, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@PTO_DIR_REG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @plgpio_direction_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plgpio_direction_input(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.plgpio*, align 8
  %7 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %9 = call %struct.plgpio* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.plgpio* %9, %struct.plgpio** %6, align 8
  %10 = load %struct.plgpio*, %struct.plgpio** %6, align 8
  %11 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %10, i32 0, i32 0
  %12 = load i32 (i32)*, i32 (i32)** %11, align 8
  %13 = icmp ne i32 (i32)* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %2
  %15 = load %struct.plgpio*, %struct.plgpio** %6, align 8
  %16 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PTO_DIR_REG, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %14
  %22 = load %struct.plgpio*, %struct.plgpio** %6, align 8
  %23 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %22, i32 0, i32 0
  %24 = load i32 (i32)*, i32 (i32)** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 %24(i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %51

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32, %14, %2
  %34 = load %struct.plgpio*, %struct.plgpio** %6, align 8
  %35 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %34, i32 0, i32 2
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.plgpio*, %struct.plgpio** %6, align 8
  %39 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.plgpio*, %struct.plgpio** %6, align 8
  %43 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @plgpio_reg_set(i32 %40, i32 %41, i32 %45)
  %47 = load %struct.plgpio*, %struct.plgpio** %6, align 8
  %48 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %47, i32 0, i32 2
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %33, %29
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.plgpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @plgpio_reg_set(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
