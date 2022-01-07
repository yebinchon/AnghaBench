; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-pcie.c_rockchip_pcie_phy_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-pcie.c_rockchip_pcie_phy_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.phy_pcie_instance = type { i32 }
%struct.rockchip_pcie_phy = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @rockchip_pcie_phy_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pcie_phy_exit(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.phy_pcie_instance*, align 8
  %4 = alloca %struct.rockchip_pcie_phy*, align 8
  store %struct.phy* %0, %struct.phy** %2, align 8
  %5 = load %struct.phy*, %struct.phy** %2, align 8
  %6 = call %struct.phy_pcie_instance* @phy_get_drvdata(%struct.phy* %5)
  store %struct.phy_pcie_instance* %6, %struct.phy_pcie_instance** %3, align 8
  %7 = load %struct.phy_pcie_instance*, %struct.phy_pcie_instance** %3, align 8
  %8 = call %struct.rockchip_pcie_phy* @to_pcie_phy(%struct.phy_pcie_instance* %7)
  store %struct.rockchip_pcie_phy* %8, %struct.rockchip_pcie_phy** %4, align 8
  %9 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %4, align 8
  %10 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %4, align 8
  %13 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %23

18:                                               ; preds = %1
  %19 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %4, align 8
  %20 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @clk_disable_unprepare(i32 %21)
  br label %23

23:                                               ; preds = %18, %17
  %24 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %4, align 8
  %25 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  ret i32 0
}

declare dso_local %struct.phy_pcie_instance* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.rockchip_pcie_phy* @to_pcie_phy(%struct.phy_pcie_instance*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
