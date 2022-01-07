; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8812ae_dm_txpwr_track_set_pwr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8812ae_dm_txpwr_track_set_pwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32 }
%struct.rtl_dm = type { i32, i32*, i32, i32*, i32, i32*, i32, i32 }

@COMP_POWER_TRACKING = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"===>rtl8812ae_dm_txpwr_track_set_pwr\0A\00", align 1
@MGN_1M = common dso_local global i32 0, align 4
@MGN_11M = common dso_local global i32 0, align 4
@MGN_6M = common dso_local global i32 0, align 4
@MGN_48M = common dso_local global i32 0, align 4
@MGN_54M = common dso_local global i32 0, align 4
@MGN_MCS0 = common dso_local global i32 0, align 4
@MGN_MCS2 = common dso_local global i32 0, align 4
@MGN_MCS3 = common dso_local global i32 0, align 4
@MGN_MCS4 = common dso_local global i32 0, align 4
@MGN_MCS5 = common dso_local global i32 0, align 4
@MGN_MCS7 = common dso_local global i32 0, align 4
@MGN_MCS8 = common dso_local global i32 0, align 4
@MGN_MCS10 = common dso_local global i32 0, align 4
@MGN_MCS11 = common dso_local global i32 0, align 4
@MGN_MCS12 = common dso_local global i32 0, align 4
@MGN_MCS13 = common dso_local global i32 0, align 4
@MGN_MCS15 = common dso_local global i32 0, align 4
@MGN_VHT1SS_MCS0 = common dso_local global i32 0, align 4
@MGN_VHT1SS_MCS2 = common dso_local global i32 0, align 4
@MGN_VHT1SS_MCS3 = common dso_local global i32 0, align 4
@MGN_VHT1SS_MCS4 = common dso_local global i32 0, align 4
@MGN_VHT1SS_MCS5 = common dso_local global i32 0, align 4
@MGN_VHT1SS_MCS6 = common dso_local global i32 0, align 4
@MGN_VHT1SS_MCS7 = common dso_local global i32 0, align 4
@MGN_VHT1SS_MCS8 = common dso_local global i32 0, align 4
@MGN_VHT1SS_MCS9 = common dso_local global i32 0, align 4
@MGN_VHT2SS_MCS0 = common dso_local global i32 0, align 4
@MGN_VHT2SS_MCS2 = common dso_local global i32 0, align 4
@MGN_VHT2SS_MCS3 = common dso_local global i32 0, align 4
@MGN_VHT2SS_MCS4 = common dso_local global i32 0, align 4
@MGN_VHT2SS_MCS5 = common dso_local global i32 0, align 4
@MGN_VHT2SS_MCS6 = common dso_local global i32 0, align 4
@MGN_VHT2SS_MCS7 = common dso_local global i32 0, align 4
@MGN_VHT2SS_MCS8 = common dso_local global i32 0, align 4
@MGN_VHT2SS_MCS9 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"TxRate=0x%x, PwrTrackingLimit=%d\0A\00", align 1
@BBSWING = common dso_local global i32 0, align 4
@RF90_PATH_A = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [97 x i8] c"pDM_Odm->RFCalibrateInfo.OFDM_index[ODM_RF_PATH_A]=%d,pDM_Odm->RealBbSwingIdx[ODM_RF_PATH_A]=%d\0A\00", align 1
@RA_TXSCALE = common dso_local global i32 0, align 4
@txscaling_tbl = common dso_local global i32* null, align 8
@RF90_PATH_B = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [98 x i8] c"pDM_Odm->RFCalibrateInfo.OFDM_index[ODM_RF_PATH_B]=%d, pDM_Odm->RealBbSwingIdx[ODM_RF_PATH_B]=%d\0A\00", align 1
@RB_TXSCALE = common dso_local global i32 0, align 4
@MIX_MODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [87 x i8] c"pDM_Odm->DefaultOfdmIndex=%d, pDM_Odm->Absolute_OFDMSwingIdx[RFPath]=%d, RF_Path = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [82 x i8] c"******Path_A Over BBSwing Limit ,PwrTrackingLimit = %d ,Remnant TxAGC Value = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [75 x i8] c"******Path_A Lower then BBSwing lower bound  0 , Remnant TxAGC Value = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c"******Path_A Compensate with BBSwing, Final_OFDM_Swing_Index = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"******Path_A pDM_Odm->Modify_TxAGC_Flag = FALSE\0A\00", align 1
@.str.9 = private unnamed_addr constant [84 x i8] c"******Path_B Over BBSwing Limit , PwrTrackingLimit = %d , Remnant TxAGC Value = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [75 x i8] c"******Path_B Lower then BBSwing lower bound  0 , Remnant TxAGC Value = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [67 x i8] c"******Path_B Compensate with BBSwing ,Final_OFDM_Swing_Index = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"******Path_B pDM_Odm->Modify_TxAGC_Flag = FALSE\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8812ae_dm_txpwr_track_set_pwr(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.rtl_dm*, align 8
  %11 = alloca %struct.rtl_phy*, align 8
  %12 = alloca [2 x i64], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %19 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %18)
  store %struct.rtl_priv* %19, %struct.rtl_priv** %9, align 8
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %21 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %20)
  %22 = call %struct.rtl_dm* @rtl_dm(%struct.rtl_priv* %21)
  store %struct.rtl_dm* %22, %struct.rtl_dm** %10, align 8
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %24 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %23, i32 0, i32 0
  store %struct.rtl_phy* %24, %struct.rtl_phy** %11, align 8
  store i32 26, i32* %13, align 4
  store i32 255, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %25 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %26 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 255
  br i1 %28, label %29, label %35

