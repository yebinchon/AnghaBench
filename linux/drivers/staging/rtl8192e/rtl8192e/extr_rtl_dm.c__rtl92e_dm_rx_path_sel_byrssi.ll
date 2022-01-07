; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c__rtl92e_dm_rx_path_sel_byrssi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c__rtl92e_dm_rx_path_sel_byrssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i64*, i64*, i64, i64, i64* }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i64*, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64* }
%struct.TYPE_4__ = type { i64 }

@_rtl92e_dm_rx_path_sel_byrssi.disabled_rf_cnt = internal global i64 0, align 8
@_rtl92e_dm_rx_path_sel_byrssi.cck_Rx_Path_initialized = internal global i64 0, align 8
@RF_2T4R = common dso_local global i64 0, align 8
@DM_RxPathSelTable = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@WIRELESS_MODE_B = common dso_local global i64 0, align 8
@CCK_Rx_Version_2 = common dso_local global i64 0, align 8
@RF90_PATH_MAX = common dso_local global i64 0, align 8
@PWDB_IN_RANGE = common dso_local global i64 0, align 8
@rOFDM0_TRxPathEnable = common dso_local global i32 0, align 4
@rOFDM1_TRxPathEnable = common dso_local global i32 0, align 4
@CCK_Rx_Version_1 = common dso_local global i64 0, align 8
@rCCK0_AFESetting = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @_rtl92e_dm_rx_path_sel_byrssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92e_dm_rx_path_sel_byrssi(%struct.net_device* %0) #0 {
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
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %22)
  store %struct.r8192_priv* %23, %struct.r8192_priv** %3, align 8
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
  %24 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %25 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RF_2T4R, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %416

30:                                               ; preds = %1
  %31 = load i64, i64* @_rtl92e_dm_rx_path_sel_byrssi.cck_Rx_Path_initialized, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = call i32 @rtl92e_readb(%struct.net_device* %34, i32 2567)
  %36 = and i32 %35, 15
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 0), align 8
  store i64 1, i64* @_rtl92e_dm_rx_path_sel_byrssi.cck_Rx_Path_initialized, align 8
  br label %37

37:                                               ; preds = %33, %30
  store i32 15, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 1), align 4
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = call i32 @rtl92e_readb(%struct.net_device* %38, i32 3076)
  %40 = xor i32 %39, -1
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 1), align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 1), align 4
  %43 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %44 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %43, i32 0, i32 3
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @WIRELESS_MODE_B, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i64, i64* @CCK_Rx_Version_2, align 8
  store i64 %51, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 2), align 8
  br label %52

52:                                               ; preds = %50, %37
  store i64 0, i64* %4, align 8
  br label %53

53:                                               ; preds = %178, %52
  %54 = load i64, i64* %4, align 8
  %55 = load i64, i64* @RF90_PATH_MAX, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %181

57:                                               ; preds = %53
  %58 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %59 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* %4, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 3), align 8
  %66 = load i64, i64* %4, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  store i64 %64, i64* %67, align 8
  %68 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %69 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* %4, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %177

75:                                               ; preds = %57
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %8, align 8
  %78 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 3), align 8
  %79 = load i64, i64* %4, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %19, align 8
  %82 = load i64, i64* %8, align 8
  %83 = icmp eq i64 %82, 1
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load i64, i64* %4, align 8
  store i64 %85, i64* %7, align 8
  store i64 %85, i64* %6, align 8
  store i64 %85, i64* %5, align 8
  %86 = load i64, i64* %19, align 8
  store i64 %86, i64* %11, align 8
  store i64 %86, i64* %10, align 8
  store i64 %86, i64* %9, align 8
  br label %176

87:                                               ; preds = %75
  %88 = load i64, i64* %8, align 8
  %89 = icmp eq i64 %88, 2
  br i1 %89, label %90, label %101

90:                                               ; preds = %87
  %91 = load i64, i64* %19, align 8
  %92 = load i64, i64* %9, align 8
  %93 = icmp uge i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i64, i64* %19, align 8
  store i64 %95, i64* %9, align 8
  %96 = load i64, i64* %4, align 8
  store i64 %96, i64* %5, align 8
  br label %100

97:                                               ; preds = %90
  %98 = load i64, i64* %19, align 8
  store i64 %98, i64* %10, align 8
  store i64 %98, i64* %11, align 8
  %99 = load i64, i64* %4, align 8
  store i64 %99, i64* %6, align 8
  store i64 %99, i64* %7, align 8
  br label %100

