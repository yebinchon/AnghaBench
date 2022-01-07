; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-typec.c_tcphy_dp_aux_set_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-typec.c_tcphy_dp_aux_set_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_typec_phy = type { i64, i32 }

@TX_ANA_CTRL_REG_1 = common dso_local global i64 0, align 8
@AUXDA_POLARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rockchip_typec_phy*)* @tcphy_dp_aux_set_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcphy_dp_aux_set_flip(%struct.rockchip_typec_phy* %0) #0 {
  %2 = alloca %struct.rockchip_typec_phy*, align 8
  %3 = alloca i32, align 4
  store %struct.rockchip_typec_phy* %0, %struct.rockchip_typec_phy** %2, align 8
  %4 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %5 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @TX_ANA_CTRL_REG_1, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %11 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @AUXDA_POLARITY, align 4
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  br label %23

18:                                               ; preds = %1
  %19 = load i32, i32* @AUXDA_POLARITY, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %18, %14
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %26 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TX_ANA_CTRL_REG_1, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %24, i64 %29)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
