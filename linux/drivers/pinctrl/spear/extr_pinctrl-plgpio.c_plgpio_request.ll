; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/spear/extr_pinctrl-plgpio.c_plgpio_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/spear/extr_pinctrl-plgpio.c_plgpio_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32, i32 }
%struct.plgpio = type { i32 (i32)*, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PTO_ENB_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @plgpio_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plgpio_request(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.plgpio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.plgpio* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.plgpio* %11, %struct.plgpio** %6, align 8
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %13 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = add i32 %14, %15
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %19 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp uge i32 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %119

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @pinctrl_gpio_request(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %3, align 4
  br label %119

32:                                               ; preds = %25
  %33 = load %struct.plgpio*, %struct.plgpio** %6, align 8
  %34 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @IS_ERR(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %32
  %39 = load %struct.plgpio*, %struct.plgpio** %6, align 8
  %40 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clk_enable(i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %115

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %32
  %48 = load %struct.plgpio*, %struct.plgpio** %6, align 8
  %49 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %119

54:                                               ; preds = %47
  %55 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @plgpio_direction_input(%struct.gpio_chip* %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %103

61:                                               ; preds = %54
  %62 = load %struct.plgpio*, %struct.plgpio** %6, align 8
  %63 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %62, i32 0, i32 0
  %64 = load i32 (i32)*, i32 (i32)** %63, align 8
  %65 = icmp ne i32 (i32)* %64, null
  br i1 %65, label %66, label %85

66:                                               ; preds = %61
  %67 = load %struct.plgpio*, %struct.plgpio** %6, align 8
  %68 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @PTO_ENB_REG, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %66
  %74 = load %struct.plgpio*, %struct.plgpio** %6, align 8
  %75 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %74, i32 0, i32 0
  %76 = load i32 (i32)*, i32 (i32)** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 %76(i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %9, align 4
  br label %103

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %66, %61
  %86 = load %struct.plgpio*, %struct.plgpio** %6, align 8
  %87 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %86, i32 0, i32 3
  %88 = load i64, i64* %8, align 8
  %89 = call i32 @spin_lock_irqsave(i32* %87, i64 %88)
  %90 = load %struct.plgpio*, %struct.plgpio** %6, align 8
  %91 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.plgpio*, %struct.plgpio** %6, align 8
  %95 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @plgpio_reg_set(i32 %92, i32 %93, i32 %97)
  %99 = load %struct.plgpio*, %struct.plgpio** %6, align 8
  %100 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %99, i32 0, i32 3
  %101 = load i64, i64* %8, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  store i32 0, i32* %3, align 4
  br label %119

103:                                              ; preds = %81, %60
  %104 = load %struct.plgpio*, %struct.plgpio** %6, align 8
  %105 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @IS_ERR(i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %103
  %110 = load %struct.plgpio*, %struct.plgpio** %6, align 8
  %111 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @clk_disable(i32 %112)
  br label %114

114:                                              ; preds = %109, %103
  br label %115

115:                                              ; preds = %114, %45
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @pinctrl_gpio_free(i32 %116)
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %115, %85, %53, %30, %22
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.plgpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @pinctrl_gpio_request(i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @plgpio_direction_input(%struct.gpio_chip*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @plgpio_reg_set(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @pinctrl_gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