100:                                              ; preds = %97, %94
  br label %175

101:                                              ; preds = %87
  %102 = load i64, i64* %19, align 8
  %103 = load i64, i64* %9, align 8
  %104 = icmp ugt i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i64, i64* %9, align 8
  store i64 %106, i64* %11, align 8
  %107 = load i64, i64* %5, align 8
  store i64 %107, i64* %7, align 8
  %108 = load i64, i64* %19, align 8
  store i64 %108, i64* %9, align 8
  %109 = load i64, i64* %4, align 8
  store i64 %109, i64* %5, align 8
  br label %174

110:                                              ; preds = %101
  %111 = load i64, i64* %19, align 8
  %112 = load i64, i64* %9, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i64, i64* %19, align 8
  store i64 %115, i64* %11, align 8
  %116 = load i64, i64* %4, align 8
  store i64 %116, i64* %7, align 8
  br label %173

117:                                              ; preds = %110
  %118 = load i64, i64* %19, align 8
  %119 = load i64, i64* %9, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %117
  %122 = load i64, i64* %19, align 8
  %123 = load i64, i64* %11, align 8
  %124 = icmp ugt i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load i64, i64* %19, align 8
  store i64 %126, i64* %11, align 8
  %127 = load i64, i64* %4, align 8
  store i64 %127, i64* %7, align 8
  br label %172

128:                                              ; preds = %121, %117
  %129 = load i64, i64* %19, align 8
  %130 = load i64, i64* %11, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %128
  %133 = load i64, i64* %11, align 8
  %134 = load i64, i64* %10, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i64, i64* %19, align 8
  store i64 %137, i64* %11, align 8
  %138 = load i64, i64* %4, align 8
  store i64 %138, i64* %7, align 8
  br label %139

139:                                              ; preds = %136, %132
  br label %171

140:                                              ; preds = %128
  %141 = load i64, i64* %19, align 8
  %142 = load i64, i64* %11, align 8
  %143 = icmp ult i64 %141, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = load i64, i64* %19, align 8
  %146 = load i64, i64* %10, align 8
  %147 = icmp ugt i64 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  br label %170

149:                                              ; preds = %144, %140
  %150 = load i64, i64* %19, align 8
  %151 = load i64, i64* %10, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %149
  %154 = load i64, i64* %11, align 8
  %155 = load i64, i64* %10, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load i64, i64* %19, align 8
  store i64 %158, i64* %10, align 8
  %159 = load i64, i64* %4, align 8
  store i64 %159, i64* %6, align 8
  br label %160

160:                                              ; preds = %157, %153
  br label %169

161:                                              ; preds = %149
  %162 = load i64, i64* %19, align 8
  %163 = load i64, i64* %10, align 8
  %164 = icmp ult i64 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = load i64, i64* %19, align 8
  store i64 %166, i64* %10, align 8
  %167 = load i64, i64* %4, align 8
  store i64 %167, i64* %6, align 8
  br label %168

168:                                              ; preds = %165, %161
  br label %169

169:                                              ; preds = %168, %160
  br label %170

170:                                              ; preds = %169, %148
  br label %171

171:                                              ; preds = %170, %139
  br label %172

172:                                              ; preds = %171, %125
  br label %173

173:                                              ; preds = %172, %114
  br label %174

174:                                              ; preds = %173, %105
  br label %175

175:                                              ; preds = %174, %100
  br label %176

176:                                              ; preds = %175, %84
  br label %177

177:                                              ; preds = %176, %57
  br label %178

178:                                              ; preds = %177
  %179 = load i64, i64* %4, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %4, align 8
  br label %53

181:                                              ; preds = %53
  store i64 0, i64* %8, align 8
  %182 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 2), align 8
  %183 = load i64, i64* @CCK_Rx_Version_2, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %302

185:                                              ; preds = %181
  store i64 0, i64* %4, align 8
  br label %186

186:                                              ; preds = %298, %185
  %187 = load i64, i64* %4, align 8
  %188 = load i64, i64* @RF90_PATH_MAX, align 8
  %189 = icmp ult i64 %187, %188
  br i1 %189, label %190, label %301