29:                                               ; preds = %4
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %31 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %32 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @rtl8821ae_hw_rate_to_mrate(%struct.ieee80211_hw* %30, i32 %33)
  store i32 %34, i32* %14, align 4
  br label %35

35:                                               ; preds = %29, %4
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %37 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %38 = load i32, i32* @DBG_LOUD, align 4
  %39 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %36, i32 %37, i32 %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 255
  br i1 %41, label %42, label %225

42:                                               ; preds = %35
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @MGN_1M, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @MGN_11M, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 32, i32* %13, align 4
  br label %224

51:                                               ; preds = %46, %42
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @MGN_6M, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @MGN_48M, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 30, i32* %13, align 4
  br label %223

60:                                               ; preds = %55, %51
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @MGN_54M, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 28, i32* %13, align 4
  br label %222

65:                                               ; preds = %60
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @MGN_MCS0, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @MGN_MCS2, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 34, i32* %13, align 4
  br label %221

74:                                               ; preds = %69, %65
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* @MGN_MCS3, align 4
  %77 = icmp sge i32 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @MGN_MCS4, align 4
  %81 = icmp sle i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 30, i32* %13, align 4
  br label %220

83:                                               ; preds = %78, %74
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* @MGN_MCS5, align 4
  %86 = icmp sge i32 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* @MGN_MCS7, align 4
  %90 = icmp sle i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 28, i32* %13, align 4
  br label %219

92:                                               ; preds = %87, %83
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* @MGN_MCS8, align 4
  %95 = icmp sge i32 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* @MGN_MCS10, align 4
  %99 = icmp sle i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i32 34, i32* %13, align 4
  br label %218

101:                                              ; preds = %96, %92
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* @MGN_MCS11, align 4
  %104 = icmp sge i32 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* @MGN_MCS12, align 4
  %108 = icmp sle i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  store i32 30, i32* %13, align 4
  br label %217

110:                                              ; preds = %105, %101
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* @MGN_MCS13, align 4
  %113 = icmp sge i32 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* @MGN_MCS15, align 4
  %117 = icmp sle i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  store i32 28, i32* %13, align 4
  br label %216

119:                                              ; preds = %114, %110
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* @MGN_VHT1SS_MCS0, align 4
  %122 = icmp sge i32 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* @MGN_VHT1SS_MCS2, align 4
  %126 = icmp sle i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  store i32 34, i32* %13, align 4
  br label %215

128:                                              ; preds = %123, %119
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* @MGN_VHT1SS_MCS3, align 4
  %131 = icmp sge i32 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* @MGN_VHT1SS_MCS4, align 4
  %135 = icmp sle i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  store i32 30, i32* %13, align 4
  br label %214

137:                                              ; preds = %132, %128
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* @MGN_VHT1SS_MCS5, align 4
  %140 = icmp sge i32 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* @MGN_VHT1SS_MCS6, align 4
  %144 = icmp sle i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  store i32 28, i32* %13, align 4
  br label %213

