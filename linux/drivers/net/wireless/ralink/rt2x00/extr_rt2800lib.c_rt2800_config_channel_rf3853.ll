; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_channel_rf3853.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_channel_rf3853.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ieee80211_conf = type { i32 }
%struct.rf_channel = type { i32, i32, i32 }
%struct.channel_info = type { i32, i32, i32 }

@RFCSR1_RX0_PD = common dso_local global i32 0, align 4
@RFCSR1_TX0_PD = common dso_local global i32 0, align 4
@RFCSR1_RX1_PD = common dso_local global i32 0, align 4
@RFCSR1_TX1_PD = common dso_local global i32 0, align 4
@RFCSR1_RX2_PD = common dso_local global i32 0, align 4
@RFCSR1_TX2_PD = common dso_local global i32 0, align 4
@RFCSR1_RF_BLOCK_EN = common dso_local global i32 0, align 4
@RFCSR1_PLL_PD = common dso_local global i32 0, align 4
@RFCSR36_RF_BS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Channel:%d, pwr1:%02x, pwr2:%02x, pwr3:%02x\0A\00", align 1
@RFCSR3_VCOCAL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.ieee80211_conf*, %struct.rf_channel*, %struct.channel_info*)* @rt2800_config_channel_rf3853 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_config_channel_rf3853(%struct.rt2x00_dev* %0, %struct.ieee80211_conf* %1, %struct.rf_channel* %2, %struct.channel_info* %3) #0 {
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.ieee80211_conf*, align 8
  %7 = alloca %struct.rf_channel*, align 8
  %8 = alloca %struct.channel_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store %struct.ieee80211_conf* %1, %struct.ieee80211_conf** %6, align 8
  store %struct.rf_channel* %2, %struct.rf_channel** %7, align 8
  store %struct.channel_info* %3, %struct.channel_info** %8, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %16 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sle i32 %17, 14
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %21 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %20, i32 6, i32 64)
  br label %34

22:                                               ; preds = %4
  %23 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %24 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 132
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %29 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %28, i32 6, i32 128)
  br label %33

30:                                               ; preds = %22
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %32 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %31, i32 6, i32 64)
  br label %33

33:                                               ; preds = %30, %27
  br label %34

34:                                               ; preds = %33, %19
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %36 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %37 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %35, i32 8, i32 %38)
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %41 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %42 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %40, i32 9, i32 %43)
  %45 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %46 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sle i32 %47, 14
  br i1 %48, label %49, label %52

49:                                               ; preds = %34
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %51 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %50, i32 11, i32 70)
  br label %55

52:                                               ; preds = %34
  %53 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %54 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %53, i32 11, i32 72)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %57 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sle i32 %58, 14
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %62 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %61, i32 12, i32 26)
  br label %66

63:                                               ; preds = %55
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %65 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %64, i32 12, i32 82)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %68 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %67, i32 13, i32 18)
  %69 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %70 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %69, i32 1)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* @RFCSR1_RX0_PD, align 4
  %72 = call i32 @rt2x00_set_field8(i32* %9, i32 %71, i32 0)
  %73 = load i32, i32* @RFCSR1_TX0_PD, align 4
  %74 = call i32 @rt2x00_set_field8(i32* %9, i32 %73, i32 0)
  %75 = load i32, i32* @RFCSR1_RX1_PD, align 4
  %76 = call i32 @rt2x00_set_field8(i32* %9, i32 %75, i32 0)
  %77 = load i32, i32* @RFCSR1_TX1_PD, align 4
  %78 = call i32 @rt2x00_set_field8(i32* %9, i32 %77, i32 0)
  %79 = load i32, i32* @RFCSR1_RX2_PD, align 4
  %80 = call i32 @rt2x00_set_field8(i32* %9, i32 %79, i32 0)
  %81 = load i32, i32* @RFCSR1_TX2_PD, align 4
  %82 = call i32 @rt2x00_set_field8(i32* %9, i32 %81, i32 0)
  %83 = load i32, i32* @RFCSR1_RF_BLOCK_EN, align 4
  %84 = call i32 @rt2x00_set_field8(i32* %9, i32 %83, i32 1)
  %85 = load i32, i32* @RFCSR1_PLL_PD, align 4
  %86 = call i32 @rt2x00_set_field8(i32* %9, i32 %85, i32 1)
  %87 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %88 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  switch i32 %90, label %100 [
    i32 3, label %91
    i32 2, label %94
    i32 1, label %97
  ]

