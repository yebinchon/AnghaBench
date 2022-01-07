; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra210.c_tegra210_hsic_phy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra210.c_tegra210_hsic_phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.tegra_xusb_lane = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tegra_xusb_padctl* }
%struct.tegra_xusb_padctl = type { i32 }
%struct.tegra_xusb_hsic_lane = type { i32, i32, i32, i32 }
%struct.tegra_xusb_hsic_pad = type { i32, i32 }
%struct.tegra210_xusb_padctl = type { i32 }

@XUSB_PADCTL_HSIC_STRB_TRIM_CONTROL = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL1_TX_RTUNEP_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL1_TX_RTUNEP_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL2_RX_STROBE_TRIM_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL2_RX_STROBE_TRIM_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL2_RX_DATA_TRIM_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL2_RX_DATA_TRIM_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL0_RPU_DATA0 = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL0_RPU_DATA1 = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL0_RPU_STROBE = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL0_PD_RX_DATA0 = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL0_PD_RX_DATA1 = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL0_PD_RX_STROBE = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL0_PD_ZI_DATA0 = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL0_PD_ZI_DATA1 = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL0_PD_ZI_STROBE = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL0_PD_TX_DATA0 = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL0_PD_TX_DATA1 = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL0_PD_TX_STROBE = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL0_RPD_DATA0 = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL0_RPD_DATA1 = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL0_RPD_STROBE = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_TRK_CTL = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_TRK_CTL_TRK_START_TIMER_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_TRK_CTL_TRK_START_TIMER_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_TRK_CTL_TRK_DONE_RESET_TIMER_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_TRK_CTL_TRK_DONE_RESET_TIMER_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_TRK_CTL_TRK_START_TIMER_VAL = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_TRK_CTL_TRK_DONE_RESET_TIMER_VAL = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_TRK_CTL_PD_TRK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @tegra210_hsic_phy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra210_hsic_phy_power_on(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.tegra_xusb_lane*, align 8
  %5 = alloca %struct.tegra_xusb_hsic_lane*, align 8
  %6 = alloca %struct.tegra_xusb_hsic_pad*, align 8
  %7 = alloca %struct.tegra_xusb_padctl*, align 8
  %8 = alloca %struct.tegra210_xusb_padctl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %12 = load %struct.phy*, %struct.phy** %3, align 8
  %13 = call %struct.tegra_xusb_lane* @phy_get_drvdata(%struct.phy* %12)
  store %struct.tegra_xusb_lane* %13, %struct.tegra_xusb_lane** %4, align 8
  %14 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %4, align 8
  %15 = call %struct.tegra_xusb_hsic_lane* @to_hsic_lane(%struct.tegra_xusb_lane* %14)
  store %struct.tegra_xusb_hsic_lane* %15, %struct.tegra_xusb_hsic_lane** %5, align 8
  %16 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %4, align 8
  %17 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = call %struct.tegra_xusb_hsic_pad* @to_hsic_pad(%struct.TYPE_2__* %18)
  store %struct.tegra_xusb_hsic_pad* %19, %struct.tegra_xusb_hsic_pad** %6, align 8
  %20 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %4, align 8
  %21 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %23, align 8
  store %struct.tegra_xusb_padctl* %24, %struct.tegra_xusb_padctl** %7, align 8
  %25 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %4, align 8
  %26 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  %28 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %29 = call %struct.tegra210_xusb_padctl* @to_tegra210_xusb_padctl(%struct.tegra_xusb_padctl* %28)
  store %struct.tegra210_xusb_padctl* %29, %struct.tegra210_xusb_padctl** %8, align 8
  %30 = load %struct.tegra_xusb_hsic_pad*, %struct.tegra_xusb_hsic_pad** %6, align 8
  %31 = getelementptr inbounds %struct.tegra_xusb_hsic_pad, %struct.tegra_xusb_hsic_pad* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @regulator_enable(i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %2, align 4
  br label %198

38:                                               ; preds = %1
  %39 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %40 = load %struct.tegra_xusb_hsic_lane*, %struct.tegra_xusb_hsic_lane** %5, align 8
  %41 = getelementptr inbounds %struct.tegra_xusb_hsic_lane, %struct.tegra_xusb_hsic_lane* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @XUSB_PADCTL_HSIC_STRB_TRIM_CONTROL, align 4
  %44 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %39, i32 %42, i32 %43)
  %45 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @XUSB_PADCTL_HSIC_PADX_CTL1(i32 %46)
  %48 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %45, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL1_TX_RTUNEP_MASK, align 4
  %50 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL1_TX_RTUNEP_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %10, align 4
  %55 = load %struct.tegra_xusb_hsic_lane*, %struct.tegra_xusb_hsic_lane** %5, align 8
  %56 = getelementptr inbounds %struct.tegra_xusb_hsic_lane, %struct.tegra_xusb_hsic_lane* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL1_TX_RTUNEP_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %10, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %10, align 4
  %62 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @XUSB_PADCTL_HSIC_PADX_CTL1(i32 %64)
  %66 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %62, i32 %63, i32 %65)
  %67 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @XUSB_PADCTL_HSIC_PADX_CTL2(i32 %68)
  %70 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %67, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL2_RX_STROBE_TRIM_MASK, align 4
  %72 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL2_RX_STROBE_TRIM_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL2_RX_DATA_TRIM_MASK, align 4
  %75 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL2_RX_DATA_TRIM_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = or i32 %73, %76
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %10, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %10, align 4
  %81 = load %struct.tegra_xusb_hsic_lane*, %struct.tegra_xusb_hsic_lane** %5, align 8
  %82 = getelementptr inbounds %struct.tegra_xusb_hsic_lane, %struct.tegra_xusb_hsic_lane* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL2_RX_STROBE_TRIM_SHIFT, align 4
  %85 = shl i32 %83, %84
  %86 = load %struct.tegra_xusb_hsic_lane*, %struct.tegra_xusb_hsic_lane** %5, align 8
  %87 = getelementptr inbounds %struct.tegra_xusb_hsic_lane, %struct.tegra_xusb_hsic_lane* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL2_RX_DATA_TRIM_SHIFT, align 4
  %90 = shl i32 %88, %89
  %91 = or i32 %85, %90
  %92 = load i32, i32* %10, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %10, align 4
  %94 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @XUSB_PADCTL_HSIC_PADX_CTL2(i32 %96)
  %98 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %94, i32 %95, i32 %97)
  %99 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @XUSB_PADCTL_HSIC_PADX_CTL0(i32 %100)
  %102 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %99, i32 %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_RPU_DATA0, align 4
  %104 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_RPU_DATA1, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_RPU_STROBE, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_PD_RX_DATA0, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_PD_RX_DATA1, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_PD_RX_STROBE, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_PD_ZI_DATA0, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_PD_ZI_DATA1, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_PD_ZI_STROBE, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_PD_TX_DATA0, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_PD_TX_DATA1, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_PD_TX_STROBE, align 4
  %125 = or i32 %123, %124
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %10, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_RPD_DATA0, align 4
  %130 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_RPD_DATA1, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_RPD_STROBE, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* %10, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %10, align 4
  %136 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @XUSB_PADCTL_HSIC_PADX_CTL0(i32 %138)
  %140 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %136, i32 %137, i32 %139)
  %141 = load %struct.tegra_xusb_hsic_pad*, %struct.tegra_xusb_hsic_pad** %6, align 8
  %142 = getelementptr inbounds %struct.tegra_xusb_hsic_pad, %struct.tegra_xusb_hsic_pad* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @clk_prepare_enable(i32 %143)
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %38
  br label %192

