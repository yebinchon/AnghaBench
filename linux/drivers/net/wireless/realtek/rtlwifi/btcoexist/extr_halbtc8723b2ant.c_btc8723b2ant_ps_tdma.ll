; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_ps_tdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_ps_tdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.btc_coexist = type { %struct.btc_bt_link_info, %struct.rtl_priv* }
%struct.btc_bt_link_info = type { i64, i64 }
%struct.rtl_priv = type { i32 }

@BT_8723B_2ANT_WIFI_RSSI_COEXSWITCH_THRES = common dso_local global i32 0, align 4
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8
@BT_8723B_2ANT_BT_RSSI_COEXSWITCH_THRES = common dso_local global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"[BTCoex], %s turn %s PS TDMA, type=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"force to\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"[BTCoex], bPrePsTdmaOn = %d, bCurPsTdmaOn = %d!!\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"[BTCoex], prePsTdma = %d, curPsTdma = %d!!\0A\00", align 1
@coex_sta = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32, i32, i32)* @btc8723b2ant_ps_tdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8723b2ant_ps_tdma(%struct.btc_coexist* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.btc_coexist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.btc_bt_link_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %17 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %16, i32 0, i32 1
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %17, align 8
  store %struct.rtl_priv* %18, %struct.rtl_priv** %9, align 8
  %19 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %20 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %19, i32 0, i32 0
  store %struct.btc_bt_link_info* %20, %struct.btc_bt_link_info** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %21 = load i32, i32* @BT_8723B_2ANT_WIFI_RSSI_COEXSWITCH_THRES, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %21, %24
  store i32 %25, i32* %15, align 4
  %26 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %27 = load i32, i32* %15, align 4
  %28 = call i32 @btc8723b2ant_wifi_rssi_state(%struct.btc_coexist* %26, i32 0, i32 2, i32 %27, i32 0)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* @BT_8723B_2ANT_BT_RSSI_COEXSWITCH_THRES, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %29, %32
  store i32 %33, i32* %15, align 4
  %34 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %35 = load i32, i32* %15, align 4
  %36 = call i32 @btc8723b2ant_bt_rssi_state(%struct.btc_coexist* %34, i32 2, i32 %35, i32 0)
  store i32 %36, i32* %12, align 4
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %38 = load i32, i32* @COMP_BT_COEXIST, align 4
  %39 = load i32, i32* @DBG_LOUD, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %48 = load i32, i32* %8, align 4
  %49 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %37, i32 %38, i32 %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %43, i8* %47, i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i64 @BTC_RSSI_HIGH(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %4
  %60 = load i32, i32* %12, align 4
  %61 = call i64 @BTC_RSSI_HIGH(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %59, %4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 100
  store i32 %68, i32* %8, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  store i32 1, i32* %70, align 4
  br label %74

71:                                               ; preds = %63, %59
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %115, label %77

77:                                               ; preds = %74
  %78 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %79 = load i32, i32* @COMP_BT_COEXIST, align 4
  %80 = load i32, i32* @DBG_LOUD, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %78, i32 %79, i32 %80, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %83, i32 %86)
  %88 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %89 = load i32, i32* @COMP_BT_COEXIST, align 4
  %90 = load i32, i32* @DBG_LOUD, align 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %88, i32 %89, i32 %90, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %93, i32 %96)
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %100, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %77
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %108, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %375

114:                                              ; preds = %105, %77
  br label %115

115:                                              ; preds = %114, %74
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp sle i32 %118, 5
  br i1 %119, label %120, label %135

120:                                              ; preds = %115
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp sge i32 %123, 45
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  store i32 -15, i32* %13, align 4
  br label %134

126:                                              ; preds = %120
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp sge i32 %129, 35
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  store i32 -10, i32* %13, align 4
  br label %133

132:                                              ; preds = %126
  store i32 5, i32* %13, align 4
  br label %133

133:                                              ; preds = %132, %131
  br label %134

134:                                              ; preds = %133, %125
  br label %192

135:                                              ; preds = %115
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp sle i32 %138, 20
  br i1 %139, label %140, label %155

140:                                              ; preds = %135
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp sge i32 %143, 45
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  store i32 -15, i32* %13, align 4
  br label %154

146:                                              ; preds = %140
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp sge i32 %149, 35
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  store i32 -10, i32* %13, align 4
  br label %153

152:                                              ; preds = %146
  store i32 0, i32* %13, align 4
  br label %153

153:                                              ; preds = %152, %151
  br label %154

154:                                              ; preds = %153, %145
  br label %191

155:                                              ; preds = %135
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp sle i32 %158, 40
  br i1 %159, label %160, label %175

160:                                              ; preds = %155
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp sge i32 %163, 45
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  store i32 -15, i32* %13, align 4
  br label %174

166:                                              ; preds = %160
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp sge i32 %169, 35
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  store i32 -10, i32* %13, align 4
  br label %173

172:                                              ; preds = %166
  store i32 -5, i32* %13, align 4
  br label %173

173:                                              ; preds = %172, %171
  br label %174

174:                                              ; preds = %173, %165
  br label %190

175:                                              ; preds = %155
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp sge i32 %178, 45
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  store i32 -15, i32* %13, align 4
  br label %189

181:                                              ; preds = %175
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = icmp sge i32 %184, 35
  br i1 %185, label %186, label %187

186:                                              ; preds = %181
  store i32 -10, i32* %13, align 4
  br label %188

187:                                              ; preds = %181
  store i32 -10, i32* %13, align 4
  br label %188

188:                                              ; preds = %187, %186
  br label %189

189:                                              ; preds = %188, %180
  br label %190

190:                                              ; preds = %189, %174
  br label %191

191:                                              ; preds = %190, %154
  br label %192

192:                                              ; preds = %191, %134
  %193 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %10, align 8
  %194 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %192
  %198 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %10, align 8
  %199 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  store i32 1, i32* %14, align 4
  br label %203

203:                                              ; preds = %202, %197, %192
  %204 = load i32, i32* %7, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %352

206:                                              ; preds = %203
  %207 = load i32, i32* %8, align 4
  switch i32 %207, label %209 [
    i32 1, label %208
    i32 2, label %214
    i32 3, label %219
    i32 4, label %224
    i32 5, label %229
    i32 6, label %234
    i32 7, label %239
    i32 8, label %244
    i32 9, label %249
    i32 10, label %256
    i32 11, label %261
    i32 12, label %266
    i32 13, label %271
    i32 14, label %276
    i32 15, label %281
    i32 16, label %286
    i32 17, label %291
    i32 18, label %294
    i32 19, label %297
    i32 20, label %300
    i32 21, label %303
    i32 23, label %306
    i32 123, label %306
    i32 71, label %309
    i32 101, label %314
    i32 105, label %314
    i32 113, label %314
    i32 171, label %314
    i32 102, label %321
    i32 106, label %321
    i32 110, label %321
    i32 114, label %321
    i32 103, label %328
    i32 107, label %328
    i32 111, label %328
    i32 115, label %328
    i32 104, label %333
    i32 108, label %333
    i32 112, label %333
    i32 116, label %333
    i32 109, label %338
    i32 121, label %343
    i32 22, label %348
    i32 122, label %348
  ]

208:                                              ; preds = %206
  br label %209

209:                                              ; preds = %206, %208
  %210 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %211 = load i32, i32* %14, align 4
  %212 = or i32 144, %211
  %213 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %210, i32 227, i32 60, i32 3, i32 241, i32 %212)
  br label %351

