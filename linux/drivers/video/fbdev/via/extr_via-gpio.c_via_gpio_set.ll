; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via-gpio.c_via_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via-gpio.c_via_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.viafb_gpio_cfg = type { %struct.TYPE_2__*, %struct.viafb_gpio** }
%struct.TYPE_2__ = type { i32 }
%struct.viafb_gpio = type { i32, i32 }

@VIASR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @via_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.viafb_gpio_cfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.viafb_gpio*, align 8
  %10 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = call %struct.viafb_gpio_cfg* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.viafb_gpio_cfg* %12, %struct.viafb_gpio_cfg** %7, align 8
  %13 = load %struct.viafb_gpio_cfg*, %struct.viafb_gpio_cfg** %7, align 8
  %14 = getelementptr inbounds %struct.viafb_gpio_cfg, %struct.viafb_gpio_cfg* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %10, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.viafb_gpio_cfg*, %struct.viafb_gpio_cfg** %7, align 8
  %20 = getelementptr inbounds %struct.viafb_gpio_cfg, %struct.viafb_gpio_cfg* %19, i32 0, i32 1
  %21 = load %struct.viafb_gpio**, %struct.viafb_gpio*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.viafb_gpio*, %struct.viafb_gpio** %21, i64 %23
  %25 = load %struct.viafb_gpio*, %struct.viafb_gpio** %24, align 8
  store %struct.viafb_gpio* %25, %struct.viafb_gpio** %9, align 8
  %26 = load i32, i32* @VIASR, align 4
  %27 = load %struct.viafb_gpio*, %struct.viafb_gpio** %9, align 8
  %28 = getelementptr inbounds %struct.viafb_gpio, %struct.viafb_gpio* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @via_read_reg(i32 %26, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.viafb_gpio*, %struct.viafb_gpio** %9, align 8
  %32 = getelementptr inbounds %struct.viafb_gpio, %struct.viafb_gpio* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 64, %33
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %3
  %40 = load %struct.viafb_gpio*, %struct.viafb_gpio** %9, align 8
  %41 = getelementptr inbounds %struct.viafb_gpio, %struct.viafb_gpio* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 16, %42
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %54

46:                                               ; preds = %3
  %47 = load %struct.viafb_gpio*, %struct.viafb_gpio** %9, align 8
  %48 = getelementptr inbounds %struct.viafb_gpio, %struct.viafb_gpio* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 16, %49
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %46, %39
  %55 = load i32, i32* @VIASR, align 4
  %56 = load %struct.viafb_gpio*, %struct.viafb_gpio** %9, align 8
  %57 = getelementptr inbounds %struct.viafb_gpio, %struct.viafb_gpio* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @via_write_reg(i32 %55, i32 %58, i32 %59)
  %61 = load %struct.viafb_gpio_cfg*, %struct.viafb_gpio_cfg** %7, align 8
  %62 = getelementptr inbounds %struct.viafb_gpio_cfg, %struct.viafb_gpio_cfg* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  ret void
}

declare dso_local %struct.viafb_gpio_cfg* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @via_read_reg(i32, i32) #1

declare dso_local i32 @via_write_reg(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
