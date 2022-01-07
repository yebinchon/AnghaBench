; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via-gpio.c_via_gpio_dir_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via-gpio.c_via_gpio_dir_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.viafb_gpio_cfg = type { %struct.TYPE_2__*, %struct.viafb_gpio** }
%struct.TYPE_2__ = type { i32 }
%struct.viafb_gpio = type { i32, i32 }

@VIASR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @via_gpio_dir_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_gpio_dir_input(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.viafb_gpio_cfg*, align 8
  %6 = alloca %struct.viafb_gpio*, align 8
  %7 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = call %struct.viafb_gpio_cfg* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.viafb_gpio_cfg* %9, %struct.viafb_gpio_cfg** %5, align 8
  %10 = load %struct.viafb_gpio_cfg*, %struct.viafb_gpio_cfg** %5, align 8
  %11 = getelementptr inbounds %struct.viafb_gpio_cfg, %struct.viafb_gpio_cfg* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.viafb_gpio_cfg*, %struct.viafb_gpio_cfg** %5, align 8
  %17 = getelementptr inbounds %struct.viafb_gpio_cfg, %struct.viafb_gpio_cfg* %16, i32 0, i32 1
  %18 = load %struct.viafb_gpio**, %struct.viafb_gpio*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.viafb_gpio*, %struct.viafb_gpio** %18, i64 %20
  %22 = load %struct.viafb_gpio*, %struct.viafb_gpio** %21, align 8
  store %struct.viafb_gpio* %22, %struct.viafb_gpio** %6, align 8
  %23 = load i32, i32* @VIASR, align 4
  %24 = load %struct.viafb_gpio*, %struct.viafb_gpio** %6, align 8
  %25 = getelementptr inbounds %struct.viafb_gpio, %struct.viafb_gpio* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.viafb_gpio*, %struct.viafb_gpio** %6, align 8
  %28 = getelementptr inbounds %struct.viafb_gpio, %struct.viafb_gpio* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 64, %29
  %31 = call i32 @via_write_reg_mask(i32 %23, i32 %26, i32 0, i32 %30)
  %32 = load %struct.viafb_gpio_cfg*, %struct.viafb_gpio_cfg** %5, align 8
  %33 = getelementptr inbounds %struct.viafb_gpio_cfg, %struct.viafb_gpio_cfg* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  ret i32 0
}

declare dso_local %struct.viafb_gpio_cfg* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @via_write_reg_mask(i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
