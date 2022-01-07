; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-spear1310-miphy.c_spear1310_miphy_pcie_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-spear1310-miphy.c_spear1310_miphy_pcie_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spear1310_miphy_priv = type { i32, i32 }

@SPEAR1310_PCIE_SATA_CFG = common dso_local global i32 0, align 4
@SPEAR1310_PCIE_MIPHY_CFG_1 = common dso_local global i32 0, align 4
@SPEAR1310_PCIE_SATA_MIPHY_CFG_PCIE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spear1310_miphy_priv*)* @spear1310_miphy_pcie_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear1310_miphy_pcie_exit(%struct.spear1310_miphy_priv* %0) #0 {
  %2 = alloca %struct.spear1310_miphy_priv*, align 8
  store %struct.spear1310_miphy_priv* %0, %struct.spear1310_miphy_priv** %2, align 8
  %3 = load %struct.spear1310_miphy_priv*, %struct.spear1310_miphy_priv** %2, align 8
  %4 = getelementptr inbounds %struct.spear1310_miphy_priv, %struct.spear1310_miphy_priv* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @SPEAR1310_PCIE_SATA_CFG, align 4
  %7 = load %struct.spear1310_miphy_priv*, %struct.spear1310_miphy_priv** %2, align 8
  %8 = getelementptr inbounds %struct.spear1310_miphy_priv, %struct.spear1310_miphy_priv* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @SPEAR1310_PCIE_CFG_MASK(i32 %9)
  %11 = call i32 @regmap_update_bits(i32 %5, i32 %6, i32 %10, i32 0)
  %12 = load %struct.spear1310_miphy_priv*, %struct.spear1310_miphy_priv** %2, align 8
  %13 = getelementptr inbounds %struct.spear1310_miphy_priv, %struct.spear1310_miphy_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SPEAR1310_PCIE_MIPHY_CFG_1, align 4
  %16 = load i32, i32* @SPEAR1310_PCIE_SATA_MIPHY_CFG_PCIE_MASK, align 4
  %17 = call i32 @regmap_update_bits(i32 %14, i32 %15, i32 %16, i32 0)
  ret i32 0
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SPEAR1310_PCIE_CFG_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