91:                                               ; preds = %66
  %92 = load i32, i32* @RFCSR1_TX2_PD, align 4
  %93 = call i32 @rt2x00_set_field8(i32* %9, i32 %92, i32 1)
  br label %94

94:                                               ; preds = %66, %91
  %95 = load i32, i32* @RFCSR1_TX1_PD, align 4
  %96 = call i32 @rt2x00_set_field8(i32* %9, i32 %95, i32 1)
  br label %97

97:                                               ; preds = %66, %94
  %98 = load i32, i32* @RFCSR1_TX0_PD, align 4
  %99 = call i32 @rt2x00_set_field8(i32* %9, i32 %98, i32 1)
  br label %100

100:                                              ; preds = %66, %97
  %101 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %102 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  switch i32 %104, label %114 [
    i32 3, label %105
    i32 2, label %108
    i32 1, label %111
  ]

105:                                              ; preds = %100
  %106 = load i32, i32* @RFCSR1_RX2_PD, align 4
  %107 = call i32 @rt2x00_set_field8(i32* %9, i32 %106, i32 1)
  br label %108

108:                                              ; preds = %100, %105
  %109 = load i32, i32* @RFCSR1_RX1_PD, align 4
  %110 = call i32 @rt2x00_set_field8(i32* %9, i32 %109, i32 1)
  br label %111

111:                                              ; preds = %100, %108
  %112 = load i32, i32* @RFCSR1_RX0_PD, align 4
  %113 = call i32 @rt2x00_set_field8(i32* %9, i32 %112, i32 1)
  br label %114

114:                                              ; preds = %100, %111
  %115 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %115, i32 1, i32 %116)
  %118 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %119 = call i32 @rt2800_freq_cal_mode1(%struct.rt2x00_dev* %118)
  %120 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %121 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %120, i32 30)
  store i32 %121, i32* %9, align 4
  %122 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %123 = call i64 @conf_is_ht40(%struct.ieee80211_conf* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %114
  %126 = load i32, i32* %9, align 4
  %127 = and i32 %126, -7
  store i32 %127, i32* %9, align 4
  br label %131

128:                                              ; preds = %114
  %129 = load i32, i32* %9, align 4
  %130 = or i32 %129, 6
  store i32 %130, i32* %9, align 4
  br label %131

131:                                              ; preds = %128, %125
  %132 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %132, i32 30, i32 %133)
  %135 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %136 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp sle i32 %137, 14
  br i1 %138, label %139, label %142

139:                                              ; preds = %131
  %140 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %141 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %140, i32 31, i32 160)
  br label %145

142:                                              ; preds = %131
  %143 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %144 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %143, i32 31, i32 128)
  br label %145

145:                                              ; preds = %142, %139
  %146 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %147 = call i64 @conf_is_ht40(%struct.ieee80211_conf* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %151 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %150, i32 32, i32 128)
  br label %155

152:                                              ; preds = %145
  %153 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %154 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %153, i32 32, i32 216)
  br label %155

155:                                              ; preds = %152, %149
  %156 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %157 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp sle i32 %158, 14
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %162 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %161, i32 34, i32 60)
  br label %166

163:                                              ; preds = %155
  %164 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %165 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %164, i32 34, i32 32)
  br label %166

166:                                              ; preds = %163, %160
  %167 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %168 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %167, i32 36)
  store i32 %168, i32* %9, align 4
  %169 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %170 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp sle i32 %171, 14
  br i1 %172, label %173, label %176

173:                                              ; preds = %166
  %174 = load i32, i32* @RFCSR36_RF_BS, align 4
  %175 = call i32 @rt2x00_set_field8(i32* %9, i32 %174, i32 1)
  br label %179

176:                                              ; preds = %166
  %177 = load i32, i32* @RFCSR36_RF_BS, align 4
  %178 = call i32 @rt2x00_set_field8(i32* %9, i32 %177, i32 0)
  br label %179

