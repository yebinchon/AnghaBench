; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_chip.c_get_mxclk_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_chip.c_get_mxclk_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SM750LE = common dso_local global i64 0, align 8
@MXCLK_PLL_CTRL = common dso_local global i32 0, align 4
@PLL_CTRL_M_MASK = common dso_local global i32 0, align 4
@PLL_CTRL_M_SHIFT = common dso_local global i32 0, align 4
@PLL_CTRL_N_MASK = common dso_local global i32 0, align 4
@PLL_CTRL_N_SHIFT = common dso_local global i32 0, align 4
@PLL_CTRL_OD_MASK = common dso_local global i32 0, align 4
@PLL_CTRL_OD_SHIFT = common dso_local global i32 0, align 4
@PLL_CTRL_POD_MASK = common dso_local global i32 0, align 4
@PLL_CTRL_POD_SHIFT = common dso_local global i32 0, align 4
@DEFAULT_INPUT_CLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_mxclk_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_mxclk_freq() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i64 (...) @sm750_get_chip_type()
  %8 = load i64, i64* @SM750LE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 @MHz(i32 130)
  store i32 %11, i32* %1, align 4
  br label %46

12:                                               ; preds = %0
  %13 = load i32, i32* @MXCLK_PLL_CTRL, align 4
  %14 = call i32 @peek32(i32 %13)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @PLL_CTRL_M_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @PLL_CTRL_M_SHIFT, align 4
  %19 = lshr i32 %17, %18
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @PLL_CTRL_N_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @PLL_CTRL_N_SHIFT, align 4
  %24 = lshr i32 %22, %23
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @PLL_CTRL_OD_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @PLL_CTRL_OD_SHIFT, align 4
  %29 = lshr i32 %27, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @PLL_CTRL_POD_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @PLL_CTRL_POD_SHIFT, align 4
  %34 = lshr i32 %32, %33
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @DEFAULT_INPUT_CLOCK, align 4
  %36 = load i32, i32* %3, align 4
  %37 = mul i32 %35, %36
  %38 = load i32, i32* %4, align 4
  %39 = udiv i32 %37, %38
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @BIT(i32 %40)
  %42 = udiv i32 %39, %41
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @BIT(i32 %43)
  %45 = udiv i32 %42, %44
  store i32 %45, i32* %1, align 4
  br label %46

46:                                               ; preds = %12, %10
  %47 = load i32, i32* %1, align 4
  ret i32 %47
}

declare dso_local i64 @sm750_get_chip_type(...) #1

declare dso_local i32 @MHz(i32) #1

declare dso_local i32 @peek32(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
