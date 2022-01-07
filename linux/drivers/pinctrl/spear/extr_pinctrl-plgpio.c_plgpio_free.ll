; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/spear/extr_pinctrl-plgpio.c_plgpio_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/spear/extr_pinctrl-plgpio.c_plgpio_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32, i32 }
%struct.plgpio = type { i32 (i32)*, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@PTO_ENB_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32)* @plgpio_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plgpio_free(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.plgpio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = call %struct.plgpio* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.plgpio* %9, %struct.plgpio** %5, align 8
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %11 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = add i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %17 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp uge i32 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %82

21:                                               ; preds = %2
  %22 = load %struct.plgpio*, %struct.plgpio** %5, align 8
  %23 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %68

28:                                               ; preds = %21
  %29 = load %struct.plgpio*, %struct.plgpio** %5, align 8
  %30 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %29, i32 0, i32 0
  %31 = load i32 (i32)*, i32 (i32)** %30, align 8
  %32 = icmp ne i32 (i32)* %31, null
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load %struct.plgpio*, %struct.plgpio** %5, align 8
  %35 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @PTO_ENB_REG, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %33
  %41 = load %struct.plgpio*, %struct.plgpio** %5, align 8
  %42 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %41, i32 0, i32 0
  %43 = load i32 (i32)*, i32 (i32)** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 %43(i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %82

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %33, %28
  %51 = load %struct.plgpio*, %struct.plgpio** %5, align 8
  %52 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %51, i32 0, i32 3
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load %struct.plgpio*, %struct.plgpio** %5, align 8
  %56 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.plgpio*, %struct.plgpio** %5, align 8
  %60 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @plgpio_reg_reset(i32 %57, i32 %58, i32 %62)
  %64 = load %struct.plgpio*, %struct.plgpio** %5, align 8
  %65 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %64, i32 0, i32 3
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  br label %68

68:                                               ; preds = %50, %27
  %69 = load %struct.plgpio*, %struct.plgpio** %5, align 8
  %70 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @IS_ERR(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %68
  %75 = load %struct.plgpio*, %struct.plgpio** %5, align 8
  %76 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @clk_disable(i32 %77)
  br label %79

79:                                               ; preds = %74, %68
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @pinctrl_gpio_free(i32 %80)
  br label %82

82:                                               ; preds = %79, %48, %20
  ret void
}

declare dso_local %struct.plgpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @plgpio_reg_reset(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @pinctrl_gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
