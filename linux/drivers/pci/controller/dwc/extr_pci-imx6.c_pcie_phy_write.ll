; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_pcie_phy_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_pcie_phy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx6_pcie = type { %struct.dw_pcie* }
%struct.dw_pcie = type { i32 }

@PCIE_PHY_CTRL = common dso_local global i32 0, align 4
@PCIE_PHY_CTRL_CAP_DAT = common dso_local global i32 0, align 4
@PCIE_PHY_CTRL_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx6_pcie*, i32, i32)* @pcie_phy_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcie_phy_write(%struct.imx6_pcie* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.imx6_pcie*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dw_pcie*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.imx6_pcie* %0, %struct.imx6_pcie** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.imx6_pcie*, %struct.imx6_pcie** %5, align 8
  %12 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %11, i32 0, i32 0
  %13 = load %struct.dw_pcie*, %struct.dw_pcie** %12, align 8
  store %struct.dw_pcie* %13, %struct.dw_pcie** %8, align 8
  %14 = load %struct.imx6_pcie*, %struct.imx6_pcie** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @pcie_phy_wait_ack(%struct.imx6_pcie* %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %83

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @PCIE_PHY_CTRL_DATA(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.dw_pcie*, %struct.dw_pcie** %8, align 8
  %25 = load i32, i32* @PCIE_PHY_CTRL, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %24, i32 %25, i32 %26)
  %28 = load i32, i32* @PCIE_PHY_CTRL_CAP_DAT, align 4
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load %struct.dw_pcie*, %struct.dw_pcie** %8, align 8
  %32 = load i32, i32* @PCIE_PHY_CTRL, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %31, i32 %32, i32 %33)
  %35 = load %struct.imx6_pcie*, %struct.imx6_pcie** %5, align 8
  %36 = call i32 @pcie_phy_poll_ack(%struct.imx6_pcie* %35, i32 1)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %21
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %83

41:                                               ; preds = %21
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @PCIE_PHY_CTRL_DATA(i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load %struct.dw_pcie*, %struct.dw_pcie** %8, align 8
  %45 = load i32, i32* @PCIE_PHY_CTRL, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %44, i32 %45, i32 %46)
  %48 = load %struct.imx6_pcie*, %struct.imx6_pcie** %5, align 8
  %49 = call i32 @pcie_phy_poll_ack(%struct.imx6_pcie* %48, i32 0)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %83

54:                                               ; preds = %41
  %55 = load i32, i32* @PCIE_PHY_CTRL_WR, align 4
  store i32 %55, i32* %9, align 4
  %56 = load %struct.dw_pcie*, %struct.dw_pcie** %8, align 8
  %57 = load i32, i32* @PCIE_PHY_CTRL, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %56, i32 %57, i32 %58)
  %60 = load %struct.imx6_pcie*, %struct.imx6_pcie** %5, align 8
  %61 = call i32 @pcie_phy_poll_ack(%struct.imx6_pcie* %60, i32 1)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %4, align 4
  br label %83

66:                                               ; preds = %54
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @PCIE_PHY_CTRL_DATA(i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load %struct.dw_pcie*, %struct.dw_pcie** %8, align 8
  %70 = load i32, i32* @PCIE_PHY_CTRL, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %69, i32 %70, i32 %71)
  %73 = load %struct.imx6_pcie*, %struct.imx6_pcie** %5, align 8
  %74 = call i32 @pcie_phy_poll_ack(%struct.imx6_pcie* %73, i32 0)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %66
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %4, align 4
  br label %83

79:                                               ; preds = %66
  %80 = load %struct.dw_pcie*, %struct.dw_pcie** %8, align 8
  %81 = load i32, i32* @PCIE_PHY_CTRL, align 4
  %82 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %80, i32 %81, i32 0)
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %79, %77, %64, %52, %39, %19
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @pcie_phy_wait_ack(%struct.imx6_pcie*, i32) #1

declare dso_local i32 @PCIE_PHY_CTRL_DATA(i32) #1

declare dso_local i32 @dw_pcie_writel_dbi(%struct.dw_pcie*, i32, i32) #1

declare dso_local i32 @pcie_phy_poll_ack(%struct.imx6_pcie*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
