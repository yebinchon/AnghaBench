; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_pcie_phy_wait_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_pcie_phy_wait_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx6_pcie = type { %struct.dw_pcie* }
%struct.dw_pcie = type { i32 }

@PCIE_PHY_CTRL = common dso_local global i32 0, align 4
@PCIE_PHY_CTRL_CAP_ADR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx6_pcie*, i32)* @pcie_phy_wait_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcie_phy_wait_ack(%struct.imx6_pcie* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.imx6_pcie*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dw_pcie*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.imx6_pcie* %0, %struct.imx6_pcie** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.imx6_pcie*, %struct.imx6_pcie** %4, align 8
  %10 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %9, i32 0, i32 0
  %11 = load %struct.dw_pcie*, %struct.dw_pcie** %10, align 8
  store %struct.dw_pcie* %11, %struct.dw_pcie** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @PCIE_PHY_CTRL_DATA(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %15 = load i32, i32* @PCIE_PHY_CTRL, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %14, i32 %15, i32 %16)
  %18 = load i32, i32* @PCIE_PHY_CTRL_CAP_ADR, align 4
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %22 = load i32, i32* @PCIE_PHY_CTRL, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %21, i32 %22, i32 %23)
  %25 = load %struct.imx6_pcie*, %struct.imx6_pcie** %4, align 8
  %26 = call i32 @pcie_phy_poll_ack(%struct.imx6_pcie* %25, i32 1)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %40

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @PCIE_PHY_CTRL_DATA(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %35 = load i32, i32* @PCIE_PHY_CTRL, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %34, i32 %35, i32 %36)
  %38 = load %struct.imx6_pcie*, %struct.imx6_pcie** %4, align 8
  %39 = call i32 @pcie_phy_poll_ack(%struct.imx6_pcie* %38, i32 0)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %31, %29
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @PCIE_PHY_CTRL_DATA(i32) #1

declare dso_local i32 @dw_pcie_writel_dbi(%struct.dw_pcie*, i32, i32) #1

declare dso_local i32 @pcie_phy_poll_ack(%struct.imx6_pcie*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
