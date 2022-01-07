; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-stm32-usbphyc.c_stm32_usbphyc_pll_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-stm32-usbphyc.c_stm32_usbphyc_pll_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_usbphyc = type { i32, i64, i32 }
%struct.pll_params = type { i64, i64 }

@PLL_INFF_MIN_RATE_HZ = common dso_local global i64 0, align 8
@PLL_INFF_MAX_RATE_HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"input clk freq (%dHz) out of range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PLLNDIV = common dso_local global i32 0, align 4
@PLLFRACIN = common dso_local global i32 0, align 4
@PLLDITHEN1 = common dso_local global i64 0, align 8
@PLLDITHEN0 = common dso_local global i64 0, align 8
@PLLSTRBYP = common dso_local global i64 0, align 8
@PLLFRACCTL = common dso_local global i64 0, align 8
@STM32_USBPHYC_PLL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"input clk freq=%dHz, ndiv=%lu, frac=%lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_usbphyc*)* @stm32_usbphyc_pll_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_usbphyc_pll_init(%struct.stm32_usbphyc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm32_usbphyc*, align 8
  %4 = alloca %struct.pll_params, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.stm32_usbphyc* %0, %struct.stm32_usbphyc** %3, align 8
  %9 = load %struct.stm32_usbphyc*, %struct.stm32_usbphyc** %3, align 8
  %10 = getelementptr inbounds %struct.stm32_usbphyc, %struct.stm32_usbphyc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @clk_get_rate(i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @PLL_INFF_MIN_RATE_HZ, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @PLL_INFF_MAX_RATE_HZ, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %16, %1
  %21 = load %struct.stm32_usbphyc*, %struct.stm32_usbphyc** %3, align 8
  %22 = getelementptr inbounds %struct.stm32_usbphyc, %struct.stm32_usbphyc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %74

28:                                               ; preds = %16
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @stm32_usbphyc_get_pll_params(i64 %29, %struct.pll_params* %4)
  %31 = load i32, i32* @PLLNDIV, align 4
  %32 = getelementptr inbounds %struct.pll_params, %struct.pll_params* %4, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @FIELD_PREP(i32 %31, i64 %33)
  store i64 %34, i64* %6, align 8
  %35 = load i32, i32* @PLLFRACIN, align 4
  %36 = getelementptr inbounds %struct.pll_params, %struct.pll_params* %4, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @FIELD_PREP(i32 %35, i64 %37)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* @PLLDITHEN1, align 8
  %40 = load i64, i64* @PLLDITHEN0, align 8
  %41 = or i64 %39, %40
  %42 = load i64, i64* @PLLSTRBYP, align 8
  %43 = or i64 %41, %42
  %44 = load i64, i64* %6, align 8
  %45 = or i64 %43, %44
  store i64 %45, i64* %8, align 8
  %46 = getelementptr inbounds %struct.pll_params, %struct.pll_params* %4, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %28
  %50 = load i64, i64* @PLLFRACCTL, align 8
  %51 = load i64, i64* %7, align 8
  %52 = or i64 %50, %51
  %53 = load i64, i64* %8, align 8
  %54 = or i64 %53, %52
  store i64 %54, i64* %8, align 8
  br label %55

55:                                               ; preds = %49, %28
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.stm32_usbphyc*, %struct.stm32_usbphyc** %3, align 8
  %58 = getelementptr inbounds %struct.stm32_usbphyc, %struct.stm32_usbphyc* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @STM32_USBPHYC_PLL, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel_relaxed(i64 %56, i64 %61)
  %63 = load %struct.stm32_usbphyc*, %struct.stm32_usbphyc** %3, align 8
  %64 = getelementptr inbounds %struct.stm32_usbphyc, %struct.stm32_usbphyc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* %5, align 8
  %67 = load i32, i32* @PLLNDIV, align 4
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @FIELD_GET(i32 %67, i64 %68)
  %70 = load i32, i32* @PLLFRACIN, align 4
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @FIELD_GET(i32 %70, i64 %71)
  %73 = call i32 @dev_dbg(i32 %65, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %66, i32 %69, i32 %72)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %55, %20
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @stm32_usbphyc_get_pll_params(i64, %struct.pll_params*) #1

declare dso_local i64 @FIELD_PREP(i32, i64) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32, i32) #1

declare dso_local i32 @FIELD_GET(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
