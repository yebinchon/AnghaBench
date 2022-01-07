; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_pci_phy.c_mt76x2_phy_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_pci_phy.c_mt76x2_phy_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.cfg80211_chan_def = type { i32, i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i32, i32 }

@MT76_SCANNING = common dso_local global i32 0, align 4
@MT_EXT_CCA_CFG_CCA0 = common dso_local global i32 0, align 4
@MT_EXT_CCA_CFG_CCA1 = common dso_local global i32 0, align 4
@MT_EXT_CCA_CFG_CCA2 = common dso_local global i32 0, align 4
@MT_EXT_CCA_CFG_CCA3 = common dso_local global i32 0, align 4
@MT_EXT_CCA_CFG_CCA_MASK = common dso_local global i32 0, align 4
@MT_EXT_CCA_CFG = common dso_local global i32 0, align 4
@MT76XX_REV_E3 = common dso_local global i64 0, align 8
@RXO = common dso_local global i32 0, align 4
@MT_EE_BT_RCAL_RESULT = common dso_local global i32 0, align 4
@MCU_CAL_R = common dso_local global i32 0, align 4
@MCU_CAL_RXDCOC = common dso_local global i32 0, align 4
@MCU_CAL_RC = common dso_local global i32 0, align 4
@AGC = common dso_local global i32 0, align 4
@MT_TXOP_CTRL_CFG = common dso_local global i32 0, align 4
@MT_TX_ALC_CFG_1 = common dso_local global i32 0, align 4
@MT_TX_ALC_CFG_1_TEMP_COMP = common dso_local global i32 0, align 4
@MT_TX_ALC_CFG_2 = common dso_local global i32 0, align 4
@MT_TX_ALC_CFG_2_TEMP_COMP = common dso_local global i32 0, align 4
@MT_CALIBRATE_INTERVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76x2_phy_set_channel(%struct.mt76x02_dev* %0, %struct.cfg80211_chan_def* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt76x02_dev*, align 8
  %5 = alloca %struct.cfg80211_chan_def*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %4, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %5, align 8
  %18 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %19 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %18, i32 0, i32 2
  %20 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %19, align 8
  store %struct.ieee80211_channel* %20, %struct.ieee80211_channel** %6, align 8
  %21 = load i32, i32* @MT76_SCANNING, align 4
  %22 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %23 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @test_bit(i32 %21, i32* %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %27 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %30 = load i32, i32* @MT_EXT_CCA_CFG_CCA0, align 4
  %31 = call i32 @FIELD_PREP(i32 %30, i32 0)
  %32 = load i32, i32* @MT_EXT_CCA_CFG_CCA1, align 4
  %33 = call i32 @FIELD_PREP(i32 %32, i32 1)
  %34 = or i32 %31, %33
  %35 = load i32, i32* @MT_EXT_CCA_CFG_CCA2, align 4
  %36 = call i32 @FIELD_PREP(i32 %35, i32 2)
  %37 = or i32 %34, %36
  %38 = load i32, i32* @MT_EXT_CCA_CFG_CCA3, align 4
  %39 = call i32 @FIELD_PREP(i32 %38, i32 3)
  %40 = or i32 %37, %39
  %41 = load i32, i32* @MT_EXT_CCA_CFG_CCA_MASK, align 4
  %42 = call i32 @BIT(i32 0)
  %43 = call i32 @FIELD_PREP(i32 %41, i32 %42)
  %44 = or i32 %40, %43
  store i32 %44, i32* %29, align 4
  %45 = getelementptr inbounds i32, i32* %29, i64 1
  %46 = load i32, i32* @MT_EXT_CCA_CFG_CCA0, align 4
  %47 = call i32 @FIELD_PREP(i32 %46, i32 1)
  %48 = load i32, i32* @MT_EXT_CCA_CFG_CCA1, align 4
  %49 = call i32 @FIELD_PREP(i32 %48, i32 0)
  %50 = or i32 %47, %49
  %51 = load i32, i32* @MT_EXT_CCA_CFG_CCA2, align 4
  %52 = call i32 @FIELD_PREP(i32 %51, i32 2)
  %53 = or i32 %50, %52
  %54 = load i32, i32* @MT_EXT_CCA_CFG_CCA3, align 4
  %55 = call i32 @FIELD_PREP(i32 %54, i32 3)
  %56 = or i32 %53, %55
  %57 = load i32, i32* @MT_EXT_CCA_CFG_CCA_MASK, align 4
  %58 = call i32 @BIT(i32 1)
  %59 = call i32 @FIELD_PREP(i32 %57, i32 %58)
  %60 = or i32 %56, %59
  store i32 %60, i32* %45, align 4
  %61 = getelementptr inbounds i32, i32* %45, i64 1
  %62 = load i32, i32* @MT_EXT_CCA_CFG_CCA0, align 4
  %63 = call i32 @FIELD_PREP(i32 %62, i32 2)
  %64 = load i32, i32* @MT_EXT_CCA_CFG_CCA1, align 4
  %65 = call i32 @FIELD_PREP(i32 %64, i32 3)
  %66 = or i32 %63, %65
  %67 = load i32, i32* @MT_EXT_CCA_CFG_CCA2, align 4
  %68 = call i32 @FIELD_PREP(i32 %67, i32 1)
  %69 = or i32 %66, %68
  %70 = load i32, i32* @MT_EXT_CCA_CFG_CCA3, align 4
  %71 = call i32 @FIELD_PREP(i32 %70, i32 0)
  %72 = or i32 %69, %71
  %73 = load i32, i32* @MT_EXT_CCA_CFG_CCA_MASK, align 4
  %74 = call i32 @BIT(i32 2)
  %75 = call i32 @FIELD_PREP(i32 %73, i32 %74)
  %76 = or i32 %72, %75
  store i32 %76, i32* %61, align 4
  %77 = getelementptr inbounds i32, i32* %61, i64 1
  %78 = load i32, i32* @MT_EXT_CCA_CFG_CCA0, align 4
  %79 = call i32 @FIELD_PREP(i32 %78, i32 3)
  %80 = load i32, i32* @MT_EXT_CCA_CFG_CCA1, align 4
  %81 = call i32 @FIELD_PREP(i32 %80, i32 2)
  %82 = or i32 %79, %81
  %83 = load i32, i32* @MT_EXT_CCA_CFG_CCA2, align 4
  %84 = call i32 @FIELD_PREP(i32 %83, i32 1)
  %85 = or i32 %82, %84
  %86 = load i32, i32* @MT_EXT_CCA_CFG_CCA3, align 4
  %87 = call i32 @FIELD_PREP(i32 %86, i32 0)
  %88 = or i32 %85, %87
  %89 = load i32, i32* @MT_EXT_CCA_CFG_CCA_MASK, align 4
  %90 = call i32 @BIT(i32 3)
  %91 = call i32 @FIELD_PREP(i32 %89, i32 %90)
  %92 = or i32 %88, %91
  store i32 %92, i32* %77, align 4
  %93 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %94 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i32 0, i32* %95, align 4
  %96 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %97 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %96, i32 0, i32 2
  %98 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %97, align 8
  %99 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %14, align 4
  %101 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %102 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %15, align 4
  %104 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %105 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %9, align 4
  %107 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %108 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  switch i32 %109, label %146 [
    i32 129, label %110
    i32 128, label %122
  ]

110:                                              ; preds = %2
  store i32 1, i32* %12, align 4
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  store i32 1, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %116

115:                                              ; preds = %110
  store i32 3, i32* %13, align 4
  store i32 1, i32* %11, align 4
  br label %116

116:                                              ; preds = %115, %114
  %117 = load i32, i32* %11, align 4
  %118 = mul nsw i32 %117, 4
  %119 = sub nsw i32 2, %118
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %9, align 4
  br label %147

122:                                              ; preds = %2
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* %15, align 4
  %125 = sub nsw i32 %123, %124
  %126 = add nsw i32 %125, 30
  %127 = sdiv i32 %126, 20
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %122
  %131 = load i32, i32* %11, align 4
  %132 = icmp sgt i32 %131, 3
  br label %133

133:                                              ; preds = %130, %122
  %134 = phi i1 [ true, %122 ], [ %132, %130 ]
  %135 = zext i1 %134 to i32
  %136 = call i32 @WARN_ON(i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  store i32 0, i32* %11, align 4
  br label %139

139:                                              ; preds = %138, %133
  store i32 2, i32* %12, align 4
  %140 = load i32, i32* %11, align 4
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %11, align 4
  %142 = mul nsw i32 %141, 4
  %143 = sub nsw i32 6, %142
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %9, align 4
  br label %147

146:                                              ; preds = %2
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %147

147:                                              ; preds = %146, %139, %116
  %148 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %149 = call i32 @mt76x2_read_rx_gain(%struct.mt76x02_dev* %148)
  %150 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @mt76x2_phy_set_txpower_regs(%struct.mt76x02_dev* %150, i32 %151)
  %153 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @mt76x2_configure_tx_delay(%struct.mt76x02_dev* %153, i32 %154, i32 %155)
  %157 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %158 = call i32 @mt76x2_phy_set_txpower(%struct.mt76x02_dev* %157)
  %159 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %160 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %161 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %11, align 4
  %164 = and i32 %163, 1
  %165 = call i32 @mt76x02_phy_set_band(%struct.mt76x02_dev* %159, i32 %162, i32 %164)
  %166 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %167 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %168 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %11, align 4
  %171 = call i32 @mt76x02_phy_set_bw(%struct.mt76x02_dev* %166, i32 %169, i32 %170)
  %172 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %173 = load i32, i32* @MT_EXT_CCA_CFG, align 4
  %174 = load i32, i32* @MT_EXT_CCA_CFG_CCA0, align 4
  %175 = load i32, i32* @MT_EXT_CCA_CFG_CCA1, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @MT_EXT_CCA_CFG_CCA2, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @MT_EXT_CCA_CFG_CCA3, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @MT_EXT_CCA_CFG_CCA_MASK, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* %11, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @mt76_rmw(%struct.mt76x02_dev* %172, i32 %173, i32 %182, i32 %186)
  %188 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* %12, align 4
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* %7, align 4
  %193 = call i32 @mt76x2_mcu_set_channel(%struct.mt76x02_dev* %188, i32 %189, i32 %190, i32 %191, i32 %192)
  store i32 %193, i32* %16, align 4
  %194 = load i32, i32* %16, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %147
  %197 = load i32, i32* %16, align 4
  store i32 %197, i32* %3, align 4
  br label %300

198:                                              ; preds = %147
  %199 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %200 = load i32, i32* %9, align 4
  %201 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %202 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @mt76x2_mcu_init_gain(%struct.mt76x02_dev* %199, i32 %200, i32 %205, i32 1)
  %207 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %208 = call i32 @mt76x2_phy_set_antenna(%struct.mt76x02_dev* %207)
  %209 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %210 = call i64 @mt76xx_rev(%struct.mt76x02_dev* %209)
  %211 = load i64, i64* @MT76XX_REV_E3, align 8
  %212 = icmp sge i64 %210, %211
  br i1 %212, label %213, label %219

213:                                              ; preds = %198
  %214 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %215 = load i32, i32* @RXO, align 4
  %216 = call i32 @MT_BBP(i32 %215, i32 13)
  %217 = call i32 @BIT(i32 10)
  %218 = call i32 @mt76_set(%struct.mt76x02_dev* %214, i32 %216, i32 %217)
  br label %219

219:                                              ; preds = %213, %198
  %220 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %221 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %236, label %225

225:                                              ; preds = %219
  %226 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %227 = load i32, i32* @MT_EE_BT_RCAL_RESULT, align 4
  %228 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %226, i32 %227)
  store i32 %228, i32* %17, align 4
  %229 = load i32, i32* %17, align 4
  %230 = icmp ne i32 %229, 255
  br i1 %230, label %231, label %235

231:                                              ; preds = %225
  %232 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %233 = load i32, i32* @MCU_CAL_R, align 4
  %234 = call i32 @mt76x02_mcu_calibrate(%struct.mt76x02_dev* %232, i32 %233, i32 0)
  br label %235

235:                                              ; preds = %231, %225
  br label %236

236:                                              ; preds = %235, %219
  %237 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %238 = load i32, i32* @MCU_CAL_RXDCOC, align 4
  %239 = load i32, i32* %9, align 4
  %240 = call i32 @mt76x02_mcu_calibrate(%struct.mt76x02_dev* %237, i32 %238, i32 %239)
  %241 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %242 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %250, label %246

246:                                              ; preds = %236
  %247 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %248 = load i32, i32* @MCU_CAL_RC, align 4
  %249 = call i32 @mt76x02_mcu_calibrate(%struct.mt76x02_dev* %247, i32 %248, i32 0)
  br label %250

250:                                              ; preds = %246, %236
  %251 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %252 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 1
  store i32 1, i32* %253, align 4
  %254 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %255 = load i32, i32* @AGC, align 4
  %256 = call i32 @MT_BBP(i32 %255, i32 61)
  %257 = call i32 @mt76_wr(%struct.mt76x02_dev* %254, i32 %256, i32 -10181406)
  %258 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %259 = load i32, i32* @AGC, align 4
  %260 = call i32 @MT_BBP(i32 %259, i32 7)
  %261 = call i32 @mt76_wr(%struct.mt76x02_dev* %258, i32 %260, i32 134746128)
  %262 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %263 = load i32, i32* @AGC, align 4
  %264 = call i32 @MT_BBP(i32 %263, i32 11)
  %265 = call i32 @mt76_wr(%struct.mt76x02_dev* %262, i32 %264, i32 1028)
  %266 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %267 = load i32, i32* @AGC, align 4
  %268 = call i32 @MT_BBP(i32 %267, i32 2)
  %269 = call i32 @mt76_wr(%struct.mt76x02_dev* %266, i32 %268, i32 28784)
  %270 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %271 = load i32, i32* @MT_TXOP_CTRL_CFG, align 4
  %272 = call i32 @mt76_wr(%struct.mt76x02_dev* %270, i32 %271, i32 68164415)
  %273 = load i32, i32* %7, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %250
  store i32 0, i32* %3, align 4
  br label %300

276:                                              ; preds = %250
  %277 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %278 = call i32 @mt76x2_phy_channel_calibrate(%struct.mt76x02_dev* %277, i32 1)
  %279 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %280 = call i32 @mt76x02_init_agc_gain(%struct.mt76x02_dev* %279)
  %281 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %282 = call i64 @mt76x2_tssi_enabled(%struct.mt76x02_dev* %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %293

284:                                              ; preds = %276
  %285 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %286 = load i32, i32* @MT_TX_ALC_CFG_1, align 4
  %287 = load i32, i32* @MT_TX_ALC_CFG_1_TEMP_COMP, align 4
  %288 = call i32 @mt76_rmw_field(%struct.mt76x02_dev* %285, i32 %286, i32 %287, i32 56)
  %289 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %290 = load i32, i32* @MT_TX_ALC_CFG_2, align 4
  %291 = load i32, i32* @MT_TX_ALC_CFG_2_TEMP_COMP, align 4
  %292 = call i32 @mt76_rmw_field(%struct.mt76x02_dev* %289, i32 %290, i32 %291, i32 56)
  br label %293

293:                                              ; preds = %284, %276
  %294 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %295 = call i32 @mt76_hw(%struct.mt76x02_dev* %294)
  %296 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %297 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %296, i32 0, i32 0
  %298 = load i32, i32* @MT_CALIBRATE_INTERVAL, align 4
  %299 = call i32 @ieee80211_queue_delayed_work(i32 %295, i32* %297, i32 %298)
  store i32 0, i32* %3, align 4
  br label %300

300:                                              ; preds = %293, %275, %196
  %301 = load i32, i32* %3, align 4
  ret i32 %301
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mt76x2_read_rx_gain(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x2_phy_set_txpower_regs(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x2_configure_tx_delay(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76x2_phy_set_txpower(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02_phy_set_band(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76x02_phy_set_bw(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_rmw(%struct.mt76x02_dev*, i32, i32, i32) #1

declare dso_local i32 @mt76x2_mcu_set_channel(%struct.mt76x02_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mt76x2_mcu_init_gain(%struct.mt76x02_dev*, i32, i32, i32) #1

declare dso_local i32 @mt76x2_phy_set_antenna(%struct.mt76x02_dev*) #1

declare dso_local i64 @mt76xx_rev(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76_set(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @MT_BBP(i32, i32) #1

declare dso_local i32 @mt76x02_eeprom_get(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x02_mcu_calibrate(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76x2_phy_channel_calibrate(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x02_init_agc_gain(%struct.mt76x02_dev*) #1

declare dso_local i64 @mt76x2_tssi_enabled(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76_rmw_field(%struct.mt76x02_dev*, i32, i32, i32) #1

declare dso_local i32 @ieee80211_queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @mt76_hw(%struct.mt76x02_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