214:                                              ; preds = %206
  %215 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %216 = load i32, i32* %14, align 4
  %217 = or i32 144, %216
  %218 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %215, i32 227, i32 45, i32 3, i32 241, i32 %217)
  br label %351

219:                                              ; preds = %206
  %220 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %221 = load i32, i32* %14, align 4
  %222 = or i32 144, %221
  %223 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %220, i32 227, i32 28, i32 3, i32 241, i32 %222)
  br label %351

224:                                              ; preds = %206
  %225 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %226 = load i32, i32* %14, align 4
  %227 = or i32 144, %226
  %228 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %225, i32 227, i32 16, i32 3, i32 241, i32 %227)
  br label %351

229:                                              ; preds = %206
  %230 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %231 = load i32, i32* %14, align 4
  %232 = or i32 144, %231
  %233 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %230, i32 227, i32 60, i32 3, i32 112, i32 %232)
  br label %351

234:                                              ; preds = %206
  %235 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %236 = load i32, i32* %14, align 4
  %237 = or i32 144, %236
  %238 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %235, i32 227, i32 45, i32 3, i32 112, i32 %237)
  br label %351

239:                                              ; preds = %206
  %240 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %241 = load i32, i32* %14, align 4
  %242 = or i32 144, %241
  %243 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %240, i32 227, i32 28, i32 3, i32 112, i32 %242)
  br label %351

