; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra210.c_tegra210_pex_uphy_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra210.c_tegra210_pex_uphy_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb_padctl = type { i32 }
%struct.tegra_xusb_pcie_pad = type { i64, i32, i32 }

@XUSB_PADCTL_UPHY_PLL_P0_CTL2 = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL2_CAL_CTRL_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL2_CAL_CTRL_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL2_CAL_CTRL_VAL = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_P0_CTL5 = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL5_DCO_CTRL_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL5_DCO_CTRL_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL5_DCO_CTRL_VAL = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_P0_CTL1 = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL1_PWR_OVRD = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL2_CAL_OVRD = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_P0_CTL8 = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_OVRD = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_P0_CTL4 = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL4_REFCLK_SEL_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL4_REFCLK_SEL_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_USB_VAL = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_EN = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_MDIV_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_MDIV_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_USB_VAL = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL1_IDDQ = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL1_SLEEP_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL1_SLEEP_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL4_REFCLKBUF_EN = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL2_CAL_EN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@XUSB_PADCTL_UPHY_PLL_CTL2_CAL_DONE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL1_ENABLE = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL1_LOCKDET_STATUS = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_EN = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_CLK_EN = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_xusb_padctl*)* @tegra210_pex_uphy_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra210_pex_uphy_enable(%struct.tegra_xusb_padctl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_xusb_padctl*, align 8
  %4 = alloca %struct.tegra_xusb_pcie_pad*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tegra_xusb_padctl* %0, %struct.tegra_xusb_padctl** %3, align 8
  %8 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.tegra_xusb_pcie_pad* @to_pcie_pad(i32 %10)
  store %struct.tegra_xusb_pcie_pad* %11, %struct.tegra_xusb_pcie_pad** %4, align 8
  %12 = load %struct.tegra_xusb_pcie_pad*, %struct.tegra_xusb_pcie_pad** %4, align 8
  %13 = getelementptr inbounds %struct.tegra_xusb_pcie_pad, %struct.tegra_xusb_pcie_pad* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.tegra_xusb_pcie_pad*, %struct.tegra_xusb_pcie_pad** %4, align 8
  %18 = getelementptr inbounds %struct.tegra_xusb_pcie_pad, %struct.tegra_xusb_pcie_pad* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %18, align 8
  store i32 0, i32* %2, align 4
  br label %442

21:                                               ; preds = %1
  %22 = load %struct.tegra_xusb_pcie_pad*, %struct.tegra_xusb_pcie_pad** %4, align 8
  %23 = getelementptr inbounds %struct.tegra_xusb_pcie_pad, %struct.tegra_xusb_pcie_pad* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @clk_prepare_enable(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %2, align 4
  br label %442

30:                                               ; preds = %21
  %31 = load %struct.tegra_xusb_pcie_pad*, %struct.tegra_xusb_pcie_pad** %4, align 8
  %32 = getelementptr inbounds %struct.tegra_xusb_pcie_pad, %struct.tegra_xusb_pcie_pad* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @reset_control_deassert(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %436

38:                                               ; preds = %30
  %39 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %40 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL2, align 4
  %41 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL2_CAL_CTRL_MASK, align 4
  %43 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL2_CAL_CTRL_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL2_CAL_CTRL_VAL, align 4
  %49 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL2_CAL_CTRL_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL2, align 4
  %56 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %53, i32 %54, i32 %55)
  %57 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %58 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL5, align 4
  %59 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL5_DCO_CTRL_MASK, align 4
  %61 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL5_DCO_CTRL_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL5_DCO_CTRL_VAL, align 4
  %67 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL5_DCO_CTRL_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = load i32, i32* %6, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %6, align 4
  %71 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL5, align 4
  %74 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %71, i32 %72, i32 %73)
  %75 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %76 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL1, align 4
  %77 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %75, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL1_PWR_OVRD, align 4
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  %81 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL1, align 4
  %84 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %81, i32 %82, i32 %83)
  %85 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %86 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL2, align 4
  %87 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %85, i32 %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL2_CAL_OVRD, align 4
  %89 = load i32, i32* %6, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %6, align 4
  %91 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL2, align 4
  %94 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %91, i32 %92, i32 %93)
  %95 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %96 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL8, align 4
  %97 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %95, i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_OVRD, align 4
  %99 = load i32, i32* %6, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %6, align 4
  %101 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL8, align 4
  %104 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %101, i32 %102, i32 %103)
  %105 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %106 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL4, align 4
  %107 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %105, i32 %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_MASK, align 4
  %109 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_SHIFT, align 4
  %110 = shl i32 %108, %109
  %111 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL4_REFCLK_SEL_MASK, align 4
  %112 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL4_REFCLK_SEL_SHIFT, align 4
  %113 = shl i32 %111, %112
  %114 = or i32 %110, %113
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %6, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_USB_VAL, align 4
  %119 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_SHIFT, align 4
  %120 = shl i32 %118, %119
  %121 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_EN, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* %6, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %6, align 4
  %125 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL4, align 4
  %128 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %125, i32 %126, i32 %127)
  %129 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %130 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL1, align 4
  %131 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %129, i32 %130)
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_MDIV_MASK, align 4
  %133 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_MDIV_SHIFT, align 4
  %134 = shl i32 %132, %133
  %135 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_MASK, align 4
  %136 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_SHIFT, align 4
  %137 = shl i32 %135, %136
  %138 = or i32 %134, %137
  %139 = xor i32 %138, -1
  %140 = load i32, i32* %6, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_USB_VAL, align 4
  %143 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_SHIFT, align 4
  %144 = shl i32 %142, %143
  %145 = load i32, i32* %6, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %6, align 4
  %147 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL1, align 4
  %150 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %147, i32 %148, i32 %149)
  %151 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %152 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL1, align 4
  %153 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %151, i32 %152)
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL1_IDDQ, align 4
  %155 = xor i32 %154, -1
  %156 = load i32, i32* %6, align 4
  %157 = and i32 %156, %155
  store i32 %157, i32* %6, align 4
  %158 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL1, align 4
  %161 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %158, i32 %159, i32 %160)
  %162 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %163 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL1, align 4
  %164 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %162, i32 %163)
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL1_SLEEP_MASK, align 4
  %166 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL1_SLEEP_SHIFT, align 4
  %167 = shl i32 %165, %166
  %168 = xor i32 %167, -1
  %169 = load i32, i32* %6, align 4
  %170 = and i32 %169, %168
  store i32 %170, i32* %6, align 4
  %171 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL1, align 4
  %174 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %171, i32 %172, i32 %173)
  %175 = call i32 @usleep_range(i32 10, i32 20)
  %176 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %177 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL4, align 4
  %178 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %176, i32 %177)
  store i32 %178, i32* %6, align 4
  %179 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL4_REFCLKBUF_EN, align 4
  %180 = load i32, i32* %6, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %6, align 4
  %182 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL4, align 4
  %185 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %182, i32 %183, i32 %184)
  %186 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %187 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL2, align 4
  %188 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %186, i32 %187)
  store i32 %188, i32* %6, align 4
  %189 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL2_CAL_EN, align 4
  %190 = load i32, i32* %6, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %6, align 4
  %192 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL2, align 4
  %195 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %192, i32 %193, i32 %194)
  %196 = load i64, i64* @jiffies, align 8
  %197 = call i64 @msecs_to_jiffies(i32 100)
  %198 = add i64 %196, %197
  store i64 %198, i64* %5, align 8
  br label %199