146:                                              ; preds = %141, %137
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* @MGN_VHT1SS_MCS7, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  store i32 26, i32* %13, align 4
  br label %212

151:                                              ; preds = %146
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* @MGN_VHT1SS_MCS8, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  store i32 24, i32* %13, align 4
  br label %211

156:                                              ; preds = %151
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* @MGN_VHT1SS_MCS9, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  store i32 22, i32* %13, align 4
  br label %210

161:                                              ; preds = %156
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* @MGN_VHT2SS_MCS0, align 4
  %164 = icmp sge i32 %162, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %161
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* @MGN_VHT2SS_MCS2, align 4
  %168 = icmp sle i32 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  store i32 34, i32* %13, align 4
  br label %209

170:                                              ; preds = %165, %161
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* @MGN_VHT2SS_MCS3, align 4
  %173 = icmp sge i32 %171, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %170
  %175 = load i32, i32* %14, align 4
  %176 = load i32, i32* @MGN_VHT2SS_MCS4, align 4
  %177 = icmp sle i32 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  store i32 30, i32* %13, align 4
  br label %208

179:                                              ; preds = %174, %170
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* @MGN_VHT2SS_MCS5, align 4
  %182 = icmp sge i32 %180, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %179
  %184 = load i32, i32* %14, align 4
  %185 = load i32, i32* @MGN_VHT2SS_MCS6, align 4
  %186 = icmp sle i32 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %183
  store i32 28, i32* %13, align 4
  br label %207

188:                                              ; preds = %183, %179
  %189 = load i32, i32* %14, align 4
  %190 = load i32, i32* @MGN_VHT2SS_MCS7, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %188
  store i32 26, i32* %13, align 4
  br label %206

193:                                              ; preds = %188
  %194 = load i32, i32* %14, align 4
  %195 = load i32, i32* @MGN_VHT2SS_MCS8, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %193
  store i32 24, i32* %13, align 4
  br label %205

198:                                              ; preds = %193
  %199 = load i32, i32* %14, align 4
  %200 = load i32, i32* @MGN_VHT2SS_MCS9, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %198
  store i32 22, i32* %13, align 4
  br label %204

203:                                              ; preds = %198
  store i32 24, i32* %13, align 4
  br label %204

204:                                              ; preds = %203, %202
  br label %205

205:                                              ; preds = %204, %197
  br label %206

206:                                              ; preds = %205, %192
  br label %207

207:                                              ; preds = %206, %187
  br label %208

208:                                              ; preds = %207, %178
  br label %209

209:                                              ; preds = %208, %169
  br label %210

210:                                              ; preds = %209, %160
  br label %211

211:                                              ; preds = %210, %155
  br label %212

212:                                              ; preds = %211, %150
  br label %213

213:                                              ; preds = %212, %145
  br label %214

214:                                              ; preds = %213, %136
  br label %215

215:                                              ; preds = %214, %127
  br label %216

216:                                              ; preds = %215, %118
  br label %217

217:                                              ; preds = %216, %109
  br label %218

218:                                              ; preds = %217, %100
  br label %219

219:                                              ; preds = %218, %91
  br label %220

220:                                              ; preds = %219, %82
  br label %221

221:                                              ; preds = %220, %73
  br label %222

222:                                              ; preds = %221, %64
  br label %223

223:                                              ; preds = %222, %59
  br label %224

224:                                              ; preds = %223, %50
  br label %225

225:                                              ; preds = %224, %35
  %226 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %227 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %228 = load i32, i32* @DBG_LOUD, align 4
  %229 = load i32, i32* %14, align 4
  %230 = load i32, i32* %13, align 4
  %231 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %226, i32 %227, i32 %228, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %229, i32 %230)
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* @BBSWING, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %342

235:                                              ; preds = %225
  %236 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %237 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %238 = load i32, i32* @DBG_LOUD, align 4
  %239 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %236, i32 %237, i32 %238, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %240 = load i32, i32* %7, align 4
  %241 = load i32, i32* @RF90_PATH_A, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %295

243:                                              ; preds = %235
  %244 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %245 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* @RF90_PATH_A, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %13, align 4
  %252 = icmp sgt i32 %250, %251
  br i1 %252, label %253, label %255

