; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rv1108_calc_schmitt_reg_and_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rv1108_calc_schmitt_reg_and_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pin_bank = type { i32, %struct.rockchip_pinctrl* }
%struct.rockchip_pinctrl = type { %struct.regmap*, %struct.regmap* }
%struct.regmap = type { i32 }

@RV1108_SCHMITT_PMU_OFFSET = common dso_local global i32 0, align 4
@RV1108_SCHMITT_PINS_PER_PMU_REG = common dso_local global i32 0, align 4
@RV1108_SCHMITT_GRF_OFFSET = common dso_local global i32 0, align 4
@RV1108_SCHMITT_PINS_PER_GRF_REG = common dso_local global i32 0, align 4
@RV1108_SCHMITT_BANK_STRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_pin_bank*, i32, %struct.regmap**, i32*, i32*)* @rv1108_calc_schmitt_reg_and_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv1108_calc_schmitt_reg_and_bit(%struct.rockchip_pin_bank* %0, i32 %1, %struct.regmap** %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.rockchip_pin_bank*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.regmap**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.rockchip_pinctrl*, align 8
  %12 = alloca i32, align 4
  store %struct.rockchip_pin_bank* %0, %struct.rockchip_pin_bank** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.regmap** %2, %struct.regmap*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %14 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %13, i32 0, i32 1
  %15 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %14, align 8
  store %struct.rockchip_pinctrl* %15, %struct.rockchip_pinctrl** %11, align 8
  %16 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %17 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %5
  %21 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %11, align 8
  %22 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %21, i32 0, i32 1
  %23 = load %struct.regmap*, %struct.regmap** %22, align 8
  %24 = load %struct.regmap**, %struct.regmap*** %8, align 8
  store %struct.regmap* %23, %struct.regmap** %24, align 8
  %25 = load i32, i32* @RV1108_SCHMITT_PMU_OFFSET, align 4
  %26 = load i32*, i32** %9, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @RV1108_SCHMITT_PINS_PER_PMU_REG, align 4
  store i32 %27, i32* %12, align 4
  br label %45

28:                                               ; preds = %5
  %29 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %11, align 8
  %30 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %29, i32 0, i32 0
  %31 = load %struct.regmap*, %struct.regmap** %30, align 8
  %32 = load %struct.regmap**, %struct.regmap*** %8, align 8
  store %struct.regmap* %31, %struct.regmap** %32, align 8
  %33 = load i32, i32* @RV1108_SCHMITT_GRF_OFFSET, align 4
  %34 = load i32*, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @RV1108_SCHMITT_PINS_PER_GRF_REG, align 4
  store i32 %35, i32* %12, align 4
  %36 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %37 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = load i32, i32* @RV1108_SCHMITT_BANK_STRIDE, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, %41
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %28, %20
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %12, align 4
  %48 = sdiv i32 %46, %47
  %49 = mul nsw i32 %48, 4
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, %49
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %12, align 4
  %55 = srem i32 %53, %54
  %56 = load i32*, i32** %10, align 8
  store i32 %55, i32* %56, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
