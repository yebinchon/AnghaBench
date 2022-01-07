; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-ti-pipe3.c_ti_pipe3_dpll_program.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-ti-pipe3.c_ti_pipe3_dpll_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_pipe3 = type { i32 }
%struct.pipe3_dpll_params = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PLL_CONFIGURATION1 = common dso_local global i32 0, align 4
@PLL_REGN_MASK = common dso_local global i32 0, align 4
@PLL_REGN_SHIFT = common dso_local global i32 0, align 4
@PLL_CONFIGURATION2 = common dso_local global i32 0, align 4
@PLL_SELFREQDCO_MASK = common dso_local global i32 0, align 4
@PLL_SELFREQDCO_SHIFT = common dso_local global i32 0, align 4
@PLL_REGM_MASK = common dso_local global i32 0, align 4
@PLL_REGM_SHIFT = common dso_local global i32 0, align 4
@PLL_CONFIGURATION4 = common dso_local global i32 0, align 4
@PLL_REGM_F_MASK = common dso_local global i32 0, align 4
@PLL_REGM_F_SHIFT = common dso_local global i32 0, align 4
@PLL_CONFIGURATION3 = common dso_local global i32 0, align 4
@PLL_SD_MASK = common dso_local global i32 0, align 4
@PLL_SD_SHIFT = common dso_local global i32 0, align 4
@PLL_GO = common dso_local global i32 0, align 4
@SET_PLL_GO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_pipe3*)* @ti_pipe3_dpll_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_pipe3_dpll_program(%struct.ti_pipe3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_pipe3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pipe3_dpll_params*, align 8
  store %struct.ti_pipe3* %0, %struct.ti_pipe3** %3, align 8
  %6 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %7 = call %struct.pipe3_dpll_params* @ti_pipe3_get_dpll_params(%struct.ti_pipe3* %6)
  store %struct.pipe3_dpll_params* %7, %struct.pipe3_dpll_params** %5, align 8
  %8 = load %struct.pipe3_dpll_params*, %struct.pipe3_dpll_params** %5, align 8
  %9 = icmp ne %struct.pipe3_dpll_params* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %132

13:                                               ; preds = %1
  %14 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %15 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PLL_CONFIGURATION1, align 4
  %18 = call i32 @ti_pipe3_readl(i32 %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @PLL_REGN_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load %struct.pipe3_dpll_params*, %struct.pipe3_dpll_params** %5, align 8
  %24 = getelementptr inbounds %struct.pipe3_dpll_params, %struct.pipe3_dpll_params* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PLL_REGN_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %31 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PLL_CONFIGURATION1, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @ti_pipe3_writel(i32 %32, i32 %33, i32 %34)
  %36 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %37 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PLL_CONFIGURATION2, align 4
  %40 = call i32 @ti_pipe3_readl(i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* @PLL_SELFREQDCO_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load %struct.pipe3_dpll_params*, %struct.pipe3_dpll_params** %5, align 8
  %46 = getelementptr inbounds %struct.pipe3_dpll_params, %struct.pipe3_dpll_params* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PLL_SELFREQDCO_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %53 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PLL_CONFIGURATION2, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @ti_pipe3_writel(i32 %54, i32 %55, i32 %56)
  %58 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %59 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PLL_CONFIGURATION1, align 4
  %62 = call i32 @ti_pipe3_readl(i32 %60, i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* @PLL_REGM_MASK, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %4, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %4, align 4
  %67 = load %struct.pipe3_dpll_params*, %struct.pipe3_dpll_params** %5, align 8
  %68 = getelementptr inbounds %struct.pipe3_dpll_params, %struct.pipe3_dpll_params* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @PLL_REGM_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = load i32, i32* %4, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %4, align 4
  %74 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %75 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PLL_CONFIGURATION1, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @ti_pipe3_writel(i32 %76, i32 %77, i32 %78)
  %80 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %81 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @PLL_CONFIGURATION4, align 4
  %84 = call i32 @ti_pipe3_readl(i32 %82, i32 %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* @PLL_REGM_F_MASK, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %4, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %4, align 4
  %89 = load %struct.pipe3_dpll_params*, %struct.pipe3_dpll_params** %5, align 8
  %90 = getelementptr inbounds %struct.pipe3_dpll_params, %struct.pipe3_dpll_params* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @PLL_REGM_F_SHIFT, align 4
  %93 = shl i32 %91, %92
  %94 = load i32, i32* %4, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %4, align 4
  %96 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %97 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @PLL_CONFIGURATION4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @ti_pipe3_writel(i32 %98, i32 %99, i32 %100)
  %102 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %103 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @PLL_CONFIGURATION3, align 4
  %106 = call i32 @ti_pipe3_readl(i32 %104, i32 %105)
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* @PLL_SD_MASK, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %4, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %4, align 4
  %111 = load %struct.pipe3_dpll_params*, %struct.pipe3_dpll_params** %5, align 8
  %112 = getelementptr inbounds %struct.pipe3_dpll_params, %struct.pipe3_dpll_params* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @PLL_SD_SHIFT, align 4
  %115 = shl i32 %113, %114
  %116 = load i32, i32* %4, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %4, align 4
  %118 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %119 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @PLL_CONFIGURATION3, align 4
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @ti_pipe3_writel(i32 %120, i32 %121, i32 %122)
  %124 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %125 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @PLL_GO, align 4
  %128 = load i32, i32* @SET_PLL_GO, align 4
  %129 = call i32 @ti_pipe3_writel(i32 %126, i32 %127, i32 %128)
  %130 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %131 = call i32 @ti_pipe3_dpll_wait_lock(%struct.ti_pipe3* %130)
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %13, %10
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.pipe3_dpll_params* @ti_pipe3_get_dpll_params(%struct.ti_pipe3*) #1

declare dso_local i32 @ti_pipe3_readl(i32, i32) #1

declare dso_local i32 @ti_pipe3_writel(i32, i32, i32) #1

declare dso_local i32 @ti_pipe3_dpll_wait_lock(%struct.ti_pipe3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
