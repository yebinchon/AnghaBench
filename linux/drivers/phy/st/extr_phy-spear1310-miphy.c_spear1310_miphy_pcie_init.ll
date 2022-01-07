; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-spear1310-miphy.c_spear1310_miphy_pcie_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-spear1310-miphy.c_spear1310_miphy_pcie_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spear1310_miphy_priv = type { i32, i32 }

@SPEAR1310_PCIE_MIPHY_CFG_1 = common dso_local global i32 0, align 4
@SPEAR1310_PCIE_SATA_MIPHY_CFG_PCIE_MASK = common dso_local global i32 0, align 4
@SPEAR1310_PCIE_SATA_MIPHY_CFG_PCIE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SPEAR1310_PCIE_SATA_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spear1310_miphy_priv*)* @spear1310_miphy_pcie_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear1310_miphy_pcie_init(%struct.spear1310_miphy_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spear1310_miphy_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.spear1310_miphy_priv* %0, %struct.spear1310_miphy_priv** %3, align 8
  %5 = load %struct.spear1310_miphy_priv*, %struct.spear1310_miphy_priv** %3, align 8
  %6 = getelementptr inbounds %struct.spear1310_miphy_priv, %struct.spear1310_miphy_priv* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SPEAR1310_PCIE_MIPHY_CFG_1, align 4
  %9 = load i32, i32* @SPEAR1310_PCIE_SATA_MIPHY_CFG_PCIE_MASK, align 4
  %10 = load i32, i32* @SPEAR1310_PCIE_SATA_MIPHY_CFG_PCIE, align 4
  %11 = call i32 @regmap_update_bits(i32 %7, i32 %8, i32 %9, i32 %10)
  %12 = load %struct.spear1310_miphy_priv*, %struct.spear1310_miphy_priv** %3, align 8
  %13 = getelementptr inbounds %struct.spear1310_miphy_priv, %struct.spear1310_miphy_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %21 [
    i32 0, label %15
    i32 1, label %17
    i32 2, label %19
  ]

15:                                               ; preds = %1
  %16 = call i32 @SPEAR1310_PCIE_CFG_VAL(i32 0)
  store i32 %16, i32* %4, align 4
  br label %24

17:                                               ; preds = %1
  %18 = call i32 @SPEAR1310_PCIE_CFG_VAL(i32 1)
  store i32 %18, i32* %4, align 4
  br label %24

19:                                               ; preds = %1
  %20 = call i32 @SPEAR1310_PCIE_CFG_VAL(i32 2)
  store i32 %20, i32* %4, align 4
  br label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %35

24:                                               ; preds = %19, %17, %15
  %25 = load %struct.spear1310_miphy_priv*, %struct.spear1310_miphy_priv** %3, align 8
  %26 = getelementptr inbounds %struct.spear1310_miphy_priv, %struct.spear1310_miphy_priv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SPEAR1310_PCIE_SATA_CFG, align 4
  %29 = load %struct.spear1310_miphy_priv*, %struct.spear1310_miphy_priv** %3, align 8
  %30 = getelementptr inbounds %struct.spear1310_miphy_priv, %struct.spear1310_miphy_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @SPEAR1310_PCIE_CFG_MASK(i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @regmap_update_bits(i32 %27, i32 %28, i32 %32, i32 %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %24, %21
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SPEAR1310_PCIE_CFG_VAL(i32) #1

declare dso_local i32 @SPEAR1310_PCIE_CFG_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