199:                                              ; preds = %213, %38
  %200 = load i64, i64* @jiffies, align 8
  %201 = load i64, i64* %5, align 8
  %202 = call i64 @time_before(i64 %200, i64 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %215

204:                                              ; preds = %199
  %205 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %206 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL2, align 4
  %207 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %205, i32 %206)
  store i32 %207, i32* %6, align 4
  %208 = load i32, i32* %6, align 4
  %209 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL2_CAL_DONE, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %204
  br label %215

213:                                              ; preds = %204
  %214 = call i32 @usleep_range(i32 10, i32 20)
  br label %199

215:                                              ; preds = %212, %199
  %216 = load i64, i64* @jiffies, align 8
  %217 = load i64, i64* %5, align 8
  %218 = call i64 @time_after_eq(i64 %216, i64 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %215
  %221 = load i32, i32* @ETIMEDOUT, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %7, align 4
  br label %431

223:                                              ; preds = %215
  %224 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %225 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL2, align 4
  %226 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %224, i32 %225)
  store i32 %226, i32* %6, align 4
  %227 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL2_CAL_EN, align 4
  %228 = xor i32 %227, -1
  %229 = load i32, i32* %6, align 4
  %230 = and i32 %229, %228
  store i32 %230, i32* %6, align 4
  %231 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL2, align 4
  %234 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %231, i32 %232, i32 %233)
  %235 = load i64, i64* @jiffies, align 8
  %236 = call i64 @msecs_to_jiffies(i32 100)
  %237 = add i64 %235, %236
  store i64 %237, i64* %5, align 8
  br label %238

