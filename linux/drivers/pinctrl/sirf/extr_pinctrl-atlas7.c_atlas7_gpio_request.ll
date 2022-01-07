; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-atlas7.c_atlas7_gpio_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-atlas7.c_atlas7_gpio_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i64 }
%struct.atlas7_gpio_chip = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @atlas7_gpio_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atlas7_gpio_request(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.atlas7_gpio_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.atlas7_gpio_chip* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.atlas7_gpio_chip* %10, %struct.atlas7_gpio_chip** %6, align 8
  %11 = load %struct.atlas7_gpio_chip*, %struct.atlas7_gpio_chip** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @__atlas7_gpio_to_pin(%struct.atlas7_gpio_chip* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %45

18:                                               ; preds = %2
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %20 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = call i64 @pinctrl_gpio_request(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %45

30:                                               ; preds = %18
  %31 = load %struct.atlas7_gpio_chip*, %struct.atlas7_gpio_chip** %6, align 8
  %32 = getelementptr inbounds %struct.atlas7_gpio_chip, %struct.atlas7_gpio_chip* %31, i32 0, i32 0
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @raw_spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.atlas7_gpio_chip*, %struct.atlas7_gpio_chip** %6, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @__atlas7_gpio_set_input(%struct.atlas7_gpio_chip* %35, i32 %36)
  %38 = load %struct.atlas7_gpio_chip*, %struct.atlas7_gpio_chip** %6, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @__atlas7_gpio_irq_mask(%struct.atlas7_gpio_chip* %38, i32 %39)
  %41 = load %struct.atlas7_gpio_chip*, %struct.atlas7_gpio_chip** %6, align 8
  %42 = getelementptr inbounds %struct.atlas7_gpio_chip, %struct.atlas7_gpio_chip* %41, i32 0, i32 0
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @raw_spin_unlock_irqrestore(i32* %42, i64 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %30, %27, %16
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.atlas7_gpio_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @__atlas7_gpio_to_pin(%struct.atlas7_gpio_chip*, i32) #1

declare dso_local i64 @pinctrl_gpio_request(i64) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__atlas7_gpio_set_input(%struct.atlas7_gpio_chip*, i32) #1

declare dso_local i32 @__atlas7_gpio_irq_mask(%struct.atlas7_gpio_chip*, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
