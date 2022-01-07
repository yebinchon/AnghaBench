; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_phy-cadence-dp.c_cdns_dp_phy_pma_cmn_vco_cfg_25mhz.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_phy-cadence-dp.c_cdns_dp_phy_pma_cmn_vco_cfg_25mhz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_dp_phy = type { i32, i64 }

@CMN_PLL0_INTDIV_M0 = common dso_local global i64 0, align 8
@CMN_PLL0_FRACDIVL_M0 = common dso_local global i64 0, align 8
@CMN_PLL0_FRACDIVH_M0 = common dso_local global i64 0, align 8
@CMN_PLL0_HIGH_THR_M0 = common dso_local global i64 0, align 8
@CMN_PDIAG_PLL0_CTRL_M0 = common dso_local global i64 0, align 8
@CMN_PLL0_VCOCAL_PLLCNT_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdns_dp_phy*)* @cdns_dp_phy_pma_cmn_vco_cfg_25mhz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns_dp_phy_pma_cmn_vco_cfg_25mhz(%struct.cdns_dp_phy* %0) #0 {
  %2 = alloca %struct.cdns_dp_phy*, align 8
  store %struct.cdns_dp_phy* %0, %struct.cdns_dp_phy** %2, align 8
  %3 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %4 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %106 [
    i32 2700, label %6
    i32 5400, label %6
    i32 2430, label %31
    i32 3240, label %31
    i32 2160, label %56
    i32 4320, label %56
    i32 8100, label %81
  ]

6:                                                ; preds = %1, %1
  %7 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %8 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CMN_PLL0_INTDIV_M0, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel(i32 432, i64 %11)
  %13 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %14 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CMN_PLL0_FRACDIVL_M0, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 0, i64 %17)
  %19 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %20 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CMN_PLL0_FRACDIVH_M0, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 2, i64 %23)
  %25 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %26 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CMN_PLL0_HIGH_THR_M0, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 288, i64 %29)
  br label %106

31:                                               ; preds = %1, %1
  %32 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %33 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CMN_PLL0_INTDIV_M0, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 388, i64 %36)
  %38 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %39 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CMN_PLL0_FRACDIVL_M0, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 52429, i64 %42)
  %44 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %45 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CMN_PLL0_FRACDIVH_M0, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 2, i64 %48)
  %50 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %51 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CMN_PLL0_HIGH_THR_M0, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 260, i64 %54)
  br label %106

56:                                               ; preds = %1, %1
  %57 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %58 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CMN_PLL0_INTDIV_M0, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 345, i64 %61)
  %63 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %64 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CMN_PLL0_FRACDIVL_M0, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 39322, i64 %67)
  %69 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %70 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @CMN_PLL0_FRACDIVH_M0, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 2, i64 %73)
  %75 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %76 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CMN_PLL0_HIGH_THR_M0, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @writel(i32 231, i64 %79)
  br label %106

81:                                               ; preds = %1
  %82 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %83 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CMN_PLL0_INTDIV_M0, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writel(i32 324, i64 %86)
  %88 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %89 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @CMN_PLL0_FRACDIVL_M0, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @writel(i32 0, i64 %92)
  %94 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %95 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @CMN_PLL0_FRACDIVH_M0, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @writel(i32 2, i64 %98)
  %100 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %101 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @CMN_PLL0_HIGH_THR_M0, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @writel(i32 216, i64 %104)
  br label %106

106:                                              ; preds = %1, %81, %56, %31, %6
  %107 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %108 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @CMN_PDIAG_PLL0_CTRL_M0, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writel(i32 2, i64 %111)
  %113 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %114 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @CMN_PLL0_VCOCAL_PLLCNT_START, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @writel(i32 792, i64 %117)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
