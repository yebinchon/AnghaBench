; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-pci-phy/extr_pci-mt7621-phy.c_mt7621_pci_phy_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-pci-phy/extr_pci-mt7621-phy.c_mt7621_pci_phy_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mt7621_pci_phy_instance = type { i32 }
%struct.mt7621_pci_phy = type { i32 }

@RG_PE1_FRC_PHY_REG = common dso_local global i32 0, align 4
@RG_P0_TO_P1_WIDTH = common dso_local global i32 0, align 4
@RG_PE1_FRC_PHY_EN = common dso_local global i32 0, align 4
@RG_PE1_PHY_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @mt7621_pci_phy_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7621_pci_phy_power_off(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.mt7621_pci_phy_instance*, align 8
  %4 = alloca %struct.mt7621_pci_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %2, align 8
  %7 = load %struct.phy*, %struct.phy** %2, align 8
  %8 = call %struct.mt7621_pci_phy_instance* @phy_get_drvdata(%struct.phy* %7)
  store %struct.mt7621_pci_phy_instance* %8, %struct.mt7621_pci_phy_instance** %3, align 8
  %9 = load %struct.phy*, %struct.phy** %2, align 8
  %10 = getelementptr inbounds %struct.phy, %struct.phy* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.mt7621_pci_phy* @dev_get_drvdata(i32 %12)
  store %struct.mt7621_pci_phy* %13, %struct.mt7621_pci_phy** %4, align 8
  %14 = load %struct.mt7621_pci_phy_instance*, %struct.mt7621_pci_phy_instance** %3, align 8
  %15 = getelementptr inbounds %struct.mt7621_pci_phy_instance, %struct.mt7621_pci_phy_instance* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @RG_PE1_FRC_PHY_REG, align 4
  br label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @RG_PE1_FRC_PHY_REG, align 4
  %22 = load i32, i32* @RG_P0_TO_P1_WIDTH, align 4
  %23 = add nsw i32 %21, %22
  br label %24

24:                                               ; preds = %20, %18
  %25 = phi i32 [ %19, %18 ], [ %23, %20 ]
  store i32 %25, i32* %5, align 4
  %26 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @phy_read(%struct.mt7621_pci_phy* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @RG_PE1_FRC_PHY_EN, align 4
  %30 = load i32, i32* @RG_PE1_PHY_EN, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @RG_PE1_FRC_PHY_EN, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @phy_write(%struct.mt7621_pci_phy* %38, i32 %39, i32 %40)
  ret i32 0
}

declare dso_local %struct.mt7621_pci_phy_instance* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.mt7621_pci_phy* @dev_get_drvdata(i32) #1

declare dso_local i32 @phy_read(%struct.mt7621_pci_phy*, i32) #1

declare dso_local i32 @phy_write(%struct.mt7621_pci_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
