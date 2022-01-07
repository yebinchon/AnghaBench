; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_dm.c_dm_rxpath_sel_byrssi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_dm.c_dm_rxpath_sel_byrssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i64*, i64*, i64* }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i64*, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64* }
%struct.TYPE_4__ = type { i64 }

@dm_rxpath_sel_byrssi.disabled_rf_cnt = internal global i64 0, align 8
@dm_rxpath_sel_byrssi.cck_Rx_Path_initialized = internal global i64 0, align 8
@RF_2T4R = common dso_local global i64 0, align 8
@DM_RxPathSelTable = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@WIRELESS_MODE_B = common dso_local global i64 0, align 8
@CCK_RX_VERSION_2 = common dso_local global i64 0, align 8
@RF90_PATH_MAX = common dso_local global i64 0, align 8
@RX_PATH_SELECTION_SS_TH_LOW = common dso_local global i64 0, align 8
@RX_PATH_SELECTION_DIFF_TH = common dso_local global i64 0, align 8
@rOFDM0_TRxPathEnable = common dso_local global i32 0, align 4
@rOFDM1_TRxPathEnable = common dso_local global i32 0, align 4
@CCK_RX_VERSION_1 = common dso_local global i64 0, align 8
@rCCK0_AFESetting = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dm_rxpath_sel_byrssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_rxpath_sel_byrssi(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %23)
  store %struct.r8192_priv* %24, %struct.r8192_priv** %3, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 2, i64* %12, align 8
  store i64 3, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %25 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %26 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RF_2T4R, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %421

31:                                               ; preds = %1
  %32 = load i64, i64* @dm_rxpath_sel_byrssi.cck_Rx_Path_initialized, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = call i32 @read_nic_byte(%struct.net_device* %35, i32 2567, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 0))
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 0), align 8
  %38 = and i32 %37, 15
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 0), align 8
  store i64 1, i64* @dm_rxpath_sel_byrssi.cck_Rx_Path_initialized, align 8
  br label %39

39:                                               ; preds = %34, %31
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = call i32 @read_nic_byte(%struct.net_device* %40, i32 3076, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 1))
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 1), align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %43, 15
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 1), align 4
  %45 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %46 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %45, i32 0, i32 3
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @WIRELESS_MODE_B, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %39
  %53 = load i64, i64* @CCK_RX_VERSION_2, align 8
  store i64 %53, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 2), align 8
  br label %54

54:                                               ; preds = %52, %39
  store i64 0, i64* %4, align 8
  br label %55

55:                                               ; preds = %182, %54
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* @RF90_PATH_MAX, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %185

59:                                               ; preds = %55
  %60 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %61 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %4, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 3), align 8
  %68 = load i64, i64* %4, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  store i64 %66, i64* %69, align 8
  %70 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %71 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* %4, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %181

77:                                               ; preds = %59
  %78 = load i64, i64* %8, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %8, align 8
  %80 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 3), align 8
  %81 = load i64, i64* %4, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %20, align 8
  %84 = load i64, i64* %8, align 8
  %85 = icmp eq i64 %84, 1
  br i1 %85, label %86, label %89

86:                                               ; preds = %77
  %87 = load i64, i64* %4, align 8
  store i64 %87, i64* %7, align 8
  store i64 %87, i64* %6, align 8
  store i64 %87, i64* %5, align 8
  %88 = load i64, i64* %20, align 8
  store i64 %88, i64* %11, align 8
  store i64 %88, i64* %10, align 8
  store i64 %88, i64* %9, align 8
  br label %180

89:                                               ; preds = %77
  %90 = load i64, i64* %8, align 8
  %91 = icmp eq i64 %90, 2
  br i1 %91, label %92, label %103

92:                                               ; preds = %89
  %93 = load i64, i64* %20, align 8
  %94 = load i64, i64* %9, align 8
  %95 = icmp uge i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i64, i64* %20, align 8
  store i64 %97, i64* %9, align 8
  %98 = load i64, i64* %4, align 8
  store i64 %98, i64* %5, align 8
  br label %102

99:                                               ; preds = %92
  %100 = load i64, i64* %20, align 8
  store i64 %100, i64* %10, align 8
  store i64 %100, i64* %11, align 8
  %101 = load i64, i64* %4, align 8
  store i64 %101, i64* %6, align 8
  store i64 %101, i64* %7, align 8
  br label %102

102:                                              ; preds = %99, %96
  br label %179