190:                                              ; preds = %186
  %191 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %192 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %191, i32 0, i32 1
  %193 = load i64*, i64** %192, align 8
  %194 = load i64, i64* %4, align 8
  %195 = getelementptr inbounds i64, i64* %193, i64 %194
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %297

198:                                              ; preds = %190
  %199 = load i64, i64* %8, align 8
  %200 = add i64 %199, 1
  store i64 %200, i64* %8, align 8
  %201 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 4), align 8
  %202 = load i64, i64* %4, align 8
  %203 = getelementptr inbounds i64, i64* %201, i64 %202
  %204 = load i64, i64* %203, align 8
  store i64 %204, i64* %20, align 8
  %205 = load i64, i64* %8, align 8
  %206 = icmp eq i64 %205, 1
  br i1 %206, label %207, label %213

207:                                              ; preds = %198
  %208 = load i64, i64* %4, align 8
  store i64 %208, i64* %17, align 8
  %209 = load i64, i64* %4, align 8
  store i64 %209, i64* %18, align 8
  %210 = load i64, i64* %20, align 8
  store i64 %210, i64* %14, align 8
  %211 = load i64, i64* %20, align 8
  store i64 %211, i64* %15, align 8
  %212 = load i64, i64* %20, align 8
  store i64 %212, i64* %16, align 8
  br label %296

213:                                              ; preds = %198
  %214 = load i64, i64* %8, align 8
  %215 = icmp eq i64 %214, 2
  br i1 %215, label %216, label %228

216:                                              ; preds = %213
  %217 = load i64, i64* %20, align 8
  %218 = load i64, i64* %14, align 8
  %219 = icmp sge i64 %217, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %216
  %221 = load i64, i64* %20, align 8
  store i64 %221, i64* %14, align 8
  %222 = load i64, i64* %4, align 8
  store i64 %222, i64* %17, align 8
  br label %227

223:                                              ; preds = %216
  %224 = load i64, i64* %20, align 8
  store i64 %224, i64* %16, align 8
  %225 = load i64, i64* %20, align 8
  store i64 %225, i64* %15, align 8
  %226 = load i64, i64* %4, align 8
  store i64 %226, i64* %18, align 8
  br label %227

227:                                              ; preds = %223, %220
  br label %295

228:                                              ; preds = %213
  %229 = load i64, i64* %20, align 8
  %230 = load i64, i64* %14, align 8
  %231 = icmp sgt i64 %229, %230
  br i1 %231, label %232, label %237

232:                                              ; preds = %228
  %233 = load i64, i64* %14, align 8
  store i64 %233, i64* %16, align 8
  %234 = load i64, i64* %17, align 8
  store i64 %234, i64* %18, align 8
  %235 = load i64, i64* %20, align 8
  store i64 %235, i64* %14, align 8
  %236 = load i64, i64* %4, align 8
  store i64 %236, i64* %17, align 8
  br label %294

237:                                              ; preds = %228
  %238 = load i64, i64* %20, align 8
  %239 = load i64, i64* %14, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %237
  %242 = load i64, i64* %20, align 8
  store i64 %242, i64* %16, align 8
  %243 = load i64, i64* %4, align 8
  store i64 %243, i64* %18, align 8
  br label %293

244:                                              ; preds = %237
  %245 = load i64, i64* @PWDB_IN_RANGE, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %244
  %248 = load i64, i64* %20, align 8
  store i64 %248, i64* %16, align 8
  %249 = load i64, i64* %4, align 8
  store i64 %249, i64* %18, align 8
  br label %292

250:                                              ; preds = %244
  %251 = load i64, i64* %20, align 8
  %252 = load i64, i64* %16, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %262

254:                                              ; preds = %250
  %255 = load i64, i64* %16, align 8
  %256 = load i64, i64* %15, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %261

258:                                              ; preds = %254
  %259 = load i64, i64* %20, align 8
  store i64 %259, i64* %16, align 8
  %260 = load i64, i64* %4, align 8
  store i64 %260, i64* %18, align 8
  br label %261

261:                                              ; preds = %258, %254
  br label %291

262:                                              ; preds = %250
  %263 = load i64, i64* %20, align 8
  %264 = load i64, i64* %16, align 8
  %265 = icmp slt i64 %263, %264
  br i1 %265, label %266, label %271

266:                                              ; preds = %262
  %267 = load i64, i64* %20, align 8
  %268 = load i64, i64* %15, align 8
  %269 = icmp sgt i64 %267, %268
  br i1 %269, label %270, label %271

