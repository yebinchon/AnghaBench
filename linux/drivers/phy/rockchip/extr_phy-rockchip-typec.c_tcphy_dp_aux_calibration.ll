; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-typec.c_tcphy_dp_aux_calibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-typec.c_tcphy_dp_aux_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_typec_phy = type { i64 }

@CMN_TXPUCAL_CTRL = common dso_local global i64 0, align 8
@CMN_TXPDCAL_CTRL = common dso_local global i64 0, align 8
@CMN_TXPU_ADJ_CTRL = common dso_local global i64 0, align 8
@CMN_TXPD_ADJ_CTRL = common dso_local global i64 0, align 8
@TX_ANA_CTRL_REG_1 = common dso_local global i64 0, align 8
@TXDA_CAL_LATCH_EN = common dso_local global i32 0, align 4
@TX_DIG_CTRL_REG_2 = common dso_local global i64 0, align 8
@TX_RESCAL_CODE_MASK = common dso_local global i32 0, align 4
@TX_RESCAL_CODE_OFFSET = common dso_local global i32 0, align 4
@PHY_DP_TX_CTL = common dso_local global i64 0, align 8
@XCVR_DECAP_EN = common dso_local global i32 0, align 4
@TX_ANA_CTRL_REG_2 = common dso_local global i64 0, align 8
@XCVR_DECAP_EN_DEL = common dso_local global i32 0, align 4
@TX_ANA_CTRL_REG_3 = common dso_local global i64 0, align 8
@TXDA_UPHY_SUPPLY_EN = common dso_local global i32 0, align 4
@TXDA_UPHY_SUPPLY_EN_DEL = common dso_local global i32 0, align 4
@TX_ANA_CTRL_REG_5 = common dso_local global i64 0, align 8
@TX_ANA_CTRL_REG_4 = common dso_local global i64 0, align 8
@TXDA_DRV_LDO_EN = common dso_local global i32 0, align 4
@TXDA_BGREF_EN = common dso_local global i32 0, align 4
@TXDA_DRV_PREDRV_EN = common dso_local global i32 0, align 4
@TXDA_DRV_PREDRV_EN_DEL = common dso_local global i32 0, align 4
@TXDA_DP_AUX_EN = common dso_local global i32 0, align 4
@TXDA_DECAP_EN = common dso_local global i32 0, align 4
@TXDA_DECAP_EN_DEL = common dso_local global i32 0, align 4
@TXDA_COEFF_CALC_CTRL = common dso_local global i64 0, align 8
@TXDA_CYA_AUXDA_CYA = common dso_local global i64 0, align 8
@TX_HIGH_Z_TM_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rockchip_typec_phy*)* @tcphy_dp_aux_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcphy_dp_aux_calibration(%struct.rockchip_typec_phy* %0) #0 {
  %2 = alloca %struct.rockchip_typec_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rockchip_typec_phy* %0, %struct.rockchip_typec_phy** %2, align 8
  %11 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %12 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CMN_TXPUCAL_CTRL, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @CMN_CALIB_CODE_POS(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %20 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CMN_TXPDCAL_CTRL, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @CMN_CALIB_CODE_POS(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %28 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CMN_TXPU_ADJ_CTRL, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readl(i64 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @CMN_CALIB_CODE(i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %36 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CMN_TXPD_ADJ_CTRL, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @readl(i64 %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @CMN_CALIB_CODE(i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %43, %44
  %46 = sdiv i32 %45, 2
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %10, align 4
  %51 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %52 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TX_ANA_CTRL_REG_1, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @readl(i64 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* @TXDA_CAL_LATCH_EN, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %63 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TX_ANA_CTRL_REG_1, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 %61, i64 %66)
  %68 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %69 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @TX_DIG_CTRL_REG_2, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @readl(i64 %72)
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* @TX_RESCAL_CODE_MASK, align 4
  %75 = load i32, i32* @TX_RESCAL_CODE_OFFSET, align 4
  %76 = shl i32 %74, %75
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %3, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %3, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @TX_RESCAL_CODE_OFFSET, align 4
  %82 = shl i32 %80, %81
  %83 = load i32, i32* %3, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* %3, align 4
  %86 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %87 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @TX_DIG_CTRL_REG_2, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel(i32 %85, i64 %90)
  %92 = call i32 @usleep_range(i32 10000, i32 10050)
  %93 = load i32, i32* @TXDA_CAL_LATCH_EN, align 4
  %94 = load i32, i32* %4, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %98 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @TX_ANA_CTRL_REG_1, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @writel(i32 %96, i64 %101)
  %103 = call i32 @usleep_range(i32 150, i32 200)
  %104 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %105 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @PHY_DP_TX_CTL, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @writel(i32 0, i64 %108)
  %110 = load i32, i32* @XCVR_DECAP_EN, align 4
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %113 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @TX_ANA_CTRL_REG_2, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @writel(i32 %111, i64 %116)
  %118 = call i32 @udelay(i32 1)
  %119 = load i32, i32* @XCVR_DECAP_EN_DEL, align 4
  %120 = load i32, i32* %5, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %124 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @TX_ANA_CTRL_REG_2, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @writel(i32 %122, i64 %127)
  %129 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %130 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @TX_ANA_CTRL_REG_3, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @writel(i32 0, i64 %133)
  %135 = load i32, i32* @TXDA_UPHY_SUPPLY_EN, align 4
  %136 = load i32, i32* %4, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %4, align 4
  %138 = load i32, i32* %4, align 4
  %139 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %140 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @TX_ANA_CTRL_REG_1, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @writel(i32 %138, i64 %143)
  %145 = call i32 @udelay(i32 1)
  %146 = load i32, i32* @TXDA_UPHY_SUPPLY_EN_DEL, align 4
  %147 = load i32, i32* %4, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %4, align 4
  %149 = load i32, i32* %4, align 4
  %150 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %151 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @TX_ANA_CTRL_REG_1, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @writel(i32 %149, i64 %154)
  %156 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %157 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @TX_ANA_CTRL_REG_5, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 @writel(i32 0, i64 %160)
  %162 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %163 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @TX_ANA_CTRL_REG_4, align 8
  %166 = add nsw i64 %164, %165
  %167 = call i32 @writel(i32 4097, i64 %166)
  %168 = load i32, i32* @TXDA_DRV_LDO_EN, align 4
  %169 = load i32, i32* %4, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %4, align 4
  %171 = load i32, i32* %4, align 4
  %172 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %173 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @TX_ANA_CTRL_REG_1, align 8
  %176 = add nsw i64 %174, %175
  %177 = call i32 @writel(i32 %171, i64 %176)
  %178 = call i32 @udelay(i32 5)
  %179 = load i32, i32* @TXDA_BGREF_EN, align 4
  %180 = load i32, i32* %4, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %4, align 4
  %182 = load i32, i32* %4, align 4
  %183 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %184 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @TX_ANA_CTRL_REG_1, align 8
  %187 = add nsw i64 %185, %186
  %188 = call i32 @writel(i32 %182, i64 %187)
  %189 = load i32, i32* @TXDA_DRV_PREDRV_EN, align 4
  %190 = load i32, i32* %5, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %5, align 4
  %192 = load i32, i32* %5, align 4
  %193 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %194 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @TX_ANA_CTRL_REG_2, align 8
  %197 = add nsw i64 %195, %196
  %198 = call i32 @writel(i32 %192, i64 %197)
  %199 = call i32 @udelay(i32 1)
  %200 = load i32, i32* @TXDA_DRV_PREDRV_EN_DEL, align 4
  %201 = load i32, i32* %5, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %5, align 4
  %203 = load i32, i32* %5, align 4
  %204 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %205 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @TX_ANA_CTRL_REG_2, align 8
  %208 = add nsw i64 %206, %207
  %209 = call i32 @writel(i32 %203, i64 %208)
  %210 = load i32, i32* @TXDA_DP_AUX_EN, align 4
  %211 = load i32, i32* %4, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %4, align 4
  %213 = load i32, i32* @TXDA_DECAP_EN, align 4
  %214 = load i32, i32* %4, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %4, align 4
  %216 = load i32, i32* @TXDA_DRV_LDO_EN, align 4
  %217 = xor i32 %216, -1
  %218 = load i32, i32* %4, align 4
  %219 = and i32 %218, %217
  store i32 %219, i32* %4, align 4
  %220 = load i32, i32* @TXDA_BGREF_EN, align 4
  %221 = xor i32 %220, -1
  %222 = load i32, i32* %4, align 4
  %223 = and i32 %222, %221
  store i32 %223, i32* %4, align 4
  %224 = load i32, i32* %4, align 4
  %225 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %226 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @TX_ANA_CTRL_REG_1, align 8
  %229 = add nsw i64 %227, %228
  %230 = call i32 @writel(i32 %224, i64 %229)
  %231 = call i32 @udelay(i32 1)
  %232 = load i32, i32* @TXDA_DECAP_EN_DEL, align 4
  %233 = load i32, i32* %4, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %4, align 4
  %235 = load i32, i32* %4, align 4
  %236 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %237 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @TX_ANA_CTRL_REG_1, align 8
  %240 = add nsw i64 %238, %239
  %241 = call i32 @writel(i32 %235, i64 %240)
  %242 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %243 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @TX_ANA_CTRL_REG_4, align 8
  %246 = add nsw i64 %244, %245
  %247 = call i32 @writel(i32 0, i64 %246)
  %248 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %249 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @TXDA_COEFF_CALC_CTRL, align 8
  %252 = add nsw i64 %250, %251
  %253 = call i32 @writel(i32 0, i64 %252)
  %254 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %255 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @TXDA_CYA_AUXDA_CYA, align 8
  %258 = add nsw i64 %256, %257
  %259 = call i32 @writel(i32 0, i64 %258)
  %260 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %261 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @TX_DIG_CTRL_REG_2, align 8
  %264 = add nsw i64 %262, %263
  %265 = call i32 @readl(i64 %264)
  store i32 %265, i32* %3, align 4
  %266 = load i32, i32* @TX_HIGH_Z_TM_EN, align 4
  %267 = load i32, i32* %3, align 4
  %268 = or i32 %267, %266
  store i32 %268, i32* %3, align 4
  %269 = load i32, i32* %3, align 4
  %270 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %2, align 8
  %271 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @TX_DIG_CTRL_REG_2, align 8
  %274 = add nsw i64 %272, %273
  %275 = call i32 @writel(i32 %269, i64 %274)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @CMN_CALIB_CODE_POS(i32) #1

declare dso_local i32 @CMN_CALIB_CODE(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
