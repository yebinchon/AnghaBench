; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra124.c_tegra124_usb2_phy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra124.c_tegra124_usb2_phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.tegra_xusb_lane = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.tegra_xusb_padctl* }
%struct.tegra_xusb_padctl = type { i32 }
%struct.tegra_xusb_usb2_lane = type { i32 }
%struct.tegra_xusb_usb2_pad = type { i32, i32 }
%struct.tegra124_xusb_padctl = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32*, i32, i32 }
%struct.tegra_xusb_usb2_port = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"no port found for USB2 lane %u\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@XUSB_PADCTL_USB2_BIAS_PAD_CTL0 = common dso_local global i32 0, align 4
@XUSB_PADCTL_USB2_BIAS_PAD_CTL0_HS_SQUELCH_LEVEL_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_USB2_BIAS_PAD_CTL0_HS_SQUELCH_LEVEL_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_USB2_BIAS_PAD_CTL0_HS_DISCON_LEVEL_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_USB2_BIAS_PAD_CTL0_HS_DISCON_LEVEL_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_USB2_BIAS_PAD_CTL0_HS_DISCON_LEVEL_VAL = common dso_local global i32 0, align 4
@XUSB_PADCTL_USB2_PORT_CAP = common dso_local global i32 0, align 4
@XUSB_PADCTL_USB2_PORT_CAP_PORT_CAP_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_USB2_PORT_CAP_HOST = common dso_local global i32 0, align 4
@XUSB_PADCTL_USB2_OTG_PAD_CTL0_HS_CURR_LEVEL_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_USB2_OTG_PAD_CTL0_HS_CURR_LEVEL_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_USB2_OTG_PAD_CTL0_HS_SLEW_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_USB2_OTG_PAD_CTL0_HS_SLEW_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_USB2_OTG_PAD_CTL0_LS_RSLEW_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_USB2_OTG_PAD_CTL0_LS_RSLEW_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_USB2_OTG_PAD_CTL0_PD = common dso_local global i32 0, align 4
@XUSB_PADCTL_USB2_OTG_PAD_CTL0_PD2 = common dso_local global i32 0, align 4
@XUSB_PADCTL_USB2_OTG_PAD_CTL0_PD_ZI = common dso_local global i32 0, align 4
@XUSB_PADCTL_USB2_OTG_PAD_CTL0_HS_SLEW_VAL = common dso_local global i32 0, align 4
@XUSB_PADCTL_USB2_OTG_PAD_CTL1_TERM_RANGE_ADJ_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_USB2_OTG_PAD_CTL1_TERM_RANGE_ADJ_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_USB2_OTG_PAD_CTL1_HS_IREF_CAP_MASK = common dso_local global i32 0, align 4
@XUSB_PADCTL_USB2_OTG_PAD_CTL1_HS_IREF_CAP_SHIFT = common dso_local global i32 0, align 4
@XUSB_PADCTL_USB2_OTG_PAD_CTL1_PD_DR = common dso_local global i32 0, align 4
@XUSB_PADCTL_USB2_OTG_PAD_CTL1_PD_CHRP_FORCE_POWERUP = common dso_local global i32 0, align 4
@XUSB_PADCTL_USB2_OTG_PAD_CTL1_PD_DISC_FORCE_POWERUP = common dso_local global i32 0, align 4
@XUSB_PADCTL_USB2_BIAS_PAD_CTL0_PD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @tegra124_usb2_phy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra124_usb2_phy_power_on(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.tegra_xusb_lane*, align 8
  %5 = alloca %struct.tegra_xusb_usb2_lane*, align 8
  %6 = alloca %struct.tegra_xusb_usb2_pad*, align 8
  %7 = alloca %struct.tegra_xusb_padctl*, align 8
  %8 = alloca %struct.tegra124_xusb_padctl*, align 8
  %9 = alloca %struct.tegra_xusb_usb2_port*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %13 = load %struct.phy*, %struct.phy** %3, align 8
  %14 = call %struct.tegra_xusb_lane* @phy_get_drvdata(%struct.phy* %13)
  store %struct.tegra_xusb_lane* %14, %struct.tegra_xusb_lane** %4, align 8
  %15 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %4, align 8
  %16 = call %struct.tegra_xusb_usb2_lane* @to_usb2_lane(%struct.tegra_xusb_lane* %15)
  store %struct.tegra_xusb_usb2_lane* %16, %struct.tegra_xusb_usb2_lane** %5, align 8
  %17 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %4, align 8
  %18 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = call %struct.tegra_xusb_usb2_pad* @to_usb2_pad(%struct.TYPE_4__* %19)
  store %struct.tegra_xusb_usb2_pad* %20, %struct.tegra_xusb_usb2_pad** %6, align 8
  %21 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %4, align 8
  %22 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %24, align 8
  store %struct.tegra_xusb_padctl* %25, %struct.tegra_xusb_padctl** %7, align 8
  %26 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %4, align 8
  %27 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %10, align 4
  %29 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call %struct.tegra_xusb_usb2_port* @tegra_xusb_find_usb2_port(%struct.tegra_xusb_padctl* %29, i32 %30)
  store %struct.tegra_xusb_usb2_port* %31, %struct.tegra_xusb_usb2_port** %9, align 8
  %32 = load %struct.tegra_xusb_usb2_port*, %struct.tegra_xusb_usb2_port** %9, align 8
  %33 = icmp ne %struct.tegra_xusb_usb2_port* %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %1
  %35 = load %struct.phy*, %struct.phy** %3, align 8
  %36 = getelementptr inbounds %struct.phy, %struct.phy* %35, i32 0, i32 0
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %223

41:                                               ; preds = %1
  %42 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %43 = call %struct.tegra124_xusb_padctl* @to_tegra124_xusb_padctl(%struct.tegra_xusb_padctl* %42)
  store %struct.tegra124_xusb_padctl* %43, %struct.tegra124_xusb_padctl** %8, align 8
  %44 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %45 = load i32, i32* @XUSB_PADCTL_USB2_BIAS_PAD_CTL0, align 4
  %46 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %44, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* @XUSB_PADCTL_USB2_BIAS_PAD_CTL0_HS_SQUELCH_LEVEL_MASK, align 4
  %48 = load i32, i32* @XUSB_PADCTL_USB2_BIAS_PAD_CTL0_HS_SQUELCH_LEVEL_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* @XUSB_PADCTL_USB2_BIAS_PAD_CTL0_HS_DISCON_LEVEL_MASK, align 4
  %51 = load i32, i32* @XUSB_PADCTL_USB2_BIAS_PAD_CTL0_HS_DISCON_LEVEL_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = or i32 %49, %52
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %11, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %11, align 4
  %57 = load %struct.tegra124_xusb_padctl*, %struct.tegra124_xusb_padctl** %8, align 8
  %58 = getelementptr inbounds %struct.tegra124_xusb_padctl, %struct.tegra124_xusb_padctl* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @XUSB_PADCTL_USB2_BIAS_PAD_CTL0_HS_SQUELCH_LEVEL_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* @XUSB_PADCTL_USB2_BIAS_PAD_CTL0_HS_DISCON_LEVEL_VAL, align 4
  %64 = load i32, i32* @XUSB_PADCTL_USB2_BIAS_PAD_CTL0_HS_DISCON_LEVEL_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = or i32 %62, %65
  %67 = load i32, i32* %11, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %11, align 4
  %69 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @XUSB_PADCTL_USB2_BIAS_PAD_CTL0, align 4
  %72 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %69, i32 %70, i32 %71)
  %73 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %74 = load i32, i32* @XUSB_PADCTL_USB2_PORT_CAP, align 4
  %75 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %73, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* @XUSB_PADCTL_USB2_PORT_CAP_PORT_CAP_MASK, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @XUSB_PADCTL_USB2_PORT_CAP_PORTX_CAP_SHIFT(i32 %77)
  %79 = shl i32 %76, %78
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %11, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* @XUSB_PADCTL_USB2_PORT_CAP_HOST, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @XUSB_PADCTL_USB2_PORT_CAP_PORTX_CAP_SHIFT(i32 %84)
  %86 = shl i32 %83, %85
  %87 = load i32, i32* %11, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %11, align 4
  %89 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @XUSB_PADCTL_USB2_PORT_CAP, align 4
  %92 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %89, i32 %90, i32 %91)
  %93 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @XUSB_PADCTL_USB2_OTG_PADX_CTL0(i32 %94)
  %96 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %93, i32 %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* @XUSB_PADCTL_USB2_OTG_PAD_CTL0_HS_CURR_LEVEL_MASK, align 4
  %98 = load i32, i32* @XUSB_PADCTL_USB2_OTG_PAD_CTL0_HS_CURR_LEVEL_SHIFT, align 4
  %99 = shl i32 %97, %98
  %100 = load i32, i32* @XUSB_PADCTL_USB2_OTG_PAD_CTL0_HS_SLEW_MASK, align 4
  %101 = load i32, i32* @XUSB_PADCTL_USB2_OTG_PAD_CTL0_HS_SLEW_SHIFT, align 4
  %102 = shl i32 %100, %101
  %103 = or i32 %99, %102
  %104 = load i32, i32* @XUSB_PADCTL_USB2_OTG_PAD_CTL0_LS_RSLEW_MASK, align 4
  %105 = load i32, i32* @XUSB_PADCTL_USB2_OTG_PAD_CTL0_LS_RSLEW_SHIFT, align 4
  %106 = shl i32 %104, %105
  %107 = or i32 %103, %106
  %108 = load i32, i32* @XUSB_PADCTL_USB2_OTG_PAD_CTL0_PD, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @XUSB_PADCTL_USB2_OTG_PAD_CTL0_PD2, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @XUSB_PADCTL_USB2_OTG_PAD_CTL0_PD_ZI, align 4
  %113 = or i32 %111, %112
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %11, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %11, align 4
  %117 = load %struct.tegra124_xusb_padctl*, %struct.tegra124_xusb_padctl** %8, align 8
  %118 = getelementptr inbounds %struct.tegra124_xusb_padctl, %struct.tegra124_xusb_padctl* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.tegra_xusb_usb2_lane*, %struct.tegra_xusb_usb2_lane** %5, align 8
  %126 = getelementptr inbounds %struct.tegra_xusb_usb2_lane, %struct.tegra_xusb_usb2_lane* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %124, %127
  %129 = load i32, i32* @XUSB_PADCTL_USB2_OTG_PAD_CTL0_HS_CURR_LEVEL_SHIFT, align 4
  %130 = shl i32 %128, %129
  %131 = load i32, i32* %11, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* @XUSB_PADCTL_USB2_OTG_PAD_CTL0_HS_SLEW_VAL, align 4
  %134 = load i32, i32* @XUSB_PADCTL_USB2_OTG_PAD_CTL0_HS_SLEW_SHIFT, align 4
  %135 = shl i32 %133, %134
  %136 = load i32, i32* %11, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @XUSB_PADCTL_USB2_OTG_PAD_CTL0_LS_RSLEW_VAL(i32 %138)
  %140 = load i32, i32* @XUSB_PADCTL_USB2_OTG_PAD_CTL0_LS_RSLEW_SHIFT, align 4
  %141 = shl i32 %139, %140
  %142 = load i32, i32* %11, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %11, align 4
  %144 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @XUSB_PADCTL_USB2_OTG_PADX_CTL0(i32 %146)
  %148 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %144, i32 %145, i32 %147)
  %149 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @XUSB_PADCTL_USB2_OTG_PADX_CTL1(i32 %150)
  %152 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %149, i32 %151)
  store i32 %152, i32* %11, align 4
  %153 = load i32, i32* @XUSB_PADCTL_USB2_OTG_PAD_CTL1_TERM_RANGE_ADJ_MASK, align 4
  %154 = load i32, i32* @XUSB_PADCTL_USB2_OTG_PAD_CTL1_TERM_RANGE_ADJ_SHIFT, align 4
  %155 = shl i32 %153, %154
  %156 = load i32, i32* @XUSB_PADCTL_USB2_OTG_PAD_CTL1_HS_IREF_CAP_MASK, align 4
  %157 = load i32, i32* @XUSB_PADCTL_USB2_OTG_PAD_CTL1_HS_IREF_CAP_SHIFT, align 4
  %158 = shl i32 %156, %157
  %159 = or i32 %155, %158
  %160 = load i32, i32* @XUSB_PADCTL_USB2_OTG_PAD_CTL1_PD_DR, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @XUSB_PADCTL_USB2_OTG_PAD_CTL1_PD_CHRP_FORCE_POWERUP, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @XUSB_PADCTL_USB2_OTG_PAD_CTL1_PD_DISC_FORCE_POWERUP, align 4
  %165 = or i32 %163, %164
  %166 = xor i32 %165, -1
  %167 = load i32, i32* %11, align 4
  %168 = and i32 %167, %166
  store i32 %168, i32* %11, align 4
  %169 = load %struct.tegra124_xusb_padctl*, %struct.tegra124_xusb_padctl** %8, align 8
  %170 = getelementptr inbounds %struct.tegra124_xusb_padctl, %struct.tegra124_xusb_padctl* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @XUSB_PADCTL_USB2_OTG_PAD_CTL1_TERM_RANGE_ADJ_SHIFT, align 4
  %174 = shl i32 %172, %173
  %175 = load %struct.tegra124_xusb_padctl*, %struct.tegra124_xusb_padctl** %8, align 8
  %176 = getelementptr inbounds %struct.tegra124_xusb_padctl, %struct.tegra124_xusb_padctl* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @XUSB_PADCTL_USB2_OTG_PAD_CTL1_HS_IREF_CAP_SHIFT, align 4
  %180 = shl i32 %178, %179
  %181 = or i32 %174, %180
  %182 = load i32, i32* %11, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %11, align 4
  %184 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* %10, align 4
  %187 = call i32 @XUSB_PADCTL_USB2_OTG_PADX_CTL1(i32 %186)
  %188 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %184, i32 %185, i32 %187)
  %189 = load %struct.tegra_xusb_usb2_port*, %struct.tegra_xusb_usb2_port** %9, align 8
  %190 = getelementptr inbounds %struct.tegra_xusb_usb2_port, %struct.tegra_xusb_usb2_port* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @regulator_enable(i32 %191)
  store i32 %192, i32* %12, align 4
  %193 = load i32, i32* %12, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %41
  %196 = load i32, i32* %12, align 4
  store i32 %196, i32* %2, align 4
  br label %223

