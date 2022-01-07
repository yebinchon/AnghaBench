; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_halbtc8723b1ant_ps_tdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_halbtc8723b1ant_ps_tdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)*, %struct.btc_bt_link_info }
%struct.btc_bt_link_info = type { i64, i64 }

@halbtc8723b1ant_ps_tdma.pre_wifi_busy = internal global i32 0, align 4
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8
@BTC_GET_BL_WIFI_BUSY = common dso_local global i32 0, align 4
@coex_sta = common dso_local global %struct.TYPE_3__* null, align 8
@BTC_ANT_PATH_PTA = common dso_local global i32 0, align 4
@FORCE_EXEC = common dso_local global i32 0, align 4
@BTC_SET_U1_RSSI_ADJ_VAL_FOR_1ANT_COEX_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32, i32, i32)* @halbtc8723b1ant_ps_tdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.btc_coexist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.btc_bt_link_info*, align 8
  %10 = alloca i32, align 4
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
  %17 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %16, i32 0, i32 2
  store %struct.btc_bt_link_info* %17, %struct.btc_bt_link_info** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 81, i32* %12, align 4
  store i32 16, i32* %13, align 4
  store i32 80, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %25 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %24, i32 0, i32 1
  %26 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %25, align 8
  %27 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %28 = load i32, i32* @BTC_GET_BL_WIFI_BUSY, align 4
  %29 = call i32 %26(%struct.btc_coexist* %27, i32 %28, i32* %10)
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @halbtc8723b1ant_ps_tdma.pre_wifi_busy, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  store i32 1, i32* %6, align 4
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* @halbtc8723b1ant_ps_tdma.pre_wifi_busy, align 4
  br label %35

35:                                               ; preds = %33, %4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %57, label %38

38:                                               ; preds = %35
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %38
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp eq i64 %49, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %483

56:                                               ; preds = %46, %38
  br label %57

57:                                               ; preds = %56, %35
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sle i32 %60, 5
  br i1 %61, label %62, label %76

62:                                               ; preds = %57
  store i32 5, i32* %15, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp sge i32 %65, 35
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 -10, i32* %15, align 4
  br label %75

68:                                               ; preds = %62
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp sge i32 %71, 45
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 -15, i32* %15, align 4
  br label %74

74:                                               ; preds = %73, %68
  br label %75

75:                                               ; preds = %74, %67
  br label %123

76:                                               ; preds = %57
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp sge i32 %79, 40
  br i1 %80, label %81, label %95

81:                                               ; preds = %76
  store i32 -15, i32* %15, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %84, 35
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 -5, i32* %15, align 4
  br label %94

87:                                               ; preds = %81
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %90, 45
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32 -10, i32* %15, align 4
  br label %93

93:                                               ; preds = %92, %87
  br label %94

94:                                               ; preds = %93, %86
  br label %122

95:                                               ; preds = %76
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp sge i32 %98, 20
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  store i32 -10, i32* %15, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp sge i32 %103, 45
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  store i32 -15, i32* %15, align 4
  br label %106

106:                                              ; preds = %105, %100
  br label %121

107:                                              ; preds = %95
  store i32 0, i32* %15, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp sge i32 %110, 35
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store i32 -10, i32* %15, align 4
  br label %120

113:                                              ; preds = %107
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp sge i32 %116, 45
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i32 -15, i32* %15, align 4
  br label %119

119:                                              ; preds = %118, %113
  br label %120

120:                                              ; preds = %119, %112
  br label %121

121:                                              ; preds = %120, %106
  br label %122

122:                                              ; preds = %121, %94
  br label %123

123:                                              ; preds = %122, %75
  %124 = load i32, i32* %8, align 4
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %147, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %8, align 4
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %147, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %8, align 4
  %131 = icmp eq i32 %130, 9
  br i1 %131, label %147, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %8, align 4
  %134 = icmp eq i32 %133, 11
  br i1 %134, label %147, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %8, align 4
  %137 = icmp eq i32 %136, 101
  br i1 %137, label %147, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* %8, align 4
  %140 = icmp eq i32 %139, 102
  br i1 %140, label %147, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* %8, align 4
  %143 = icmp eq i32 %142, 109
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %8, align 4
  %146 = icmp eq i32 %145, 111
  br i1 %146, label %147, label %155

147:                                              ; preds = %144, %141, %138, %135, %132, %129, %126, %123
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %147
  store i32 97, i32* %12, align 4
  store i32 17, i32* %13, align 4
  store i32 16, i32* %14, align 4
  br label %154

