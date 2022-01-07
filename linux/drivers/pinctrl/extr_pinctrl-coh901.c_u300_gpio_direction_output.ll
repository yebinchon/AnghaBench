; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-coh901.c_u300_gpio_direction_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-coh901.c_u300_gpio_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.u300_gpio = type { i32 }

@pcr = common dso_local global i32 0, align 4
@U300_GPIO_PXPCR_PIN_MODE_MASK = common dso_local global i32 0, align 4
@U300_GPIO_PXPCR_PIN_MODE_OUTPUT_PUSH_PULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @u300_gpio_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u300_gpio_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.u300_gpio*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = call %struct.u300_gpio* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.u300_gpio* %12, %struct.u300_gpio** %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @local_irq_save(i64 %13)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @pcr, align 4
  %17 = call i32 @U300_PIN_REG(i32 %15, i32 %16)
  %18 = call i32 @readl(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @U300_GPIO_PXPCR_PIN_MODE_MASK, align 4
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 7
  %23 = shl i32 %22, 1
  %24 = shl i32 %20, %23
  %25 = and i32 %19, %24
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %3
  %29 = load i32, i32* @U300_GPIO_PXPCR_PIN_MODE_MASK, align 4
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, 7
  %32 = shl i32 %31, 1
  %33 = shl i32 %29, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* @U300_GPIO_PXPCR_PIN_MODE_OUTPUT_PUSH_PULL, align 4
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 7
  %40 = shl i32 %39, 1
  %41 = shl i32 %37, %40
  %42 = load i32, i32* %10, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @pcr, align 4
  %47 = call i32 @U300_PIN_REG(i32 %45, i32 %46)
  %48 = call i32 @writel(i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %28, %3
  %50 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @u300_gpio_set(%struct.gpio_chip* %50, i32 %51, i32 %52)
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @local_irq_restore(i64 %54)
  ret i32 0
}

declare dso_local %struct.u300_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @U300_PIN_REG(i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @u300_gpio_set(%struct.gpio_chip*, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
