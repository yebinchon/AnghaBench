; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra210.c_tegra210_sata_uphy_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra210.c_tegra210_sata_uphy_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb_padctl = type { i32 }
%struct.tegra_xusb_sata_pad = type { i64, i32, i32 }

@XUSB_PADCTL_UPHY_PLL_S0_CTL2 = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL2_CAL_CTRL_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL2_CAL_CTRL_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL2_CAL_CTRL_VAL = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_S0_CTL5 = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL5_DCO_CTRL_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL5_DCO_CTRL_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL5_DCO_CTRL_VAL = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_S0_CTL1 = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL1_PWR_OVRD = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL2_CAL_OVRD = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_S0_CTL8 = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_OVRD = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_S0_CTL4 = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL4_REFCLK_SEL_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL4_REFCLK_SEL_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_EN = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_USB_VAL = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_SATA_VAL = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL4_XDIGCLK_EN = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_MDIV_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_MDIV_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_USB_VAL = common dso_local global i32 0, align 4
@XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_SATA_VAL = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_xusb_padctl*, i32)* @tegra210_sata_uphy_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra210_sata_uphy_enable(%struct.tegra_xusb_padctl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_xusb_padctl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra_xusb_sata_pad*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tegra_xusb_padctl* %0, %struct.tegra_xusb_padctl** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %11 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.tegra_xusb_sata_pad* @to_sata_pad(i32 %12)
  store %struct.tegra_xusb_sata_pad* %13, %struct.tegra_xusb_sata_pad** %6, align 8
  %14 = load %struct.tegra_xusb_sata_pad*, %struct.tegra_xusb_sata_pad** %6, align 8
  %15 = getelementptr inbounds %struct.tegra_xusb_sata_pad, %struct.tegra_xusb_sata_pad* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.tegra_xusb_sata_pad*, %struct.tegra_xusb_sata_pad** %6, align 8
  %20 = getelementptr inbounds %struct.tegra_xusb_sata_pad, %struct.tegra_xusb_sata_pad* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %20, align 8
  store i32 0, i32* %3, align 4
  br label %469

23:                                               ; preds = %2
  %24 = load %struct.tegra_xusb_sata_pad*, %struct.tegra_xusb_sata_pad** %6, align 8
  %25 = getelementptr inbounds %struct.tegra_xusb_sata_pad, %struct.tegra_xusb_sata_pad* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @clk_prepare_enable(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %3, align 4
  br label %469

32:                                               ; preds = %23
  %33 = load %struct.tegra_xusb_sata_pad*, %struct.tegra_xusb_sata_pad** %6, align 8
  %34 = getelementptr inbounds %struct.tegra_xusb_sata_pad, %struct.tegra_xusb_sata_pad* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @reset_control_deassert(i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %463

40:                                               ; preds = %32
  %41 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %42 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL2, align 4
  %43 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL2_CAL_CTRL_MASK, align 4
  %45 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL2_CAL_CTRL_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL2_CAL_CTRL_VAL, align 4
  %51 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL2_CAL_CTRL_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL2, align 4
  %58 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %55, i32 %56, i32 %57)
  %59 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %60 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL5, align 4
  %61 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL5_DCO_CTRL_MASK, align 4
  %63 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL5_DCO_CTRL_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL5_DCO_CTRL_VAL, align 4
  %69 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL5_DCO_CTRL_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %8, align 4
  %73 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL5, align 4
  %76 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %73, i32 %74, i32 %75)
  %77 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %78 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL1, align 4
  %79 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %77, i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL1_PWR_OVRD, align 4
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %8, align 4
  %83 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL1, align 4
  %86 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %83, i32 %84, i32 %85)
  %87 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %88 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL2, align 4
  %89 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %87, i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL2_CAL_OVRD, align 4
  %91 = load i32, i32* %8, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %8, align 4
  %93 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL2, align 4
  %96 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %93, i32 %94, i32 %95)
  %97 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %98 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL8, align 4
  %99 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %97, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_OVRD, align 4
  %101 = load i32, i32* %8, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %8, align 4
  %103 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL8, align 4
  %106 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %103, i32 %104, i32 %105)
  %107 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %108 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL4, align 4
  %109 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %107, i32 %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_MASK, align 4
  %111 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_SHIFT, align 4
  %112 = shl i32 %110, %111
  %113 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL4_REFCLK_SEL_MASK, align 4
  %114 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL4_REFCLK_SEL_SHIFT, align 4
  %115 = shl i32 %113, %114
  %116 = or i32 %112, %115
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %8, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_EN, align 4
  %121 = load i32, i32* %8, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %5, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %40
  %126 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_USB_VAL, align 4
  %127 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_SHIFT, align 4
  %128 = shl i32 %126, %127
  %129 = load i32, i32* %8, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %8, align 4
  br label %137

