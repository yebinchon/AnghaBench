; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_pcie_phy_poll_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_pcie_phy_poll_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx6_pcie = type { %struct.dw_pcie* }
%struct.dw_pcie = type { i32 }

@PCIE_PHY_STAT = common dso_local global i32 0, align 4
@PCIE_PHY_STAT_ACK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx6_pcie*, i32)* @pcie_phy_poll_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcie_phy_poll_ack(%struct.imx6_pcie* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.imx6_pcie*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dw_pcie*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.imx6_pcie* %0, %struct.imx6_pcie** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.imx6_pcie*, %struct.imx6_pcie** %4, align 8
  %11 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %10, i32 0, i32 0
  %12 = load %struct.dw_pcie*, %struct.dw_pcie** %11, align 8
  store %struct.dw_pcie* %12, %struct.dw_pcie** %6, align 8
  store i64 10, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %13

13:                                               ; preds = %27, %2
  %14 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %15 = load i32, i32* @PCIE_PHY_STAT, align 4
  %16 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %14, i32 %15)
  %17 = load i32, i32* @PCIE_PHY_STAT_ACK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load i64, i64* %9, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %9, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %34

25:                                               ; preds = %13
  %26 = call i32 @udelay(i32 1)
  br label %27

27:                                               ; preds = %25
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %13, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @ETIMEDOUT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %24
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @dw_pcie_readl_dbi(%struct.dw_pcie*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
