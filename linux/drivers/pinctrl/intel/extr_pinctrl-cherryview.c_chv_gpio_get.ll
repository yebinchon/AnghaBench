; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-cherryview.c_chv_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-cherryview.c_chv_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.chv_pinctrl = type { i32 }

@chv_lock = common dso_local global i32 0, align 4
@CHV_PADCTRL0 = common dso_local global i32 0, align 4
@CHV_PADCTRL0_GPIOCFG_MASK = common dso_local global i32 0, align 4
@CHV_PADCTRL0_GPIOCFG_SHIFT = common dso_local global i32 0, align 4
@CHV_PADCTRL0_GPIOCFG_GPO = common dso_local global i32 0, align 4
@CHV_PADCTRL0_GPIOTXSTATE = common dso_local global i32 0, align 4
@CHV_PADCTRL0_GPIORXSTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @chv_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chv_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.chv_pinctrl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.chv_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.chv_pinctrl* %11, %struct.chv_pinctrl** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @raw_spin_lock_irqsave(i32* @chv_lock, i64 %12)
  %14 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @CHV_PADCTRL0, align 4
  %17 = call i32 @chv_padreg(%struct.chv_pinctrl* %14, i32 %15, i32 %16)
  %18 = call i32 @readl(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @raw_spin_unlock_irqrestore(i32* @chv_lock, i64 %19)
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @CHV_PADCTRL0_GPIOCFG_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @CHV_PADCTRL0_GPIOCFG_SHIFT, align 4
  %25 = load i32, i32* %9, align 4
  %26 = ashr i32 %25, %24
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @CHV_PADCTRL0_GPIOCFG_GPO, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %2
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @CHV_PADCTRL0_GPIOTXSTATE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %3, align 4
  br label %46

38:                                               ; preds = %2
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @CHV_PADCTRL0_GPIORXSTATE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %38, %30
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.chv_pinctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @chv_padreg(%struct.chv_pinctrl*, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
