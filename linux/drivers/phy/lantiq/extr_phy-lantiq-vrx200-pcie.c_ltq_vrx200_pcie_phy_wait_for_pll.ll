; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/lantiq/extr_phy-lantiq-vrx200-pcie.c_ltq_vrx200_pcie_phy_wait_for_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/lantiq/extr_phy-lantiq-vrx200-pcie.c_ltq_vrx200_pcie_phy_wait_for_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.ltq_vrx200_pcie_phy_priv = type { i32, i32 }

@PCIE_PHY_PLL_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"PLL Link timeout, PLL status = 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @ltq_vrx200_pcie_phy_wait_for_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltq_vrx200_pcie_phy_wait_for_pll(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.ltq_vrx200_pcie_phy_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %7 = load %struct.phy*, %struct.phy** %3, align 8
  %8 = call %struct.ltq_vrx200_pcie_phy_priv* @phy_get_drvdata(%struct.phy* %7)
  store %struct.ltq_vrx200_pcie_phy_priv* %8, %struct.ltq_vrx200_pcie_phy_priv** %4, align 8
  %9 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %4, align 8
  %10 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @PCIE_PHY_PLL_STATUS, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 112
  %16 = icmp eq i32 %15, 112
  %17 = zext i1 %16 to i32
  %18 = call i32 @regmap_read_poll_timeout(i32 %11, i32 %12, i32 %13, i32 %17, i32 10, i32 10000)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %4, align 8
  %23 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %21
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.ltq_vrx200_pcie_phy_priv* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
