; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_phy.c_mt76x0_phy_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_phy.c_mt76x0_phy_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.cfg80211_chan_def = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@MT_EXT_CCA_CFG_CCA0 = common dso_local global i32 0, align 4
@MT_EXT_CCA_CFG_CCA1 = common dso_local global i32 0, align 4
@MT_EXT_CCA_CFG_CCA2 = common dso_local global i32 0, align 4
@MT_EXT_CCA_CFG_CCA3 = common dso_local global i32 0, align 4
@MT_EXT_CCA_CFG_CCA_MASK = common dso_local global i32 0, align 4
@MT76_SCANNING = common dso_local global i32 0, align 4
@RF_G_BAND = common dso_local global i32 0, align 4
@RF_A_BAND = common dso_local global i32 0, align 4
@RF_BW_40 = common dso_local global i32 0, align 4
@RF_BW_80 = common dso_local global i32 0, align 4
@RF_BW_20 = common dso_local global i32 0, align 4
@MT_TX_SW_CFG0 = common dso_local global i32 0, align 4
@MT_EXT_CCA_CFG = common dso_local global i32 0, align 4
@CORE = common dso_local global i32 0, align 4
@MT_CALIBRATE_INTERVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x0_phy_set_channel(%struct.mt76x02_dev* %0, %struct.cfg80211_chan_def* %1) #0 {
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca %struct.cfg80211_chan_def*, align 8
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %4, align 8
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %14 = load i32, i32* @MT_EXT_CCA_CFG_CCA0, align 4
  %15 = call i32 @FIELD_PREP(i32 %14, i32 0)
  %16 = load i32, i32* @MT_EXT_CCA_CFG_CCA1, align 4
  %17 = call i32 @FIELD_PREP(i32 %16, i32 1)
  %18 = or i32 %15, %17
  %19 = load i32, i32* @MT_EXT_CCA_CFG_CCA2, align 4
  %20 = call i32 @FIELD_PREP(i32 %19, i32 2)
  %21 = or i32 %18, %20
  %22 = load i32, i32* @MT_EXT_CCA_CFG_CCA3, align 4
  %23 = call i32 @FIELD_PREP(i32 %22, i32 3)
  %24 = or i32 %21, %23
  %25 = load i32, i32* @MT_EXT_CCA_CFG_CCA_MASK, align 4
  %26 = call i32 @BIT(i32 0)
  %27 = call i32 @FIELD_PREP(i32 %25, i32 %26)
  %28 = or i32 %24, %27
  store i32 %28, i32* %13, align 4
  %29 = getelementptr inbounds i32, i32* %13, i64 1
  %30 = load i32, i32* @MT_EXT_CCA_CFG_CCA0, align 4
  %31 = call i32 @FIELD_PREP(i32 %30, i32 1)
  %32 = load i32, i32* @MT_EXT_CCA_CFG_CCA1, align 4
  %33 = call i32 @FIELD_PREP(i32 %32, i32 0)
  %34 = or i32 %31, %33
  %35 = load i32, i32* @MT_EXT_CCA_CFG_CCA2, align 4
  %36 = call i32 @FIELD_PREP(i32 %35, i32 2)
  %37 = or i32 %34, %36
  %38 = load i32, i32* @MT_EXT_CCA_CFG_CCA3, align 4
  %39 = call i32 @FIELD_PREP(i32 %38, i32 3)
  %40 = or i32 %37, %39
  %41 = load i32, i32* @MT_EXT_CCA_CFG_CCA_MASK, align 4
  %42 = call i32 @BIT(i32 1)
  %43 = call i32 @FIELD_PREP(i32 %41, i32 %42)
  %44 = or i32 %40, %43
  store i32 %44, i32* %29, align 4
  %45 = getelementptr inbounds i32, i32* %29, i64 1
  %46 = load i32, i32* @MT_EXT_CCA_CFG_CCA0, align 4
  %47 = call i32 @FIELD_PREP(i32 %46, i32 2)
  %48 = load i32, i32* @MT_EXT_CCA_CFG_CCA1, align 4
  %49 = call i32 @FIELD_PREP(i32 %48, i32 3)
  %50 = or i32 %47, %49
  %51 = load i32, i32* @MT_EXT_CCA_CFG_CCA2, align 4
  %52 = call i32 @FIELD_PREP(i32 %51, i32 1)
  %53 = or i32 %50, %52
  %54 = load i32, i32* @MT_EXT_CCA_CFG_CCA3, align 4
  %55 = call i32 @FIELD_PREP(i32 %54, i32 0)
  %56 = or i32 %53, %55
  %57 = load i32, i32* @MT_EXT_CCA_CFG_CCA_MASK, align 4
  %58 = call i32 @BIT(i32 2)
  %59 = call i32 @FIELD_PREP(i32 %57, i32 %58)
  %60 = or i32 %56, %59
  store i32 %60, i32* %45, align 4
  %61 = getelementptr inbounds i32, i32* %45, i64 1
  %62 = load i32, i32* @MT_EXT_CCA_CFG_CCA0, align 4
  %63 = call i32 @FIELD_PREP(i32 %62, i32 3)
  %64 = load i32, i32* @MT_EXT_CCA_CFG_CCA1, align 4
  %65 = call i32 @FIELD_PREP(i32 %64, i32 2)
  %66 = or i32 %63, %65
  %67 = load i32, i32* @MT_EXT_CCA_CFG_CCA2, align 4
  %68 = call i32 @FIELD_PREP(i32 %67, i32 1)
  %69 = or i32 %66, %68
  %70 = load i32, i32* @MT_EXT_CCA_CFG_CCA3, align 4
  %71 = call i32 @FIELD_PREP(i32 %70, i32 0)
  %72 = or i32 %69, %71
  %73 = load i32, i32* @MT_EXT_CCA_CFG_CCA_MASK, align 4
  %74 = call i32 @BIT(i32 3)
  %75 = call i32 @FIELD_PREP(i32 %73, i32 %74)
  %76 = or i32 %72, %75
  store i32 %76, i32* %61, align 4
  %77 = load i32, i32* @MT76_SCANNING, align 4
  %78 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %79 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = call i32 @test_bit(i32 %77, i32* %80)
  store i32 %81, i32* %6, align 4
  %82 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %83 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %82, i32 0, i32 2
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %8, align 4
  %87 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %88 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %9, align 4
  %90 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %91 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %90, i32 0, i32 2
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp sle i32 %95, 14
  br i1 %96, label %97, label %99