197:                                              ; preds = %41
  %198 = load %struct.tegra_xusb_usb2_pad*, %struct.tegra_xusb_usb2_pad** %6, align 8
  %199 = getelementptr inbounds %struct.tegra_xusb_usb2_pad, %struct.tegra_xusb_usb2_pad* %198, i32 0, i32 0
  %200 = call i32 @mutex_lock(i32* %199)
  %201 = load %struct.tegra_xusb_usb2_pad*, %struct.tegra_xusb_usb2_pad** %6, align 8
  %202 = getelementptr inbounds %struct.tegra_xusb_usb2_pad, %struct.tegra_xusb_usb2_pad* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %202, align 4
  %205 = icmp sgt i32 %203, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %197
  br label %219

207:                                              ; preds = %197
  %208 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %209 = load i32, i32* @XUSB_PADCTL_USB2_BIAS_PAD_CTL0, align 4
  %210 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %208, i32 %209)
  store i32 %210, i32* %11, align 4
  %211 = load i32, i32* @XUSB_PADCTL_USB2_BIAS_PAD_CTL0_PD, align 4
  %212 = xor i32 %211, -1
  %213 = load i32, i32* %11, align 4
  %214 = and i32 %213, %212
  store i32 %214, i32* %11, align 4
  %215 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %7, align 8
  %216 = load i32, i32* %11, align 4
  %217 = load i32, i32* @XUSB_PADCTL_USB2_BIAS_PAD_CTL0, align 4
  %218 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %215, i32 %216, i32 %217)
  br label %219