253:                                              ; preds = %243
  %254 = load i32, i32* %13, align 4
  br label %263

255:                                              ; preds = %243
  %256 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %257 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %256, i32 0, i32 1
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* @RF90_PATH_A, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  br label %263

263:                                              ; preds = %255, %253
  %264 = phi i32 [ %254, %253 ], [ %262, %255 ]
  %265 = sext i32 %264 to i64
  %266 = load i32, i32* @RF90_PATH_A, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 %267
  store i64 %265, i64* %268, align 8
  %269 = load i32, i32* @RF90_PATH_A, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 %270
  %272 = load i64, i64* %271, align 8
  store i64 %272, i64* %16, align 8
  %273 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %274 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %275 = load i32, i32* @DBG_LOUD, align 4
  %276 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %277 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %276, i32 0, i32 1
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* @RF90_PATH_A, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @RF90_PATH_A, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 %284
  %286 = load i64, i64* %285, align 8
  %287 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %273, i32 %274, i32 %275, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.2, i64 0, i64 0), i32 %282, i64 %286)
  %288 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %289 = load i32, i32* @RA_TXSCALE, align 4
  %290 = load i32*, i32** @txscaling_tbl, align 8
  %291 = load i64, i64* %16, align 8
  %292 = getelementptr inbounds i32, i32* %290, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %288, i32 %289, i32 -2097152, i32 %293)
  br label %341

295:                                              ; preds = %235
  %296 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %297 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %296, i32 0, i32 1
  %298 = load i32*, i32** %297, align 8
  %299 = load i64, i64* @RF90_PATH_B, align 8
  %300 = getelementptr inbounds i32, i32* %298, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* %13, align 4
  %303 = icmp sgt i32 %301, %302
  br i1 %303, label %304, label %306

304:                                              ; preds = %295
  %305 = load i32, i32* %13, align 4
  br label %313

306:                                              ; preds = %295
  %307 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %308 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %307, i32 0, i32 1
  %309 = load i32*, i32** %308, align 8
  %310 = load i64, i64* @RF90_PATH_B, align 8
  %311 = getelementptr inbounds i32, i32* %309, i64 %310
  %312 = load i32, i32* %311, align 4
  br label %313

313:                                              ; preds = %306, %304
  %314 = phi i32 [ %305, %304 ], [ %312, %306 ]
  %315 = sext i32 %314 to i64
  %316 = load i64, i64* @RF90_PATH_B, align 8
  %317 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 %316
  store i64 %315, i64* %317, align 8
  %318 = load i64, i64* @RF90_PATH_B, align 8
  %319 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 %318
  %320 = load i64, i64* %319, align 8
  store i64 %320, i64* %17, align 8
  %321 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %322 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %323 = load i32, i32* @DBG_LOUD, align 4
  %324 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %325 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %324, i32 0, i32 1
  %326 = load i32*, i32** %325, align 8
  %327 = load i64, i64* @RF90_PATH_B, align 8
  %328 = getelementptr inbounds i32, i32* %326, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = load i64, i64* @RF90_PATH_B, align 8
  %331 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 %330
  %332 = load i64, i64* %331, align 8
  %333 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %321, i32 %322, i32 %323, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.3, i64 0, i64 0), i32 %329, i64 %332)
  %334 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %335 = load i32, i32* @RB_TXSCALE, align 4
  %336 = load i32*, i32** @txscaling_tbl, align 8
  %337 = load i64, i64* %17, align 8
  %338 = getelementptr inbounds i32, i32* %336, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %334, i32 %335, i32 -2097152, i32 %339)
  br label %341

341:                                              ; preds = %313, %263
  br label %633

342:                                              ; preds = %225
  %343 = load i32, i32* %6, align 4
  %344 = load i32, i32* @MIX_MODE, align 4
  %345 = icmp eq i32 %343, %344
  br i1 %345, label %346, label %631

