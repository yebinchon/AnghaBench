; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_phy.c_mt76x2u_phy_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_phy.c_mt76x2u_phy_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i32, i64 }
%struct.cfg80211_chan_def = type { i32, i32, %struct.ieee80211_channel* }

@MT_EXT_CCA_CFG_CCA0 = common dso_local global i32 0, align 4
@MT_EXT_CCA_CFG_CCA1 = common dso_local global i32 0, align 4
@MT_EXT_CCA_CFG_CCA2 = common dso_local global i32 0, align 4
@MT_EXT_CCA_CFG_CCA3 = common dso_local global i32 0, align 4
@MT_EXT_CCA_CFG_CCA_MASK = common dso_local global i32 0, align 4
@MT76_SCANNING = common dso_local global i32 0, align 4
@MT_EXT_CCA_CFG = common dso_local global i32 0, align 4
@MT76XX_REV_E3 = common dso_local global i64 0, align 8
@RXO = common dso_local global i32 0, align 4
@MT_EE_BT_RCAL_RESULT = common dso_local global i32 0, align 4
@MCU_CAL_R = common dso_local global i32 0, align 4
@MCU_CAL_RXDCOC = common dso_local global i32 0, align 4
@MCU_CAL_RC = common dso_local global i32 0, align 4
@AGC = common dso_local global i32 0, align 4
@MT_TXOP_CTRL_CFG = common dso_local global i32 0, align 4
@TXO = common dso_local global i32 0, align 4
@MT_TX_ALC_CFG_1 = common dso_local global i32 0, align 4
@MT_TX_ALC_CFG_1_TEMP_COMP = common dso_local global i32 0, align 4
@MT_TX_ALC_CFG_2 = common dso_local global i32 0, align 4
@MT_TX_ALC_CFG_2_TEMP_COMP = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@MCU_CAL_TSSI = common dso_local global i32 0, align 4
@MT_CALIBRATE_INTERVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76x2u_phy_set_channel(%struct.mt76x02_dev* %0, %struct.cfg80211_chan_def* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt76x02_dev*, align 8
  %5 = alloca %struct.cfg80211_chan_def*, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ieee80211_channel*, align 8
  %18 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %4, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %5, align 8
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %20 = load i32, i32* @MT_EXT_CCA_CFG_CCA0, align 4
  %21 = call i32 @FIELD_PREP(i32 %20, i32 0)
  %22 = load i32, i32* @MT_EXT_CCA_CFG_CCA1, align 4
  %23 = call i32 @FIELD_PREP(i32 %22, i32 1)
  %24 = or i32 %21, %23
  %25 = load i32, i32* @MT_EXT_CCA_CFG_CCA2, align 4
  %26 = call i32 @FIELD_PREP(i32 %25, i32 2)
  %27 = or i32 %24, %26
  %28 = load i32, i32* @MT_EXT_CCA_CFG_CCA3, align 4
  %29 = call i32 @FIELD_PREP(i32 %28, i32 3)
  %30 = or i32 %27, %29
  %31 = load i32, i32* @MT_EXT_CCA_CFG_CCA_MASK, align 4
  %32 = call i32 @BIT(i32 0)
  %33 = call i32 @FIELD_PREP(i32 %31, i32 %32)
  %34 = or i32 %30, %33
  store i32 %34, i32* %19, align 4
  %35 = getelementptr inbounds i32, i32* %19, i64 1
  %36 = load i32, i32* @MT_EXT_CCA_CFG_CCA0, align 4
  %37 = call i32 @FIELD_PREP(i32 %36, i32 1)
  %38 = load i32, i32* @MT_EXT_CCA_CFG_CCA1, align 4
  %39 = call i32 @FIELD_PREP(i32 %38, i32 0)
  %40 = or i32 %37, %39
  %41 = load i32, i32* @MT_EXT_CCA_CFG_CCA2, align 4
  %42 = call i32 @FIELD_PREP(i32 %41, i32 2)
  %43 = or i32 %40, %42
  %44 = load i32, i32* @MT_EXT_CCA_CFG_CCA3, align 4
  %45 = call i32 @FIELD_PREP(i32 %44, i32 3)
  %46 = or i32 %43, %45
  %47 = load i32, i32* @MT_EXT_CCA_CFG_CCA_MASK, align 4
  %48 = call i32 @BIT(i32 1)
  %49 = call i32 @FIELD_PREP(i32 %47, i32 %48)
  %50 = or i32 %46, %49
  store i32 %50, i32* %35, align 4
  %51 = getelementptr inbounds i32, i32* %35, i64 1
  %52 = load i32, i32* @MT_EXT_CCA_CFG_CCA0, align 4
  %53 = call i32 @FIELD_PREP(i32 %52, i32 2)
  %54 = load i32, i32* @MT_EXT_CCA_CFG_CCA1, align 4
  %55 = call i32 @FIELD_PREP(i32 %54, i32 3)
  %56 = or i32 %53, %55
  %57 = load i32, i32* @MT_EXT_CCA_CFG_CCA2, align 4
  %58 = call i32 @FIELD_PREP(i32 %57, i32 1)
  %59 = or i32 %56, %58
  %60 = load i32, i32* @MT_EXT_CCA_CFG_CCA3, align 4
  %61 = call i32 @FIELD_PREP(i32 %60, i32 0)
  %62 = or i32 %59, %61
  %63 = load i32, i32* @MT_EXT_CCA_CFG_CCA_MASK, align 4
  %64 = call i32 @BIT(i32 2)
  %65 = call i32 @FIELD_PREP(i32 %63, i32 %64)
  %66 = or i32 %62, %65
  store i32 %66, i32* %51, align 4
  %67 = getelementptr inbounds i32, i32* %51, i64 1
  %68 = load i32, i32* @MT_EXT_CCA_CFG_CCA0, align 4
  %69 = call i32 @FIELD_PREP(i32 %68, i32 3)
  %70 = load i32, i32* @MT_EXT_CCA_CFG_CCA1, align 4
  %71 = call i32 @FIELD_PREP(i32 %70, i32 2)
  %72 = or i32 %69, %71
  %73 = load i32, i32* @MT_EXT_CCA_CFG_CCA2, align 4
  %74 = call i32 @FIELD_PREP(i32 %73, i32 1)
  %75 = or i32 %72, %74
  %76 = load i32, i32* @MT_EXT_CCA_CFG_CCA3, align 4
  %77 = call i32 @FIELD_PREP(i32 %76, i32 0)
  %78 = or i32 %75, %77
  %79 = load i32, i32* @MT_EXT_CCA_CFG_CCA_MASK, align 4
  %80 = call i32 @BIT(i32 3)
  %81 = call i32 @FIELD_PREP(i32 %79, i32 %80)
  %82 = or i32 %78, %81
  store i32 %82, i32* %67, align 4
  %83 = load i32, i32* @MT76_SCANNING, align 4
  %84 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %85 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = call i32 @test_bit(i32 %83, i32* %86)
  store i32 %87, i32* %7, align 4
  %88 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %89 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %88, i32 0, i32 2
  %90 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %89, align 8
  store %struct.ieee80211_channel* %90, %struct.ieee80211_channel** %8, align 8
  %91 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %92 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %9, align 4
  %94 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %95 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i32 0, i32* %96, align 4
  %97 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %98 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %97, i32 0, i32 2
  %99 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %98, align 8
  %100 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %13, align 4
  %102 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %103 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %14, align 4
  %105 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %106 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  switch i32 %107, label %144 [
    i32 129, label %108
    i32 128, label %120
  ]

108:                                              ; preds = %2
  store i32 1, i32* %10, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %114

113:                                              ; preds = %108
  store i32 3, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %114

114:                                              ; preds = %113, %112
  %115 = load i32, i32* %12, align 4
  %116 = mul nsw i32 %115, 4
  %117 = sub nsw i32 2, %116
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %9, align 4
  br label %145

120:                                              ; preds = %2
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %14, align 4
  %123 = sub nsw i32 %121, %122
  %124 = add nsw i32 %123, 30
  %125 = sdiv i32 %124, 20
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %120
  %129 = load i32, i32* %12, align 4
  %130 = icmp sgt i32 %129, 3
  br label %131

131:                                              ; preds = %128, %120
  %132 = phi i1 [ true, %120 ], [ %130, %128 ]
  %133 = zext i1 %132 to i32
  %134 = call i32 @WARN_ON(i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  store i32 0, i32* %12, align 4
  br label %137

137:                                              ; preds = %136, %131
  store i32 2, i32* %10, align 4
  %138 = load i32, i32* %12, align 4
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %12, align 4
  %140 = mul nsw i32 %139, 4
  %141 = sub nsw i32 6, %140
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %9, align 4
  br label %145

144:                                              ; preds = %2
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %145

145:                                              ; preds = %144, %137, %114
  %146 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %147 = call i32 @mt76x2_read_rx_gain(%struct.mt76x02_dev* %146)
  %148 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %149 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %150 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @mt76x2_phy_set_txpower_regs(%struct.mt76x02_dev* %148, i64 %151)
  %153 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %154 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %155 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @mt76x2_configure_tx_delay(%struct.mt76x02_dev* %153, i64 %156, i32 %157)
  %159 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %160 = call i32 @mt76x2_phy_set_txpower(%struct.mt76x02_dev* %159)
  %161 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %162 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %163 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* %12, align 4
  %166 = and i32 %165, 1
  %167 = call i32 @mt76x02_phy_set_band(%struct.mt76x02_dev* %161, i64 %164, i32 %166)
  %168 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %169 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %170 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %12, align 4
  %173 = call i32 @mt76x02_phy_set_bw(%struct.mt76x02_dev* %168, i32 %171, i32 %172)
  %174 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %175 = load i32, i32* @MT_EXT_CCA_CFG, align 4
  %176 = load i32, i32* @MT_EXT_CCA_CFG_CCA0, align 4
  %177 = load i32, i32* @MT_EXT_CCA_CFG_CCA1, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @MT_EXT_CCA_CFG_CCA2, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @MT_EXT_CCA_CFG_CCA3, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @MT_EXT_CCA_CFG_CCA_MASK, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @mt76_rmw(%struct.mt76x02_dev* %174, i32 %175, i32 %184, i32 %188)
  %190 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* %11, align 4
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @mt76x2_mcu_set_channel(%struct.mt76x02_dev* %190, i32 %191, i32 %192, i32 %193, i32 %194)
  store i32 %195, i32* %15, align 4
  %196 = load i32, i32* %15, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %145
  %199 = load i32, i32* %15, align 4
  store i32 %199, i32* %3, align 4
  br label %348

200:                                              ; preds = %145
  %201 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %202 = load i32, i32* %9, align 4
  %203 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %204 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @mt76x2_mcu_init_gain(%struct.mt76x02_dev* %201, i32 %202, i32 %207, i32 1)
  %209 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %210 = call i64 @mt76xx_rev(%struct.mt76x02_dev* %209)
  %211 = load i64, i64* @MT76XX_REV_E3, align 8
  %212 = icmp sge i64 %210, %211
  br i1 %212, label %213, label %219

213:                                              ; preds = %200
  %214 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %215 = load i32, i32* @RXO, align 4
  %216 = call i32 @MT_BBP(i32 %215, i32 13)
  %217 = call i32 @BIT(i32 10)
  %218 = call i32 @mt76_set(%struct.mt76x02_dev* %214, i32 %216, i32 %217)
  br label %219

219:                                              ; preds = %213, %200
  %220 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %221 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %236, label %225

225:                                              ; preds = %219
  %226 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %227 = load i32, i32* @MT_EE_BT_RCAL_RESULT, align 4
  %228 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %226, i32 %227)
  store i32 %228, i32* %16, align 4
  %229 = load i32, i32* %16, align 4
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
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 1
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
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 1
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
  %273 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %274 = load i32, i32* @TXO, align 4
  %275 = call i32 @MT_BBP(i32 %274, i32 4)
  %276 = call i32 @BIT(i32 25)
  %277 = call i32 @mt76_set(%struct.mt76x02_dev* %273, i32 %275, i32 %276)
  %278 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %279 = load i32, i32* @RXO, align 4
  %280 = call i32 @MT_BBP(i32 %279, i32 13)
  %281 = call i32 @BIT(i32 8)
  %282 = call i32 @mt76_set(%struct.mt76x02_dev* %278, i32 %280, i32 %281)
  %283 = load i32, i32* %7, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %250
  store i32 0, i32* %3, align 4
  br label %348

286:                                              ; preds = %250
  %287 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %288 = call i32 @mt76x2u_phy_channel_calibrate(%struct.mt76x02_dev* %287, i32 1)
  %289 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %290 = call i32 @mt76x02_init_agc_gain(%struct.mt76x02_dev* %289)
  %291 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %292 = call i64 @mt76x2_tssi_enabled(%struct.mt76x02_dev* %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %341

294:                                              ; preds = %286
  %295 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %296 = load i32, i32* @MT_TX_ALC_CFG_1, align 4
  %297 = load i32, i32* @MT_TX_ALC_CFG_1_TEMP_COMP, align 4
  %298 = call i32 @mt76_rmw_field(%struct.mt76x02_dev* %295, i32 %296, i32 %297, i32 56)
  %299 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %300 = load i32, i32* @MT_TX_ALC_CFG_2, align 4
  %301 = load i32, i32* @MT_TX_ALC_CFG_2_TEMP_COMP, align 4
  %302 = call i32 @mt76_rmw_field(%struct.mt76x02_dev* %299, i32 %300, i32 %301, i32 56)
  %303 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %304 = call i32 @mt76x2_channel_silent(%struct.mt76x02_dev* %303)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %340, label %306

306:                                              ; preds = %294
  store i32 0, i32* %18, align 4
  %307 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %308 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 0
  %311 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %310, align 8
  store %struct.ieee80211_channel* %311, %struct.ieee80211_channel** %17, align 8
  %312 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %17, align 8
  %313 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %312, i32 0, i32 2
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %316 = icmp eq i64 %314, %315
  br i1 %316, label %317, label %321

317:                                              ; preds = %306
  %318 = call i32 @BIT(i32 0)
  %319 = load i32, i32* %18, align 4
  %320 = or i32 %319, %318
  store i32 %320, i32* %18, align 4
  br label %321

321:                                              ; preds = %317, %306
  %322 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %323 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %17, align 8
  %324 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %323, i32 0, i32 2
  %325 = load i64, i64* %324, align 8
  %326 = call i64 @mt76x02_ext_pa_enabled(%struct.mt76x02_dev* %322, i64 %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %321
  %329 = call i32 @BIT(i32 8)
  %330 = load i32, i32* %18, align 4
  %331 = or i32 %330, %329
  store i32 %331, i32* %18, align 4
  br label %332

332:                                              ; preds = %328, %321
  %333 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %334 = load i32, i32* @MCU_CAL_TSSI, align 4
  %335 = load i32, i32* %18, align 4
  %336 = call i32 @mt76x02_mcu_calibrate(%struct.mt76x02_dev* %333, i32 %334, i32 %335)
  %337 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %338 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %338, i32 0, i32 2
  store i32 1, i32* %339, align 4
  br label %340

340:                                              ; preds = %332, %294
  br label %341

341:                                              ; preds = %340, %286
  %342 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %343 = call i32 @mt76_hw(%struct.mt76x02_dev* %342)
  %344 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %345 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %344, i32 0, i32 0
  %346 = load i32, i32* @MT_CALIBRATE_INTERVAL, align 4
  %347 = call i32 @ieee80211_queue_delayed_work(i32 %343, i32* %345, i32 %346)
  store i32 0, i32* %3, align 4
  br label %348

348:                                              ; preds = %341, %285, %198
  %349 = load i32, i32* %3, align 4
  ret i32 %349
}

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mt76x2_read_rx_gain(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x2_phy_set_txpower_regs(%struct.mt76x02_dev*, i64) #1

declare dso_local i32 @mt76x2_configure_tx_delay(%struct.mt76x02_dev*, i64, i32) #1

declare dso_local i32 @mt76x2_phy_set_txpower(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02_phy_set_band(%struct.mt76x02_dev*, i64, i32) #1

declare dso_local i32 @mt76x02_phy_set_bw(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_rmw(%struct.mt76x02_dev*, i32, i32, i32) #1

declare dso_local i32 @mt76x2_mcu_set_channel(%struct.mt76x02_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mt76x2_mcu_init_gain(%struct.mt76x02_dev*, i32, i32, i32) #1

declare dso_local i64 @mt76xx_rev(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76_set(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @MT_BBP(i32, i32) #1

declare dso_local i32 @mt76x02_eeprom_get(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x02_mcu_calibrate(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76x2u_phy_channel_calibrate(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x02_init_agc_gain(%struct.mt76x02_dev*) #1

declare dso_local i64 @mt76x2_tssi_enabled(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76_rmw_field(%struct.mt76x02_dev*, i32, i32, i32) #1

declare dso_local i32 @mt76x2_channel_silent(%struct.mt76x02_dev*) #1

declare dso_local i64 @mt76x02_ext_pa_enabled(%struct.mt76x02_dev*, i64) #1

declare dso_local i32 @ieee80211_queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @mt76_hw(%struct.mt76x02_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
