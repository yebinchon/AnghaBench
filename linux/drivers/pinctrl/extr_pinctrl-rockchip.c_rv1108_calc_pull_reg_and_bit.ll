; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rv1108_calc_pull_reg_and_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rv1108_calc_pull_reg_and_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pin_bank = type { i32, %struct.rockchip_pinctrl* }
%struct.rockchip_pinctrl = type { %struct.regmap*, %struct.regmap* }
%struct.regmap = type { i32 }

@RV1108_PULL_PMU_OFFSET = common dso_local global i32 0, align 4
@RV1108_PULL_OFFSET = common dso_local global i32 0, align 4
@RV1108_PULL_BANK_STRIDE = common dso_local global i32 0, align 4
@RV1108_PULL_PINS_PER_REG = common dso_local global i32 0, align 4
@RV1108_PULL_BITS_PER_PIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rockchip_pin_bank*, i32, %struct.regmap**, i32*, i32*)* @rv1108_calc_pull_reg_and_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv1108_calc_pull_reg_and_bit(%struct.rockchip_pin_bank* %0, i32 %1, %struct.regmap** %2, i32* %3, i32* %4) #0 {
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
  %15 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %16 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %5
  %20 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %11, align 8
  %21 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %20, i32 0, i32 1
  %22 = load %struct.regmap*, %struct.regmap** %21, align 8
  %23 = load %struct.regmap**, %struct.regmap*** %8, align 8
  store %struct.regmap* %22, %struct.regmap** %23, align 8
  %24 = load i32, i32* @RV1108_PULL_PMU_OFFSET, align 4
  %25 = load i32*, i32** %9, align 8
  store i32 %24, i32* %25, align 4
  br label %44

26:                                               ; preds = %5
  %27 = load i32, i32* @RV1108_PULL_OFFSET, align 4
  %28 = load i32*, i32** %9, align 8
  store i32 %27, i32* %28, align 4
  %29 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %11, align 8
  %30 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %29, i32 0, i32 0
  %31 = load %struct.regmap*, %struct.regmap** %30, align 8
  %32 = load %struct.regmap**, %struct.regmap*** %8, align 8
  store %struct.regmap* %31, %struct.regmap** %32, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 16
  store i32 %35, i32* %33, align 4
  %36 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %37 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @RV1108_PULL_BANK_STRIDE, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, %40
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %26, %19
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @RV1108_PULL_PINS_PER_REG, align 4
  %47 = sdiv i32 %45, %46
  %48 = mul nsw i32 %47, 4
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, %48
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @RV1108_PULL_PINS_PER_REG, align 4
  %54 = srem i32 %52, %53
  %55 = load i32*, i32** %10, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @RV1108_PULL_BITS_PER_PIN, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %58, %56
  store i32 %59, i32* %57, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
