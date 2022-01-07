; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rk3399_calc_pull_reg_and_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rk3399_calc_pull_reg_and_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pin_bank = type { i32, %struct.rockchip_pinctrl* }
%struct.rockchip_pinctrl = type { %struct.regmap*, %struct.regmap* }
%struct.regmap = type { i32 }

@RK3399_PULL_PMU_OFFSET = common dso_local global i32 0, align 4
@RK3188_PULL_BANK_STRIDE = common dso_local global i32 0, align 4
@RK3188_PULL_PINS_PER_REG = common dso_local global i32 0, align 4
@RK3188_PULL_BITS_PER_PIN = common dso_local global i32 0, align 4
@RK3399_PULL_GRF_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rockchip_pin_bank*, i32, %struct.regmap**, i32*, i32*)* @rk3399_calc_pull_reg_and_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk3399_calc_pull_reg_and_bit(%struct.rockchip_pin_bank* %0, i32 %1, %struct.regmap** %2, i32* %3, i32* %4) #0 {
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
  br i1 %18, label %24, label %19

19:                                               ; preds = %5
  %20 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %21 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %54

24:                                               ; preds = %19, %5
  %25 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %11, align 8
  %26 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %25, i32 0, i32 1
  %27 = load %struct.regmap*, %struct.regmap** %26, align 8
  %28 = load %struct.regmap**, %struct.regmap*** %8, align 8
  store %struct.regmap* %27, %struct.regmap** %28, align 8
  %29 = load i32, i32* @RK3399_PULL_PMU_OFFSET, align 4
  %30 = load i32*, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  %31 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %32 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @RK3188_PULL_BANK_STRIDE, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, %35
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @RK3188_PULL_PINS_PER_REG, align 4
  %41 = sdiv i32 %39, %40
  %42 = mul nsw i32 %41, 4
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, %42
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @RK3188_PULL_PINS_PER_REG, align 4
  %48 = srem i32 %46, %47
  %49 = load i32*, i32** %10, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @RK3188_PULL_BITS_PER_PIN, align 4
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %52, %50
  store i32 %53, i32* %51, align 4
  br label %87

54:                                               ; preds = %19
  %55 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %11, align 8
  %56 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %55, i32 0, i32 0
  %57 = load %struct.regmap*, %struct.regmap** %56, align 8
  %58 = load %struct.regmap**, %struct.regmap*** %8, align 8
  store %struct.regmap* %57, %struct.regmap** %58, align 8
  %59 = load i32, i32* @RK3399_PULL_GRF_OFFSET, align 4
  %60 = load i32*, i32** %9, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 32
  store i32 %63, i32* %61, align 4
  %64 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %65 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @RK3188_PULL_BANK_STRIDE, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, %68
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @RK3188_PULL_PINS_PER_REG, align 4
  %74 = sdiv i32 %72, %73
  %75 = mul nsw i32 %74, 4
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, %75
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @RK3188_PULL_PINS_PER_REG, align 4
  %81 = srem i32 %79, %80
  %82 = load i32*, i32** %10, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* @RK3188_PULL_BITS_PER_PIN, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %85, %83
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %54, %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