153:                                              ; preds = %147
  store i32 81, i32* %12, align 4
  store i32 16, i32* %13, align 4
  store i32 80, i32* %14, align 4
  br label %154

154:                                              ; preds = %153, %152
  br label %176

155:                                              ; preds = %144
  %156 = load i32, i32* %8, align 4
  %157 = icmp eq i32 %156, 3
  br i1 %157, label %173, label %158

158:                                              ; preds = %155
  %159 = load i32, i32* %8, align 4
  %160 = icmp eq i32 %159, 13
  br i1 %160, label %173, label %161

161:                                              ; preds = %158
  %162 = load i32, i32* %8, align 4
  %163 = icmp eq i32 %162, 14
  br i1 %163, label %173, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* %8, align 4
  %166 = icmp eq i32 %165, 103
  br i1 %166, label %173, label %167

167:                                              ; preds = %164
  %168 = load i32, i32* %8, align 4
  %169 = icmp eq i32 %168, 113
  br i1 %169, label %173, label %170

170:                                              ; preds = %167
  %171 = load i32, i32* %8, align 4
  %172 = icmp eq i32 %171, 114
  br i1 %172, label %173, label %174

173:                                              ; preds = %170, %167, %164, %161, %158, %155
  store i32 81, i32* %12, align 4
  store i32 16, i32* %13, align 4
  store i32 16, i32* %14, align 4
  br label %175

174:                                              ; preds = %170
  store i32 97, i32* %12, align 4
  store i32 17, i32* %13, align 4
  store i32 17, i32* %14, align 4
  br label %175

175:                                              ; preds = %174, %173
  br label %176

176:                                              ; preds = %175, %154
  %177 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %9, align 8
  %178 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %176
  %182 = load %struct.btc_bt_link_info*, %struct.btc_bt_link_info** %9, align 8
  %183 = getelementptr inbounds %struct.btc_bt_link_info, %struct.btc_bt_link_info* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %181
  %187 = load i32, i32* %14, align 4
  %188 = or i32 %187, 1
  store i32 %188, i32* %14, align 4
  br label %189

189:                                              ; preds = %186, %181, %176
  %190 = load i32, i32* %8, align 4
  %191 = icmp sgt i32 %190, 100
  br i1 %191, label %192, label %197

192:                                              ; preds = %189
  %193 = load i32, i32* %12, align 4
  %194 = or i32 %193, 130
  store i32 %194, i32* %12, align 4
  %195 = load i32, i32* %13, align 4
  %196 = or i32 %195, 96
  store i32 %196, i32* %13, align 4
  br label %197

197:                                              ; preds = %192, %189
  %198 = load i32, i32* %7, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %448

200:                                              ; preds = %197
  %201 = load i32, i32* %8, align 4
  switch i32 %201, label %202 [
    i32 1, label %206
    i32 2, label %214
    i32 3, label %222
    i32 4, label %228
    i32 5, label %231
    i32 6, label %236
    i32 7, label %241
    i32 8, label %244
    i32 9, label %247
    i32 10, label %253
    i32 11, label %256
    i32 12, label %262
    i32 13, label %265
    i32 14, label %283
    i32 15, label %298
    i32 16, label %301
    i32 18, label %304
    i32 20, label %307
    i32 21, label %312
    i32 22, label %315
    i32 23, label %320
    i32 24, label %323
    i32 25, label %326
    i32 26, label %329
    i32 27, label %332
    i32 28, label %335
    i32 29, label %338
    i32 30, label %341
    i32 31, label %344
    i32 32, label %347
    i32 33, label %353
    i32 34, label %358
    i32 35, label %361
    i32 36, label %364
    i32 40, label %367
    i32 101, label %370
    i32 102, label %378
    i32 103, label %386
    i32 105, label %392
    i32 106, label %397
    i32 109, label %402
    i32 111, label %408
    i32 113, label %414
    i32 114, label %420
    i32 120, label %426
    i32 122, label %431
    i32 132, label %436
    i32 133, label %442
  ]

202:                                              ; preds = %200
  %203 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %204 = load i32, i32* %14, align 4
  %205 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %203, i32 81, i32 26, i32 26, i32 0, i32 %204)
  br label %447

206:                                              ; preds = %200
  %207 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %208 = load i32, i32* %12, align 4
  %209 = load i32, i32* %15, align 4
  %210 = add nsw i32 58, %209
  %211 = load i32, i32* %13, align 4
  %212 = load i32, i32* %14, align 4
  %213 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %207, i32 %208, i32 %210, i32 3, i32 %211, i32 %212)
  store i32 11, i32* %11, align 4
  br label %447

