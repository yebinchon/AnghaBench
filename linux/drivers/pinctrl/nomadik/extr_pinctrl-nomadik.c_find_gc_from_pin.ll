; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-nomadik.c_find_gc_from_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-nomadik.c_find_gc_from_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.nmk_gpio_chip = type { %struct.gpio_chip }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gpio_chip* (i32)* @find_gc_from_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gpio_chip* @find_gc_from_pin(i32 %0) #0 {
  %2 = alloca %struct.gpio_chip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nmk_gpio_chip*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.nmk_gpio_chip* @find_nmk_gpio_from_pin(i32 %5)
  store %struct.nmk_gpio_chip* %6, %struct.nmk_gpio_chip** %4, align 8
  %7 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %4, align 8
  %8 = icmp ne %struct.nmk_gpio_chip* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %4, align 8
  %11 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %10, i32 0, i32 0
  store %struct.gpio_chip* %11, %struct.gpio_chip** %2, align 8
  br label %13

12:                                               ; preds = %1
  store %struct.gpio_chip* null, %struct.gpio_chip** %2, align 8
  br label %13

13:                                               ; preds = %12, %9
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %2, align 8
  ret %struct.gpio_chip* %14
}

declare dso_local %struct.nmk_gpio_chip* @find_nmk_gpio_from_pin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
