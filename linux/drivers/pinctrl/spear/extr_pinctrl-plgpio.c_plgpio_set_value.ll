; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/spear/extr_pinctrl-plgpio.c_plgpio_set_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/spear/extr_pinctrl-plgpio.c_plgpio_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.plgpio = type { i32 (i32)*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@PTO_WDATA_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @plgpio_set_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plgpio_set_value(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.plgpio*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %9 = call %struct.plgpio* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.plgpio* %9, %struct.plgpio** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp uge i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %61

16:                                               ; preds = %3
  %17 = load %struct.plgpio*, %struct.plgpio** %7, align 8
  %18 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %17, i32 0, i32 0
  %19 = load i32 (i32)*, i32 (i32)** %18, align 8
  %20 = icmp ne i32 (i32)* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %16
  %22 = load %struct.plgpio*, %struct.plgpio** %7, align 8
  %23 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @PTO_WDATA_REG, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %21
  %29 = load %struct.plgpio*, %struct.plgpio** %7, align 8
  %30 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %29, i32 0, i32 0
  %31 = load i32 (i32)*, i32 (i32)** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 %31(i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %61

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %21, %16
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load %struct.plgpio*, %struct.plgpio** %7, align 8
  %43 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.plgpio*, %struct.plgpio** %7, align 8
  %47 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @plgpio_reg_set(i32 %44, i32 %45, i32 %49)
  br label %61

51:                                               ; preds = %38
  %52 = load %struct.plgpio*, %struct.plgpio** %7, align 8
  %53 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.plgpio*, %struct.plgpio** %7, align 8
  %57 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @plgpio_reg_reset(i32 %54, i32 %55, i32 %59)
  br label %61

61:                                               ; preds = %15, %36, %51, %41
  ret void
}

declare dso_local %struct.plgpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @plgpio_reg_set(i32, i32, i32) #1

declare dso_local i32 @plgpio_reg_reset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