131:                                              ; preds = %40
  %132 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_SATA_VAL, align 4
  %133 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_SHIFT, align 4
  %134 = shl i32 %132, %133
  %135 = load i32, i32* %8, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %8, align 4
  br label %137

137:                                              ; preds = %131, %125
  %138 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL4_XDIGCLK_EN, align 4
  %139 = xor i32 %138, -1
  %140 = load i32, i32* %8, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* %8, align 4
  %142 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL4, align 4
  %145 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %142, i32 %143, i32 %144)
  %146 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %147 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL1, align 4
  %148 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %146, i32 %147)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_MDIV_MASK, align 4
  %150 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_MDIV_SHIFT, align 4
  %151 = shl i32 %149, %150
  %152 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_MASK, align 4
  %153 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_SHIFT, align 4
  %154 = shl i32 %152, %153
  %155 = or i32 %151, %154
  %156 = xor i32 %155, -1
  %157 = load i32, i32* %8, align 4
  %158 = and i32 %157, %156
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %5, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %137
  %162 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_USB_VAL, align 4
  %163 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_SHIFT, align 4
  %164 = shl i32 %162, %163
  %165 = load i32, i32* %8, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %8, align 4
  br label %173

167:                                              ; preds = %137
  %168 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_SATA_VAL, align 4
  %169 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_SHIFT, align 4
  %170 = shl i32 %168, %169
  %171 = load i32, i32* %8, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %8, align 4
  br label %173

173:                                              ; preds = %167, %161
  %174 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL1, align 4
  %177 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %174, i32 %175, i32 %176)
  %178 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %179 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL1, align 4
  %180 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %178, i32 %179)
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL1_IDDQ, align 4
  %182 = xor i32 %181, -1
  %183 = load i32, i32* %8, align 4
  %184 = and i32 %183, %182
  store i32 %184, i32* %8, align 4
  %185 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL1, align 4
  %188 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %185, i32 %186, i32 %187)
  %189 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %190 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL1, align 4
  %191 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %189, i32 %190)
  store i32 %191, i32* %8, align 4
  %192 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL1_SLEEP_MASK, align 4
  %193 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL1_SLEEP_SHIFT, align 4
  %194 = shl i32 %192, %193
  %195 = xor i32 %194, -1
  %196 = load i32, i32* %8, align 4
  %197 = and i32 %196, %195
  store i32 %197, i32* %8, align 4
  %198 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL1, align 4
  %201 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %198, i32 %199, i32 %200)
  %202 = call i32 @usleep_range(i32 10, i32 20)
  %203 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %204 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL4, align 4
  %205 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %203, i32 %204)
  store i32 %205, i32* %8, align 4
  %206 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL4_REFCLKBUF_EN, align 4
  %207 = load i32, i32* %8, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %8, align 4
  %209 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %210 = load i32, i32* %8, align 4
  %211 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL4, align 4
  %212 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %209, i32 %210, i32 %211)
  %213 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %214 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL2, align 4
  %215 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %213, i32 %214)
  store i32 %215, i32* %8, align 4
  %216 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL2_CAL_EN, align 4
  %217 = load i32, i32* %8, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %8, align 4
  %219 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %220 = load i32, i32* %8, align 4
  %221 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL2, align 4
  %222 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %219, i32 %220, i32 %221)
  %223 = load i64, i64* @jiffies, align 8
  %224 = call i64 @msecs_to_jiffies(i32 100)
  %225 = add i64 %223, %224
  store i64 %225, i64* %7, align 8
  br label %226

