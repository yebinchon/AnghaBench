; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_chip.c_set_chip_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_chip.c_set_chip_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pll_value = type { i32, i32 }

@SM750LE = common dso_local global i64 0, align 8
@DEFAULT_INPUT_CLOCK = common dso_local global i32 0, align 4
@MXCLK_PLL = common dso_local global i32 0, align 4
@MXCLK_PLL_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @set_chip_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_chip_clock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pll_value, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i64 (...) @sm750_get_chip_type()
  %6 = load i64, i64* @SM750LE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %22

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = load i32, i32* @DEFAULT_INPUT_CLOCK, align 4
  %14 = getelementptr inbounds %struct.pll_value, %struct.pll_value* %3, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @MXCLK_PLL, align 4
  %16 = getelementptr inbounds %struct.pll_value, %struct.pll_value* %3, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @sm750_calc_pll_value(i32 %17, %struct.pll_value* %3)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @MXCLK_PLL_CTRL, align 4
  %20 = call i32 @sm750_format_pll_reg(%struct.pll_value* %3)
  %21 = call i32 @poke32(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %8, %12, %9
  ret void
}

declare dso_local i64 @sm750_get_chip_type(...) #1

declare dso_local i32 @sm750_calc_pll_value(i32, %struct.pll_value*) #1

declare dso_local i32 @poke32(i32, i32) #1

declare dso_local i32 @sm750_format_pll_reg(%struct.pll_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
