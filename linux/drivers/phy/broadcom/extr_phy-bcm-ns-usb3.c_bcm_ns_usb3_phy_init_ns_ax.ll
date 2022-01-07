; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-ns-usb3.c_bcm_ns_usb3_phy_init_ns_ax.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-ns-usb3.c_bcm_ns_usb3_phy_init_ns_ax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_ns_usb3 = type { i64 }

@BCM_NS_USB3_PHY_BASE_ADDR_REG = common dso_local global i32 0, align 4
@BCM_NS_USB3_PHY_PLL30_BLOCK = common dso_local global i32 0, align 4
@BCM_NS_USB3_PLLA_CONTROL0 = common dso_local global i32 0, align 4
@BCM_NS_USB3_PHY_TX_PMD_BLOCK = common dso_local global i32 0, align 4
@BCM_NS_USB3_TX_PMD_CONTROL1 = common dso_local global i32 0, align 4
@BCMA_RESET_CTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_ns_usb3*)* @bcm_ns_usb3_phy_init_ns_ax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_ns_usb3_phy_init_ns_ax(%struct.bcm_ns_usb3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm_ns_usb3*, align 8
  %4 = alloca i32, align 4
  store %struct.bcm_ns_usb3* %0, %struct.bcm_ns_usb3** %3, align 8
  %5 = load %struct.bcm_ns_usb3*, %struct.bcm_ns_usb3** %3, align 8
  %6 = load i32, i32* @BCM_NS_USB3_PHY_BASE_ADDR_REG, align 4
  %7 = load i32, i32* @BCM_NS_USB3_PHY_PLL30_BLOCK, align 4
  %8 = call i32 @bcm_ns_usb3_mdio_phy_write(%struct.bcm_ns_usb3* %5, i32 %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %37

13:                                               ; preds = %1
  %14 = load %struct.bcm_ns_usb3*, %struct.bcm_ns_usb3** %3, align 8
  %15 = load i32, i32* @BCM_NS_USB3_PLLA_CONTROL0, align 4
  %16 = call i32 @bcm_ns_usb3_mdio_phy_write(%struct.bcm_ns_usb3* %14, i32 %15, i32 25600)
  %17 = load %struct.bcm_ns_usb3*, %struct.bcm_ns_usb3** %3, align 8
  %18 = load i32, i32* @BCM_NS_USB3_PHY_BASE_ADDR_REG, align 4
  %19 = call i32 @bcm_ns_usb3_mdio_phy_write(%struct.bcm_ns_usb3* %17, i32 %18, i32 32992)
  %20 = load %struct.bcm_ns_usb3*, %struct.bcm_ns_usb3** %3, align 8
  %21 = call i32 @bcm_ns_usb3_mdio_phy_write(%struct.bcm_ns_usb3* %20, i32 2, i32 156)
  %22 = load %struct.bcm_ns_usb3*, %struct.bcm_ns_usb3** %3, align 8
  %23 = load i32, i32* @BCM_NS_USB3_PHY_BASE_ADDR_REG, align 4
  %24 = load i32, i32* @BCM_NS_USB3_PHY_TX_PMD_BLOCK, align 4
  %25 = call i32 @bcm_ns_usb3_mdio_phy_write(%struct.bcm_ns_usb3* %22, i32 %23, i32 %24)
  %26 = load %struct.bcm_ns_usb3*, %struct.bcm_ns_usb3** %3, align 8
  %27 = call i32 @bcm_ns_usb3_mdio_phy_write(%struct.bcm_ns_usb3* %26, i32 2, i32 8659)
  %28 = load %struct.bcm_ns_usb3*, %struct.bcm_ns_usb3** %3, align 8
  %29 = load i32, i32* @BCM_NS_USB3_TX_PMD_CONTROL1, align 4
  %30 = call i32 @bcm_ns_usb3_mdio_phy_write(%struct.bcm_ns_usb3* %28, i32 %29, i32 4099)
  %31 = load %struct.bcm_ns_usb3*, %struct.bcm_ns_usb3** %3, align 8
  %32 = getelementptr inbounds %struct.bcm_ns_usb3, %struct.bcm_ns_usb3* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @BCMA_RESET_CTL, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 0, i64 %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %13, %11
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @bcm_ns_usb3_mdio_phy_write(%struct.bcm_ns_usb3*, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
