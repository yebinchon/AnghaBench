; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_chip.c_sm750_format_pll_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_chip.c_sm750_format_pll_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pll_value = type { i32, i32, i32, i32 }

@PLL_CTRL_POWER = common dso_local global i32 0, align 4
@PLL_CTRL_POD_SHIFT = common dso_local global i32 0, align 4
@PLL_CTRL_POD_MASK = common dso_local global i32 0, align 4
@PLL_CTRL_OD_SHIFT = common dso_local global i32 0, align 4
@PLL_CTRL_OD_MASK = common dso_local global i32 0, align 4
@PLL_CTRL_N_SHIFT = common dso_local global i32 0, align 4
@PLL_CTRL_N_MASK = common dso_local global i32 0, align 4
@PLL_CTRL_M_SHIFT = common dso_local global i32 0, align 4
@PLL_CTRL_M_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sm750_format_pll_reg(%struct.pll_value* %0) #0 {
  %2 = alloca %struct.pll_value*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pll_value* %0, %struct.pll_value** %2, align 8
  %7 = load %struct.pll_value*, %struct.pll_value** %2, align 8
  %8 = getelementptr inbounds %struct.pll_value, %struct.pll_value* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.pll_value*, %struct.pll_value** %2, align 8
  %11 = getelementptr inbounds %struct.pll_value, %struct.pll_value* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.pll_value*, %struct.pll_value** %2, align 8
  %14 = getelementptr inbounds %struct.pll_value, %struct.pll_value* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.pll_value*, %struct.pll_value** %2, align 8
  %17 = getelementptr inbounds %struct.pll_value, %struct.pll_value* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @PLL_CTRL_POWER, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @PLL_CTRL_POD_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* @PLL_CTRL_POD_MASK, align 4
  %24 = and i32 %22, %23
  %25 = or i32 %19, %24
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @PLL_CTRL_OD_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = load i32, i32* @PLL_CTRL_OD_MASK, align 4
  %30 = and i32 %28, %29
  %31 = or i32 %25, %30
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @PLL_CTRL_N_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* @PLL_CTRL_N_MASK, align 4
  %36 = and i32 %34, %35
  %37 = or i32 %31, %36
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @PLL_CTRL_M_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* @PLL_CTRL_M_MASK, align 4
  %42 = and i32 %40, %41
  %43 = or i32 %37, %42
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
