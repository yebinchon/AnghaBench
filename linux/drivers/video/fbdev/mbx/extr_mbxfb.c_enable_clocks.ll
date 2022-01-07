; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mbx/extr_mbxfb.c_enable_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mbx/extr_mbxfb.c_enable_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }

@SYSCLKSRC_PLL_2 = common dso_local global i32 0, align 4
@SYSCLKSRC = common dso_local global i32 0, align 4
@PIXCLKSRC_PLL_1 = common dso_local global i32 0, align 4
@PIXCLKSRC = common dso_local global i32 0, align 4
@CLKSLEEP = common dso_local global i32 0, align 4
@CORE_PLL_EN = common dso_local global i32 0, align 4
@COREPLL = common dso_local global i32 0, align 4
@DISP_PLL_EN = common dso_local global i32 0, align 4
@DISPPLL = common dso_local global i32 0, align 4
@VOVRCLK = common dso_local global i32 0, align 4
@PIXCLK_EN = common dso_local global i32 0, align 4
@PIXCLK = common dso_local global i32 0, align 4
@MEMCLK_EN = common dso_local global i32 0, align 4
@MEMCLK = common dso_local global i32 0, align 4
@M24CLK = common dso_local global i32 0, align 4
@MBXCLK = common dso_local global i32 0, align 4
@SDCLK_EN = common dso_local global i32 0, align 4
@SDCLK = common dso_local global i32 0, align 4
@PIXCLKDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @enable_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_clocks(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %3 = load i32, i32* @SYSCLKSRC_PLL_2, align 4
  %4 = load i32, i32* @SYSCLKSRC, align 4
  %5 = call i32 @write_reg_dly(i32 %3, i32 %4)
  %6 = load i32, i32* @PIXCLKSRC_PLL_1, align 4
  %7 = load i32, i32* @PIXCLKSRC, align 4
  %8 = call i32 @write_reg_dly(i32 %6, i32 %7)
  %9 = load i32, i32* @CLKSLEEP, align 4
  %10 = call i32 @write_reg_dly(i32 0, i32 %9)
  %11 = call i32 @Core_Pll_M(i32 11)
  %12 = call i32 @Core_Pll_N(i32 1)
  %13 = or i32 %11, %12
  %14 = call i32 @Core_Pll_P(i32 1)
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CORE_PLL_EN, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @COREPLL, align 4
  %19 = call i32 @write_reg_dly(i32 %17, i32 %18)
  %20 = call i32 @Disp_Pll_M(i32 27)
  %21 = call i32 @Disp_Pll_N(i32 7)
  %22 = or i32 %20, %21
  %23 = call i32 @Disp_Pll_P(i32 1)
  %24 = or i32 %22, %23
  %25 = load i32, i32* @DISP_PLL_EN, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @DISPPLL, align 4
  %28 = call i32 @write_reg_dly(i32 %26, i32 %27)
  %29 = load i32, i32* @VOVRCLK, align 4
  %30 = call i32 @write_reg_dly(i32 0, i32 %29)
  %31 = load i32, i32* @PIXCLK_EN, align 4
  %32 = load i32, i32* @PIXCLK, align 4
  %33 = call i32 @write_reg_dly(i32 %31, i32 %32)
  %34 = load i32, i32* @MEMCLK_EN, align 4
  %35 = load i32, i32* @MEMCLK, align 4
  %36 = call i32 @write_reg_dly(i32 %34, i32 %35)
  %37 = load i32, i32* @M24CLK, align 4
  %38 = call i32 @write_reg_dly(i32 1, i32 %37)
  %39 = load i32, i32* @MBXCLK, align 4
  %40 = call i32 @write_reg_dly(i32 1, i32 %39)
  %41 = load i32, i32* @SDCLK_EN, align 4
  %42 = load i32, i32* @SDCLK, align 4
  %43 = call i32 @write_reg_dly(i32 %41, i32 %42)
  %44 = load i32, i32* @PIXCLKDIV, align 4
  %45 = call i32 @write_reg_dly(i32 1, i32 %44)
  ret void
}

declare dso_local i32 @write_reg_dly(i32, i32) #1

declare dso_local i32 @Core_Pll_M(i32) #1

declare dso_local i32 @Core_Pll_N(i32) #1

declare dso_local i32 @Core_Pll_P(i32) #1

declare dso_local i32 @Disp_Pll_M(i32) #1

declare dso_local i32 @Disp_Pll_N(i32) #1

declare dso_local i32 @Disp_Pll_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