238:                                              ; preds = %252, %223
  %239 = load i64, i64* @jiffies, align 8
  %240 = load i64, i64* %5, align 8
  %241 = call i64 @time_before(i64 %239, i64 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %254

243:                                              ; preds = %238
  %244 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %245 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL2, align 4
  %246 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %244, i32 %245)
  store i32 %246, i32* %6, align 4
  %247 = load i32, i32* %6, align 4
  %248 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL2_CAL_DONE, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %243
  br label %254

252:                                              ; preds = %243
  %253 = call i32 @usleep_range(i32 10, i32 20)
  br label %238

254:                                              ; preds = %251, %238
  %255 = load i64, i64* @jiffies, align 8
  %256 = load i64, i64* %5, align 8
  %257 = call i64 @time_after_eq(i64 %255, i64 %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %254
  %260 = load i32, i32* @ETIMEDOUT, align 4
  %261 = sub nsw i32 0, %260
  store i32 %261, i32* %7, align 4
  br label %431

262:                                              ; preds = %254
  %263 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %264 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL1, align 4
  %265 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %263, i32 %264)
  store i32 %265, i32* %6, align 4
  %266 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL1_ENABLE, align 4
  %267 = load i32, i32* %6, align 4
  %268 = or i32 %267, %266
  store i32 %268, i32* %6, align 4
  %269 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %270 = load i32, i32* %6, align 4
  %271 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL1, align 4
  %272 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %269, i32 %270, i32 %271)
  %273 = load i64, i64* @jiffies, align 8
  %274 = call i64 @msecs_to_jiffies(i32 100)
  %275 = add i64 %273, %274
  store i64 %275, i64* %5, align 8
  br label %276

276:                                              ; preds = %290, %262
  %277 = load i64, i64* @jiffies, align 8
  %278 = load i64, i64* %5, align 8
  %279 = call i64 @time_before(i64 %277, i64 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %292

281:                                              ; preds = %276
  %282 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %283 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL1, align 4
  %284 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %282, i32 %283)
  store i32 %284, i32* %6, align 4
  %285 = load i32, i32* %6, align 4
  %286 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL1_LOCKDET_STATUS, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %281
  br label %292

290:                                              ; preds = %281
  %291 = call i32 @usleep_range(i32 10, i32 20)
  br label %276