214:                                              ; preds = %200
  %215 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %216 = load i32, i32* %12, align 4
  %217 = load i32, i32* %15, align 4
  %218 = add nsw i32 45, %217
  %219 = load i32, i32* %13, align 4
  %220 = load i32, i32* %14, align 4
  %221 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %215, i32 %216, i32 %218, i32 3, i32 %219, i32 %220)
  br label %447

222:                                              ; preds = %200
  %223 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %224 = load i32, i32* %12, align 4
  %225 = load i32, i32* %13, align 4
  %226 = load i32, i32* %14, align 4
  %227 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %223, i32 %224, i32 48, i32 3, i32 %225, i32 %226)
  br label %447

228:                                              ; preds = %200
  %229 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %230 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %229, i32 147, i32 21, i32 3, i32 20, i32 0)
  br label %447

231:                                              ; preds = %200
  %232 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %233 = load i32, i32* %12, align 4
  %234 = load i32, i32* %13, align 4
  %235 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %232, i32 %233, i32 31, i32 3, i32 %234, i32 17)
  br label %447

236:                                              ; preds = %200
  %237 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %238 = load i32, i32* %12, align 4
  %239 = load i32, i32* %13, align 4
  %240 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %237, i32 %238, i32 32, i32 3, i32 %239, i32 17)
  br label %447

241:                                              ; preds = %200
  %242 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %243 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %242, i32 19, i32 12, i32 5, i32 0, i32 0)
  br label %447

244:                                              ; preds = %200
  %245 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %246 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %245, i32 147, i32 37, i32 3, i32 16, i32 0)
  br label %447

247:                                              ; preds = %200
  %248 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %249 = load i32, i32* %12, align 4
  %250 = load i32, i32* %13, align 4
  %251 = load i32, i32* %14, align 4
  %252 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %248, i32 %249, i32 33, i32 3, i32 %250, i32 %251)
  br label %447

253:                                              ; preds = %200
  %254 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %255 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %254, i32 19, i32 10, i32 10, i32 0, i32 64)
  br label %447

256:                                              ; preds = %200
  %257 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %258 = load i32, i32* %12, align 4
  %259 = load i32, i32* %13, align 4
  %260 = load i32, i32* %14, align 4
  %261 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %257, i32 %258, i32 33, i32 3, i32 %259, i32 %260)
  br label %447

262:                                              ; preds = %200
  %263 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %264 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %263, i32 81, i32 10, i32 10, i32 0, i32 80)
  br label %447

265:                                              ; preds = %200
  %266 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = icmp sle i32 %268, 3
  br i1 %269, label %270, label %276

270:                                              ; preds = %265
  %271 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %272 = load i32, i32* %12, align 4
  %273 = load i32, i32* %13, align 4
  %274 = load i32, i32* %14, align 4
  %275 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %271, i32 %272, i32 64, i32 3, i32 %273, i32 %274)
  br label %282

276:                                              ; preds = %265
  %277 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %278 = load i32, i32* %12, align 4
  %279 = load i32, i32* %13, align 4
  %280 = load i32, i32* %14, align 4
  %281 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %277, i32 %278, i32 33, i32 3, i32 %279, i32 %280)
  br label %282

282:                                              ; preds = %276, %270
  br label %447

283:                                              ; preds = %200
  %284 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %285 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = icmp sle i32 %286, 3
  br i1 %287, label %288, label %291

288:                                              ; preds = %283
  %289 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %290 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %289, i32 81, i32 48, i32 3, i32 16, i32 80)
  br label %297

291:                                              ; preds = %283
  %292 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %293 = load i32, i32* %12, align 4
  %294 = load i32, i32* %13, align 4
  %295 = load i32, i32* %14, align 4
  %296 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %292, i32 %293, i32 33, i32 3, i32 %294, i32 %295)
  br label %297

297:                                              ; preds = %291, %288
  br label %447

298:                                              ; preds = %200
  %299 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %300 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %299, i32 19, i32 10, i32 3, i32 8, i32 0)
  br label %447

301:                                              ; preds = %200
  %302 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %303 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %302, i32 147, i32 21, i32 3, i32 16, i32 0)
  br label %447

304:                                              ; preds = %200
  %305 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %306 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %305, i32 147, i32 37, i32 3, i32 16, i32 0)
  br label %447

307:                                              ; preds = %200
  %308 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %309 = load i32, i32* %12, align 4
  %310 = load i32, i32* %13, align 4
  %311 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %308, i32 %309, i32 63, i32 3, i32 %310, i32 16)
  br label %447