226:                                              ; preds = %240, %173
  %227 = load i64, i64* @jiffies, align 8
  %228 = load i64, i64* %7, align 8
  %229 = call i64 @time_before(i64 %227, i64 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %242

231:                                              ; preds = %226
  %232 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %233 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL2, align 4
  %234 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %232, i32 %233)
  store i32 %234, i32* %8, align 4
  %235 = load i32, i32* %8, align 4
  %236 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL2_CAL_DONE, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %231
  br label %242

240:                                              ; preds = %231
  %241 = call i32 @usleep_range(i32 10, i32 20)
  br label %226

242:                                              ; preds = %239, %226
  %243 = load i64, i64* @jiffies, align 8
  %244 = load i64, i64* %7, align 8
  %245 = call i64 @time_after_eq(i64 %243, i64 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %242
  %248 = load i32, i32* @ETIMEDOUT, align 4
  %249 = sub nsw i32 0, %248
  store i32 %249, i32* %9, align 4
  br label %458

250:                                              ; preds = %242
  %251 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %252 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL2, align 4
  %253 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %251, i32 %252)
  store i32 %253, i32* %8, align 4
  %254 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL2_CAL_EN, align 4
  %255 = xor i32 %254, -1
  %256 = load i32, i32* %8, align 4
  %257 = and i32 %256, %255
  store i32 %257, i32* %8, align 4
  %258 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %259 = load i32, i32* %8, align 4
  %260 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL2, align 4
  %261 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %258, i32 %259, i32 %260)
  %262 = load i64, i64* @jiffies, align 8
  %263 = call i64 @msecs_to_jiffies(i32 100)
  %264 = add i64 %262, %263
  store i64 %264, i64* %7, align 8
  br label %265

265:                                              ; preds = %279, %250
  %266 = load i64, i64* @jiffies, align 8
  %267 = load i64, i64* %7, align 8
  %268 = call i64 @time_before(i64 %266, i64 %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %281

270:                                              ; preds = %265
  %271 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %272 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL2, align 4
  %273 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %271, i32 %272)
  store i32 %273, i32* %8, align 4
  %274 = load i32, i32* %8, align 4
  %275 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL2_CAL_DONE, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %279, label %278

278:                                              ; preds = %270
  br label %281

279:                                              ; preds = %270
  %280 = call i32 @usleep_range(i32 10, i32 20)
  br label %265

281:                                              ; preds = %278, %265
  %282 = load i64, i64* @jiffies, align 8
  %283 = load i64, i64* %7, align 8
  %284 = call i64 @time_after_eq(i64 %282, i64 %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %281
  %287 = load i32, i32* @ETIMEDOUT, align 4
  %288 = sub nsw i32 0, %287
  store i32 %288, i32* %9, align 4
  br label %458

289:                                              ; preds = %281
  %290 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %291 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL1, align 4
  %292 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %290, i32 %291)
  store i32 %292, i32* %8, align 4
  %293 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL1_ENABLE, align 4
  %294 = load i32, i32* %8, align 4
  %295 = or i32 %294, %293
  store i32 %295, i32* %8, align 4
  %296 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %297 = load i32, i32* %8, align 4
  %298 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL1, align 4
  %299 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %296, i32 %297, i32 %298)
  %300 = load i64, i64* @jiffies, align 8
  %301 = call i64 @msecs_to_jiffies(i32 100)
  %302 = add i64 %300, %301
  store i64 %302, i64* %7, align 8
  br label %303

303:                                              ; preds = %317, %289
  %304 = load i64, i64* @jiffies, align 8
  %305 = load i64, i64* %7, align 8
  %306 = call i64 @time_before(i64 %304, i64 %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %319

308:                                              ; preds = %303
  %309 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %310 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL1, align 4
  %311 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %309, i32 %310)
  store i32 %311, i32* %8, align 4
  %312 = load i32, i32* %8, align 4
  %313 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL1_LOCKDET_STATUS, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %308
  br label %319

317:                                              ; preds = %308
  %318 = call i32 @usleep_range(i32 10, i32 20)
  br label %303