103:                                              ; preds = %89
  %104 = load i64, i64* %20, align 8
  %105 = load i64, i64* %9, align 8
  %106 = icmp ugt i64 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load i64, i64* %9, align 8
  store i64 %108, i64* %11, align 8
  %109 = load i64, i64* %5, align 8
  store i64 %109, i64* %7, align 8
  %110 = load i64, i64* %20, align 8
  store i64 %110, i64* %9, align 8
  %111 = load i64, i64* %4, align 8
  store i64 %111, i64* %5, align 8
  br label %178

112:                                              ; preds = %103
  %113 = load i64, i64* %20, align 8
  %114 = load i64, i64* %9, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i64, i64* %20, align 8
  store i64 %117, i64* %11, align 8
  %118 = load i64, i64* %4, align 8
  store i64 %118, i64* %7, align 8
  br label %177

119:                                              ; preds = %112
  %120 = load i64, i64* %20, align 8
  %121 = load i64, i64* %9, align 8
  %122 = icmp ult i64 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %119
  %124 = load i64, i64* %20, align 8
  %125 = load i64, i64* %11, align 8
  %126 = icmp ugt i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i64, i64* %20, align 8
  store i64 %128, i64* %11, align 8
  %129 = load i64, i64* %4, align 8
  store i64 %129, i64* %7, align 8
  br label %176

130:                                              ; preds = %123, %119
  %131 = load i64, i64* %20, align 8
  %132 = load i64, i64* %11, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %130
  %135 = load i64, i64* %11, align 8
  %136 = load i64, i64* %10, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = load i64, i64* %20, align 8
  store i64 %139, i64* %11, align 8
  %140 = load i64, i64* %4, align 8
  store i64 %140, i64* %7, align 8
  br label %142

141:                                              ; preds = %134
  br label %142

142:                                              ; preds = %141, %138
  br label %175

143:                                              ; preds = %130
  %144 = load i64, i64* %20, align 8
  %145 = load i64, i64* %11, align 8
  %146 = icmp ult i64 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = load i64, i64* %20, align 8
  %149 = load i64, i64* %10, align 8
  %150 = icmp ugt i64 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  br label %174

152:                                              ; preds = %147, %143
  %153 = load i64, i64* %20, align 8
  %154 = load i64, i64* %10, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %152
  %157 = load i64, i64* %11, align 8
  %158 = load i64, i64* %10, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load i64, i64* %20, align 8
  store i64 %161, i64* %10, align 8
  %162 = load i64, i64* %4, align 8
  store i64 %162, i64* %6, align 8
  br label %164

163:                                              ; preds = %156
  br label %164

164:                                              ; preds = %163, %160
  br label %173

165:                                              ; preds = %152
  %166 = load i64, i64* %20, align 8
  %167 = load i64, i64* %10, align 8
  %168 = icmp ult i64 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = load i64, i64* %20, align 8
  store i64 %170, i64* %10, align 8
  %171 = load i64, i64* %4, align 8
  store i64 %171, i64* %6, align 8
  br label %172

172:                                              ; preds = %169, %165
  br label %173

173:                                              ; preds = %172, %164
  br label %174

174:                                              ; preds = %173, %151
  br label %175

175:                                              ; preds = %174, %142
  br label %176

176:                                              ; preds = %175, %127
  br label %177

177:                                              ; preds = %176, %116
  br label %178

178:                                              ; preds = %177, %107
  br label %179

179:                                              ; preds = %178, %102
  br label %180

180:                                              ; preds = %179, %86
  br label %181

181:                                              ; preds = %180, %59
  br label %182

182:                                              ; preds = %181
  %183 = load i64, i64* %4, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %4, align 8
  br label %55

185:                                              ; preds = %55
  store i64 0, i64* %8, align 8
  %186 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 2), align 8
  %187 = load i64, i64* @CCK_RX_VERSION_2, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %307

189:                                              ; preds = %185
  store i64 0, i64* %4, align 8
  br label %190

190:                                              ; preds = %303, %189
  %191 = load i64, i64* %4, align 8
  %192 = load i64, i64* @RF90_PATH_MAX, align 8
  %193 = icmp ult i64 %191, %192
  br i1 %193, label %194, label %306

194:                                              ; preds = %190
  %195 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %196 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %195, i32 0, i32 1
  %197 = load i64*, i64** %196, align 8
  %198 = load i64, i64* %4, align 8
  %199 = getelementptr inbounds i64, i64* %197, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %302

