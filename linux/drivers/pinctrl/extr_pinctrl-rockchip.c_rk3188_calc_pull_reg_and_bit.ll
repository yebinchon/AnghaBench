; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rk3188_calc_pull_reg_and_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rk3188_calc_pull_reg_and_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pin_bank = type { i32, %struct.regmap*, %struct.rockchip_pinctrl* }
%struct.regmap = type { i32 }
%struct.rockchip_pinctrl = type { %struct.regmap*, %struct.regmap*, %struct.regmap* }

@RK3188_PULL_PMU_OFFSET = common dso_local global i32 0, align 4
@RK3188_PULL_PINS_PER_REG = common dso_local global i32 0, align 4
@RK3188_PULL_BITS_PER_PIN = common dso_local global i32 0, align 4
@RK3188_PULL_OFFSET = common dso_local global i32 0, align 4
@RK3188_PULL_BANK_STRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rockchip_pin_bank*, i32, %struct.regmap**, i32*, i32*)* @rk3188_calc_pull_reg_and_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk3188_calc_pull_reg_and_bit(%struct.rockchip_pin_bank* %0, i32 %1, %struct.regmap** %2, i32* %3, i32* %4) #0 {
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
  %13 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %12, i32 0, i32 2
  %14 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %13, align 8
  store %struct.rockchip_pinctrl* %14, %struct.rockchip_pinctrl** %11, align 8
  %15 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %16 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %63

19:                                               ; preds = %5
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 12
  br i1 %21, label %22, label %63

22:                                               ; preds = %19
  %23 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %11, align 8
  %24 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %23, i32 0, i32 2
  %25 = load %struct.regmap*, %struct.regmap** %24, align 8
  %26 = icmp ne %struct.regmap* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %11, align 8
  %29 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %28, i32 0, i32 2
  %30 = load %struct.regmap*, %struct.regmap** %29, align 8
  br label %35

31:                                               ; preds = %22
  %32 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %33 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %32, i32 0, i32 1
  %34 = load %struct.regmap*, %struct.regmap** %33, align 8
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi %struct.regmap* [ %30, %27 ], [ %34, %31 ]
  %37 = load %struct.regmap**, %struct.regmap*** %8, align 8
  store %struct.regmap* %36, %struct.regmap** %37, align 8
  %38 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %11, align 8
  %39 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %38, i32 0, i32 2
  %40 = load %struct.regmap*, %struct.regmap** %39, align 8
  %41 = icmp ne %struct.regmap* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @RK3188_PULL_PMU_OFFSET, align 4
  br label %45

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ]
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @RK3188_PULL_PINS_PER_REG, align 4
  %50 = sdiv i32 %48, %49
  %51 = mul nsw i32 %50, 4
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, %51
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @RK3188_PULL_PINS_PER_REG, align 4
  %57 = srem i32 %55, %56
  %58 = load i32*, i32** %10, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @RK3188_PULL_BITS_PER_PIN, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %61, %59
  store i32 %62, i32* %60, align 4
  br label %116

63:                                               ; preds = %19, %5
  %64 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %11, align 8
  %65 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %64, i32 0, i32 0
  %66 = load %struct.regmap*, %struct.regmap** %65, align 8
  %67 = icmp ne %struct.regmap* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %11, align 8
  %70 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %69, i32 0, i32 0
  %71 = load %struct.regmap*, %struct.regmap** %70, align 8
  br label %76

72:                                               ; preds = %63
  %73 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %11, align 8
  %74 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %73, i32 0, i32 1
  %75 = load %struct.regmap*, %struct.regmap** %74, align 8
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi %struct.regmap* [ %71, %68 ], [ %75, %72 ]
  %78 = load %struct.regmap**, %struct.regmap*** %8, align 8
  store %struct.regmap* %77, %struct.regmap** %78, align 8
  %79 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %11, align 8
  %80 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %79, i32 0, i32 0
  %81 = load %struct.regmap*, %struct.regmap** %80, align 8
  %82 = icmp ne %struct.regmap* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %86

84:                                               ; preds = %76
  %85 = load i32, i32* @RK3188_PULL_OFFSET, align 4
  br label %86

86:                                               ; preds = %84, %83
  %87 = phi i32 [ 0, %83 ], [ %85, %84 ]
  %88 = load i32*, i32** %9, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %90, 4
  store i32 %91, i32* %89, align 4
  %92 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %93 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @RK3188_PULL_BANK_STRIDE, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, %96
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @RK3188_PULL_PINS_PER_REG, align 4
  %102 = sdiv i32 %100, %101
  %103 = mul nsw i32 %102, 4
  %104 = load i32*, i32** %9, align 8
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, %103
  store i32 %106, i32* %104, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @RK3188_PULL_PINS_PER_REG, align 4
  %109 = srem i32 %107, %108
  %110 = sub nsw i32 7, %109
  %111 = load i32*, i32** %10, align 8
  store i32 %110, i32* %111, align 4
  %112 = load i32, i32* @RK3188_PULL_BITS_PER_PIN, align 4
  %113 = load i32*, i32** %10, align 8
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %114, %112
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %86, %45
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
