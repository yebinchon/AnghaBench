; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-typec.c_tcphy_cfg_dp_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-typec.c_tcphy_cfg_dp_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }
%struct.rockchip_typec_phy = type { i64 }

@DP_PLL_CLOCK_ENABLE = common dso_local global i32 0, align 4
@DP_PLL_ENABLE = common dso_local global i32 0, align 4
@DP_PLL_DATA_RATE_RBR = common dso_local global i32 0, align 4
@DP_CLK_CTL = common dso_local global i64 0, align 8
@dp_pll_cfg = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rockchip_typec_phy*)* @tcphy_cfg_dp_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcphy_cfg_dp_pll(%struct.rockchip_typec_phy* %0) #0 {
  %2 = alloca %struct.rockchip_typec_phy*, align 8
  %3 = alloca i64, align 8
  store %struct.rockchip_typec_phy* %0, %struct.rockchip_typec_phy** %2, align 8
  %4 = load i32, i32* @DP_PLL_CLOCK_ENABLE, align 4
  %5 = load i32, i32* @DP_PLL_ENABLE, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @DP_PLL_DATA_RATE_RBR, align 4
  %8 = or i32 %6, %7
  %9 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %10 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DP_CLK_CTL, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel(i32 %8, i64 %13)
  store i64 0, i64* %3, align 8
  br label %15

15:                                               ; preds = %36, %1
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dp_pll_cfg, align 8
  %18 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %17)
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %15
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dp_pll_cfg, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %27 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dp_pll_cfg, align 8
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %28, %33
  %35 = call i32 @writel(i32 %25, i64 %34)
  br label %36

36:                                               ; preds = %20
  %37 = load i64, i64* %3, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %3, align 8
  br label %15

39:                                               ; preds = %15
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