202:                                              ; preds = %194
  %203 = load i64, i64* %8, align 8
  %204 = add i64 %203, 1
  store i64 %204, i64* %8, align 8
  %205 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 4), align 8
  %206 = load i64, i64* %4, align 8
  %207 = getelementptr inbounds i64, i64* %205, i64 %206
  %208 = load i64, i64* %207, align 8
  store i64 %208, i64* %21, align 8
  %209 = load i64, i64* %8, align 8
  %210 = icmp eq i64 %209, 1
  br i1 %210, label %211, label %214

211:                                              ; preds = %202
  %212 = load i64, i64* %4, align 8
  store i64 %212, i64* %19, align 8
  store i64 %212, i64* %18, align 8
  store i64 %212, i64* %17, align 8
  %213 = load i64, i64* %21, align 8
  store i64 %213, i64* %16, align 8
  store i64 %213, i64* %15, align 8
  store i64 %213, i64* %14, align 8
  br label %301

214:                                              ; preds = %202
  %215 = load i64, i64* %8, align 8
  %216 = icmp eq i64 %215, 2
  br i1 %216, label %217, label %228

217:                                              ; preds = %214
  %218 = load i64, i64* %21, align 8
  %219 = load i64, i64* %14, align 8
  %220 = icmp sge i64 %218, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %217
  %222 = load i64, i64* %21, align 8
  store i64 %222, i64* %14, align 8
  %223 = load i64, i64* %4, align 8
  store i64 %223, i64* %17, align 8
  br label %227

224:                                              ; preds = %217
  %225 = load i64, i64* %21, align 8
  store i64 %225, i64* %15, align 8
  store i64 %225, i64* %16, align 8
  %226 = load i64, i64* %4, align 8
  store i64 %226, i64* %18, align 8
  store i64 %226, i64* %19, align 8
  br label %227

227:                                              ; preds = %224, %221
  br label %300

228:                                              ; preds = %214
  %229 = load i64, i64* %21, align 8
  %230 = load i64, i64* %14, align 8
  %231 = icmp sgt i64 %229, %230
  br i1 %231, label %232, label %237

232:                                              ; preds = %228
  %233 = load i64, i64* %14, align 8
  store i64 %233, i64* %16, align 8
  %234 = load i64, i64* %17, align 8
  store i64 %234, i64* %19, align 8
  %235 = load i64, i64* %21, align 8
  store i64 %235, i64* %14, align 8
  %236 = load i64, i64* %4, align 8
  store i64 %236, i64* %17, align 8
  br label %299

237:                                              ; preds = %228
  %238 = load i64, i64* %21, align 8
  %239 = load i64, i64* %14, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %237
  %242 = load i64, i64* %21, align 8
  store i64 %242, i64* %16, align 8
  %243 = load i64, i64* %4, align 8
  store i64 %243, i64* %19, align 8
  br label %298

244:                                              ; preds = %237
  %245 = load i64, i64* %21, align 8
  %246 = load i64, i64* %14, align 8
  %247 = icmp slt i64 %245, %246
  br i1 %247, label %248, label %255

248:                                              ; preds = %244
  %249 = load i64, i64* %21, align 8
  %250 = load i64, i64* %16, align 8
  %251 = icmp sgt i64 %249, %250
  br i1 %251, label %252, label %255

252:                                              ; preds = %248
  %253 = load i64, i64* %21, align 8
  store i64 %253, i64* %16, align 8
  %254 = load i64, i64* %4, align 8
  store i64 %254, i64* %19, align 8
  br label %297

255:                                              ; preds = %248, %244
  %256 = load i64, i64* %21, align 8
  %257 = load i64, i64* %16, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %266

259:                                              ; preds = %255
  %260 = load i64, i64* %16, align 8
  %261 = load i64, i64* %15, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %266

263:                                              ; preds = %259
  %264 = load i64, i64* %21, align 8
  store i64 %264, i64* %16, align 8
  %265 = load i64, i64* %4, align 8
  store i64 %265, i64* %19, align 8
  br label %296

266:                                              ; preds = %259, %255
  %267 = load i64, i64* %21, align 8
  %268 = load i64, i64* %16, align 8
  %269 = icmp slt i64 %267, %268
  br i1 %269, label %270, label %275

270:                                              ; preds = %266
  %271 = load i64, i64* %21, align 8
  %272 = load i64, i64* %15, align 8
  %273 = icmp sgt i64 %271, %272
  br i1 %273, label %274, label %275

274:                                              ; preds = %270
  br label %295

