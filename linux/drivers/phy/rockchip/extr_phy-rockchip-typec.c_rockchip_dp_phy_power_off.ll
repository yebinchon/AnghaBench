; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-typec.c_rockchip_dp_phy_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-typec.c_rockchip_dp_phy_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.rockchip_typec_phy = type { i64, i32, i64 }

@MODE_DISCONNECT = common dso_local global i64 0, align 8
@MODE_DFP_DP = common dso_local global i64 0, align 8
@DP_MODE_ENTER_A2 = common dso_local global i32 0, align 4
@DP_MODE_CTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @rockchip_dp_phy_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_dp_phy_power_off(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.rockchip_typec_phy*, align 8
  store %struct.phy* %0, %struct.phy** %2, align 8
  %4 = load %struct.phy*, %struct.phy** %2, align 8
  %5 = call %struct.rockchip_typec_phy* @phy_get_drvdata(%struct.phy* %4)
  store %struct.rockchip_typec_phy* %5, %struct.rockchip_typec_phy** %3, align 8
  %6 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %7 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %10 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MODE_DISCONNECT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %38

15:                                               ; preds = %1
  %16 = load i64, i64* @MODE_DFP_DP, align 8
  %17 = xor i64 %16, -1
  %18 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %19 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = and i64 %20, %17
  store i64 %21, i64* %19, align 8
  %22 = load i32, i32* @DP_MODE_ENTER_A2, align 4
  %23 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %24 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DP_MODE_CTL, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %22, i64 %27)
  %29 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %30 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MODE_DISCONNECT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %15
  %35 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %36 = call i32 @tcphy_phy_deinit(%struct.rockchip_typec_phy* %35)
  br label %37

37:                                               ; preds = %34, %15
  br label %38

38:                                               ; preds = %37, %14
  %39 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %40 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %39, i32 0, i32 1
  %41 = call i32 @mutex_unlock(i32* %40)
  ret i32 0
}

declare dso_local %struct.rockchip_typec_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @tcphy_phy_deinit(%struct.rockchip_typec_phy*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
