; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_phy-cadence-dp.c_cdns_dp_phy_pma_cmn_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_phy-cadence-dp.c_cdns_dp_phy_pma_cmn_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_dp_phy = type { i32, i32, i64 }

@PHY_PLL_CFG = common dso_local global i64 0, align 8
@CMN_PDIAG_PLL0_CLK_SEL_M0 = common dso_local global i64 0, align 8
@XCVR_DIAG_HSCLK_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdns_dp_phy*)* @cdns_dp_phy_pma_cmn_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns_dp_phy_pma_cmn_rate(%struct.cdns_dp_phy* %0) #0 {
  %2 = alloca %struct.cdns_dp_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cdns_dp_phy* %0, %struct.cdns_dp_phy** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %7 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PHY_PLL_CFG, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel(i32 0, i64 %10)
  %12 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %13 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %20 [
    i32 1620, label %15
    i32 2160, label %16
    i32 2430, label %16
    i32 2700, label %16
    i32 3240, label %17
    i32 4320, label %18
    i32 5400, label %18
    i32 8100, label %19
  ]

15:                                               ; preds = %1
  store i32 3841, i32* %3, align 4
  store i32 2, i32* %4, align 4
  br label %20

16:                                               ; preds = %1, %1, %1
  store i32 1793, i32* %3, align 4
  store i32 1, i32* %4, align 4
  br label %20

17:                                               ; preds = %1
  store i32 2816, i32* %3, align 4
  store i32 2, i32* %4, align 4
  br label %20

18:                                               ; preds = %1, %1
  store i32 769, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %20

19:                                               ; preds = %1
  store i32 512, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %1, %19, %18, %17, %16, %15
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %23 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CMN_PDIAG_PLL0_CLK_SEL_M0, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %21, i64 %26)
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %46, %20
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %31 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %28
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.cdns_dp_phy*, %struct.cdns_dp_phy** %2, align 8
  %37 = getelementptr inbounds %struct.cdns_dp_phy, %struct.cdns_dp_phy* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @XCVR_DIAG_HSCLK_DIV, align 4
  %40 = load i32, i32* %5, align 4
  %41 = shl i32 %40, 11
  %42 = or i32 %39, %41
  %43 = zext i32 %42 to i64
  %44 = add nsw i64 %38, %43
  %45 = call i32 @writel(i32 %35, i64 %44)
  br label %46

46:                                               ; preds = %34
  %47 = load i32, i32* %5, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %28

49:                                               ; preds = %28
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
