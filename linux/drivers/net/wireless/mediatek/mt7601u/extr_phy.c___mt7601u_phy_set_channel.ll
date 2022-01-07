; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c___mt7601u_phy_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c___mt7601u_phy_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i64, i32, %struct.cfg80211_chan_def, i32, %struct.TYPE_4__*, i32 }
%struct.cfg80211_chan_def = type { i64, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_4__ = type { i32*, %struct.mt7601u_rate_power, i32 }
%struct.mt7601u_rate_power = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mt76_reg_pair = type { i32, i64, i32 }

@__mt7601u_phy_set_channel.freq_plan = internal constant [14 x [4 x i64]] [[4 x i64] [i64 153, i64 153, i64 9, i64 80], [4 x i64] [i64 70, i64 68, i64 10, i64 80], [4 x i64] [i64 236, i64 238, i64 10, i64 80], [4 x i64] [i64 153, i64 153, i64 11, i64 80], [4 x i64] [i64 70, i64 68, i64 8, i64 81], [4 x i64] [i64 236, i64 238, i64 8, i64 81], [4 x i64] [i64 153, i64 153, i64 9, i64 81], [4 x i64] [i64 70, i64 68, i64 10, i64 81], [4 x i64] [i64 236, i64 238, i64 10, i64 81], [4 x i64] [i64 153, i64 153, i64 11, i64 81], [4 x i64] [i64 70, i64 68, i64 8, i64 82], [4 x i64] [i64 236, i64 238, i64 8, i64 82], [4 x i64] [i64 153, i64 153, i64 9, i64 82], [4 x i64] [i64 51, i64 51, i64 11, i64 82]], align 16
@MT_BW_20 = common dso_local global i64 0, align 8
@NL80211_CHAN_HT40MINUS = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_40 = common dso_local global i64 0, align 8
@MT_BW_40 = common dso_local global i64 0, align 8
@NL80211_CHAN_HT40PLUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Error: invalid 40MHz channel!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Info: switching HT mode bw:%d below:%d\0A\00", align 1
@MT_MCU_MEMMAP_RF = common dso_local global i32 0, align 4
@MT_TX_ALC_CFG_0 = common dso_local global i32 0, align 4
@MT_MCU_MEMMAP_BBP = common dso_local global i32 0, align 4
@MT_TX_PWR_CFG_0 = common dso_local global i32 0, align 4
@MT7601U_STATE_SCANNING = common dso_local global i32 0, align 4
@FREQ_PLAN_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7601u_dev*, %struct.cfg80211_chan_def*)* @__mt7601u_phy_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mt7601u_phy_set_channel(%struct.mt7601u_dev* %0, %struct.cfg80211_chan_def* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt7601u_dev*, align 8
  %5 = alloca %struct.cfg80211_chan_def*, align 8
  %6 = alloca [4 x %struct.mt76_reg_pair], align 16
  %7 = alloca [3 x %struct.mt76_reg_pair], align 16
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mt7601u_rate_power*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %4, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %5, align 8
  %16 = bitcast [4 x %struct.mt76_reg_pair]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 96, i1 false)
  %17 = bitcast i8* %16 to [4 x %struct.mt76_reg_pair]*
  %18 = getelementptr inbounds [4 x %struct.mt76_reg_pair], [4 x %struct.mt76_reg_pair]* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %18, i32 0, i32 0
  store i32 17, i32* %19, align 16
  %20 = getelementptr inbounds [4 x %struct.mt76_reg_pair], [4 x %struct.mt76_reg_pair]* %17, i32 0, i32 1
  %21 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %20, i32 0, i32 0
  store i32 18, i32* %21, align 8
  %22 = getelementptr inbounds [4 x %struct.mt76_reg_pair], [4 x %struct.mt76_reg_pair]* %17, i32 0, i32 2
  %23 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %22, i32 0, i32 0
  store i32 19, i32* %23, align 16
  %24 = getelementptr inbounds [4 x %struct.mt76_reg_pair], [4 x %struct.mt76_reg_pair]* %17, i32 0, i32 3
  %25 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %24, i32 0, i32 0
  store i32 20, i32* %25, align 8
  %26 = getelementptr inbounds [3 x %struct.mt76_reg_pair], [3 x %struct.mt76_reg_pair]* %7, i64 0, i64 0
  %27 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %26, i32 0, i32 0
  store i32 62, i32* %27, align 8
  %28 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %26, i32 0, i32 1
  %29 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %30 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %29, i32 0, i32 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 55, %33
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %28, align 8
  %36 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %26, i32 0, i32 2
  store i32 0, i32* %36, align 8
  %37 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %26, i64 1
  %38 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %37, i32 0, i32 0
  store i32 63, i32* %38, align 8
  %39 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %37, i32 0, i32 1
  %40 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %41 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %40, i32 0, i32 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 55, %44
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %39, align 8
  %47 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %37, i32 0, i32 2
  store i32 0, i32* %47, align 8
  %48 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %37, i64 1
  %49 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %48, i32 0, i32 0
  store i32 64, i32* %49, align 8
  %50 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %48, i32 0, i32 1
  %51 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %52 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %51, i32 0, i32 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 55, %55
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %50, align 8
  %58 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %48, i32 0, i32 2
  store i32 0, i32* %58, align 8
  %59 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %60 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %59, i32 0, i32 1
  %61 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %60, align 8
  store %struct.ieee80211_channel* %61, %struct.ieee80211_channel** %8, align 8
  %62 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %63 = call i32 @cfg80211_get_chandef_type(%struct.cfg80211_chan_def* %62)
  store i32 %63, i32* %9, align 4
  %64 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %65 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %64, i32 0, i32 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store %struct.mt7601u_rate_power* %67, %struct.mt7601u_rate_power** %10, align 8
  %68 = load i64, i64* @MT_BW_20, align 8
  store i64 %68, i64* %13, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @NL80211_CHAN_HT40MINUS, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %12, align 4
  %73 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %74 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  %77 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %78 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @NL80211_CHAN_WIDTH_40, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %110

