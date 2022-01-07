; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rk3368_calc_drv_reg_and_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rk3368_calc_drv_reg_and_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pin_bank = type { i32, %struct.rockchip_pinctrl* }
%struct.rockchip_pinctrl = type { %struct.regmap*, %struct.regmap* }
%struct.regmap = type { i32 }

@RK3368_DRV_PMU_OFFSET = common dso_local global i32 0, align 4
@RK3288_DRV_PINS_PER_REG = common dso_local global i32 0, align 4
@RK3288_DRV_BITS_PER_PIN = common dso_local global i32 0, align 4
@RK3368_DRV_GRF_OFFSET = common dso_local global i32 0, align 4
@RK3288_DRV_BANK_STRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rockchip_pin_bank*, i32, %struct.regmap**, i32*, i32*)* @rk3368_calc_drv_reg_and_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk3368_calc_drv_reg_and_bit(%struct.rockchip_pin_bank* %0, i32 %1, %struct.regmap** %2, i32* %3, i32* %4) #0 {
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
  br i1 %18, label %19, label %41

19:                                               ; preds = %5
  %20 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %11, align 8
  %21 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %20, i32 0, i32 1
  %22 = load %struct.regmap*, %struct.regmap** %21, align 8
  %23 = load %struct.regmap**, %struct.regmap*** %8, align 8
  store %struct.regmap* %22, %struct.regmap** %23, align 8
  %24 = load i32, i32* @RK3368_DRV_PMU_OFFSET, align 4
  %25 = load i32*, i32** %9, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @RK3288_DRV_PINS_PER_REG, align 4
  %28 = sdiv i32 %26, %27
  %29 = mul nsw i32 %28, 4
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, %29
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @RK3288_DRV_PINS_PER_REG, align 4
  %35 = srem i32 %33, %34
  %36 = load i32*, i32** %10, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @RK3288_DRV_BITS_PER_PIN, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, %37
  store i32 %40, i32* %38, align 4
  br label %74

41:                                               ; preds = %5
  %42 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %11, align 8
  %43 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %42, i32 0, i32 0
  %44 = load %struct.regmap*, %struct.regmap** %43, align 8
  %45 = load %struct.regmap**, %struct.regmap*** %8, align 8
  store %struct.regmap* %44, %struct.regmap** %45, align 8
  %46 = load i32, i32* @RK3368_DRV_GRF_OFFSET, align 4
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 16
  store i32 %50, i32* %48, align 4
  %51 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %52 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @RK3288_DRV_BANK_STRIDE, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, %55
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @RK3288_DRV_PINS_PER_REG, align 4
  %61 = sdiv i32 %59, %60
  %62 = mul nsw i32 %61, 4
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, %62
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @RK3288_DRV_PINS_PER_REG, align 4
  %68 = srem i32 %66, %67
  %69 = load i32*, i32** %10, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @RK3288_DRV_BITS_PER_PIN, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %72, %70
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %41, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
