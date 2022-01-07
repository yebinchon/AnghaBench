; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/amlogic/extr_phy-meson-g12a-usb2.c_phy_meson_g12a_usb2_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/amlogic/extr_phy-meson-g12a-usb2.c_phy_meson_g12a_usb2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.phy_meson_g12a_usb2_priv = type { i32, i32 }

@RESET_COMPLETE_TIME = common dso_local global i32 0, align 4
@PHY_CTRL_R21 = common dso_local global i32 0, align 4
@PHY_CTRL_R21_USB2_OTG_ACA_EN = common dso_local global i32 0, align 4
@PHY_CTRL_R16 = common dso_local global i32 0, align 4
@PHY_CTRL_R16_MPLL_M = common dso_local global i32 0, align 4
@PHY_CTRL_R16_MPLL_N = common dso_local global i32 0, align 4
@PHY_CTRL_R16_MPLL_LOAD = common dso_local global i32 0, align 4
@PHY_CTRL_R16_MPLL_LOCK_LONG = common dso_local global i32 0, align 4
@PHY_CTRL_R16_MPLL_FAST_LOCK = common dso_local global i32 0, align 4
@PHY_CTRL_R16_MPLL_EN = common dso_local global i32 0, align 4
@PHY_CTRL_R16_MPLL_RESET = common dso_local global i32 0, align 4
@PHY_CTRL_R17 = common dso_local global i32 0, align 4
@PHY_CTRL_R17_MPLL_FRAC_IN = common dso_local global i32 0, align 4
@PHY_CTRL_R17_MPLL_LAMBDA1 = common dso_local global i32 0, align 4
@PHY_CTRL_R17_MPLL_LAMBDA0 = common dso_local global i32 0, align 4
@PHY_CTRL_R17_MPLL_FILTER_PVT2 = common dso_local global i32 0, align 4
@PHY_CTRL_R17_MPLL_FILTER_PVT1 = common dso_local global i32 0, align 4
@PHY_CTRL_R18 = common dso_local global i32 0, align 4
@PHY_CTRL_R18_MPLL_LKW_SEL = common dso_local global i32 0, align 4
@PHY_CTRL_R18_MPLL_LK_W = common dso_local global i32 0, align 4
@PHY_CTRL_R18_MPLL_LK_S = common dso_local global i32 0, align 4
@PHY_CTRL_R18_MPLL_PFD_GAIN = common dso_local global i32 0, align 4
@PHY_CTRL_R18_MPLL_ROU = common dso_local global i32 0, align 4
@PHY_CTRL_R18_MPLL_DATA_SEL = common dso_local global i32 0, align 4
@PHY_CTRL_R18_MPLL_BIAS_ADJ = common dso_local global i32 0, align 4
@PHY_CTRL_R18_MPLL_BB_MODE = common dso_local global i32 0, align 4
@PHY_CTRL_R18_MPLL_ALPHA = common dso_local global i32 0, align 4
@PHY_CTRL_R18_MPLL_ADJ_LDO = common dso_local global i32 0, align 4
@PHY_CTRL_R18_MPLL_ACG_RANGE = common dso_local global i32 0, align 4
@PLL_RESET_COMPLETE_TIME = common dso_local global i32 0, align 4
@PHY_CTRL_R20 = common dso_local global i32 0, align 4
@PHY_CTRL_R20_USB2_OTG_VBUS_TRIM_2_0 = common dso_local global i32 0, align 4
@PHY_CTRL_R20_USB2_OTG_VBUSDET_EN = common dso_local global i32 0, align 4
@PHY_CTRL_R20_USB2_DMON_SEL_3_0 = common dso_local global i32 0, align 4
@PHY_CTRL_R20_USB2_EDGE_DRV_EN = common dso_local global i32 0, align 4
@PHY_CTRL_R20_USB2_EDGE_DRV_TRIM_1_0 = common dso_local global i32 0, align 4
@PHY_CTRL_R20_USB2_BGR_ADJ_4_0 = common dso_local global i32 0, align 4
@PHY_CTRL_R20_USB2_BGR_VREF_4_0 = common dso_local global i32 0, align 4
@PHY_CTRL_R20_USB2_BGR_DBG_1_0 = common dso_local global i32 0, align 4
@PHY_CTRL_R4 = common dso_local global i32 0, align 4
@PHY_CTRL_R4_CALIB_CODE_7_0 = common dso_local global i32 0, align 4
@PHY_CTRL_R4_CALIB_CODE_15_8 = common dso_local global i32 0, align 4
@PHY_CTRL_R4_CALIB_CODE_23_16 = common dso_local global i32 0, align 4
@PHY_CTRL_R4_TEST_BYPASS_MODE_EN = common dso_local global i32 0, align 4
@PHY_CTRL_R4_I_C2L_BIAS_TRIM_1_0 = common dso_local global i32 0, align 4
@PHY_CTRL_R4_I_C2L_BIAS_TRIM_3_2 = common dso_local global i32 0, align 4
@PHY_CTRL_R3 = common dso_local global i32 0, align 4
@PHY_CTRL_R3_SQUELCH_REF = common dso_local global i32 0, align 4
@PHY_CTRL_R3_HSDIC_REF = common dso_local global i32 0, align 4
@PHY_CTRL_R3_DISC_THRESH = common dso_local global i32 0, align 4
@PHY_CTRL_R14 = common dso_local global i32 0, align 4
@PHY_CTRL_R13 = common dso_local global i32 0, align 4
@PHY_CTRL_R13_UPDATE_PMA_SIGNALS = common dso_local global i32 0, align 4
@PHY_CTRL_R13_MIN_COUNT_FOR_SYNC_DET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @phy_meson_g12a_usb2_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_meson_g12a_usb2_init(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.phy_meson_g12a_usb2_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %6 = load %struct.phy*, %struct.phy** %3, align 8
  %7 = call %struct.phy_meson_g12a_usb2_priv* @phy_get_drvdata(%struct.phy* %6)
  store %struct.phy_meson_g12a_usb2_priv* %7, %struct.phy_meson_g12a_usb2_priv** %4, align 8
  %8 = load %struct.phy_meson_g12a_usb2_priv*, %struct.phy_meson_g12a_usb2_priv** %4, align 8
  %9 = getelementptr inbounds %struct.phy_meson_g12a_usb2_priv, %struct.phy_meson_g12a_usb2_priv* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @reset_control_reset(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %196

16:                                               ; preds = %1
  %17 = load i32, i32* @RESET_COMPLETE_TIME, align 4
  %18 = call i32 @udelay(i32 %17)
  %19 = load %struct.phy_meson_g12a_usb2_priv*, %struct.phy_meson_g12a_usb2_priv** %4, align 8
  %20 = getelementptr inbounds %struct.phy_meson_g12a_usb2_priv, %struct.phy_meson_g12a_usb2_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PHY_CTRL_R21, align 4
  %23 = load i32, i32* @PHY_CTRL_R21_USB2_OTG_ACA_EN, align 4
  %24 = call i32 @regmap_update_bits(i32 %21, i32 %22, i32 %23, i32 0)
  %25 = load %struct.phy_meson_g12a_usb2_priv*, %struct.phy_meson_g12a_usb2_priv** %4, align 8
  %26 = getelementptr inbounds %struct.phy_meson_g12a_usb2_priv, %struct.phy_meson_g12a_usb2_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PHY_CTRL_R16, align 4
  %29 = load i32, i32* @PHY_CTRL_R16_MPLL_M, align 4
  %30 = call i32 @FIELD_PREP(i32 %29, i32 20)
  %31 = load i32, i32* @PHY_CTRL_R16_MPLL_N, align 4
  %32 = call i32 @FIELD_PREP(i32 %31, i32 1)
  %33 = or i32 %30, %32
  %34 = load i32, i32* @PHY_CTRL_R16_MPLL_LOAD, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @PHY_CTRL_R16_MPLL_LOCK_LONG, align 4
  %37 = call i32 @FIELD_PREP(i32 %36, i32 1)
  %38 = or i32 %35, %37
  %39 = load i32, i32* @PHY_CTRL_R16_MPLL_FAST_LOCK, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @PHY_CTRL_R16_MPLL_EN, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @PHY_CTRL_R16_MPLL_RESET, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @regmap_write(i32 %27, i32 %28, i32 %44)
  %46 = load %struct.phy_meson_g12a_usb2_priv*, %struct.phy_meson_g12a_usb2_priv** %4, align 8
  %47 = getelementptr inbounds %struct.phy_meson_g12a_usb2_priv, %struct.phy_meson_g12a_usb2_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PHY_CTRL_R17, align 4
  %50 = load i32, i32* @PHY_CTRL_R17_MPLL_FRAC_IN, align 4
  %51 = call i32 @FIELD_PREP(i32 %50, i32 0)
  %52 = load i32, i32* @PHY_CTRL_R17_MPLL_LAMBDA1, align 4
  %53 = call i32 @FIELD_PREP(i32 %52, i32 7)
  %54 = or i32 %51, %53
  %55 = load i32, i32* @PHY_CTRL_R17_MPLL_LAMBDA0, align 4
  %56 = call i32 @FIELD_PREP(i32 %55, i32 7)
  %57 = or i32 %54, %56
  %58 = load i32, i32* @PHY_CTRL_R17_MPLL_FILTER_PVT2, align 4
  %59 = call i32 @FIELD_PREP(i32 %58, i32 2)
  %60 = or i32 %57, %59
  %61 = load i32, i32* @PHY_CTRL_R17_MPLL_FILTER_PVT1, align 4
  %62 = call i32 @FIELD_PREP(i32 %61, i32 9)
  %63 = or i32 %60, %62
  %64 = call i32 @regmap_write(i32 %48, i32 %49, i32 %63)
  %65 = load %struct.phy_meson_g12a_usb2_priv*, %struct.phy_meson_g12a_usb2_priv** %4, align 8
  %66 = getelementptr inbounds %struct.phy_meson_g12a_usb2_priv, %struct.phy_meson_g12a_usb2_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PHY_CTRL_R18, align 4
  %69 = load i32, i32* @PHY_CTRL_R18_MPLL_LKW_SEL, align 4
  %70 = call i32 @FIELD_PREP(i32 %69, i32 1)
  %71 = load i32, i32* @PHY_CTRL_R18_MPLL_LK_W, align 4
  %72 = call i32 @FIELD_PREP(i32 %71, i32 9)
  %73 = or i32 %70, %72
  %74 = load i32, i32* @PHY_CTRL_R18_MPLL_LK_S, align 4
  %75 = call i32 @FIELD_PREP(i32 %74, i32 39)
  %76 = or i32 %73, %75
  %77 = load i32, i32* @PHY_CTRL_R18_MPLL_PFD_GAIN, align 4
  %78 = call i32 @FIELD_PREP(i32 %77, i32 1)
  %79 = or i32 %76, %78
  %80 = load i32, i32* @PHY_CTRL_R18_MPLL_ROU, align 4
  %81 = call i32 @FIELD_PREP(i32 %80, i32 7)
  %82 = or i32 %79, %81
  %83 = load i32, i32* @PHY_CTRL_R18_MPLL_DATA_SEL, align 4
  %84 = call i32 @FIELD_PREP(i32 %83, i32 3)
  %85 = or i32 %82, %84
  %86 = load i32, i32* @PHY_CTRL_R18_MPLL_BIAS_ADJ, align 4
  %87 = call i32 @FIELD_PREP(i32 %86, i32 1)
  %88 = or i32 %85, %87
  %89 = load i32, i32* @PHY_CTRL_R18_MPLL_BB_MODE, align 4
  %90 = call i32 @FIELD_PREP(i32 %89, i32 0)
  %91 = or i32 %88, %90
  %92 = load i32, i32* @PHY_CTRL_R18_MPLL_ALPHA, align 4
  %93 = call i32 @FIELD_PREP(i32 %92, i32 3)
  %94 = or i32 %91, %93
  %95 = load i32, i32* @PHY_CTRL_R18_MPLL_ADJ_LDO, align 4
  %96 = call i32 @FIELD_PREP(i32 %95, i32 1)
  %97 = or i32 %94, %96
  %98 = load i32, i32* @PHY_CTRL_R18_MPLL_ACG_RANGE, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @regmap_write(i32 %67, i32 %68, i32 %99)
  %101 = load i32, i32* @PLL_RESET_COMPLETE_TIME, align 4
  %102 = call i32 @udelay(i32 %101)
  %103 = load %struct.phy_meson_g12a_usb2_priv*, %struct.phy_meson_g12a_usb2_priv** %4, align 8
  %104 = getelementptr inbounds %struct.phy_meson_g12a_usb2_priv, %struct.phy_meson_g12a_usb2_priv* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @PHY_CTRL_R16, align 4
  %107 = load i32, i32* @PHY_CTRL_R16_MPLL_M, align 4
  %108 = call i32 @FIELD_PREP(i32 %107, i32 20)
  %109 = load i32, i32* @PHY_CTRL_R16_MPLL_N, align 4
  %110 = call i32 @FIELD_PREP(i32 %109, i32 1)
  %111 = or i32 %108, %110
  %112 = load i32, i32* @PHY_CTRL_R16_MPLL_LOAD, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @PHY_CTRL_R16_MPLL_LOCK_LONG, align 4
  %115 = call i32 @FIELD_PREP(i32 %114, i32 1)
  %116 = or i32 %113, %115
  %117 = load i32, i32* @PHY_CTRL_R16_MPLL_FAST_LOCK, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @PHY_CTRL_R16_MPLL_EN, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @regmap_write(i32 %105, i32 %106, i32 %120)
  %122 = load %struct.phy_meson_g12a_usb2_priv*, %struct.phy_meson_g12a_usb2_priv** %4, align 8
  %123 = getelementptr inbounds %struct.phy_meson_g12a_usb2_priv, %struct.phy_meson_g12a_usb2_priv* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @PHY_CTRL_R20, align 4
  %126 = load i32, i32* @PHY_CTRL_R20_USB2_OTG_VBUS_TRIM_2_0, align 4
  %127 = call i32 @FIELD_PREP(i32 %126, i32 4)
  %128 = load i32, i32* @PHY_CTRL_R20_USB2_OTG_VBUSDET_EN, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @PHY_CTRL_R20_USB2_DMON_SEL_3_0, align 4
  %131 = call i32 @FIELD_PREP(i32 %130, i32 15)
  %132 = or i32 %129, %131
  %133 = load i32, i32* @PHY_CTRL_R20_USB2_EDGE_DRV_EN, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @PHY_CTRL_R20_USB2_EDGE_DRV_TRIM_1_0, align 4
  %136 = call i32 @FIELD_PREP(i32 %135, i32 3)
  %137 = or i32 %134, %136
  %138 = load i32, i32* @PHY_CTRL_R20_USB2_BGR_ADJ_4_0, align 4
  %139 = call i32 @FIELD_PREP(i32 %138, i32 0)
  %140 = or i32 %137, %139
  %141 = load i32, i32* @PHY_CTRL_R20_USB2_BGR_VREF_4_0, align 4
  %142 = call i32 @FIELD_PREP(i32 %141, i32 0)
  %143 = or i32 %140, %142
  %144 = load i32, i32* @PHY_CTRL_R20_USB2_BGR_DBG_1_0, align 4
  %145 = call i32 @FIELD_PREP(i32 %144, i32 0)
  %146 = or i32 %143, %145
  %147 = call i32 @regmap_write(i32 %124, i32 %125, i32 %146)
  %148 = load %struct.phy_meson_g12a_usb2_priv*, %struct.phy_meson_g12a_usb2_priv** %4, align 8
  %149 = getelementptr inbounds %struct.phy_meson_g12a_usb2_priv, %struct.phy_meson_g12a_usb2_priv* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @PHY_CTRL_R4, align 4
  %152 = load i32, i32* @PHY_CTRL_R4_CALIB_CODE_7_0, align 4
  %153 = call i32 @FIELD_PREP(i32 %152, i32 15)
  %154 = load i32, i32* @PHY_CTRL_R4_CALIB_CODE_15_8, align 4
  %155 = call i32 @FIELD_PREP(i32 %154, i32 15)
  %156 = or i32 %153, %155
  %157 = load i32, i32* @PHY_CTRL_R4_CALIB_CODE_23_16, align 4
  %158 = call i32 @FIELD_PREP(i32 %157, i32 15)
  %159 = or i32 %156, %158
  %160 = load i32, i32* @PHY_CTRL_R4_TEST_BYPASS_MODE_EN, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @PHY_CTRL_R4_I_C2L_BIAS_TRIM_1_0, align 4
  %163 = call i32 @FIELD_PREP(i32 %162, i32 0)
  %164 = or i32 %161, %163
  %165 = load i32, i32* @PHY_CTRL_R4_I_C2L_BIAS_TRIM_3_2, align 4
  %166 = call i32 @FIELD_PREP(i32 %165, i32 0)
  %167 = or i32 %164, %166
  %168 = call i32 @regmap_write(i32 %150, i32 %151, i32 %167)
  %169 = load %struct.phy_meson_g12a_usb2_priv*, %struct.phy_meson_g12a_usb2_priv** %4, align 8
  %170 = getelementptr inbounds %struct.phy_meson_g12a_usb2_priv, %struct.phy_meson_g12a_usb2_priv* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @PHY_CTRL_R3, align 4
  %173 = load i32, i32* @PHY_CTRL_R3_SQUELCH_REF, align 4
  %174 = call i32 @FIELD_PREP(i32 %173, i32 0)
  %175 = load i32, i32* @PHY_CTRL_R3_HSDIC_REF, align 4
  %176 = call i32 @FIELD_PREP(i32 %175, i32 1)
  %177 = or i32 %174, %176
  %178 = load i32, i32* @PHY_CTRL_R3_DISC_THRESH, align 4
  %179 = call i32 @FIELD_PREP(i32 %178, i32 3)
  %180 = or i32 %177, %179
  %181 = call i32 @regmap_write(i32 %171, i32 %172, i32 %180)
  %182 = load %struct.phy_meson_g12a_usb2_priv*, %struct.phy_meson_g12a_usb2_priv** %4, align 8
  %183 = getelementptr inbounds %struct.phy_meson_g12a_usb2_priv, %struct.phy_meson_g12a_usb2_priv* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @PHY_CTRL_R14, align 4
  %186 = call i32 @regmap_write(i32 %184, i32 %185, i32 0)
  %187 = load %struct.phy_meson_g12a_usb2_priv*, %struct.phy_meson_g12a_usb2_priv** %4, align 8
  %188 = getelementptr inbounds %struct.phy_meson_g12a_usb2_priv, %struct.phy_meson_g12a_usb2_priv* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @PHY_CTRL_R13, align 4
  %191 = load i32, i32* @PHY_CTRL_R13_UPDATE_PMA_SIGNALS, align 4
  %192 = load i32, i32* @PHY_CTRL_R13_MIN_COUNT_FOR_SYNC_DET, align 4
  %193 = call i32 @FIELD_PREP(i32 %192, i32 7)
  %194 = or i32 %191, %193
  %195 = call i32 @regmap_write(i32 %189, i32 %190, i32 %194)
  store i32 0, i32* %2, align 4
  br label %196

196:                                              ; preds = %16, %14
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local %struct.phy_meson_g12a_usb2_priv* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @reset_control_reset(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
