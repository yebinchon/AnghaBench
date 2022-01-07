; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-sr-pcie.c_sr_paxc_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-sr-pcie.c_sr_paxc_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.sr_pcie_phy = type { i32, %struct.sr_pcie_phy_core* }
%struct.sr_pcie_phy_core = type { i32, i32 }

@SR_PAXC_PHY_IDX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MHB_MEM_PW_PAXC_OFFSET = common dso_local global i32 0, align 4
@MHB_PWR_STATUS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"PAXC is not powered up\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @sr_paxc_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr_paxc_phy_init(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.sr_pcie_phy*, align 8
  %5 = alloca %struct.sr_pcie_phy_core*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %8 = load %struct.phy*, %struct.phy** %3, align 8
  %9 = call %struct.sr_pcie_phy* @phy_get_drvdata(%struct.phy* %8)
  store %struct.sr_pcie_phy* %9, %struct.sr_pcie_phy** %4, align 8
  %10 = load %struct.sr_pcie_phy*, %struct.sr_pcie_phy** %4, align 8
  %11 = getelementptr inbounds %struct.sr_pcie_phy, %struct.sr_pcie_phy* %10, i32 0, i32 1
  %12 = load %struct.sr_pcie_phy_core*, %struct.sr_pcie_phy_core** %11, align 8
  store %struct.sr_pcie_phy_core* %12, %struct.sr_pcie_phy_core** %5, align 8
  %13 = load %struct.sr_pcie_phy*, %struct.sr_pcie_phy** %4, align 8
  %14 = getelementptr inbounds %struct.sr_pcie_phy, %struct.sr_pcie_phy* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @SR_PAXC_PHY_IDX, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %41

22:                                               ; preds = %1
  %23 = load %struct.sr_pcie_phy_core*, %struct.sr_pcie_phy_core** %5, align 8
  %24 = getelementptr inbounds %struct.sr_pcie_phy_core, %struct.sr_pcie_phy_core* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MHB_MEM_PW_PAXC_OFFSET, align 4
  %27 = call i32 @regmap_read(i32 %25, i32 %26, i32* %7)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @MHB_PWR_STATUS_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @MHB_PWR_STATUS_MASK, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %22
  %34 = load %struct.sr_pcie_phy_core*, %struct.sr_pcie_phy_core** %5, align 8
  %35 = getelementptr inbounds %struct.sr_pcie_phy_core, %struct.sr_pcie_phy_core* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %33, %19
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.sr_pcie_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