148:                                              ; preds = %38
  %149 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %150 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_TRK_CTL, align 4
  %151 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %149, i32 %150)
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_TRK_CTL_TRK_START_TIMER_MASK, align 4
  %153 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_TRK_CTL_TRK_START_TIMER_SHIFT, align 4
  %154 = shl i32 %152, %153
  %155 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_TRK_CTL_TRK_DONE_RESET_TIMER_MASK, align 4
  %156 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_TRK_CTL_TRK_DONE_RESET_TIMER_SHIFT, align 4
  %157 = shl i32 %155, %156
  %158 = or i32 %154, %157
  %159 = xor i32 %158, -1
  %160 = load i32, i32* %10, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_TRK_CTL_TRK_START_TIMER_VAL, align 4
  %163 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_TRK_CTL_TRK_START_TIMER_SHIFT, align 4
  %164 = shl i32 %162, %163
  %165 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_TRK_CTL_TRK_DONE_RESET_TIMER_VAL, align 4
  %166 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_TRK_CTL_TRK_DONE_RESET_TIMER_SHIFT, align 4
  %167 = shl i32 %165, %166
  %168 = or i32 %164, %167
  %169 = load i32, i32* %10, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %10, align 4
  %171 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_TRK_CTL, align 4
  %174 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %171, i32 %172, i32 %173)
  %175 = call i32 @udelay(i32 1)
  %176 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %177 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_TRK_CTL, align 4
  %178 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %176, i32 %177)
  store i32 %178, i32* %10, align 4
  %179 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_TRK_CTL_PD_TRK, align 4
  %180 = xor i32 %179, -1
  %181 = load i32, i32* %10, align 4
  %182 = and i32 %181, %180
  store i32 %182, i32* %10, align 4
  %183 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_TRK_CTL, align 4
  %186 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %183, i32 %184, i32 %185)
  %187 = call i32 @udelay(i32 50)
  %188 = load %struct.tegra_xusb_hsic_pad*, %struct.tegra_xusb_hsic_pad** %6, align 8
  %189 = getelementptr inbounds %struct.tegra_xusb_hsic_pad, %struct.tegra_xusb_hsic_pad* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @clk_disable_unprepare(i32 %190)
  store i32 0, i32* %2, align 4
  br label %198

192:                                              ; preds = %147
  %193 = load %struct.tegra_xusb_hsic_pad*, %struct.tegra_xusb_hsic_pad** %6, align 8
  %194 = getelementptr inbounds %struct.tegra_xusb_hsic_pad, %struct.tegra_xusb_hsic_pad* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @regulator_disable(i32 %195)
  %197 = load i32, i32* %11, align 4
  store i32 %197, i32* %2, align 4
  br label %198

198:                                              ; preds = %192, %148, %36
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local %struct.tegra_xusb_lane* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.tegra_xusb_hsic_lane* @to_hsic_lane(%struct.tegra_xusb_lane*) #1

declare dso_local %struct.tegra_xusb_hsic_pad* @to_hsic_pad(%struct.TYPE_2__*) #1

declare dso_local %struct.tegra210_xusb_padctl* @to_tegra210_xusb_padctl(%struct.tegra_xusb_padctl*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @padctl_writel(%struct.tegra_xusb_padctl*, i32, i32) #1

declare dso_local i32 @padctl_readl(%struct.tegra_xusb_padctl*, i32) #1

declare dso_local i32 @XUSB_PADCTL_HSIC_PADX_CTL1(i32) #1

declare dso_local i32 @XUSB_PADCTL_HSIC_PADX_CTL2(i32) #1

declare dso_local i32 @XUSB_PADCTL_HSIC_PADX_CTL0(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