319:                                              ; preds = %316, %303
  %320 = load i64, i64* @jiffies, align 8
  %321 = load i64, i64* %7, align 8
  %322 = call i64 @time_after_eq(i64 %320, i64 %321)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %319
  %325 = load i32, i32* @ETIMEDOUT, align 4
  %326 = sub nsw i32 0, %325
  store i32 %326, i32* %9, align 4
  br label %458

327:                                              ; preds = %319
  %328 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %329 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL8, align 4
  %330 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %328, i32 %329)
  store i32 %330, i32* %8, align 4
  %331 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_EN, align 4
  %332 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_CLK_EN, align 4
  %333 = or i32 %331, %332
  %334 = load i32, i32* %8, align 4
  %335 = or i32 %334, %333
  store i32 %335, i32* %8, align 4
  %336 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %337 = load i32, i32* %8, align 4
  %338 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL8, align 4
  %339 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %336, i32 %337, i32 %338)
  %340 = load i64, i64* @jiffies, align 8
  %341 = call i64 @msecs_to_jiffies(i32 100)
  %342 = add i64 %340, %341
  store i64 %342, i64* %7, align 8
  br label %343

343:                                              ; preds = %357, %327
  %344 = load i64, i64* @jiffies, align 8
  %345 = load i64, i64* %7, align 8
  %346 = call i64 @time_before(i64 %344, i64 %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %359

348:                                              ; preds = %343
  %349 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %350 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL8, align 4
  %351 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %349, i32 %350)
  store i32 %351, i32* %8, align 4
  %352 = load i32, i32* %8, align 4
  %353 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_DONE, align 4
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %348
  br label %359

357:                                              ; preds = %348
  %358 = call i32 @usleep_range(i32 10, i32 20)
  br label %343

359:                                              ; preds = %356, %343
  %360 = load i64, i64* @jiffies, align 8
  %361 = load i64, i64* %7, align 8
  %362 = call i64 @time_after_eq(i64 %360, i64 %361)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %367

364:                                              ; preds = %359
  %365 = load i32, i32* @ETIMEDOUT, align 4
  %366 = sub nsw i32 0, %365
  store i32 %366, i32* %9, align 4
  br label %458

367:                                              ; preds = %359
  %368 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %369 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL8, align 4
  %370 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %368, i32 %369)
  store i32 %370, i32* %8, align 4
  %371 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_EN, align 4
  %372 = xor i32 %371, -1
  %373 = load i32, i32* %8, align 4
  %374 = and i32 %373, %372
  store i32 %374, i32* %8, align 4
  %375 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %376 = load i32, i32* %8, align 4
  %377 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL8, align 4
  %378 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %375, i32 %376, i32 %377)
  %379 = load i64, i64* @jiffies, align 8
  %380 = call i64 @msecs_to_jiffies(i32 100)
  %381 = add i64 %379, %380
  store i64 %381, i64* %7, align 8
  br label %382

382:                                              ; preds = %396, %367
  %383 = load i64, i64* @jiffies, align 8
  %384 = load i64, i64* %7, align 8
  %385 = call i64 @time_before(i64 %383, i64 %384)
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %398

387:                                              ; preds = %382
  %388 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %389 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL8, align 4
  %390 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %388, i32 %389)
  store i32 %390, i32* %8, align 4
  %391 = load i32, i32* %8, align 4
  %392 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_DONE, align 4
  %393 = and i32 %391, %392
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %396, label %395

395:                                              ; preds = %387
  br label %398

396:                                              ; preds = %387
  %397 = call i32 @usleep_range(i32 10, i32 20)
  br label %382

398:                                              ; preds = %395, %382
  %399 = load i64, i64* @jiffies, align 8
  %400 = load i64, i64* %7, align 8
  %401 = call i64 @time_after_eq(i64 %399, i64 %400)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %406

403:                                              ; preds = %398
  %404 = load i32, i32* @ETIMEDOUT, align 4
  %405 = sub nsw i32 0, %404
  store i32 %405, i32* %9, align 4
  br label %458