312:                                              ; preds = %200
  %313 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %314 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %313, i32 97, i32 37, i32 3, i32 17, i32 17)
  br label %447

315:                                              ; preds = %200
  %316 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %317 = load i32, i32* %12, align 4
  %318 = load i32, i32* %13, align 4
  %319 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %316, i32 %317, i32 37, i32 3, i32 %318, i32 16)
  br label %447

320:                                              ; preds = %200
  %321 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %322 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %321, i32 227, i32 37, i32 3, i32 49, i32 24)
  br label %447

323:                                              ; preds = %200
  %324 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %325 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %324, i32 227, i32 21, i32 3, i32 49, i32 24)
  br label %447

326:                                              ; preds = %200
  %327 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %328 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %327, i32 227, i32 10, i32 3, i32 49, i32 24)
  br label %447

329:                                              ; preds = %200
  %330 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %331 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %330, i32 227, i32 10, i32 3, i32 49, i32 24)
  br label %447

332:                                              ; preds = %200
  %333 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %334 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %333, i32 227, i32 37, i32 3, i32 49, i32 152)
  br label %447

335:                                              ; preds = %200
  %336 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %337 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %336, i32 105, i32 37, i32 3, i32 49, i32 0)
  br label %447

338:                                              ; preds = %200
  %339 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %340 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %339, i32 171, i32 26, i32 26, i32 1, i32 16)
  br label %447

341:                                              ; preds = %200
  %342 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %343 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %342, i32 81, i32 48, i32 3, i32 16, i32 16)
  br label %447

344:                                              ; preds = %200
  %345 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %346 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %345, i32 211, i32 26, i32 26, i32 0, i32 88)
  br label %447

347:                                              ; preds = %200
  %348 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %349 = load i32, i32* %12, align 4
  %350 = load i32, i32* %13, align 4
  %351 = load i32, i32* %14, align 4
  %352 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %348, i32 %349, i32 53, i32 3, i32 %350, i32 %351)
  br label %447

353:                                              ; preds = %200
  %354 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %355 = load i32, i32* %12, align 4
  %356 = load i32, i32* %13, align 4
  %357 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %354, i32 %355, i32 53, i32 3, i32 %356, i32 16)
  br label %447

358:                                              ; preds = %200
  %359 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %360 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %359, i32 83, i32 26, i32 26, i32 0, i32 16)
  br label %447

361:                                              ; preds = %200
  %362 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %363 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %362, i32 99, i32 26, i32 26, i32 0, i32 16)
  br label %447

364:                                              ; preds = %200
  %365 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %366 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %365, i32 211, i32 18, i32 3, i32 20, i32 80)
  br label %447

367:                                              ; preds = %200
  %368 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %369 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %368, i32 35, i32 24, i32 0, i32 16, i32 36)
  br label %447

370:                                              ; preds = %200
  %371 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %372 = load i32, i32* %12, align 4
  %373 = load i32, i32* %15, align 4
  %374 = add nsw i32 58, %373
  %375 = load i32, i32* %13, align 4
  %376 = load i32, i32* %14, align 4
  %377 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %371, i32 %372, i32 %374, i32 3, i32 %375, i32 %376)
  br label %447

378:                                              ; preds = %200
  %379 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %380 = load i32, i32* %12, align 4
  %381 = load i32, i32* %15, align 4
  %382 = add nsw i32 45, %381
  %383 = load i32, i32* %13, align 4
  %384 = load i32, i32* %14, align 4
  %385 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %379, i32 %380, i32 %382, i32 3, i32 %383, i32 %384)
  br label %447

386:                                              ; preds = %200
  %387 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %388 = load i32, i32* %12, align 4
  %389 = load i32, i32* %13, align 4
  %390 = load i32, i32* %14, align 4
  %391 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %387, i32 %388, i32 58, i32 3, i32 %389, i32 %390)
  br label %447

392:                                              ; preds = %200
  %393 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %394 = load i32, i32* %12, align 4
  %395 = load i32, i32* %13, align 4
  %396 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %393, i32 %394, i32 21, i32 3, i32 %395, i32 17)
  br label %447

397:                                              ; preds = %200
  %398 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %399 = load i32, i32* %12, align 4
  %400 = load i32, i32* %13, align 4
  %401 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %398, i32 %399, i32 32, i32 3, i32 %400, i32 17)
  br label %447