292:                                              ; preds = %289, %276
  %293 = load i64, i64* @jiffies, align 8
  %294 = load i64, i64* %5, align 8
  %295 = call i64 @time_after_eq(i64 %293, i64 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %292
  %298 = load i32, i32* @ETIMEDOUT, align 4
  %299 = sub nsw i32 0, %298
  store i32 %299, i32* %7, align 4
  br label %431

300:                                              ; preds = %292
  %301 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %302 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL8, align 4
  %303 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %301, i32 %302)
  store i32 %303, i32* %6, align 4
  %304 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_EN, align 4
  %305 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_CLK_EN, align 4
  %306 = or i32 %304, %305
  %307 = load i32, i32* %6, align 4
  %308 = or i32 %307, %306
  store i32 %308, i32* %6, align 4
  %309 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %310 = load i32, i32* %6, align 4
  %311 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL8, align 4
  %312 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %309, i32 %310, i32 %311)
  %313 = load i64, i64* @jiffies, align 8
  %314 = call i64 @msecs_to_jiffies(i32 100)
  %315 = add i64 %313, %314
  store i64 %315, i64* %5, align 8
  br label %316

316:                                              ; preds = %330, %300
  %317 = load i64, i64* @jiffies, align 8
  %318 = load i64, i64* %5, align 8
  %319 = call i64 @time_before(i64 %317, i64 %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %332

321:                                              ; preds = %316
  %322 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %323 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL8, align 4
  %324 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %322, i32 %323)
  store i32 %324, i32* %6, align 4
  %325 = load i32, i32* %6, align 4
  %326 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_DONE, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %321
  br label %332

330:                                              ; preds = %321
  %331 = call i32 @usleep_range(i32 10, i32 20)
  br label %316

332:                                              ; preds = %329, %316
  %333 = load i64, i64* @jiffies, align 8
  %334 = load i64, i64* %5, align 8
  %335 = call i64 @time_after_eq(i64 %333, i64 %334)
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %340

337:                                              ; preds = %332
  %338 = load i32, i32* @ETIMEDOUT, align 4
  %339 = sub nsw i32 0, %338
  store i32 %339, i32* %7, align 4
  br label %431

340:                                              ; preds = %332
  %341 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %342 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL8, align 4
  %343 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %341, i32 %342)
  store i32 %343, i32* %6, align 4
  %344 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_EN, align 4
  %345 = xor i32 %344, -1
  %346 = load i32, i32* %6, align 4
  %347 = and i32 %346, %345
  store i32 %347, i32* %6, align 4
  %348 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %349 = load i32, i32* %6, align 4
  %350 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL8, align 4
  %351 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %348, i32 %349, i32 %350)
  %352 = load i64, i64* @jiffies, align 8
  %353 = call i64 @msecs_to_jiffies(i32 100)
  %354 = add i64 %352, %353
  store i64 %354, i64* %5, align 8
  br label %355

355:                                              ; preds = %369, %340
  %356 = load i64, i64* @jiffies, align 8
  %357 = load i64, i64* %5, align 8
  %358 = call i64 @time_before(i64 %356, i64 %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %371

360:                                              ; preds = %355
  %361 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %362 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL8, align 4
  %363 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %361, i32 %362)
  store i32 %363, i32* %6, align 4
  %364 = load i32, i32* %6, align 4
  %365 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_DONE, align 4
  %366 = and i32 %364, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %369, label %368

368:                                              ; preds = %360
  br label %371

369:                                              ; preds = %360
  %370 = call i32 @usleep_range(i32 10, i32 20)
  br label %355

