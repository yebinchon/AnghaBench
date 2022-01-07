; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-cherryview.c_chv_init_irq_valid_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-cherryview.c_chv_init_irq_valid_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.chv_pinctrl = type { %struct.chv_community* }
%struct.chv_community = type { i32, i32, %struct.pinctrl_pin_desc* }
%struct.pinctrl_pin_desc = type { i32 }

@CHV_PADCTRL0 = common dso_local global i32 0, align 4
@CHV_PADCTRL0_INTSEL_MASK = common dso_local global i32 0, align 4
@CHV_PADCTRL0_INTSEL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i64*, i32)* @chv_init_irq_valid_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chv_init_irq_valid_mask(%struct.gpio_chip* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.chv_pinctrl*, align 8
  %8 = alloca %struct.chv_community*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pinctrl_pin_desc*, align 8
  %11 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %13 = call %struct.chv_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.chv_pinctrl* %13, %struct.chv_pinctrl** %7, align 8
  %14 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %7, align 8
  %15 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %14, i32 0, i32 0
  %16 = load %struct.chv_community*, %struct.chv_community** %15, align 8
  store %struct.chv_community* %16, %struct.chv_community** %8, align 8
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %55, %3
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.chv_community*, %struct.chv_community** %8, align 8
  %20 = getelementptr inbounds %struct.chv_community, %struct.chv_community* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %58

23:                                               ; preds = %17
  %24 = load %struct.chv_community*, %struct.chv_community** %8, align 8
  %25 = getelementptr inbounds %struct.chv_community, %struct.chv_community* %24, i32 0, i32 2
  %26 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %26, i64 %28
  store %struct.pinctrl_pin_desc* %29, %struct.pinctrl_pin_desc** %10, align 8
  %30 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %7, align 8
  %31 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %10, align 8
  %32 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CHV_PADCTRL0, align 4
  %35 = call i32 @chv_padreg(%struct.chv_pinctrl* %30, i32 %33, i32 %34)
  %36 = call i32 @readl(i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* @CHV_PADCTRL0_INTSEL_MASK, align 4
  %38 = load i32, i32* %11, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* @CHV_PADCTRL0_INTSEL_SHIFT, align 4
  %41 = load i32, i32* %11, align 4
  %42 = ashr i32 %41, %40
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.chv_community*, %struct.chv_community** %8, align 8
  %45 = getelementptr inbounds %struct.chv_community, %struct.chv_community* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sge i32 %43, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %23
  %49 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %10, align 8
  %50 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i64*, i64** %5, align 8
  %53 = call i32 @clear_bit(i32 %51, i64* %52)
  br label %54

54:                                               ; preds = %48, %23
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %17

58:                                               ; preds = %17
  ret void
}

declare dso_local %struct.chv_pinctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @chv_padreg(%struct.chv_pinctrl*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