244:                                              ; preds = %206
  %245 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %246 = load i32, i32* %14, align 4
  %247 = or i32 144, %246
  %248 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %245, i32 163, i32 16, i32 3, i32 112, i32 %247)
  br label %351

249:                                              ; preds = %206
  %250 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %251 = load i32, i32* %13, align 4
  %252 = add nsw i32 60, %251
  %253 = load i32, i32* %14, align 4
  %254 = or i32 144, %253
  %255 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %250, i32 227, i32 %252, i32 3, i32 241, i32 %254)
  br label %351

256:                                              ; preds = %206
  %257 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %258 = load i32, i32* %14, align 4
  %259 = or i32 144, %258
  %260 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %257, i32 227, i32 45, i32 3, i32 241, i32 %259)
  br label %351

261:                                              ; preds = %206
  %262 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %263 = load i32, i32* %14, align 4
  %264 = or i32 144, %263
  %265 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %262, i32 227, i32 28, i32 3, i32 241, i32 %264)
  br label %351

266:                                              ; preds = %206
  %267 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %268 = load i32, i32* %14, align 4
  %269 = or i32 144, %268
  %270 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %267, i32 227, i32 16, i32 3, i32 241, i32 %269)
  br label %351

271:                                              ; preds = %206
  %272 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %273 = load i32, i32* %14, align 4
  %274 = or i32 144, %273
  %275 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %272, i32 227, i32 60, i32 3, i32 112, i32 %274)
  br label %351

276:                                              ; preds = %206
  %277 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %278 = load i32, i32* %14, align 4
  %279 = or i32 144, %278
  %280 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %277, i32 227, i32 45, i32 3, i32 112, i32 %279)
  br label %351

281:                                              ; preds = %206
  %282 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %283 = load i32, i32* %14, align 4
  %284 = or i32 144, %283
  %285 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %282, i32 227, i32 28, i32 3, i32 112, i32 %284)
  br label %351

286:                                              ; preds = %206
  %287 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %288 = load i32, i32* %14, align 4
  %289 = or i32 144, %288
  %290 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %287, i32 227, i32 16, i32 3, i32 112, i32 %289)
  br label %351

291:                                              ; preds = %206
  %292 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %293 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %292, i32 163, i32 47, i32 47, i32 96, i32 144)
  br label %351

294:                                              ; preds = %206
  %295 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %296 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %295, i32 227, i32 5, i32 5, i32 225, i32 144)
  br label %351

297:                                              ; preds = %206
  %298 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %299 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %298, i32 227, i32 37, i32 37, i32 225, i32 144)
  br label %351

300:                                              ; preds = %206
  %301 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %302 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %301, i32 227, i32 37, i32 37, i32 96, i32 144)
  br label %351

303:                                              ; preds = %206
  %304 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %305 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %304, i32 227, i32 21, i32 3, i32 112, i32 144)
  br label %351

