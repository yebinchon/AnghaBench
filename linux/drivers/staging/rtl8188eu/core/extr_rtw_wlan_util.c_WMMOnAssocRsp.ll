; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_WMMOnAssocRsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_WMMOnAssocRsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_6__, %struct.registry_priv, %struct.xmit_priv, %struct.mlme_ext_priv }
%struct.TYPE_6__ = type { i32 }
%struct.registry_priv = type { i32, i32 }
%struct.xmit_priv = type { i32* }
%struct.mlme_ext_priv = type { i64, %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@WIRELESS_11B = common dso_local global i64 0, align 8
@HW_VAR_AC_PARAM_BE = common dso_local global i32 0, align 4
@XMIT_BE_QUEUE = common dso_local global i64 0, align 8
@HW_VAR_AC_PARAM_BK = common dso_local global i32 0, align 4
@XMIT_BK_QUEUE = common dso_local global i64 0, align 8
@HW_VAR_AC_PARAM_VI = common dso_local global i32 0, align 4
@XMIT_VI_QUEUE = common dso_local global i64 0, align 8
@HW_VAR_AC_PARAM_VO = common dso_local global i32 0, align 4
@XMIT_VO_QUEUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"WMM(%x): %x, %x\0A\00", align 1
@HW_VAR_ACM_CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"wmm_para_seq(%d): %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WMMOnAssocRsp(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32], align 16
  %14 = alloca [4 x i32], align 16
  %15 = alloca %struct.mlme_ext_priv*, align 8
  %16 = alloca %struct.mlme_ext_info*, align 8
  %17 = alloca %struct.xmit_priv*, align 8
  %18 = alloca %struct.registry_priv*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %21 = load %struct.adapter*, %struct.adapter** %2, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 3
  store %struct.mlme_ext_priv* %22, %struct.mlme_ext_priv** %15, align 8
  %23 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %15, align 8
  %24 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %23, i32 0, i32 1
  store %struct.mlme_ext_info* %24, %struct.mlme_ext_info** %16, align 8
  %25 = load %struct.adapter*, %struct.adapter** %2, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 2
  store %struct.xmit_priv* %26, %struct.xmit_priv** %17, align 8
  %27 = load %struct.adapter*, %struct.adapter** %2, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 1
  store %struct.registry_priv* %28, %struct.registry_priv** %18, align 8
  %29 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %16, align 8
  %30 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load %struct.adapter*, %struct.adapter** %2, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  br label %325

37:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  %38 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %15, align 8
  %39 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @WIRELESS_11B, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 10, i32* %8, align 4
  br label %45

44:                                               ; preds = %37
  store i32 16, i32* %8, align 4
  br label %45

45:                                               ; preds = %44, %43
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %190, %45
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %47, 4
  br i1 %48, label %49, label %193

49:                                               ; preds = %46
  %50 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %16, align 8
  %51 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 5
  %60 = and i32 %59, 3
  store i32 %60, i32* %3, align 4
  %61 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %16, align 8
  %62 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 4
  %71 = and i32 %70, 1
  store i32 %71, i32* %4, align 4
  %72 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %16, align 8
  %73 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 15
  %82 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %16, align 8
  %83 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = mul nsw i32 %81, %84
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %85, %86
  store i32 %87, i32* %5, align 4
  %88 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %16, align 8
  %89 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 15
  store i32 %97, i32* %6, align 4
  %98 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %16, align 8
  %99 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 240
  %108 = ashr i32 %107, 4
  store i32 %108, i32* %7, align 4
  %109 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %16, align 8
  %110 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @le16_to_cpu(i32 %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %6, align 4
  %121 = shl i32 %120, 8
  %122 = or i32 %119, %121
  %123 = load i32, i32* %7, align 4
  %124 = shl i32 %123, 12
  %125 = or i32 %122, %124
  %126 = load i32, i32* %10, align 4
  %127 = shl i32 %126, 16
  %128 = or i32 %125, %127
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %3, align 4
  switch i32 %129, label %185 [
    i32 0, label %130
    i32 1, label %146
    i32 2, label %153
    i32 3, label %169
  ]

130:                                              ; preds = %49
  %131 = load %struct.adapter*, %struct.adapter** %2, align 8
  %132 = load i32, i32* @HW_VAR_AC_PARAM_BE, align 4
  %133 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %131, i32 %132, i32* %11)
  %134 = load i32, i32* %4, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = call i32 @BIT(i32 1)
  br label %139

138:                                              ; preds = %130
  br label %139

139:                                              ; preds = %138, %136
  %140 = phi i32 [ %137, %136 ], [ 0, %138 ]
  %141 = load i32, i32* %9, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %11, align 4
  %144 = load i64, i64* @XMIT_BE_QUEUE, align 8
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %144
  store i32 %143, i32* %145, align 4
  br label %185

146:                                              ; preds = %49
  %147 = load %struct.adapter*, %struct.adapter** %2, align 8
  %148 = load i32, i32* @HW_VAR_AC_PARAM_BK, align 4
  %149 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %147, i32 %148, i32* %11)
  %150 = load i32, i32* %11, align 4
  %151 = load i64, i64* @XMIT_BK_QUEUE, align 8
  %152 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %151
  store i32 %150, i32* %152, align 4
  br label %185

