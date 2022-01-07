; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra124.c_tegra124_hsic_phy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra124.c_tegra124_hsic_phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.tegra_xusb_lane = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tegra_xusb_padctl* }
%struct.tegra_xusb_padctl = type { i32 }
%struct.tegra_xusb_hsic_lane = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.tegra_xusb_hsic_pad = type { i32 }

@XUSB_PADCTL_HSIC_STRB_TRIM_CONTROL = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL1_AUTO_TERM_EN = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL0_TX_RTUNEN_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL0_TX_RTUNEN_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL0_TX_RTUNEP_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL0_TX_RTUNEP_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL0_TX_RSLEWN_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL0_TX_RSLEWN_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL0_TX_RSLEWP_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL0_TX_RSLEWP_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL2_RX_STROBE_TRIM_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL2_RX_STROBE_TRIM_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL2_RX_DATA_TRIM_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL2_RX_DATA_TRIM_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL1_RPD_STROBE = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL1_RPU_DATA = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL1_PD_RX = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL1_PD_ZI = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL1_PD_TRX = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL1_PD_TX = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL1_RPD_DATA = common dso_local global i32 0, align 4
@XUSB_PADCTL_HSIC_PAD_CTL1_RPU_STROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @tegra124_hsic_phy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra124_hsic_phy_power_on(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.tegra_xusb_lane*, align 8
  %5 = alloca %struct.tegra_xusb_hsic_lane*, align 8
  %6 = alloca %struct.tegra_xusb_hsic_pad*, align 8
  %7 = alloca %struct.tegra_xusb_padctl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %11 = load %struct.phy*, %struct.phy** %3, align 8
  %12 = call %struct.tegra_xusb_lane* @phy_get_drvdata(%struct.phy* %11)
  store %struct.tegra_xusb_lane* %12, %struct.tegra_xusb_lane** %4, align 8
  %13 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %4, align 8
  %14 = call %struct.tegra_xusb_hsic_lane* @to_hsic_lane(%struct.tegra_xusb_lane* %13)
  store %struct.tegra_xusb_hsic_lane* %14, %struct.tegra_xusb_hsic_lane** %5, align 8
  %15 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %4, align 8
  %16 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = call %struct.tegra_xusb_hsic_pad* @to_hsic_pad(%struct.TYPE_2__* %17)
  store %struct.tegra_xusb_hsic_pad* %18, %struct.tegra_xusb_hsic_pad** %6, align 8
  %19 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %4, align 8
  %20 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %22, align 8
  store %struct.tegra_xusb_padctl* %23, %struct.tegra_xusb_padctl** %7, align 8
  %24 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %4, align 8
  %25 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %8, align 4
  %27 = load %struct.tegra_xusb_hsic_pad*, %struct.tegra_xusb_hsic_pad** %6, align 8
  %28 = getelementptr inbounds %struct.tegra_xusb_hsic_pad, %struct.tegra_xusb_hsic_pad* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @regulator_enable(i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %2, align 4
  br label %177

35:                                               ; preds = %1
  %36 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %37 = load %struct.tegra_xusb_hsic_lane*, %struct.tegra_xusb_hsic_lane** %5, align 8
  %38 = getelementptr inbounds %struct.tegra_xusb_hsic_lane, %struct.tegra_xusb_hsic_lane* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @XUSB_PADCTL_HSIC_STRB_TRIM_CONTROL, align 4
  %41 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %36, i32 %39, i32 %40)
  %42 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @XUSB_PADCTL_HSIC_PADX_CTL1(i32 %43)
  %45 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %42, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.tegra_xusb_hsic_lane*, %struct.tegra_xusb_hsic_lane** %5, align 8
  %47 = getelementptr inbounds %struct.tegra_xusb_hsic_lane, %struct.tegra_xusb_hsic_lane* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %35
  %51 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL1_AUTO_TERM_EN, align 4
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %59

54:                                               ; preds = %35
  %55 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL1_AUTO_TERM_EN, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %54, %50
  %60 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @XUSB_PADCTL_HSIC_PADX_CTL1(i32 %62)
  %64 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %60, i32 %61, i32 %63)
  %65 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @XUSB_PADCTL_HSIC_PADX_CTL0(i32 %66)
  %68 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %65, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_TX_RTUNEN_MASK, align 4
  %70 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_TX_RTUNEN_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_TX_RTUNEP_MASK, align 4
  %73 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_TX_RTUNEP_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = or i32 %71, %74
  %76 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_TX_RSLEWN_MASK, align 4
  %77 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_TX_RSLEWN_SHIFT, align 4
  %78 = shl i32 %76, %77
  %79 = or i32 %75, %78
  %80 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_TX_RSLEWP_MASK, align 4
  %81 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_TX_RSLEWP_SHIFT, align 4
  %82 = shl i32 %80, %81
  %83 = or i32 %79, %82
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %9, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %9, align 4
  %87 = load %struct.tegra_xusb_hsic_lane*, %struct.tegra_xusb_hsic_lane** %5, align 8
  %88 = getelementptr inbounds %struct.tegra_xusb_hsic_lane, %struct.tegra_xusb_hsic_lane* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_TX_RTUNEN_SHIFT, align 4
  %91 = shl i32 %89, %90
  %92 = load %struct.tegra_xusb_hsic_lane*, %struct.tegra_xusb_hsic_lane** %5, align 8
  %93 = getelementptr inbounds %struct.tegra_xusb_hsic_lane, %struct.tegra_xusb_hsic_lane* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_TX_RTUNEP_SHIFT, align 4
  %96 = shl i32 %94, %95
  %97 = or i32 %91, %96
  %98 = load %struct.tegra_xusb_hsic_lane*, %struct.tegra_xusb_hsic_lane** %5, align 8
  %99 = getelementptr inbounds %struct.tegra_xusb_hsic_lane, %struct.tegra_xusb_hsic_lane* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_TX_RSLEWN_SHIFT, align 4
  %102 = shl i32 %100, %101
  %103 = or i32 %97, %102
  %104 = load %struct.tegra_xusb_hsic_lane*, %struct.tegra_xusb_hsic_lane** %5, align 8
  %105 = getelementptr inbounds %struct.tegra_xusb_hsic_lane, %struct.tegra_xusb_hsic_lane* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL0_TX_RSLEWP_SHIFT, align 4
  %108 = shl i32 %106, %107
  %109 = or i32 %103, %108
  %110 = load i32, i32* %9, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %9, align 4
  %112 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @XUSB_PADCTL_HSIC_PADX_CTL0(i32 %114)
  %116 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %112, i32 %113, i32 %115)
  %117 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @XUSB_PADCTL_HSIC_PADX_CTL2(i32 %118)
  %120 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %117, i32 %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL2_RX_STROBE_TRIM_MASK, align 4
  %122 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL2_RX_STROBE_TRIM_SHIFT, align 4
  %123 = shl i32 %121, %122
  %124 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL2_RX_DATA_TRIM_MASK, align 4
  %125 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL2_RX_DATA_TRIM_SHIFT, align 4
  %126 = shl i32 %124, %125
  %127 = or i32 %123, %126
  %128 = xor i32 %127, -1
  %129 = load i32, i32* %9, align 4
  %130 = and i32 %129, %128
  store i32 %130, i32* %9, align 4
  %131 = load %struct.tegra_xusb_hsic_lane*, %struct.tegra_xusb_hsic_lane** %5, align 8
  %132 = getelementptr inbounds %struct.tegra_xusb_hsic_lane, %struct.tegra_xusb_hsic_lane* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL2_RX_STROBE_TRIM_SHIFT, align 4
  %135 = shl i32 %133, %134
  %136 = load %struct.tegra_xusb_hsic_lane*, %struct.tegra_xusb_hsic_lane** %5, align 8
  %137 = getelementptr inbounds %struct.tegra_xusb_hsic_lane, %struct.tegra_xusb_hsic_lane* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL2_RX_DATA_TRIM_SHIFT, align 4
  %140 = shl i32 %138, %139
  %141 = or i32 %135, %140
  %142 = load i32, i32* %9, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %9, align 4
  %144 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @XUSB_PADCTL_HSIC_PADX_CTL2(i32 %146)
  %148 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %144, i32 %145, i32 %147)
  %149 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @XUSB_PADCTL_HSIC_PADX_CTL1(i32 %150)
  %152 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %149, i32 %151)
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL1_RPD_STROBE, align 4
  %154 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL1_RPU_DATA, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL1_PD_RX, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL1_PD_ZI, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL1_PD_TRX, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL1_PD_TX, align 4
  %163 = or i32 %161, %162
  %164 = xor i32 %163, -1
  %165 = load i32, i32* %9, align 4
  %166 = and i32 %165, %164
  store i32 %166, i32* %9, align 4
  %167 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL1_RPD_DATA, align 4
  %168 = load i32, i32* @XUSB_PADCTL_HSIC_PAD_CTL1_RPU_STROBE, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* %9, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %9, align 4
  %172 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %8, align 4
  %175 = call i32 @XUSB_PADCTL_HSIC_PADX_CTL1(i32 %174)
  %176 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %172, i32 %173, i32 %175)
  store i32 0, i32* %2, align 4
  br label %177

177:                                              ; preds = %59, %33
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local %struct.tegra_xusb_lane* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.tegra_xusb_hsic_lane* @to_hsic_lane(%struct.tegra_xusb_lane*) #1

declare dso_local %struct.tegra_xusb_hsic_pad* @to_hsic_pad(%struct.TYPE_2__*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @padctl_writel(%struct.tegra_xusb_padctl*, i32, i32) #1

declare dso_local i32 @padctl_readl(%struct.tegra_xusb_padctl*, i32) #1

declare dso_local i32 @XUSB_PADCTL_HSIC_PADX_CTL1(i32) #1

declare dso_local i32 @XUSB_PADCTL_HSIC_PADX_CTL0(i32) #1

declare dso_local i32 @XUSB_PADCTL_HSIC_PADX_CTL2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
