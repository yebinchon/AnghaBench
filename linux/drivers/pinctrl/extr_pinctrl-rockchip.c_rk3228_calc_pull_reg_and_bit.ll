; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rk3228_calc_pull_reg_and_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rk3228_calc_pull_reg_and_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pin_bank = type { i32, %struct.rockchip_pinctrl* }
%struct.rockchip_pinctrl = type { %struct.regmap* }
%struct.regmap = type { i32 }

@RK3228_PULL_OFFSET = common dso_local global i32 0, align 4
@RK3188_PULL_BANK_STRIDE = common dso_local global i32 0, align 4
@RK3188_PULL_PINS_PER_REG = common dso_local global i32 0, align 4
@RK3188_PULL_BITS_PER_PIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rockchip_pin_bank*, i32, %struct.regmap**, i32*, i32*)* @rk3228_calc_pull_reg_and_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk3228_calc_pull_reg_and_bit(%struct.rockchip_pin_bank* %0, i32 %1, %struct.regmap** %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.rockchip_pin_bank*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.regmap**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.rockchip_pinctrl*, align 8
  store %struct.rockchip_pin_bank* %0, %struct.rockchip_pin_bank** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.regmap** %2, %struct.regmap*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %13 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %12, i32 0, i32 1
  %14 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %13, align 8
  store %struct.rockchip_pinctrl* %14, %struct.rockchip_pinctrl** %11, align 8
  %15 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %11, align 8
  %16 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %15, i32 0, i32 0
  %17 = load %struct.regmap*, %struct.regmap** %16, align 8
  %18 = load %struct.regmap**, %struct.regmap*** %8, align 8
  store %struct.regmap* %17, %struct.regmap** %18, align 8
  %19 = load i32, i32* @RK3228_PULL_OFFSET, align 4
  %20 = load i32*, i32** %9, align 8
  store i32 %19, i32* %20, align 4
  %21 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %22 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @RK3188_PULL_BANK_STRIDE, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, %25
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @RK3188_PULL_PINS_PER_REG, align 4
  %31 = sdiv i32 %29, %30
  %32 = mul nsw i32 %31, 4
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, %32
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @RK3188_PULL_PINS_PER_REG, align 4
  %38 = srem i32 %36, %37
  %39 = load i32*, i32** %10, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @RK3188_PULL_BITS_PER_PIN, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %42, %40
  store i32 %43, i32* %41, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