402:                                              ; preds = %200
  %403 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %404 = load i32, i32* %12, align 4
  %405 = load i32, i32* %13, align 4
  %406 = load i32, i32* %14, align 4
  %407 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %403, i32 %404, i32 33, i32 3, i32 %405, i32 %406)
  br label %447

408:                                              ; preds = %200
  %409 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %410 = load i32, i32* %12, align 4
  %411 = load i32, i32* %13, align 4
  %412 = load i32, i32* %14, align 4
  %413 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %409, i32 %410, i32 33, i32 3, i32 %411, i32 %412)
  br label %447

414:                                              ; preds = %200
  %415 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %416 = load i32, i32* %12, align 4
  %417 = load i32, i32* %13, align 4
  %418 = load i32, i32* %14, align 4
  %419 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %415, i32 %416, i32 33, i32 3, i32 %417, i32 %418)
  br label %447

420:                                              ; preds = %200
  %421 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %422 = load i32, i32* %12, align 4
  %423 = load i32, i32* %13, align 4
  %424 = load i32, i32* %14, align 4
  %425 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %421, i32 %422, i32 33, i32 3, i32 %423, i32 %424)
  br label %447

426:                                              ; preds = %200
  %427 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %428 = load i32, i32* %12, align 4
  %429 = load i32, i32* %13, align 4
  %430 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %427, i32 %428, i32 63, i32 3, i32 %429, i32 16)
  br label %447

431:                                              ; preds = %200
  %432 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %433 = load i32, i32* %12, align 4
  %434 = load i32, i32* %13, align 4
  %435 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %432, i32 %433, i32 37, i32 3, i32 %434, i32 16)
  br label %447

436:                                              ; preds = %200
  %437 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %438 = load i32, i32* %12, align 4
  %439 = load i32, i32* %13, align 4
  %440 = load i32, i32* %14, align 4
  %441 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %437, i32 %438, i32 37, i32 3, i32 %439, i32 %440)
  br label %447

442:                                              ; preds = %200
  %443 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %444 = load i32, i32* %12, align 4
  %445 = load i32, i32* %13, align 4
  %446 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %443, i32 %444, i32 37, i32 3, i32 %445, i32 17)
  br label %447

447:                                              ; preds = %442, %436, %431, %426, %420, %414, %408, %402, %397, %392, %386, %378, %370, %367, %364, %361, %358, %353, %347, %344, %341, %338, %335, %332, %329, %326, %323, %320, %315, %312, %307, %304, %301, %298, %297, %282, %262, %256, %253, %247, %244, %241, %236, %231, %228, %222, %214, %206, %202
  br label %465

448:                                              ; preds = %197
  %449 = load i32, i32* %8, align 4
  switch i32 %449, label %458 [
    i32 8, label %450
    i32 0, label %457
    i32 1, label %461
  ]

450:                                              ; preds = %448
  %451 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %452 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %451, i32 8, i32 0, i32 0, i32 0, i32 0)
  %453 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %454 = load i32, i32* @BTC_ANT_PATH_PTA, align 4
  %455 = load i32, i32* @FORCE_EXEC, align 4
  %456 = call i32 @halbtc8723b1ant_set_ant_path(%struct.btc_coexist* %453, i32 %454, i32 %455, i32 0, i32 0)
  br label %464

457:                                              ; preds = %448
  br label %458

458:                                              ; preds = %448, %457
  %459 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %460 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %459, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %464

461:                                              ; preds = %448
  %462 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %463 = call i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist* %462, i32 0, i32 0, i32 0, i32 72, i32 0)
  br label %464

464:                                              ; preds = %461, %458, %450
  br label %465

465:                                              ; preds = %464, %447
  store i32 0, i32* %11, align 4
  %466 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %467 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %466, i32 0, i32 0
  %468 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %467, align 8
  %469 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %470 = load i32, i32* @BTC_SET_U1_RSSI_ADJ_VAL_FOR_1ANT_COEX_TYPE, align 4
  %471 = call i32 %468(%struct.btc_coexist* %469, i32 %470, i32* %11)
  %472 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %473 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 8
  %475 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %476 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %475, i32 0, i32 2
  store i32 %474, i32* %476, align 8
  %477 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %478 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %477, i32 0, i32 1
  %479 = load i32, i32* %478, align 4
  %480 = sext i32 %479 to i64
  %481 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %482 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %481, i32 0, i32 3
  store i64 %480, i64* %482, align 8
  br label %483

483:                                              ; preds = %465, %55
  ret void
}

declare dso_local i32 @halbtc8723b1ant_set_fw_ps_tdma(%struct.btc_coexist*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_set_ant_path(%struct.btc_coexist*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