82:                                               ; preds = %2
  %83 = load i64, i64* @MT_BW_40, align 8
  store i64 %83, i64* %13, align 8
  %84 = load i32, i32* %11, align 4
  %85 = icmp sgt i32 %84, 1
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @NL80211_CHAN_HT40MINUS, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* %11, align 4
  %92 = sub nsw i32 %91, 2
  store i32 %92, i32* %11, align 4
  br label %109

93:                                               ; preds = %86, %82
  %94 = load i32, i32* %11, align 4
  %95 = icmp slt i32 %94, 12
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @NL80211_CHAN_HT40PLUS, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 2
  store i32 %102, i32* %11, align 4
  br label %108

103:                                              ; preds = %96, %93
  %104 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %105 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @dev_err(i32 %106, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %108

108:                                              ; preds = %103, %100
  br label %109

109:                                              ; preds = %108, %90
  br label %110

110:                                              ; preds = %109, %2
  %111 = load i64, i64* %13, align 8
  %112 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %113 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %111, %114
  br i1 %115, label %122, label %116

116:                                              ; preds = %110
  %117 = load i32, i32* %12, align 4
  %118 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %119 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %117, %120
  br i1 %121, label %122, label %141

122:                                              ; preds = %116, %110
  %123 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %124 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = load i64, i64* %13, align 8
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @dev_dbg(i32 %125, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %126, i32 %127)
  %129 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %130 = load i64, i64* %13, align 8
  %131 = call i32 @mt7601u_bbp_set_bw(%struct.mt7601u_dev* %129, i64 %130)
  %132 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @mt7601u_bbp_set_ctrlch(%struct.mt7601u_dev* %132, i32 %133)
  %135 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @mt7601u_mac_set_ctrlch(%struct.mt7601u_dev* %135, i32 %136)
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %140 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 8
  br label %141

141:                                              ; preds = %122, %116
  store i32 0, i32* %14, align 4
  br label %142

142:                                              ; preds = %157, %141
  %143 = load i32, i32* %14, align 4
  %144 = icmp slt i32 %143, 4
  br i1 %144, label %145, label %160

145:                                              ; preds = %142
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [14 x [4 x i64]], [14 x [4 x i64]]* @__mt7601u_phy_set_channel.freq_plan, i64 0, i64 %147
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [4 x i64], [4 x i64]* %148, i64 0, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [4 x %struct.mt76_reg_pair], [4 x %struct.mt76_reg_pair]* %6, i64 0, i64 %154
  %156 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %155, i32 0, i32 1
  store i64 %152, i64* %156, align 8
  br label %157

157:                                              ; preds = %145
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %14, align 4
  br label %142

160:                                              ; preds = %142
  %161 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %162 = load i32, i32* @MT_MCU_MEMMAP_RF, align 4
  %163 = getelementptr inbounds [4 x %struct.mt76_reg_pair], [4 x %struct.mt76_reg_pair]* %6, i64 0, i64 0
  %164 = call i32 @mt7601u_write_reg_pairs(%struct.mt7601u_dev* %161, i32 %162, %struct.mt76_reg_pair* %163, i32 4)
  store i32 %164, i32* %15, align 4
  %165 = load i32, i32* %15, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %160
  %168 = load i32, i32* %15, align 4
  store i32 %168, i32* %3, align 4
  br label %262

169:                                              ; preds = %160
  %170 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %171 = load i32, i32* @MT_TX_ALC_CFG_0, align 4
  %172 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %173 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %172, i32 0, i32 4
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %11, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = and i32 %180, 63
  %182 = call i32 @mt7601u_rmw(%struct.mt7601u_dev* %170, i32 %171, i32 16191, i32 %181)
  %183 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %184 = load i32, i32* @MT_MCU_MEMMAP_BBP, align 4
  %185 = getelementptr inbounds [3 x %struct.mt76_reg_pair], [3 x %struct.mt76_reg_pair]* %7, i64 0, i64 0
  %186 = getelementptr inbounds [3 x %struct.mt76_reg_pair], [3 x %struct.mt76_reg_pair]* %7, i64 0, i64 0
  %187 = call i32 @ARRAY_SIZE(%struct.mt76_reg_pair* %186)
  %188 = call i32 @mt7601u_write_reg_pairs(%struct.mt7601u_dev* %183, i32 %184, %struct.mt76_reg_pair* %185, i32 %187)
  store i32 %188, i32* %15, align 4
  %189 = load i32, i32* %15, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %169
  %192 = load i32, i32* %15, align 4
  store i32 %192, i32* %3, align 4
  br label %262

193:                                              ; preds = %169
  %194 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %195 = call i32 @mt7601u_vco_cal(%struct.mt7601u_dev* %194)
  %196 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %197 = load i64, i64* %13, align 8
  %198 = call i32 @mt7601u_bbp_set_bw(%struct.mt7601u_dev* %196, i64 %197)
  %199 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %200 = call i32 @mt7601u_set_bw_filter(%struct.mt7601u_dev* %199, i32 0)
  store i32 %200, i32* %15, align 4
  %201 = load i32, i32* %15, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %193
  %204 = load i32, i32* %15, align 4
  store i32 %204, i32* %3, align 4
  br label %262

205:                                              ; preds = %193
  %206 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %207 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %208 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @mt7601u_apply_ch14_fixup(%struct.mt7601u_dev* %206, i32 %209)
  %211 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %212 = load i32, i32* @MT_TX_PWR_CFG_0, align 4
  %213 = load %struct.mt7601u_rate_power*, %struct.mt7601u_rate_power** %10, align 8
  %214 = getelementptr inbounds %struct.mt7601u_rate_power, %struct.mt7601u_rate_power* %213, i32 0, i32 1
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i64 1
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @int_to_s6(i32 %218)
  %220 = shl i32 %219, 24
  %221 = load %struct.mt7601u_rate_power*, %struct.mt7601u_rate_power** %10, align 8
  %222 = getelementptr inbounds %struct.mt7601u_rate_power, %struct.mt7601u_rate_power* %221, i32 0, i32 1
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i64 0
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @int_to_s6(i32 %226)
  %228 = shl i32 %227, 16
  %229 = or i32 %220, %228
  %230 = load %struct.mt7601u_rate_power*, %struct.mt7601u_rate_power** %10, align 8
  %231 = getelementptr inbounds %struct.mt7601u_rate_power, %struct.mt7601u_rate_power* %230, i32 0, i32 0
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i64 1
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @int_to_s6(i32 %235)
  %237 = shl i32 %236, 8
  %238 = or i32 %229, %237
  %239 = load %struct.mt7601u_rate_power*, %struct.mt7601u_rate_power** %10, align 8
  %240 = getelementptr inbounds %struct.mt7601u_rate_power, %struct.mt7601u_rate_power* %239, i32 0, i32 0
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i64 0
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @int_to_s6(i32 %244)
  %246 = or i32 %238, %245
  %247 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %211, i32 %212, i32 %246)
  %248 = load i32, i32* @MT7601U_STATE_SCANNING, align 4
  %249 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %250 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %249, i32 0, i32 3
  %251 = call i64 @test_bit(i32 %248, i32* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %205
  %254 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %255 = call i32 @mt7601u_agc_reset(%struct.mt7601u_dev* %254)
  br label %256

256:                                              ; preds = %253, %205
  %257 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %258 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %257, i32 0, i32 2
  %259 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %260 = bitcast %struct.cfg80211_chan_def* %258 to i8*
  %261 = bitcast %struct.cfg80211_chan_def* %259 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %260, i8* align 8 %261, i64 16, i1 false)
  store i32 0, i32* %3, align 4
  br label %262

