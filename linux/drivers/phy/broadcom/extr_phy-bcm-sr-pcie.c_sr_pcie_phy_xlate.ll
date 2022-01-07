; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-sr-pcie.c_sr_pcie_phy_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-sr-pcie.c_sr_pcie_phy_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.device = type { i32 }
%struct.of_phandle_args = type { i32* }
%struct.sr_pcie_phy_core = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.phy* }

@EINVAL = common dso_local global i32 0, align 4
@SR_NR_PCIE_PHYS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy* (%struct.device*, %struct.of_phandle_args*)* @sr_pcie_phy_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy* @sr_pcie_phy_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.sr_pcie_phy_core*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.sr_pcie_phy_core* @dev_get_drvdata(%struct.device* %8)
  store %struct.sr_pcie_phy_core* %9, %struct.sr_pcie_phy_core** %6, align 8
  %10 = load %struct.sr_pcie_phy_core*, %struct.sr_pcie_phy_core** %6, align 8
  %11 = icmp ne %struct.sr_pcie_phy_core* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.phy* @ERR_PTR(i32 %14)
  store %struct.phy* %15, %struct.phy** %3, align 8
  br label %41

16:                                               ; preds = %2
  %17 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %18 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @SR_NR_PCIE_PHYS, align 4
  %24 = icmp sge i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %16
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.phy* @ERR_PTR(i32 %30)
  store %struct.phy* %31, %struct.phy** %3, align 8
  br label %41

32:                                               ; preds = %16
  %33 = load %struct.sr_pcie_phy_core*, %struct.sr_pcie_phy_core** %6, align 8
  %34 = getelementptr inbounds %struct.sr_pcie_phy_core, %struct.sr_pcie_phy_core* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.phy*, %struct.phy** %39, align 8
  store %struct.phy* %40, %struct.phy** %3, align 8
  br label %41

41:                                               ; preds = %32, %28, %12
  %42 = load %struct.phy*, %struct.phy** %3, align 8
  ret %struct.phy* %42
}

declare dso_local %struct.sr_pcie_phy_core* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