270:                                              ; preds = %266
  br label %290

271:                                              ; preds = %266, %262
  %272 = load i64, i64* %20, align 8
  %273 = load i64, i64* %15, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %275, label %282

275:                                              ; preds = %271
  %276 = load i64, i64* %16, align 8
  %277 = load i64, i64* %15, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %279, label %281

279:                                              ; preds = %275
  %280 = load i64, i64* %20, align 8
  store i64 %280, i64* %15, align 8
  br label %281

281:                                              ; preds = %279, %275
  br label %289

282:                                              ; preds = %271
  %283 = load i64, i64* %20, align 8
  %284 = load i64, i64* %15, align 8
  %285 = icmp slt i64 %283, %284
  br i1 %285, label %286, label %288

286:                                              ; preds = %282
  %287 = load i64, i64* %20, align 8
  store i64 %287, i64* %15, align 8
  br label %288

288:                                              ; preds = %286, %282
  br label %289

289:                                              ; preds = %288, %281
  br label %290

290:                                              ; preds = %289, %270
  br label %291

291:                                              ; preds = %290, %261
  br label %292

292:                                              ; preds = %291, %247
  br label %293

293:                                              ; preds = %292, %241
  br label %294

294:                                              ; preds = %293, %232
  br label %295

295:                                              ; preds = %294, %227
  br label %296

296:                                              ; preds = %295, %207
  br label %297

297:                                              ; preds = %296, %190
  br label %298

298:                                              ; preds = %297
  %299 = load i64, i64* %4, align 8
  %300 = add i64 %299, 1
  store i64 %300, i64* %4, align 8
  br label %186

301:                                              ; preds = %186
  br label %302

302:                                              ; preds = %301, %181
  store i64 0, i64* %21, align 8
  %303 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 2), align 8
  %304 = load i64, i64* @CCK_Rx_Version_2, align 8
  %305 = icmp eq i64 %303, %304
  br i1 %305, label %306, label %313

306:                                              ; preds = %302
  %307 = load i64, i64* %17, align 8
  store i64 %307, i64* %12, align 8
  %308 = load i64, i64* %18, align 8
  store i64 %308, i64* %13, align 8
  %309 = load i64, i64* %14, align 8
  %310 = icmp ne i64 %309, -64
  br i1 %310, label %311, label %312

311:                                              ; preds = %306
  store i64 1, i64* %21, align 8
  br label %312

312:                                              ; preds = %311, %306
  br label %313

313:                                              ; preds = %312, %302
  %314 = load i64, i64* %10, align 8
  %315 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 5), align 8
  %316 = icmp ult i64 %314, %315
  br i1 %316, label %317, label %358

317:                                              ; preds = %313
  %318 = load i64, i64* @_rtl92e_dm_rx_path_sel_byrssi.disabled_rf_cnt, align 8
  %319 = icmp ult i64 %318, 2
  br i1 %319, label %320, label %358

320:                                              ; preds = %317
  %321 = load i64, i64* %9, align 8
  %322 = load i64, i64* %10, align 8
  %323 = sub i64 %321, %322
  %324 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 6), align 8
  %325 = icmp uge i64 %323, %324
  br i1 %325, label %326, label %346

326:                                              ; preds = %320
  %327 = load i64, i64* %9, align 8
  %328 = add i64 %327, 5
  %329 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 7), align 8
  %330 = load i64, i64* %6, align 8
  %331 = getelementptr inbounds i64, i64* %329, i64 %330
  store i64 %328, i64* %331, align 8
  %332 = load %struct.net_device*, %struct.net_device** %2, align 8
  %333 = load i32, i32* @rOFDM0_TRxPathEnable, align 4
  %334 = load i64, i64* %6, align 8
  %335 = trunc i64 %334 to i32
  %336 = shl i32 1, %335
  %337 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %332, i32 %333, i32 %336, i32 0)
  %338 = load %struct.net_device*, %struct.net_device** %2, align 8
  %339 = load i32, i32* @rOFDM1_TRxPathEnable, align 4
  %340 = load i64, i64* %6, align 8
  %341 = trunc i64 %340 to i32
  %342 = shl i32 1, %341
  %343 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %338, i32 %339, i32 %342, i32 0)
  %344 = load i64, i64* @_rtl92e_dm_rx_path_sel_byrssi.disabled_rf_cnt, align 8
  %345 = add i64 %344, 1
  store i64 %345, i64* @_rtl92e_dm_rx_path_sel_byrssi.disabled_rf_cnt, align 8
  br label %346