346:                                              ; preds = %342
  %347 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %348 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %349 = load i32, i32* @DBG_LOUD, align 4
  %350 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %351 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %354 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %353, i32 0, i32 3
  %355 = load i32*, i32** %354, align 8
  %356 = load i32, i32* %7, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %355, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = load i32, i32* %7, align 4
  %361 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %347, i32 %348, i32 %349, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.4, i64 0, i64 0), i32 %352, i32 %359, i32 %360)
  %362 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %363 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 8
  %365 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %366 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %365, i32 0, i32 3
  %367 = load i32*, i32** %366, align 8
  %368 = load i32, i32* %7, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %367, i64 %369
  %371 = load i32, i32* %370, align 4
  %372 = add nsw i32 %364, %371
  store i32 %372, i32* %15, align 4
  %373 = load i32, i32* %7, align 4
  %374 = load i32, i32* @RF90_PATH_A, align 4
  %375 = icmp eq i32 %373, %374
  br i1 %375, label %376, label %507

376:                                              ; preds = %346
  %377 = load i32, i32* %15, align 4
  %378 = load i32, i32* %13, align 4
  %379 = icmp sgt i32 %377, %378
  br i1 %379, label %380, label %424

380:                                              ; preds = %376
  %381 = load i32, i32* %15, align 4
  %382 = load i32, i32* %13, align 4
  %383 = sub nsw i32 %381, %382
  %384 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %385 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %384, i32 0, i32 4
  store i32 %383, i32* %385, align 8
  %386 = load i32, i32* %15, align 4
  %387 = load i32, i32* %13, align 4
  %388 = sub nsw i32 %386, %387
  %389 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %390 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %389, i32 0, i32 5
  %391 = load i32*, i32** %390, align 8
  %392 = load i32, i32* %7, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %391, i64 %393
  store i32 %388, i32* %394, align 4
  %395 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %396 = load i32, i32* @RA_TXSCALE, align 4
  %397 = load i32*, i32** @txscaling_tbl, align 8
  %398 = load i32, i32* %13, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %397, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %395, i32 %396, i32 -2097152, i32 %401)
  %403 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %404 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %403, i32 0, i32 6
  store i32 1, i32* %404, align 8
  %405 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %406 = load %struct.rtl_phy*, %struct.rtl_phy** %11, align 8
  %407 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = load i32, i32* @RF90_PATH_A, align 4
  %410 = sext i32 %409 to i64
  %411 = call i32 @rtl8821ae_phy_set_txpower_level_by_path(%struct.ieee80211_hw* %405, i32 %408, i64 %410)
  %412 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %413 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %414 = load i32, i32* @DBG_LOUD, align 4
  %415 = load i32, i32* %13, align 4
  %416 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %417 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %416, i32 0, i32 5
  %418 = load i32*, i32** %417, align 8
  %419 = load i32, i32* %7, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %418, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %412, i32 %413, i32 %414, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.5, i64 0, i64 0), i32 %415, i32 %422)
  br label %506

424:                                              ; preds = %376
  %425 = load i32, i32* %15, align 4
  %426 = icmp slt i32 %425, 0
  br i1 %426, label %427, label %464

427:                                              ; preds = %424
  %428 = load i32, i32* %15, align 4
  %429 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %430 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %429, i32 0, i32 4
  store i32 %428, i32* %430, align 8
  %431 = load i32, i32* %15, align 4
  %432 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %433 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %432, i32 0, i32 5
  %434 = load i32*, i32** %433, align 8
  %435 = load i32, i32* %7, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i32, i32* %434, i64 %436
  store i32 %431, i32* %437, align 4
  %438 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %439 = load i32, i32* @RA_TXSCALE, align 4
  %440 = load i32*, i32** @txscaling_tbl, align 8
  %441 = getelementptr inbounds i32, i32* %440, i64 0
  %442 = load i32, i32* %441, align 4
  %443 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %438, i32 %439, i32 -2097152, i32 %442)
  %444 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %445 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %444, i32 0, i32 6
  store i32 1, i32* %445, align 8
  %446 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %447 = load %struct.rtl_phy*, %struct.rtl_phy** %11, align 8
  %448 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 4
  %450 = load i32, i32* @RF90_PATH_A, align 4
  %451 = sext i32 %450 to i64
  %452 = call i32 @rtl8821ae_phy_set_txpower_level_by_path(%struct.ieee80211_hw* %446, i32 %449, i64 %451)
  %453 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %454 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %455 = load i32, i32* @DBG_LOUD, align 4
  %456 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %457 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %456, i32 0, i32 5
  %458 = load i32*, i32** %457, align 8
  %459 = load i32, i32* %7, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %458, i64 %460
  %462 = load i32, i32* %461, align 4
  %463 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %453, i32 %454, i32 %455, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.6, i64 0, i64 0), i32 %462)
  br label %505

