; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-artpec6.c_artpec6_pcie_wait_for_phy_a6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-artpec6.c_artpec6_pcie_wait_for_phy_a6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.artpec6_pcie = type { i64, %struct.dw_pcie* }
%struct.dw_pcie = type { %struct.device* }
%struct.device = type { i32 }

@NOCCFG = common dso_local global i32 0, align 4
@NOCCFG_POWER_PCIE_IDLEACK = common dso_local global i32 0, align 4
@NOCCFG_POWER_PCIE_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"PCIe clock manager did not leave idle state\0A\00", align 1
@PHY_STATUS = common dso_local global i64 0, align 8
@PHY_COSPLLLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"PHY PLL did not lock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.artpec6_pcie*)* @artpec6_pcie_wait_for_phy_a6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @artpec6_pcie_wait_for_phy_a6(%struct.artpec6_pcie* %0) #0 {
  %2 = alloca %struct.artpec6_pcie*, align 8
  %3 = alloca %struct.dw_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.artpec6_pcie* %0, %struct.artpec6_pcie** %2, align 8
  %7 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %2, align 8
  %8 = getelementptr inbounds %struct.artpec6_pcie, %struct.artpec6_pcie* %7, i32 0, i32 1
  %9 = load %struct.dw_pcie*, %struct.dw_pcie** %8, align 8
  store %struct.dw_pcie* %9, %struct.dw_pcie** %3, align 8
  %10 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %11 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %4, align 8
  store i32 50, i32* %6, align 4
  br label %13

13:                                               ; preds = %30, %1
  %14 = call i32 @usleep_range(i32 1000, i32 2000)
  %15 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %2, align 8
  %16 = load i32, i32* @NOCCFG, align 4
  %17 = call i32 @artpec6_pcie_readl(%struct.artpec6_pcie* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add i32 %18, -1
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @NOCCFG_POWER_PCIE_IDLEACK, align 4
  %26 = load i32, i32* @NOCCFG_POWER_PCIE_IDLE, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %23, %20
  %31 = phi i1 [ false, %20 ], [ %29, %23 ]
  br i1 %31, label %13, label %32

32:                                               ; preds = %30
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %32
  store i32 50, i32* %6, align 4
  br label %39

39:                                               ; preds = %58, %38
  %40 = call i32 @usleep_range(i32 1000, i32 2000)
  %41 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %2, align 8
  %42 = getelementptr inbounds %struct.artpec6_pcie, %struct.artpec6_pcie* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PHY_STATUS, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @readl(i64 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = add i32 %47, -1
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %39
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @PHY_COSPLLLOCK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %52, %49
  %59 = phi i1 [ false, %49 ], [ %57, %52 ]
  br i1 %59, label %39, label %60

60:                                               ; preds = %58
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %60
  ret void
}

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @artpec6_pcie_readl(%struct.artpec6_pcie*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