275:                                              ; preds = %270, %266
  %276 = load i64, i64* %21, align 8
  %277 = load i64, i64* %15, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %279, label %286

279:                                              ; preds = %275
  %280 = load i64, i64* %16, align 8
  %281 = load i64, i64* %15, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %286

283:                                              ; preds = %279
  %284 = load i64, i64* %21, align 8
  store i64 %284, i64* %15, align 8
  %285 = load i64, i64* %4, align 8
  store i64 %285, i64* %18, align 8
  br label %294

286:                                              ; preds = %279, %275
  %287 = load i64, i64* %21, align 8
  %288 = load i64, i64* %15, align 8
  %289 = icmp slt i64 %287, %288
  br i1 %289, label %290, label %293

290:                                              ; preds = %286
  %291 = load i64, i64* %21, align 8
  store i64 %291, i64* %15, align 8
  %292 = load i64, i64* %4, align 8
  store i64 %292, i64* %18, align 8
  br label %293

293:                                              ; preds = %290, %286
  br label %294

294:                                              ; preds = %293, %283
  br label %295

295:                                              ; preds = %294, %274
  br label %296

296:                                              ; preds = %295, %263
  br label %297

297:                                              ; preds = %296, %252
  br label %298

298:                                              ; preds = %297, %241
  br label %299

299:                                              ; preds = %298, %232
  br label %300

300:                                              ; preds = %299, %227
  br label %301

301:                                              ; preds = %300, %211
  br label %302

302:                                              ; preds = %301, %194
  br label %303

303:                                              ; preds = %302
  %304 = load i64, i64* %4, align 8
  %305 = add i64 %304, 1
  store i64 %305, i64* %4, align 8
  br label %190

306:                                              ; preds = %190
  br label %307

307:                                              ; preds = %306, %185
  store i64 0, i64* %22, align 8
  %308 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 2), align 8
  %309 = load i64, i64* @CCK_RX_VERSION_2, align 8
  %310 = icmp eq i64 %308, %309
  br i1 %310, label %311, label %318

311:                                              ; preds = %307
  %312 = load i64, i64* %17, align 8
  store i64 %312, i64* %12, align 8
  %313 = load i64, i64* %19, align 8
  store i64 %313, i64* %13, align 8
  %314 = load i64, i64* %14, align 8
  %315 = icmp ne i64 %314, -64
  br i1 %315, label %316, label %317

316:                                              ; preds = %311
  store i64 1, i64* %22, align 8
  br label %317

317:                                              ; preds = %316, %311
  br label %318

318:                                              ; preds = %317, %307
  %319 = load i64, i64* %10, align 8
  %320 = load i64, i64* @RX_PATH_SELECTION_SS_TH_LOW, align 8
  %321 = icmp ult i64 %319, %320
  br i1 %321, label %322, label %363

322:                                              ; preds = %318
  %323 = load i64, i64* @dm_rxpath_sel_byrssi.disabled_rf_cnt, align 8
  %324 = icmp ult i64 %323, 2
  br i1 %324, label %325, label %363

325:                                              ; preds = %322
  %326 = load i64, i64* %9, align 8
  %327 = load i64, i64* %10, align 8
  %328 = sub i64 %326, %327
  %329 = load i64, i64* @RX_PATH_SELECTION_DIFF_TH, align 8
  %330 = icmp uge i64 %328, %329
  br i1 %330, label %331, label %351

331:                                              ; preds = %325
  %332 = load i64, i64* %9, align 8
  %333 = add i64 %332, 5
  %334 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 5), align 8
  %335 = load i64, i64* %6, align 8
  %336 = getelementptr inbounds i64, i64* %334, i64 %335
  store i64 %333, i64* %336, align 8
  %337 = load %struct.net_device*, %struct.net_device** %2, align 8
  %338 = load i32, i32* @rOFDM0_TRxPathEnable, align 4
  %339 = load i64, i64* %6, align 8
  %340 = trunc i64 %339 to i32
  %341 = shl i32 1, %340
  %342 = call i32 @rtl8192_setBBreg(%struct.net_device* %337, i32 %338, i32 %341, i32 0)
  %343 = load %struct.net_device*, %struct.net_device** %2, align 8
  %344 = load i32, i32* @rOFDM1_TRxPathEnable, align 4
  %345 = load i64, i64* %6, align 8
  %346 = trunc i64 %345 to i32
  %347 = shl i32 1, %346
  %348 = call i32 @rtl8192_setBBreg(%struct.net_device* %343, i32 %344, i32 %347, i32 0)
  %349 = load i64, i64* @dm_rxpath_sel_byrssi.disabled_rf_cnt, align 8
  %350 = add i64 %349, 1
  store i64 %350, i64* @dm_rxpath_sel_byrssi.disabled_rf_cnt, align 8
  br label %351