464:                                              ; preds = %424
  %465 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %466 = load i32, i32* @RA_TXSCALE, align 4
  %467 = load i32*, i32** @txscaling_tbl, align 8
  %468 = load i32, i32* %15, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i32, i32* %467, i64 %469
  %471 = load i32, i32* %470, align 4
  %472 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %465, i32 %466, i32 -2097152, i32 %471)
  %473 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %474 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %475 = load i32, i32* @DBG_LOUD, align 4
  %476 = load i32, i32* %15, align 4
  %477 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %473, i32 %474, i32 %475, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.7, i64 0, i64 0), i32 %476)
  %478 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %479 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %478, i32 0, i32 6
  %480 = load i32, i32* %479, align 8
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %504

482:                                              ; preds = %464
  %483 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %484 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %483, i32 0, i32 4
  store i32 0, i32* %484, align 8
  %485 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %486 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %485, i32 0, i32 5
  %487 = load i32*, i32** %486, align 8
  %488 = load i32, i32* %7, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i32, i32* %487, i64 %489
  store i32 0, i32* %490, align 4
  %491 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %492 = load %struct.rtl_phy*, %struct.rtl_phy** %11, align 8
  %493 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 4
  %495 = load i32, i32* @RF90_PATH_A, align 4
  %496 = sext i32 %495 to i64
  %497 = call i32 @rtl8821ae_phy_set_txpower_level_by_path(%struct.ieee80211_hw* %491, i32 %494, i64 %496)
  %498 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %499 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %498, i32 0, i32 6
  store i32 0, i32* %499, align 8
  %500 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %501 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %502 = load i32, i32* @DBG_LOUD, align 4
  %503 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %500, i32 %501, i32 %502, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0))
  br label %504

504:                                              ; preds = %482, %464
  br label %505

505:                                              ; preds = %504, %427
  br label %506

506:                                              ; preds = %505, %380
  br label %507

507:                                              ; preds = %506, %346
  %508 = load i32, i32* %7, align 4
  %509 = sext i32 %508 to i64
  %510 = load i64, i64* @RF90_PATH_B, align 8
  %511 = icmp eq i64 %509, %510
  br i1 %511, label %512, label %630

512:                                              ; preds = %507
  %513 = load i32, i32* %15, align 4
  %514 = load i32, i32* %13, align 4
  %515 = icmp sgt i32 %513, %514
  br i1 %515, label %516, label %554

516:                                              ; preds = %512
  %517 = load i32, i32* %15, align 4
  %518 = load i32, i32* %13, align 4
  %519 = sub nsw i32 %517, %518
  %520 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %521 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %520, i32 0, i32 5
  %522 = load i32*, i32** %521, align 8
  %523 = load i32, i32* %7, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds i32, i32* %522, i64 %524
  store i32 %519, i32* %525, align 4
  %526 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %527 = load i32, i32* @RB_TXSCALE, align 4
  %528 = load i32*, i32** @txscaling_tbl, align 8
  %529 = load i32, i32* %13, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds i32, i32* %528, i64 %530
  %532 = load i32, i32* %531, align 4
  %533 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %526, i32 %527, i32 -2097152, i32 %532)
  %534 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %535 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %534, i32 0, i32 7
  store i32 1, i32* %535, align 4
  %536 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %537 = load %struct.rtl_phy*, %struct.rtl_phy** %11, align 8
  %538 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %537, i32 0, i32 0
  %539 = load i32, i32* %538, align 4
  %540 = load i64, i64* @RF90_PATH_B, align 8
  %541 = call i32 @rtl8821ae_phy_set_txpower_level_by_path(%struct.ieee80211_hw* %536, i32 %539, i64 %540)
  %542 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %543 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %544 = load i32, i32* @DBG_LOUD, align 4
  %545 = load i32, i32* %13, align 4
  %546 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %547 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %546, i32 0, i32 5
  %548 = load i32*, i32** %547, align 8
  %549 = load i32, i32* %7, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i32, i32* %548, i64 %550
  %552 = load i32, i32* %551, align 4
  %553 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %542, i32 %543, i32 %544, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.9, i64 0, i64 0), i32 %545, i32 %552)
  br label %629

