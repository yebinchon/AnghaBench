; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rk3399_calc_drv_reg_and_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rk3399_calc_drv_reg_and_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pin_bank = type { i32, %struct.TYPE_2__*, %struct.rockchip_pinctrl* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.rockchip_pinctrl = type { %struct.regmap*, %struct.regmap* }
%struct.regmap = type { i32 }

@DRV_TYPE_IO_1V8_3V0_AUTO = common dso_local global i64 0, align 8
@DRV_TYPE_IO_3V3_ONLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rockchip_pin_bank*, i32, %struct.regmap**, i32*, i32*)* @rk3399_calc_drv_reg_and_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk3399_calc_drv_reg_and_bit(%struct.rockchip_pin_bank* %0, i32 %1, %struct.regmap** %2, i32* %3, i32* %4) #0 {
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
  %14 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %13, i32 0, i32 2
  %15 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %14, align 8
  store %struct.rockchip_pinctrl* %15, %struct.rockchip_pinctrl** %11, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sdiv i32 %16, 8
  store i32 %17, i32* %12, align 4
  %18 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %19 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %5
  %23 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %24 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %32

27:                                               ; preds = %22, %5
  %28 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %11, align 8
  %29 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %28, i32 0, i32 1
  %30 = load %struct.regmap*, %struct.regmap** %29, align 8
  %31 = load %struct.regmap**, %struct.regmap*** %8, align 8
  store %struct.regmap* %30, %struct.regmap** %31, align 8
  br label %37

32:                                               ; preds = %22
  %33 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %11, align 8
  %34 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %33, i32 0, i32 0
  %35 = load %struct.regmap*, %struct.regmap** %34, align 8
  %36 = load %struct.regmap**, %struct.regmap*** %8, align 8
  store %struct.regmap* %35, %struct.regmap** %36, align 8
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %39 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %48 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DRV_TYPE_IO_1V8_3V0_AUTO, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %68, label %57

57:                                               ; preds = %37
  %58 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %59 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @DRV_TYPE_IO_3V3_ONLY, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %57, %37
  %69 = load i32, i32* %7, align 4
  %70 = srem i32 %69, 8
  %71 = mul nsw i32 %70, 3
  %72 = load i32*, i32** %10, align 8
  store i32 %71, i32* %72, align 4
  br label %78

73:                                               ; preds = %57
  %74 = load i32, i32* %7, align 4
  %75 = srem i32 %74, 8
  %76 = mul nsw i32 %75, 2
  %77 = load i32*, i32** %10, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %73, %68
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