179:                                              ; preds = %176, %173
  %180 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %181 = load i32, i32* %9, align 4
  %182 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %180, i32 36, i32 %181)
  %183 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %184 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = icmp sle i32 %185, 14
  br i1 %186, label %187, label %188

187:                                              ; preds = %179
  store i32 35, i32* %9, align 4
  br label %203

188:                                              ; preds = %179
  %189 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %190 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = icmp slt i32 %191, 100
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  store i32 54, i32* %9, align 4
  br label %202

194:                                              ; preds = %188
  %195 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %196 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = icmp slt i32 %197, 132
  br i1 %198, label %199, label %200

199:                                              ; preds = %194
  store i32 50, i32* %9, align 4
  br label %201

200:                                              ; preds = %194
  store i32 48, i32* %9, align 4
  br label %201

201:                                              ; preds = %200, %199
  br label %202

202:                                              ; preds = %201, %193
  br label %203

203:                                              ; preds = %202, %187
  %204 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %205 = load i32, i32* %9, align 4
  %206 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %204, i32 39, i32 %205)
  %207 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %208 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp sle i32 %209, 14
  br i1 %210, label %211, label %214

211:                                              ; preds = %203
  %212 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %213 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %212, i32 44, i32 147)
  br label %217

214:                                              ; preds = %203
  %215 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %216 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %215, i32 44, i32 155)
  br label %217

217:                                              ; preds = %214, %211
  %218 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %219 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = icmp sle i32 %220, 14
  br i1 %221, label %222, label %223

222:                                              ; preds = %217
  store i32 187, i32* %9, align 4
  br label %238

223:                                              ; preds = %217
  %224 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %225 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = icmp slt i32 %226, 100
  br i1 %227, label %228, label %229

228:                                              ; preds = %223
  store i32 235, i32* %9, align 4
  br label %237

229:                                              ; preds = %223
  %230 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %231 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = icmp slt i32 %232, 132
  br i1 %233, label %234, label %235

234:                                              ; preds = %229
  store i32 179, i32* %9, align 4
  br label %236

235:                                              ; preds = %229
  store i32 155, i32* %9, align 4
  br label %236

236:                                              ; preds = %235, %234
  br label %237

237:                                              ; preds = %236, %228
  br label %238

238:                                              ; preds = %237, %222
  %239 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %240 = load i32, i32* %9, align 4
  %241 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %239, i32 45, i32 %240)
  %242 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %243 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = icmp sle i32 %244, 14
  br i1 %245, label %246, label %247

246:                                              ; preds = %238
  store i32 142, i32* %9, align 4
  br label %248

247:                                              ; preds = %238
  store i32 138, i32* %9, align 4
  br label %248

248:                                              ; preds = %247, %246
  %249 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %250 = load i32, i32* %9, align 4
  %251 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %249, i32 49, i32 %250)
  %252 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %253 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %252, i32 50, i32 134)
  %254 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %255 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %254, i32 51)
  store i32 %255, i32* %9, align 4
  %256 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %257 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = icmp sle i32 %258, 14
  br i1 %259, label %260, label %263

260:                                              ; preds = %248
  %261 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %262 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %261, i32 51, i32 117)
  br label %266

263:                                              ; preds = %248
  %264 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %265 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %264, i32 51, i32 81)
  br label %266

266:                                              ; preds = %263, %260
  %267 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %268 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %267, i32 52)
  store i32 %268, i32* %9, align 4
  %269 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %270 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = icmp sle i32 %271, 14
  br i1 %272, label %273, label %276

273:                                              ; preds = %266
  %274 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %275 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %274, i32 52, i32 69)
  br label %279

276:                                              ; preds = %266
  %277 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %278 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %277, i32 52, i32 5)
  br label %279

279:                                              ; preds = %276, %273
  %280 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %281 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = icmp sle i32 %282, 14
  br i1 %283, label %284, label %297

284:                                              ; preds = %279
  %285 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %286 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = and i32 %287, 31
  store i32 %288, i32* %11, align 4
  %289 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %290 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = and i32 %291, 31
  store i32 %292, i32* %12, align 4
  %293 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %294 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 4
  %296 = and i32 %295, 31
  store i32 %296, i32* %13, align 4
  br label %331