262:                                              ; preds = %256, %203, %191, %167
  %263 = load i32, i32* %3, align 4
  ret i32 %263
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cfg80211_get_chandef_type(%struct.cfg80211_chan_def*) #2

declare dso_local i32 @dev_err(i32, i8*) #2

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32) #2

declare dso_local i32 @mt7601u_bbp_set_bw(%struct.mt7601u_dev*, i64) #2

declare dso_local i32 @mt7601u_bbp_set_ctrlch(%struct.mt7601u_dev*, i32) #2

declare dso_local i32 @mt7601u_mac_set_ctrlch(%struct.mt7601u_dev*, i32) #2

declare dso_local i32 @mt7601u_write_reg_pairs(%struct.mt7601u_dev*, i32, %struct.mt76_reg_pair*, i32) #2

declare dso_local i32 @mt7601u_rmw(%struct.mt7601u_dev*, i32, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.mt76_reg_pair*) #2

declare dso_local i32 @mt7601u_vco_cal(%struct.mt7601u_dev*) #2

declare dso_local i32 @mt7601u_set_bw_filter(%struct.mt7601u_dev*, i32) #2

declare dso_local i32 @mt7601u_apply_ch14_fixup(%struct.mt7601u_dev*, i32) #2

declare dso_local i32 @mt7601u_wr(%struct.mt7601u_dev*, i32, i32) #2

declare dso_local i32 @int_to_s6(i32) #2

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local i32 @mt7601u_agc_reset(%struct.mt7601u_dev*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