306:                                              ; preds = %206, %206
  %307 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %308 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %307, i32 227, i32 53, i32 3, i32 113, i32 16)
  br label %351

309:                                              ; preds = %206
  %310 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %311 = load i32, i32* %13, align 4
  %312 = add nsw i32 60, %311
  %313 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %310, i32 227, i32 %312, i32 3, i32 241, i32 144)
  br label %351

314:                                              ; preds = %206, %206, %206, %206
  %315 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %316 = load i32, i32* %13, align 4
  %317 = add nsw i32 58, %316
  %318 = load i32, i32* %14, align 4
  %319 = or i32 80, %318
  %320 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %315, i32 211, i32 %317, i32 3, i32 112, i32 %319)
  br label %351

321:                                              ; preds = %206, %206, %206, %206
  %322 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %323 = load i32, i32* %13, align 4
  %324 = add nsw i32 45, %323
  %325 = load i32, i32* %14, align 4
  %326 = or i32 80, %325
  %327 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %322, i32 211, i32 %324, i32 3, i32 112, i32 %326)
  br label %351

328:                                              ; preds = %206, %206, %206, %206
  %329 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %330 = load i32, i32* %14, align 4
  %331 = or i32 80, %330
  %332 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %329, i32 211, i32 28, i32 3, i32 112, i32 %331)
  br label %351

333:                                              ; preds = %206, %206, %206, %206
  %334 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %335 = load i32, i32* %14, align 4
  %336 = or i32 80, %335
  %337 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %334, i32 211, i32 16, i32 3, i32 112, i32 %336)
  br label %351

338:                                              ; preds = %206
  %339 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %340 = load i32, i32* %14, align 4
  %341 = or i32 144, %340
  %342 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %339, i32 227, i32 60, i32 3, i32 241, i32 %341)
  br label %351

343:                                              ; preds = %206
  %344 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %345 = load i32, i32* %14, align 4
  %346 = or i32 144, %345
  %347 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %344, i32 227, i32 21, i32 3, i32 112, i32 %346)
  br label %351

348:                                              ; preds = %206, %206
  %349 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %350 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %349, i32 227, i32 53, i32 3, i32 113, i32 17)
  br label %351

351:                                              ; preds = %348, %343, %338, %333, %328, %321, %314, %309, %306, %303, %300, %297, %294, %291, %286, %281, %276, %271, %266, %261, %256, %249, %244, %239, %234, %229, %224, %219, %214, %209
  br label %364

352:                                              ; preds = %203
  %353 = load i32, i32* %8, align 4
  switch i32 %353, label %360 [
    i32 0, label %354
    i32 1, label %357
  ]

354:                                              ; preds = %352
  %355 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %356 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %355, i32 0, i32 0, i32 0, i32 64, i32 0)
  br label %363

357:                                              ; preds = %352
  %358 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %359 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %358, i32 0, i32 0, i32 0, i32 72, i32 0)
  br label %363

360:                                              ; preds = %352
  %361 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %362 = call i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist* %361, i32 0, i32 0, i32 0, i32 64, i32 0)
  br label %363

363:                                              ; preds = %360, %357, %354
  br label %364

364:                                              ; preds = %363, %351
  %365 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %369 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %368, i32 0, i32 4
  store i32 %367, i32* %369, align 4
  %370 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %371 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %374 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %373, i32 0, i32 5
  store i32 %372, i32* %374, align 4
  br label %375

375:                                              ; preds = %364, %113
  ret void
}

declare dso_local i32 @btc8723b2ant_wifi_rssi_state(%struct.btc_coexist*, i32, i32, i32, i32) #1

declare dso_local i32 @btc8723b2ant_bt_rssi_state(%struct.btc_coexist*, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i64 @BTC_RSSI_HIGH(i32) #1

declare dso_local i32 @btc8723b2ant_set_fw_ps_tdma(%struct.btc_coexist*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