297:                                              ; preds = %279
  %298 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %299 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = and i32 %300, 24
  %302 = shl i32 %301, 1
  %303 = or i32 72, %302
  %304 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %305 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = and i32 %306, 7
  %308 = or i32 %303, %307
  store i32 %308, i32* %11, align 4
  %309 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %310 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = and i32 %311, 24
  %313 = shl i32 %312, 1
  %314 = or i32 72, %313
  %315 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %316 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = and i32 %317, 7
  %319 = or i32 %314, %318
  store i32 %319, i32* %12, align 4
  %320 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %321 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 4
  %323 = and i32 %322, 24
  %324 = shl i32 %323, 1
  %325 = or i32 72, %324
  %326 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %327 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 4
  %329 = and i32 %328, 7
  %330 = or i32 %325, %329
  store i32 %330, i32* %13, align 4
  br label %331

331:                                              ; preds = %297, %284
  %332 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %333 = load i32, i32* %11, align 4
  %334 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %332, i32 53, i32 %333)
  %335 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %336 = load i32, i32* %12, align 4
  %337 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %335, i32 54, i32 %336)
  %338 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %339 = load i32, i32* %13, align 4
  %340 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %338, i32 55, i32 %339)
  %341 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %342 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %343 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* %11, align 4
  %346 = load i32, i32* %12, align 4
  %347 = load i32, i32* %13, align 4
  %348 = call i32 @rt2x00_dbg(%struct.rt2x00_dev* %341, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %344, i32 %345, i32 %346, i32 %347)
  %349 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %350 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = ashr i32 %351, 5
  %353 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %354 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = and i32 %355, 224
  %357 = ashr i32 %356, 1
  %358 = or i32 %352, %357
  store i32 %358, i32* %10, align 4
  %359 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %360 = load i32, i32* %10, align 4
  %361 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %359, i32 109, i32 %360)
  %362 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %363 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %362, i32 110)
  store i32 %363, i32* %10, align 4
  %364 = load i32, i32* %10, align 4
  %365 = and i32 %364, 15
  store i32 %365, i32* %10, align 4
  %366 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %367 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %366, i32 0, i32 2
  %368 = load i32, i32* %367, align 4
  %369 = and i32 %368, 224
  %370 = ashr i32 %369, 1
  %371 = load i32, i32* %10, align 4
  %372 = or i32 %371, %370
  store i32 %372, i32* %10, align 4
  %373 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %374 = load i32, i32* %10, align 4
  %375 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %373, i32 110, i32 %374)
  %376 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %377 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %376, i32 57)
  store i32 %377, i32* %9, align 4
  %378 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %379 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = icmp sle i32 %380, 14
  br i1 %381, label %382, label %385

382:                                              ; preds = %331
  %383 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %384 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %383, i32 57, i32 110)
  br label %388

385:                                              ; preds = %331
  %386 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %387 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %386, i32 57, i32 62)
  br label %388

388:                                              ; preds = %385, %382
  %389 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %390 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %389, i32 3)
  store i32 %390, i32* %9, align 4
  %391 = load i32, i32* @RFCSR3_VCOCAL_EN, align 4
  %392 = call i32 @rt2x00_set_field8(i32* %9, i32 %391, i32 1)
  %393 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %394 = load i32, i32* %9, align 4
  %395 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %393, i32 3, i32 %394)
  %396 = call i32 @udelay(i32 2000)
  %397 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %398 = call i32 @rt2800_bbp_read(%struct.rt2x00_dev* %397, i32 49)
  store i32 %398, i32* %10, align 4
  %399 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %400 = load i32, i32* %10, align 4
  %401 = and i32 %400, 254
  %402 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %399, i32 49, i32 %401)
  %403 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %404 = load i32, i32* %10, align 4
  %405 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %403, i32 49, i32 %404)
  ret void
}

declare dso_local i32 @rt2800_rfcsr_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_rfcsr_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

declare dso_local i32 @rt2800_freq_cal_mode1(%struct.rt2x00_dev*) #1

declare dso_local i64 @conf_is_ht40(%struct.ieee80211_conf*) #1

declare dso_local i32 @rt2x00_dbg(%struct.rt2x00_dev*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_bbp_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
