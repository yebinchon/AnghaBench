; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-typec.c_tcphy_cfg_24m.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-typec.c_tcphy_cfg_24m.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_typec_phy = type { i64 }

@PMA_CMN_CTRL1 = common dso_local global i64 0, align 8
@CMN_DIAG_HSCLK_SEL = common dso_local global i64 0, align 8
@CLK_PLL_MASK = common dso_local global i32 0, align 4
@CLK_PLL_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rockchip_typec_phy*)* @tcphy_cfg_24m to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcphy_cfg_24m(%struct.rockchip_typec_phy* %0) #0 {
  %2 = alloca %struct.rockchip_typec_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rockchip_typec_phy* %0, %struct.rockchip_typec_phy** %2, align 8
  %5 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %6 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PMA_CMN_CTRL1, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @writel(i32 2096, i64 %9)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %36, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %39

14:                                               ; preds = %11
  %15 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %16 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @XCVR_DIAG_LANE_FCM_EN_MGN(i32 %18)
  %20 = add nsw i64 %17, %19
  %21 = call i32 @writel(i32 144, i64 %20)
  %22 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %23 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @TX_RCVDET_EN_TMR(i32 %25)
  %27 = add nsw i64 %24, %26
  %28 = call i32 @writel(i32 2400, i64 %27)
  %29 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %30 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i64 @TX_RCVDET_ST_TMR(i32 %32)
  %34 = add nsw i64 %31, %33
  %35 = call i32 @writel(i32 48, i64 %34)
  br label %36

36:                                               ; preds = %14
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %11

39:                                               ; preds = %11
  %40 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %41 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CMN_DIAG_HSCLK_SEL, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @readl(i64 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* @CLK_PLL_MASK, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* @CLK_PLL_CONFIG, align 4
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %55 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CMN_DIAG_HSCLK_SEL, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @XCVR_DIAG_LANE_FCM_EN_MGN(i32) #1

declare dso_local i64 @TX_RCVDET_EN_TMR(i32) #1

declare dso_local i64 @TX_RCVDET_ST_TMR(i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
