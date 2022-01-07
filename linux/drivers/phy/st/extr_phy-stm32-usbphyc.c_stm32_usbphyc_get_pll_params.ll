; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-stm32-usbphyc.c_stm32_usbphyc_get_pll_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-stm32-usbphyc.c_stm32_usbphyc_get_pll_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pll_params = type { i32, i32 }

@PLL_FVCO_MHZ = common dso_local global i64 0, align 8
@HZ_PER_MHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pll_params*)* @stm32_usbphyc_get_pll_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_usbphyc_get_pll_params(i32 %0, %struct.pll_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pll_params*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.pll_params* %1, %struct.pll_params** %4, align 8
  %8 = load i64, i64* @PLL_FVCO_MHZ, align 8
  %9 = load i64, i64* @HZ_PER_MHZ, align 8
  %10 = mul i64 %8, %9
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i32, i32* %3, align 4
  %14 = mul nsw i32 %13, 2
  %15 = call i32 @do_div(i64 %12, i32 %14)
  %16 = load i64, i64* %6, align 8
  %17 = trunc i64 %16 to i32
  %18 = load %struct.pll_params*, %struct.pll_params** %4, align 8
  %19 = getelementptr inbounds %struct.pll_params, %struct.pll_params* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i64, i64* %5, align 8
  %21 = mul i64 %20, 65536
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* %3, align 4
  %24 = mul nsw i32 %23, 2
  %25 = call i32 @do_div(i64 %22, i32 %24)
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %6, align 8
  %28 = mul i64 %27, 65536
  %29 = sub i64 %26, %28
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.pll_params*, %struct.pll_params** %4, align 8
  %33 = getelementptr inbounds %struct.pll_params, %struct.pll_params* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  ret void
}

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