554:                                              ; preds = %512
  %555 = load i32, i32* %15, align 4
  %556 = icmp slt i32 %555, 0
  br i1 %556, label %557, label %590

557:                                              ; preds = %554
  %558 = load i32, i32* %15, align 4
  %559 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %560 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %559, i32 0, i32 5
  %561 = load i32*, i32** %560, align 8
  %562 = load i32, i32* %7, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds i32, i32* %561, i64 %563
  store i32 %558, i32* %564, align 4
  %565 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %566 = load i32, i32* @RB_TXSCALE, align 4
  %567 = load i32*, i32** @txscaling_tbl, align 8
  %568 = getelementptr inbounds i32, i32* %567, i64 0
  %569 = load i32, i32* %568, align 4
  %570 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %565, i32 %566, i32 -2097152, i32 %569)
  %571 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %572 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %571, i32 0, i32 7
  store i32 1, i32* %572, align 4
  %573 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %574 = load %struct.rtl_phy*, %struct.rtl_phy** %11, align 8
  %575 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %574, i32 0, i32 0
  %576 = load i32, i32* %575, align 4
  %577 = load i64, i64* @RF90_PATH_B, align 8
  %578 = call i32 @rtl8821ae_phy_set_txpower_level_by_path(%struct.ieee80211_hw* %573, i32 %576, i64 %577)
  %579 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %580 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %581 = load i32, i32* @DBG_LOUD, align 4
  %582 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %583 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %582, i32 0, i32 5
  %584 = load i32*, i32** %583, align 8
  %585 = load i32, i32* %7, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds i32, i32* %584, i64 %586
  %588 = load i32, i32* %587, align 4
  %589 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %579, i32 %580, i32 %581, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.10, i64 0, i64 0), i32 %588)
  br label %628

590:                                              ; preds = %554
  %591 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %592 = load i32, i32* @RB_TXSCALE, align 4
  %593 = load i32*, i32** @txscaling_tbl, align 8
  %594 = load i32, i32* %15, align 4
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds i32, i32* %593, i64 %595
  %597 = load i32, i32* %596, align 4
  %598 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %591, i32 %592, i32 -2097152, i32 %597)
  %599 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %600 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %601 = load i32, i32* @DBG_LOUD, align 4
  %602 = load i32, i32* %15, align 4
  %603 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %599, i32 %600, i32 %601, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.11, i64 0, i64 0), i32 %602)
  %604 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %605 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %604, i32 0, i32 7
  %606 = load i32, i32* %605, align 4
  %607 = icmp ne i32 %606, 0
  br i1 %607, label %608, label %627

608:                                              ; preds = %590
  %609 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %610 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %609, i32 0, i32 5
  %611 = load i32*, i32** %610, align 8
  %612 = load i32, i32* %7, align 4
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds i32, i32* %611, i64 %613
  store i32 0, i32* %614, align 4
  %615 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %616 = load %struct.rtl_phy*, %struct.rtl_phy** %11, align 8
  %617 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %616, i32 0, i32 0
  %618 = load i32, i32* %617, align 4
  %619 = load i64, i64* @RF90_PATH_B, align 8
  %620 = call i32 @rtl8821ae_phy_set_txpower_level_by_path(%struct.ieee80211_hw* %615, i32 %618, i64 %619)
  %621 = load %struct.rtl_dm*, %struct.rtl_dm** %10, align 8
  %622 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %621, i32 0, i32 7
  store i32 0, i32* %622, align 4
  %623 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %624 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %625 = load i32, i32* @DBG_LOUD, align 4
  %626 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %623, i32 %624, i32 %625, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0))
  br label %627

627:                                              ; preds = %608, %590
  br label %628

628:                                              ; preds = %627, %557
  br label %629

629:                                              ; preds = %628, %516
  br label %630

630:                                              ; preds = %629, %507
  br label %632

631:                                              ; preds = %342
  br label %633

632:                                              ; preds = %630
  br label %633

633:                                              ; preds = %631, %632, %341
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_dm* @rtl_dm(%struct.rtl_priv*) #1

declare dso_local i32 @rtl8821ae_hw_rate_to_mrate(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @rtl8821ae_phy_set_txpower_level_by_path(%struct.ieee80211_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
