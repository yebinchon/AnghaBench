; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-tegra.c_tegra_xusb_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-tegra.c_tegra_xusb_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.resource = type { i32 }

@IPFS_XUSB_HOST_CONFIGURATION_0 = common dso_local global i32 0, align 4
@IPFS_EN_FPCI = common dso_local global i32 0, align 4
@XUSB_CFG_4 = common dso_local global i32 0, align 4
@XUSB_BASE_ADDR_MASK = common dso_local global i32 0, align 4
@XUSB_BASE_ADDR_SHIFT = common dso_local global i32 0, align 4
@XUSB_CFG_1 = common dso_local global i32 0, align 4
@XUSB_IO_SPACE_EN = common dso_local global i32 0, align 4
@XUSB_MEM_SPACE_EN = common dso_local global i32 0, align 4
@XUSB_BUS_MASTER_EN = common dso_local global i32 0, align 4
@IPFS_XUSB_HOST_INTR_MASK_0 = common dso_local global i32 0, align 4
@IPFS_IP_INT_MASK = common dso_local global i32 0, align 4
@IPFS_XUSB_HOST_CLKGATE_HYSTERESIS_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_xusb*, %struct.resource*)* @tegra_xusb_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_xusb_config(%struct.tegra_xusb* %0, %struct.resource* %1) #0 {
  %3 = alloca %struct.tegra_xusb*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  store %struct.tegra_xusb* %0, %struct.tegra_xusb** %3, align 8
  store %struct.resource* %1, %struct.resource** %4, align 8
  %6 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %7 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %14 = load i32, i32* @IPFS_XUSB_HOST_CONFIGURATION_0, align 4
  %15 = call i32 @ipfs_readl(%struct.tegra_xusb* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @IPFS_EN_FPCI, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @IPFS_XUSB_HOST_CONFIGURATION_0, align 4
  %22 = call i32 @ipfs_writel(%struct.tegra_xusb* %19, i32 %20, i32 %21)
  %23 = call i32 @usleep_range(i32 10, i32 20)
  br label %24

24:                                               ; preds = %12, %2
  %25 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %26 = load i32, i32* @XUSB_CFG_4, align 4
  %27 = call i32 @fpci_readl(%struct.tegra_xusb* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @XUSB_BASE_ADDR_MASK, align 4
  %29 = load i32, i32* @XUSB_BASE_ADDR_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.resource*, %struct.resource** %4, align 8
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @XUSB_BASE_ADDR_MASK, align 4
  %38 = load i32, i32* @XUSB_BASE_ADDR_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = and i32 %36, %39
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @XUSB_CFG_4, align 4
  %46 = call i32 @fpci_writel(%struct.tegra_xusb* %43, i32 %44, i32 %45)
  %47 = call i32 @usleep_range(i32 100, i32 200)
  %48 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %49 = load i32, i32* @XUSB_CFG_1, align 4
  %50 = call i32 @fpci_readl(%struct.tegra_xusb* %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* @XUSB_IO_SPACE_EN, align 4
  %52 = load i32, i32* @XUSB_MEM_SPACE_EN, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @XUSB_BUS_MASTER_EN, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @XUSB_CFG_1, align 4
  %61 = call i32 @fpci_writel(%struct.tegra_xusb* %58, i32 %59, i32 %60)
  %62 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %63 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %24
  %69 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %70 = load i32, i32* @IPFS_XUSB_HOST_INTR_MASK_0, align 4
  %71 = call i32 @ipfs_readl(%struct.tegra_xusb* %69, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* @IPFS_IP_INT_MASK, align 4
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @IPFS_XUSB_HOST_INTR_MASK_0, align 4
  %78 = call i32 @ipfs_writel(%struct.tegra_xusb* %75, i32 %76, i32 %77)
  %79 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %80 = load i32, i32* @IPFS_XUSB_HOST_CLKGATE_HYSTERESIS_0, align 4
  %81 = call i32 @ipfs_writel(%struct.tegra_xusb* %79, i32 128, i32 %80)
  br label %82

82:                                               ; preds = %68, %24
  ret void
}

declare dso_local i32 @ipfs_readl(%struct.tegra_xusb*, i32) #1

declare dso_local i32 @ipfs_writel(%struct.tegra_xusb*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @fpci_readl(%struct.tegra_xusb*, i32) #1

declare dso_local i32 @fpci_writel(%struct.tegra_xusb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