97:                                               ; preds = %2
  %98 = load i32, i32* @RF_G_BAND, align 4
  br label %101

99:                                               ; preds = %2
  %100 = load i32, i32* @RF_A_BAND, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  store i32 %102, i32* %12, align 4
  %103 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %104 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  switch i32 %105, label %147 [
    i32 129, label %106
    i32 128, label %121
  ]

106:                                              ; preds = %101
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 0, i32* %7, align 4
  br label %112

111:                                              ; preds = %106
  store i32 1, i32* %7, align 4
  br label %112

112:                                              ; preds = %111, %110
  %113 = load i32, i32* %7, align 4
  %114 = mul nsw i32 %113, 4
  %115 = sub nsw i32 2, %114
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* @RF_BW_40, align 4
  %119 = load i32, i32* %12, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %12, align 4
  br label %151

121:                                              ; preds = %101
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %9, align 4
  %124 = sub nsw i32 %122, %123
  %125 = add nsw i32 %124, 30
  %126 = sdiv i32 %125, 20
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %121
  %130 = load i32, i32* %7, align 4
  %131 = icmp sgt i32 %130, 3
  br label %132

132:                                              ; preds = %129, %121
  %133 = phi i1 [ true, %121 ], [ %131, %129 ]
  %134 = zext i1 %133 to i32
  %135 = call i32 @WARN_ON(i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  store i32 0, i32* %7, align 4
  br label %138

138:                                              ; preds = %137, %132
  %139 = load i32, i32* %7, align 4
  %140 = mul nsw i32 %139, 4
  %141 = sub nsw i32 6, %140
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* @RF_BW_80, align 4
  %145 = load i32, i32* %12, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %12, align 4
  br label %151

147:                                              ; preds = %101
  store i32 0, i32* %7, align 4
  %148 = load i32, i32* @RF_BW_20, align 4
  %149 = load i32, i32* %12, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %12, align 4
  br label %151

151:                                              ; preds = %147, %138, %112
  %152 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %153 = call i64 @mt76_is_usb(%struct.mt76x02_dev* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %151
  %156 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %157 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %158 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @mt76x0_phy_bbp_set_bw(%struct.mt76x02_dev* %156, i32 %159)
  br label %178

161:                                              ; preds = %151
  %162 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %163 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 128
  br i1 %165, label %171, label %166

166:                                              ; preds = %161
  %167 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %168 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 129
  br i1 %170, label %171, label %172

171:                                              ; preds = %166, %161
  store i32 513, i32* %11, align 4
  br label %173

172:                                              ; preds = %166
  store i32 1537, i32* %11, align 4
  br label %173

173:                                              ; preds = %172, %171
  %174 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %175 = load i32, i32* @MT_TX_SW_CFG0, align 4
  %176 = load i32, i32* %11, align 4
  %177 = call i32 @mt76_wr(%struct.mt76x02_dev* %174, i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %173, %155
  %179 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %180 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %181 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %7, align 4
  %184 = call i32 @mt76x02_phy_set_bw(%struct.mt76x02_dev* %179, i32 %182, i32 %183)
  %185 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %186 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %187 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %186, i32 0, i32 2
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %7, align 4
  %192 = and i32 %191, 1
  %193 = call i32 @mt76x02_phy_set_band(%struct.mt76x02_dev* %185, i32 %190, i32 %192)
  %194 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %195 = load i32, i32* @MT_EXT_CCA_CFG, align 4
  %196 = load i32, i32* @MT_EXT_CCA_CFG_CCA0, align 4
  %197 = load i32, i32* @MT_EXT_CCA_CFG_CCA1, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @MT_EXT_CCA_CFG_CCA2, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @MT_EXT_CCA_CFG_CCA3, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @MT_EXT_CCA_CFG_CCA_MASK, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* %7, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @mt76_rmw(%struct.mt76x02_dev* %194, i32 %195, i32 %204, i32 %208)
  %210 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %211 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %212 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %211, i32 0, i32 2
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @mt76x0_phy_set_band(%struct.mt76x02_dev* %210, i32 %215)
  %217 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %218 = load i32, i32* %10, align 4
  %219 = load i32, i32* %12, align 4
  %220 = call i32 @mt76x0_phy_set_chan_rf_params(%struct.mt76x02_dev* %217, i32 %218, i32 %219)
  %221 = load i32, i32* %10, align 4
  %222 = icmp eq i32 %221, 14
  br i1 %222, label %223, label %228

223:                                              ; preds = %178
  %224 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %225 = load i32, i32* @CORE, align 4
  %226 = call i32 @MT_BBP(i32 %225, i32 1)
  %227 = call i32 @mt76_set(%struct.mt76x02_dev* %224, i32 %226, i32 32)
  br label %233

228:                                              ; preds = %178
  %229 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %230 = load i32, i32* @CORE, align 4
  %231 = call i32 @MT_BBP(i32 %230, i32 1)
  %232 = call i32 @mt76_clear(%struct.mt76x02_dev* %229, i32 %231, i32 32)
  br label %233

233:                                              ; preds = %228, %223
  %234 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %235 = call i32 @mt76x0_read_rx_gain(%struct.mt76x02_dev* %234)
  %236 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %237 = load i32, i32* %12, align 4
  %238 = call i32 @mt76x0_phy_set_chan_bbp_params(%struct.mt76x02_dev* %236, i32 %237)
  %239 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %240 = call i32 @MT_RF(i32 0, i32 4)
  %241 = call i32 @BIT(i32 7)
  %242 = call i32 @mt76x0_rf_set(%struct.mt76x02_dev* %239, i32 %240, i32 %241)
  %243 = load i32, i32* %6, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %233
  br label %261

246:                                              ; preds = %233
  %247 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %248 = call i32 @mt76x02_init_agc_gain(%struct.mt76x02_dev* %247)
  %249 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %250 = call i32 @mt76x0_phy_calibrate(%struct.mt76x02_dev* %249, i32 0)
  %251 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %252 = call i32 @mt76x0_phy_set_txpower(%struct.mt76x02_dev* %251)
  %253 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %254 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %258 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %257, i32 0, i32 0
  %259 = load i32, i32* @MT_CALIBRATE_INTERVAL, align 4
  %260 = call i32 @ieee80211_queue_delayed_work(i32 %256, i32* %258, i32 %259)
  br label %261

261:                                              ; preds = %246, %245
  ret void
}

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @mt76_is_usb(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x0_phy_bbp_set_bw(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76x02_phy_set_bw(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76x02_phy_set_band(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_rmw(%struct.mt76x02_dev*, i32, i32, i32) #1

declare dso_local i32 @mt76x0_phy_set_band(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x0_phy_set_chan_rf_params(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_set(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @MT_BBP(i32, i32) #1

declare dso_local i32 @mt76_clear(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76x0_read_rx_gain(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x0_phy_set_chan_bbp_params(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x0_rf_set(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @MT_RF(i32, i32) #1

declare dso_local i32 @mt76x02_init_agc_gain(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x0_phy_calibrate(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x0_phy_set_txpower(%struct.mt76x02_dev*) #1

declare dso_local i32 @ieee80211_queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
