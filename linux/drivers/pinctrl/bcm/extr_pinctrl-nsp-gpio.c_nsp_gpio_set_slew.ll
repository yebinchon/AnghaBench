; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-nsp-gpio.c_nsp_gpio_set_slew.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-nsp-gpio.c_nsp_gpio_set_slew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsp_gpio = type { i32 }

@IO_CTRL = common dso_local global i32 0, align 4
@NSP_GPIO_SLEW_RATE_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nsp_gpio*, i32, i64)* @nsp_gpio_set_slew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp_gpio_set_slew(%struct.nsp_gpio* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.nsp_gpio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.nsp_gpio* %0, %struct.nsp_gpio** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load %struct.nsp_gpio*, %struct.nsp_gpio** %4, align 8
  %11 = load i32, i32* @IO_CTRL, align 4
  %12 = load i32, i32* @NSP_GPIO_SLEW_RATE_EN, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @nsp_set_bit(%struct.nsp_gpio* %10, i32 %11, i32 %12, i32 %13, i32 1)
  br label %21

15:                                               ; preds = %3
  %16 = load %struct.nsp_gpio*, %struct.nsp_gpio** %4, align 8
  %17 = load i32, i32* @IO_CTRL, align 4
  %18 = load i32, i32* @NSP_GPIO_SLEW_RATE_EN, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @nsp_set_bit(%struct.nsp_gpio* %16, i32 %17, i32 %18, i32 %19, i32 0)
  br label %21

21:                                               ; preds = %15, %9
  ret i32 0
}

declare dso_local i32 @nsp_set_bit(%struct.nsp_gpio*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