153:                                              ; preds = %49
  %154 = load %struct.adapter*, %struct.adapter** %2, align 8
  %155 = load i32, i32* @HW_VAR_AC_PARAM_VI, align 4
  %156 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %154, i32 %155, i32* %11)
  %157 = load i32, i32* %4, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %153
  %160 = call i32 @BIT(i32 2)
  br label %162

161:                                              ; preds = %153
  br label %162

162:                                              ; preds = %161, %159
  %163 = phi i32 [ %160, %159 ], [ 0, %161 ]
  %164 = load i32, i32* %9, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %11, align 4
  %167 = load i64, i64* @XMIT_VI_QUEUE, align 8
  %168 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %167
  store i32 %166, i32* %168, align 4
  br label %185

169:                                              ; preds = %49
  %170 = load %struct.adapter*, %struct.adapter** %2, align 8
  %171 = load i32, i32* @HW_VAR_AC_PARAM_VO, align 4
  %172 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %170, i32 %171, i32* %11)
  %173 = load i32, i32* %4, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %169
  %176 = call i32 @BIT(i32 3)
  br label %178

177:                                              ; preds = %169
  br label %178

178:                                              ; preds = %177, %175
  %179 = phi i32 [ %176, %175 ], [ 0, %177 ]
  %180 = load i32, i32* %9, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %11, align 4
  %183 = load i64, i64* @XMIT_VO_QUEUE, align 8
  %184 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %183
  store i32 %182, i32* %184, align 4
  br label %185

185:                                              ; preds = %49, %178, %162, %146, %139
  %186 = load i32, i32* %3, align 4
  %187 = load i32, i32* %4, align 4
  %188 = load i32, i32* %11, align 4
  %189 = call i32 (i8*, i32, i32, ...) @DBG_88E(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %186, i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %185
  %191 = load i32, i32* %12, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %12, align 4
  br label %46

193:                                              ; preds = %46
  %194 = load %struct.adapter*, %struct.adapter** %2, align 8
  %195 = getelementptr inbounds %struct.adapter, %struct.adapter* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 1
  br i1 %198, label %199, label %203

199:                                              ; preds = %193
  %200 = load %struct.adapter*, %struct.adapter** %2, align 8
  %201 = load i32, i32* @HW_VAR_ACM_CTRL, align 4
  %202 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %200, i32 %201, i32* %9)
  br label %208

203:                                              ; preds = %193
  %204 = load i32, i32* %9, align 4
  %205 = load %struct.adapter*, %struct.adapter** %2, align 8
  %206 = getelementptr inbounds %struct.adapter, %struct.adapter* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  store i32 %204, i32* %207, align 8
  br label %208

