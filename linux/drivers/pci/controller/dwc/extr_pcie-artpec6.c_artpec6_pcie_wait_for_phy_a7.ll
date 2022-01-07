; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-artpec6.c_artpec6_pcie_wait_for_phy_a7.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-artpec6.c_artpec6_pcie_wait_for_phy_a7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.artpec6_pcie = type { i64, %struct.dw_pcie* }
%struct.dw_pcie = type { %struct.device* }
%struct.device = type { i32 }

@NOCCFG = common dso_local global i32 0, align 4
@NOCCFG_POWER_PCIE_IDLEACK = common dso_local global i32 0, align 4
@NOCCFG_POWER_PCIE_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"PCIe clock manager did not leave idle state\0A\00", align 1
@PHY_TX_ASIC_OUT = common dso_local global i64 0, align 8
@PHY_RX_ASIC_OUT = common dso_local global i64 0, align 8
@PHY_TX_ASIC_OUT_TX_ACK = common dso_local global i32 0, align 4
@PHY_RX_ASIC_OUT_ACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"PHY did not enter Pn state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.artpec6_pcie*)* @artpec6_pcie_wait_for_phy_a7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @artpec6_pcie_wait_for_phy_a7(%struct.artpec6_pcie* %0) #0 {
  %2 = alloca %struct.artpec6_pcie*, align 8
  %3 = alloca %struct.dw_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.artpec6_pcie* %0, %struct.artpec6_pcie** %2, align 8
  %9 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %2, align 8
  %10 = getelementptr inbounds %struct.artpec6_pcie, %struct.artpec6_pcie* %9, i32 0, i32 1
  %11 = load %struct.dw_pcie*, %struct.dw_pcie** %10, align 8
  store %struct.dw_pcie* %11, %struct.dw_pcie** %3, align 8
  %12 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %13 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %4, align 8
  store i32 50, i32* %8, align 4
  br label %15

15:                                               ; preds = %32, %1
  %16 = call i32 @usleep_range(i32 1000, i32 2000)
  %17 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %2, align 8
  %18 = load i32, i32* @NOCCFG, align 4
  %19 = call i32 @artpec6_pcie_readl(%struct.artpec6_pcie* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %8, align 4
  %21 = add i32 %20, -1
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @NOCCFG_POWER_PCIE_IDLEACK, align 4
  %28 = load i32, i32* @NOCCFG_POWER_PCIE_IDLE, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %25, %22
  %33 = phi i1 [ false, %22 ], [ %31, %25 ]
  br i1 %33, label %15, label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %34
  store i32 50, i32* %8, align 4
  br label %41

41:                                               ; preds = %72, %40
  %42 = call i32 @usleep_range(i32 1000, i32 2000)
  %43 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %2, align 8
  %44 = getelementptr inbounds %struct.artpec6_pcie, %struct.artpec6_pcie* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PHY_TX_ASIC_OUT, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @readw(i64 %47)
  store i32 %48, i32* %6, align 4
  %49 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %2, align 8
  %50 = getelementptr inbounds %struct.artpec6_pcie, %struct.artpec6_pcie* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PHY_RX_ASIC_OUT, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @readw(i64 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = add i32 %55, -1
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %41
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @PHY_TX_ASIC_OUT_TX_ACK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @PHY_RX_ASIC_OUT_ACK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br label %70

70:                                               ; preds = %65, %60
  %71 = phi i1 [ true, %60 ], [ %69, %65 ]
  br label %72

72:                                               ; preds = %70, %57
  %73 = phi i1 [ false, %57 ], [ %71, %70 ]
  br i1 %73, label %41, label %74

74:                                               ; preds = %72
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = call i32 @dev_err(%struct.device* %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %74
  ret void
}

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @artpec6_pcie_readl(%struct.artpec6_pcie*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @readw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
