; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-nsp-gpio.c_nsp_gpio_get_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-nsp-gpio.c_nsp_gpio_get_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsp_gpio = type { i32, i64 }

@NSP_GPIO_DRV_CTRL = common dso_local global i32 0, align 4
@GPIO_DRV_STRENGTH_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nsp_gpio*, i32, i32*)* @nsp_gpio_get_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp_gpio_get_strength(%struct.nsp_gpio* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.nsp_gpio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.nsp_gpio* %0, %struct.nsp_gpio** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load i32, i32* @NSP_GPIO_DRV_CTRL, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.nsp_gpio*, %struct.nsp_gpio** %4, align 8
  %15 = getelementptr inbounds %struct.nsp_gpio, %struct.nsp_gpio* %14, i32 0, i32 0
  %16 = load i64, i64* %10, align 8
  %17 = call i32 @raw_spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load i32*, i32** %6, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* @GPIO_DRV_STRENGTH_BITS, align 4
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %11, align 4
  br label %21

21:                                               ; preds = %46, %3
  %22 = load i32, i32* %11, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %21
  %25 = load %struct.nsp_gpio*, %struct.nsp_gpio** %4, align 8
  %26 = getelementptr inbounds %struct.nsp_gpio, %struct.nsp_gpio* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = call i32 @readl(i64 %30)
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @BIT(i32 %32)
  %34 = and i32 %31, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = lshr i32 %36, %35
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %11, align 4
  %40 = shl i32 %38, %39
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = add i32 %42, %40
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add i32 %44, 4
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %24
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %11, align 4
  br label %21

49:                                               ; preds = %21
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %50, align 4
  %52 = add i32 %51, 1
  %53 = mul i32 %52, 2
  %54 = load i32*, i32** %6, align 8
  store i32 %53, i32* %54, align 4
  %55 = load %struct.nsp_gpio*, %struct.nsp_gpio** %4, align 8
  %56 = getelementptr inbounds %struct.nsp_gpio, %struct.nsp_gpio* %55, i32 0, i32 0
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @raw_spin_unlock_irqrestore(i32* %56, i64 %57)
  ret i32 0
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