208:                                              ; preds = %203, %199
  %209 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  store i32 0, i32* %209, align 16
  %210 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  store i32 1, i32* %210, align 4
  %211 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  store i32 2, i32* %211, align 8
  %212 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  store i32 3, i32* %212, align 4
  %213 = load %struct.registry_priv*, %struct.registry_priv** %18, align 8
  %214 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %215, 1
  br i1 %216, label %217, label %298

217:                                              ; preds = %208
  store i32 0, i32* %20, align 4
  store i32 0, i32* %12, align 4
  br label %218

218:                                              ; preds = %294, %217
  %219 = load i32, i32* %12, align 4
  %220 = icmp slt i32 %219, 4
  br i1 %220, label %221, label %297

221:                                              ; preds = %218
  %222 = load i32, i32* %12, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %19, align 4
  br label %224

224:                                              ; preds = %290, %221
  %225 = load i32, i32* %19, align 4
  %226 = icmp slt i32 %225, 4
  br i1 %226, label %227, label %293

227:                                              ; preds = %224
  %228 = load i32, i32* %19, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = and i32 %231, 65535
  %233 = load i32, i32* %12, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = and i32 %236, 65535
  %238 = icmp slt i32 %232, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %227
  store i32 1, i32* %20, align 4
  br label %267

240:                                              ; preds = %227
  %241 = load i32, i32* %19, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = and i32 %244, 65535
  %246 = load i32, i32* %12, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = and i32 %249, 65535
  %251 = icmp eq i32 %245, %250
  br i1 %251, label %252, label %266

252:                                              ; preds = %240
  %253 = load i32, i32* %19, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = ashr i32 %256, 16
  %258 = load i32, i32* %12, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = ashr i32 %261, 16
  %263 = icmp sgt i32 %257, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %252
  store i32 1, i32* %20, align 4
  br label %265

265:                                              ; preds = %264, %252
  br label %266

266:                                              ; preds = %265, %240
  br label %267

267:                                              ; preds = %266, %239
  %268 = load i32, i32* %20, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %289

270:                                              ; preds = %267
  %271 = load i32, i32* %12, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* %19, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @swap(i32 %274, i32 %278)
  %280 = load i32, i32* %12, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %19, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @swap(i32 %283, i32 %287)
  store i32 0, i32* %20, align 4
  br label %289

289:                                              ; preds = %270, %267
  br label %290

290:                                              ; preds = %289
  %291 = load i32, i32* %19, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %19, align 4
  br label %224

293:                                              ; preds = %224
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %12, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %12, align 4
  br label %218

297:                                              ; preds = %218
  br label %298

298:                                              ; preds = %297, %208
  store i32 0, i32* %12, align 4
  br label %299

299:                                              ; preds = %322, %298
  %300 = load i32, i32* %12, align 4
  %301 = icmp slt i32 %300, 4
  br i1 %301, label %302, label %325

302:                                              ; preds = %299
  %303 = load i32, i32* %12, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.xmit_priv*, %struct.xmit_priv** %17, align 8
  %308 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %307, i32 0, i32 0
  %309 = load i32*, i32** %308, align 8
  %310 = load i32, i32* %12, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %309, i64 %311
  store i32 %306, i32* %312, align 4
  %313 = load i32, i32* %12, align 4
  %314 = load %struct.xmit_priv*, %struct.xmit_priv** %17, align 8
  %315 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %314, i32 0, i32 0
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* %12, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = call i32 (i8*, i32, i32, ...) @DBG_88E(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %313, i32 %320)
  br label %322

322:                                              ; preds = %302
  %323 = load i32, i32* %12, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %12, align 4
  br label %299

325:                                              ; preds = %33, %299
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @rtw_hal_set_hwreg(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @DBG_88E(i8*, i32, i32, ...) #1

declare dso_local i32 @swap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