219:                                              ; preds = %207, %206
  %220 = load %struct.tegra_xusb_usb2_pad*, %struct.tegra_xusb_usb2_pad** %6, align 8
  %221 = getelementptr inbounds %struct.tegra_xusb_usb2_pad, %struct.tegra_xusb_usb2_pad* %220, i32 0, i32 0
  %222 = call i32 @mutex_unlock(i32* %221)
  store i32 0, i32* %2, align 4
  br label %223

223:                                              ; preds = %219, %195, %34
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local %struct.tegra_xusb_lane* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.tegra_xusb_usb2_lane* @to_usb2_lane(%struct.tegra_xusb_lane*) #1

declare dso_local %struct.tegra_xusb_usb2_pad* @to_usb2_pad(%struct.TYPE_4__*) #1

declare dso_local %struct.tegra_xusb_usb2_port* @tegra_xusb_find_usb2_port(%struct.tegra_xusb_padctl*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.tegra124_xusb_padctl* @to_tegra124_xusb_padctl(%struct.tegra_xusb_padctl*) #1

declare dso_local i32 @padctl_readl(%struct.tegra_xusb_padctl*, i32) #1

declare dso_local i32 @padctl_writel(%struct.tegra_xusb_padctl*, i32, i32) #1

declare dso_local i32 @XUSB_PADCTL_USB2_PORT_CAP_PORTX_CAP_SHIFT(i32) #1

declare dso_local i32 @XUSB_PADCTL_USB2_OTG_PADX_CTL0(i32) #1

declare dso_local i32 @XUSB_PADCTL_USB2_OTG_PAD_CTL0_LS_RSLEW_VAL(i32) #1

declare dso_local i32 @XUSB_PADCTL_USB2_OTG_PADX_CTL1(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