351:                                              ; preds = %331, %325
  %352 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 2), align 8
  %353 = load i64, i64* @CCK_RX_VERSION_1, align 8
  %354 = icmp eq i64 %352, %353
  br i1 %354, label %355, label %362

355:                                              ; preds = %351
  %356 = load i64, i64* %5, align 8
  store i64 %356, i64* %12, align 8
  %357 = load i64, i64* %7, align 8
  store i64 %357, i64* %13, align 8
  %358 = load i64, i64* %9, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %355
  store i64 1, i64* %22, align 8
  br label %361

361:                                              ; preds = %360, %355
  br label %362

362:                                              ; preds = %361, %351
  br label %363

363:                                              ; preds = %362, %322, %318
  %364 = load i64, i64* %22, align 8
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %376

366:                                              ; preds = %363
  %367 = load i64, i64* %12, align 8
  %368 = shl i64 %367, 2
  %369 = load i64, i64* %13, align 8
  %370 = or i64 %368, %369
  %371 = trunc i64 %370 to i32
  store i32 %371, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 0), align 8
  %372 = load %struct.net_device*, %struct.net_device** %2, align 8
  %373 = load i32, i32* @rCCK0_AFESetting, align 4
  %374 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 0), align 8
  %375 = call i32 @rtl8192_setBBreg(%struct.net_device* %372, i32 %373, i32 251658240, i32 %374)
  br label %376

376:                                              ; preds = %366, %363
  %377 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 1), align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %421

379:                                              ; preds = %376
  store i64 0, i64* %4, align 8
  br label %380

380:                                              ; preds = %417, %379
  %381 = load i64, i64* %4, align 8
  %382 = icmp ult i64 %381, 4
  br i1 %382, label %383, label %420

383:                                              ; preds = %380
  %384 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 1), align 4
  %385 = load i64, i64* %4, align 8
  %386 = trunc i64 %385 to i32
  %387 = ashr i32 %384, %386
  %388 = and i32 %387, 1
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %416

390:                                              ; preds = %383
  %391 = load i64, i64* %9, align 8
  %392 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 5), align 8
  %393 = load i64, i64* %4, align 8
  %394 = getelementptr inbounds i64, i64* %392, i64 %393
  %395 = load i64, i64* %394, align 8
  %396 = icmp uge i64 %391, %395
  br i1 %396, label %397, label %415

397:                                              ; preds = %390
  %398 = load %struct.net_device*, %struct.net_device** %2, align 8
  %399 = load i32, i32* @rOFDM0_TRxPathEnable, align 4
  %400 = load i64, i64* %4, align 8
  %401 = trunc i64 %400 to i32
  %402 = shl i32 1, %401
  %403 = call i32 @rtl8192_setBBreg(%struct.net_device* %398, i32 %399, i32 %402, i32 1)
  %404 = load %struct.net_device*, %struct.net_device** %2, align 8
  %405 = load i32, i32* @rOFDM1_TRxPathEnable, align 4
  %406 = load i64, i64* %4, align 8
  %407 = trunc i64 %406 to i32
  %408 = shl i32 1, %407
  %409 = call i32 @rtl8192_setBBreg(%struct.net_device* %404, i32 %405, i32 %408, i32 1)
  %410 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 5), align 8
  %411 = load i64, i64* %4, align 8
  %412 = getelementptr inbounds i64, i64* %410, i64 %411
  store i64 100, i64* %412, align 8
  %413 = load i64, i64* @dm_rxpath_sel_byrssi.disabled_rf_cnt, align 8
  %414 = add i64 %413, -1
  store i64 %414, i64* @dm_rxpath_sel_byrssi.disabled_rf_cnt, align 8
  br label %415

415:                                              ; preds = %397, %390
  br label %416

416:                                              ; preds = %415, %383
  br label %417

417:                                              ; preds = %416
  %418 = load i64, i64* %4, align 8
  %419 = add i64 %418, 1
  store i64 %419, i64* %4, align 8
  br label %380

420:                                              ; preds = %380
  br label %421

421:                                              ; preds = %30, %420, %376
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32, i32*) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