371:                                              ; preds = %368, %355
  %372 = load i64, i64* @jiffies, align 8
  %373 = load i64, i64* %5, align 8
  %374 = call i64 @time_after_eq(i64 %372, i64 %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %379

376:                                              ; preds = %371
  %377 = load i32, i32* @ETIMEDOUT, align 4
  %378 = sub nsw i32 0, %377
  store i32 %378, i32* %7, align 4
  br label %431

379:                                              ; preds = %371
  %380 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %381 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL8, align 4
  %382 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %380, i32 %381)
  store i32 %382, i32* %6, align 4
  %383 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_CLK_EN, align 4
  %384 = xor i32 %383, -1
  %385 = load i32, i32* %6, align 4
  %386 = and i32 %385, %384
  store i32 %386, i32* %6, align 4
  %387 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %388 = load i32, i32* %6, align 4
  %389 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL8, align 4
  %390 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %387, i32 %388, i32 %389)
  %391 = call i32 (...) @tegra210_xusb_pll_hw_control_enable()
  %392 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %393 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL1, align 4
  %394 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %392, i32 %393)
  store i32 %394, i32* %6, align 4
  %395 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL1_PWR_OVRD, align 4
  %396 = xor i32 %395, -1
  %397 = load i32, i32* %6, align 4
  %398 = and i32 %397, %396
  store i32 %398, i32* %6, align 4
  %399 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %400 = load i32, i32* %6, align 4
  %401 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL1, align 4
  %402 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %399, i32 %400, i32 %401)
  %403 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %404 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL2, align 4
  %405 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %403, i32 %404)
  store i32 %405, i32* %6, align 4
  %406 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL2_CAL_OVRD, align 4
  %407 = xor i32 %406, -1
  %408 = load i32, i32* %6, align 4
  %409 = and i32 %408, %407
  store i32 %409, i32* %6, align 4
  %410 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %411 = load i32, i32* %6, align 4
  %412 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL2, align 4
  %413 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %410, i32 %411, i32 %412)
  %414 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %415 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL8, align 4
  %416 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %414, i32 %415)
  store i32 %416, i32* %6, align 4
  %417 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_OVRD, align 4
  %418 = xor i32 %417, -1
  %419 = load i32, i32* %6, align 4
  %420 = and i32 %419, %418
  store i32 %420, i32* %6, align 4
  %421 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %422 = load i32, i32* %6, align 4
  %423 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_P0_CTL8, align 4
  %424 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %421, i32 %422, i32 %423)
  %425 = call i32 @usleep_range(i32 10, i32 20)
  %426 = call i32 (...) @tegra210_xusb_pll_hw_sequence_start()
  %427 = load %struct.tegra_xusb_pcie_pad*, %struct.tegra_xusb_pcie_pad** %4, align 8
  %428 = getelementptr inbounds %struct.tegra_xusb_pcie_pad, %struct.tegra_xusb_pcie_pad* %427, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = add nsw i64 %429, 1
  store i64 %430, i64* %428, align 8
  store i32 0, i32* %2, align 4
  br label %442

431:                                              ; preds = %376, %337, %297, %259, %220
  %432 = load %struct.tegra_xusb_pcie_pad*, %struct.tegra_xusb_pcie_pad** %4, align 8
  %433 = getelementptr inbounds %struct.tegra_xusb_pcie_pad, %struct.tegra_xusb_pcie_pad* %432, i32 0, i32 2
  %434 = load i32, i32* %433, align 4
  %435 = call i32 @reset_control_assert(i32 %434)
  br label %436

436:                                              ; preds = %431, %37
  %437 = load %struct.tegra_xusb_pcie_pad*, %struct.tegra_xusb_pcie_pad** %4, align 8
  %438 = getelementptr inbounds %struct.tegra_xusb_pcie_pad, %struct.tegra_xusb_pcie_pad* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 8
  %440 = call i32 @clk_disable_unprepare(i32 %439)
  %441 = load i32, i32* %7, align 4
  store i32 %441, i32* %2, align 4
  br label %442

442:                                              ; preds = %436, %379, %28, %16
  %443 = load i32, i32* %2, align 4
  ret i32 %443
}

declare dso_local %struct.tegra_xusb_pcie_pad* @to_pcie_pad(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @padctl_readl(%struct.tegra_xusb_padctl*, i32) #1

declare dso_local i32 @padctl_writel(%struct.tegra_xusb_padctl*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @tegra210_xusb_pll_hw_control_enable(...) #1

declare dso_local i32 @tegra210_xusb_pll_hw_sequence_start(...) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