406:                                              ; preds = %398
  %407 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %408 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL8, align 4
  %409 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %407, i32 %408)
  store i32 %409, i32* %8, align 4
  %410 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_CLK_EN, align 4
  %411 = xor i32 %410, -1
  %412 = load i32, i32* %8, align 4
  %413 = and i32 %412, %411
  store i32 %413, i32* %8, align 4
  %414 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %415 = load i32, i32* %8, align 4
  %416 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL8, align 4
  %417 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %414, i32 %415, i32 %416)
  %418 = call i32 (...) @tegra210_sata_pll_hw_control_enable()
  %419 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %420 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL1, align 4
  %421 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %419, i32 %420)
  store i32 %421, i32* %8, align 4
  %422 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL1_PWR_OVRD, align 4
  %423 = xor i32 %422, -1
  %424 = load i32, i32* %8, align 4
  %425 = and i32 %424, %423
  store i32 %425, i32* %8, align 4
  %426 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %427 = load i32, i32* %8, align 4
  %428 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL1, align 4
  %429 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %426, i32 %427, i32 %428)
  %430 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %431 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL2, align 4
  %432 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %430, i32 %431)
  store i32 %432, i32* %8, align 4
  %433 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL2_CAL_OVRD, align 4
  %434 = xor i32 %433, -1
  %435 = load i32, i32* %8, align 4
  %436 = and i32 %435, %434
  store i32 %436, i32* %8, align 4
  %437 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %438 = load i32, i32* %8, align 4
  %439 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL2, align 4
  %440 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %437, i32 %438, i32 %439)
  %441 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %442 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL8, align 4
  %443 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %441, i32 %442)
  store i32 %443, i32* %8, align 4
  %444 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_OVRD, align 4
  %445 = xor i32 %444, -1
  %446 = load i32, i32* %8, align 4
  %447 = and i32 %446, %445
  store i32 %447, i32* %8, align 4
  %448 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %449 = load i32, i32* %8, align 4
  %450 = load i32, i32* @XUSB_PADCTL_UPHY_PLL_S0_CTL8, align 4
  %451 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %448, i32 %449, i32 %450)
  %452 = call i32 @usleep_range(i32 10, i32 20)
  %453 = call i32 (...) @tegra210_sata_pll_hw_sequence_start()
  %454 = load %struct.tegra_xusb_sata_pad*, %struct.tegra_xusb_sata_pad** %6, align 8
  %455 = getelementptr inbounds %struct.tegra_xusb_sata_pad, %struct.tegra_xusb_sata_pad* %454, i32 0, i32 0
  %456 = load i64, i64* %455, align 8
  %457 = add nsw i64 %456, 1
  store i64 %457, i64* %455, align 8
  store i32 0, i32* %3, align 4
  br label %469

458:                                              ; preds = %403, %364, %324, %286, %247
  %459 = load %struct.tegra_xusb_sata_pad*, %struct.tegra_xusb_sata_pad** %6, align 8
  %460 = getelementptr inbounds %struct.tegra_xusb_sata_pad, %struct.tegra_xusb_sata_pad* %459, i32 0, i32 2
  %461 = load i32, i32* %460, align 4
  %462 = call i32 @reset_control_assert(i32 %461)
  br label %463

463:                                              ; preds = %458, %39
  %464 = load %struct.tegra_xusb_sata_pad*, %struct.tegra_xusb_sata_pad** %6, align 8
  %465 = getelementptr inbounds %struct.tegra_xusb_sata_pad, %struct.tegra_xusb_sata_pad* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 8
  %467 = call i32 @clk_disable_unprepare(i32 %466)
  %468 = load i32, i32* %9, align 4
  store i32 %468, i32* %3, align 4
  br label %469

469:                                              ; preds = %463, %406, %30, %18
  %470 = load i32, i32* %3, align 4
  ret i32 %470
}

declare dso_local %struct.tegra_xusb_sata_pad* @to_sata_pad(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @padctl_readl(%struct.tegra_xusb_padctl*, i32) #1

declare dso_local i32 @padctl_writel(%struct.tegra_xusb_padctl*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @tegra210_sata_pll_hw_control_enable(...) #1

declare dso_local i32 @tegra210_sata_pll_hw_sequence_start(...) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