346:                                              ; preds = %326, %320
  %347 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 2), align 8
  %348 = load i64, i64* @CCK_Rx_Version_1, align 8
  %349 = icmp eq i64 %347, %348
  br i1 %349, label %350, label %357

350:                                              ; preds = %346
  %351 = load i64, i64* %5, align 8
  store i64 %351, i64* %12, align 8
  %352 = load i64, i64* %7, align 8
  store i64 %352, i64* %13, align 8
  %353 = load i64, i64* %9, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %350
  store i64 1, i64* %21, align 8
  br label %356

356:                                              ; preds = %355, %350
  br label %357

357:                                              ; preds = %356, %346
  br label %358

358:                                              ; preds = %357, %317, %313
  %359 = load i64, i64* %21, align 8
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %371

361:                                              ; preds = %358
  %362 = load i64, i64* %12, align 8
  %363 = shl i64 %362, 2
  %364 = load i64, i64* %13, align 8
  %365 = or i64 %363, %364
  %366 = trunc i64 %365 to i32
  store i32 %366, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 0), align 8
  %367 = load %struct.net_device*, %struct.net_device** %2, align 8
  %368 = load i32, i32* @rCCK0_AFESetting, align 4
  %369 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 0), align 8
  %370 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %367, i32 %368, i32 251658240, i32 %369)
  br label %371

371:                                              ; preds = %361, %358
  %372 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 1), align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %416

374:                                              ; preds = %371
  store i64 0, i64* %4, align 8
  br label %375

375:                                              ; preds = %412, %374
  %376 = load i64, i64* %4, align 8
  %377 = icmp ult i64 %376, 4
  br i1 %377, label %378, label %415

378:                                              ; preds = %375
  %379 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 1), align 4
  %380 = load i64, i64* %4, align 8
  %381 = trunc i64 %380 to i32
  %382 = ashr i32 %379, %381
  %383 = and i32 %382, 1
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %411

385:                                              ; preds = %378
  %386 = load i64, i64* %9, align 8
  %387 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 7), align 8
  %388 = load i64, i64* %4, align 8
  %389 = getelementptr inbounds i64, i64* %387, i64 %388
  %390 = load i64, i64* %389, align 8
  %391 = icmp uge i64 %386, %390
  br i1 %391, label %392, label %410

392:                                              ; preds = %385
  %393 = load %struct.net_device*, %struct.net_device** %2, align 8
  %394 = load i32, i32* @rOFDM0_TRxPathEnable, align 4
  %395 = load i64, i64* %4, align 8
  %396 = trunc i64 %395 to i32
  %397 = shl i32 1, %396
  %398 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %393, i32 %394, i32 %397, i32 1)
  %399 = load %struct.net_device*, %struct.net_device** %2, align 8
  %400 = load i32, i32* @rOFDM1_TRxPathEnable, align 4
  %401 = load i64, i64* %4, align 8
  %402 = trunc i64 %401 to i32
  %403 = shl i32 1, %402
  %404 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %399, i32 %400, i32 %403, i32 1)
  %405 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @DM_RxPathSelTable, i32 0, i32 7), align 8
  %406 = load i64, i64* %4, align 8
  %407 = getelementptr inbounds i64, i64* %405, i64 %406
  store i64 100, i64* %407, align 8
  %408 = load i64, i64* @_rtl92e_dm_rx_path_sel_byrssi.disabled_rf_cnt, align 8
  %409 = add i64 %408, -1
  store i64 %409, i64* @_rtl92e_dm_rx_path_sel_byrssi.disabled_rf_cnt, align 8
  br label %410

410:                                              ; preds = %392, %385
  br label %411

411:                                              ; preds = %410, %378
  br label %412

412:                                              ; preds = %411
  %413 = load i64, i64* %4, align 8
  %414 = add i64 %413, 1
  store i64 %414, i64* %4, align 8
  br label %375

415:                                              ; preds = %375
  br label %416

416:                                              ; preds = %29, %415, %371
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @rtl92e_readb(%struct.net_device*, i32) #1

declare dso_local i32 @rtl92e_set_bb_reg(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
