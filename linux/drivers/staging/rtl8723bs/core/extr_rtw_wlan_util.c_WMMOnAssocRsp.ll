; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_WMMOnAssocRsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_WMMOnAssocRsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__, %struct.registry_priv, %struct.xmit_priv, %struct.mlme_ext_priv }
%struct.TYPE_4__ = type { i32 }
%struct.registry_priv = type { i32, i32 }
%struct.xmit_priv = type { i32* }
%struct.mlme_ext_priv = type { i32, %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@WIRELESS_11_24N = common dso_local global i32 0, align 4
@WIRELESS_11G = common dso_local global i32 0, align 4
@WIRELESS_11A = common dso_local global i32 0, align 4
@WIRELESS_11B = common dso_local global i32 0, align 4
@HW_VAR_AC_PARAM_BE = common dso_local global i32 0, align 4
@HW_VAR_AC_PARAM_BK = common dso_local global i32 0, align 4
@HW_VAR_AC_PARAM_VI = common dso_local global i32 0, align 4
@HW_VAR_AC_PARAM_VO = common dso_local global i32 0, align 4
@XMIT_BE_QUEUE = common dso_local global i64 0, align 8
@XMIT_BK_QUEUE = common dso_local global i64 0, align 8
@XMIT_VI_QUEUE = common dso_local global i64 0, align 8
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
  %21 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %22 = load %struct.adapter*, %struct.adapter** %2, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 3
  store %struct.mlme_ext_priv* %23, %struct.mlme_ext_priv** %15, align 8
  %24 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %15, align 8
  %25 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %24, i32 0, i32 1
  store %struct.mlme_ext_info* %25, %struct.mlme_ext_info** %16, align 8
  %26 = load %struct.adapter*, %struct.adapter** %2, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 2
  store %struct.xmit_priv* %27, %struct.xmit_priv** %17, align 8
  %28 = load %struct.adapter*, %struct.adapter** %2, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 1
  store %struct.registry_priv* %29, %struct.registry_priv** %18, align 8
  store i32 0, i32* %9, align 4
  %30 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %15, align 8
  %31 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @WIRELESS_11_24N, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  store i32 16, i32* %8, align 4
  br label %38

37:                                               ; preds = %1
  store i32 10, i32* %8, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %16, align 8
  %40 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %105

43:                                               ; preds = %38
  %44 = load %struct.adapter*, %struct.adapter** %2, align 8
  %45 = getelementptr inbounds %struct.adapter, %struct.adapter* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %16, align 8
  %49 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 2, %50
  %52 = add nsw i32 %47, %51
  store i32 %52, i32* %5, align 4
  %53 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %15, align 8
  %54 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @WIRELESS_11G, align 4
  %57 = load i32, i32* @WIRELESS_11A, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %43
  store i32 4, i32* %6, align 4
  store i32 10, i32* %7, align 4
  br label %72

62:                                               ; preds = %43
  %63 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %15, align 8
  %64 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @WIRELESS_11B, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i32 5, i32* %6, align 4
  store i32 10, i32* %7, align 4
  br label %71

70:                                               ; preds = %62
  store i32 4, i32* %6, align 4
  store i32 10, i32* %7, align 4
  br label %71

71:                                               ; preds = %70, %69
  br label %72

72:                                               ; preds = %71, %61
  store i32 0, i32* %10, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = shl i32 %74, 8
  %76 = or i32 %73, %75
  %77 = load i32, i32* %7, align 4
  %78 = shl i32 %77, 12
  %79 = or i32 %76, %78
  %80 = load i32, i32* %10, align 4
  %81 = shl i32 %80, 16
  %82 = or i32 %79, %81
  store i32 %82, i32* %11, align 4
  %83 = load %struct.adapter*, %struct.adapter** %2, align 8
  %84 = load i32, i32* @HW_VAR_AC_PARAM_BE, align 4
  %85 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %83, i32 %84, i32* %11)
  %86 = load %struct.adapter*, %struct.adapter** %2, align 8
  %87 = load i32, i32* @HW_VAR_AC_PARAM_BK, align 4
  %88 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %86, i32 %87, i32* %11)
  %89 = load %struct.adapter*, %struct.adapter** %2, align 8
  %90 = load i32, i32* @HW_VAR_AC_PARAM_VI, align 4
  %91 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %89, i32 %90, i32* %11)
  store i32 2, i32* %6, align 4
  store i32 3, i32* %7, align 4
  store i32 47, i32* %10, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %6, align 4
  %94 = shl i32 %93, 8
  %95 = or i32 %92, %94
  %96 = load i32, i32* %7, align 4
  %97 = shl i32 %96, 12
  %98 = or i32 %95, %97
  %99 = load i32, i32* %10, align 4
  %100 = shl i32 %99, 16
  %101 = or i32 %98, %100
  store i32 %101, i32* %11, align 4
  %102 = load %struct.adapter*, %struct.adapter** %2, align 8
  %103 = load i32, i32* @HW_VAR_AC_PARAM_VO, align 4
  %104 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %102, i32 %103, i32* %11)
  br label %402

105:                                              ; preds = %38
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  store i32 0, i32* %106, align 4
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  store i32 0, i32* %107, align 8
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  store i32 0, i32* %108, align 4
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  store i32 0, i32* %109, align 16
  store i32 0, i32* %12, align 4
  br label %110

110:                                              ; preds = %254, %105
  %111 = load i32, i32* %12, align 4
  %112 = icmp slt i32 %111, 4
  br i1 %112, label %113, label %257

113:                                              ; preds = %110
  %114 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %16, align 8
  %115 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = ashr i32 %122, 5
  %124 = and i32 %123, 3
  store i32 %124, i32* %3, align 4
  %125 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %16, align 8
  %126 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = ashr i32 %133, 4
  %135 = and i32 %134, 1
  store i32 %135, i32* %4, align 4
  %136 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %16, align 8
  %137 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, 15
  %146 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %16, align 8
  %147 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = mul nsw i32 %145, %148
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %149, %150
  store i32 %151, i32* %5, align 4
  %152 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %16, align 8
  %153 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %154, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, 15
  store i32 %161, i32* %6, align 4
  %162 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %16, align 8
  %163 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, 240
  %172 = ashr i32 %171, 4
  store i32 %172, i32* %7, align 4
  %173 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %16, align 8
  %174 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %175, align 8
  %177 = load i32, i32* %12, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @le16_to_cpu(i32 %181)
  store i32 %182, i32* %10, align 4
  %183 = load i32, i32* %5, align 4
  %184 = load i32, i32* %6, align 4
  %185 = shl i32 %184, 8
  %186 = or i32 %183, %185
  %187 = load i32, i32* %7, align 4
  %188 = shl i32 %187, 12
  %189 = or i32 %186, %188
  %190 = load i32, i32* %10, align 4
  %191 = shl i32 %190, 16
  %192 = or i32 %189, %191
  store i32 %192, i32* %11, align 4
  %193 = load i32, i32* %3, align 4
  switch i32 %193, label %249 [
    i32 0, label %194
    i32 1, label %210
    i32 2, label %217
    i32 3, label %233
  ]

194:                                              ; preds = %113
  %195 = load %struct.adapter*, %struct.adapter** %2, align 8
  %196 = load i32, i32* @HW_VAR_AC_PARAM_BE, align 4
  %197 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %195, i32 %196, i32* %11)
  %198 = load i32, i32* %4, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %194
  %201 = call i32 @BIT(i32 1)
  br label %203

202:                                              ; preds = %194
  br label %203

203:                                              ; preds = %202, %200
  %204 = phi i32 [ %201, %200 ], [ 0, %202 ]
  %205 = load i32, i32* %9, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %9, align 4
  %207 = load i32, i32* %11, align 4
  %208 = load i64, i64* @XMIT_BE_QUEUE, align 8
  %209 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %208
  store i32 %207, i32* %209, align 4
  br label %249

210:                                              ; preds = %113
  %211 = load %struct.adapter*, %struct.adapter** %2, align 8
  %212 = load i32, i32* @HW_VAR_AC_PARAM_BK, align 4
  %213 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %211, i32 %212, i32* %11)
  %214 = load i32, i32* %11, align 4
  %215 = load i64, i64* @XMIT_BK_QUEUE, align 8
  %216 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %215
  store i32 %214, i32* %216, align 4
  br label %249

217:                                              ; preds = %113
  %218 = load %struct.adapter*, %struct.adapter** %2, align 8
  %219 = load i32, i32* @HW_VAR_AC_PARAM_VI, align 4
  %220 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %218, i32 %219, i32* %11)
  %221 = load i32, i32* %4, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %217
  %224 = call i32 @BIT(i32 2)
  br label %226

225:                                              ; preds = %217
  br label %226

226:                                              ; preds = %225, %223
  %227 = phi i32 [ %224, %223 ], [ 0, %225 ]
  %228 = load i32, i32* %9, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %9, align 4
  %230 = load i32, i32* %11, align 4
  %231 = load i64, i64* @XMIT_VI_QUEUE, align 8
  %232 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %231
  store i32 %230, i32* %232, align 4
  br label %249

233:                                              ; preds = %113
  %234 = load %struct.adapter*, %struct.adapter** %2, align 8
  %235 = load i32, i32* @HW_VAR_AC_PARAM_VO, align 4
  %236 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %234, i32 %235, i32* %11)
  %237 = load i32, i32* %4, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %233
  %240 = call i32 @BIT(i32 3)
  br label %242

241:                                              ; preds = %233
  br label %242

242:                                              ; preds = %241, %239
  %243 = phi i32 [ %240, %239 ], [ 0, %241 ]
  %244 = load i32, i32* %9, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %9, align 4
  %246 = load i32, i32* %11, align 4
  %247 = load i64, i64* @XMIT_VO_QUEUE, align 8
  %248 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %247
  store i32 %246, i32* %248, align 4
  br label %249

249:                                              ; preds = %113, %242, %226, %210, %203
  %250 = load i32, i32* %3, align 4
  %251 = load i32, i32* %4, align 4
  %252 = load i32, i32* %11, align 4
  %253 = call i32 (i8*, i32, i32, ...) @DBG_871X(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %250, i32 %251, i32 %252)
  br label %254

254:                                              ; preds = %249
  %255 = load i32, i32* %12, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %12, align 4
  br label %110

257:                                              ; preds = %110
  %258 = load %struct.adapter*, %struct.adapter** %2, align 8
  %259 = getelementptr inbounds %struct.adapter, %struct.adapter* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = icmp eq i32 %261, 1
  br i1 %262, label %263, label %267

263:                                              ; preds = %257
  %264 = load %struct.adapter*, %struct.adapter** %2, align 8
  %265 = load i32, i32* @HW_VAR_ACM_CTRL, align 4
  %266 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %264, i32 %265, i32* %9)
  br label %272

267:                                              ; preds = %257
  %268 = load i32, i32* %9, align 4
  %269 = load %struct.adapter*, %struct.adapter** %2, align 8
  %270 = getelementptr inbounds %struct.adapter, %struct.adapter* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 0
  store i32 %268, i32* %271, align 8
  br label %272

272:                                              ; preds = %267, %263
  %273 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  store i32 0, i32* %273, align 16
  %274 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  store i32 1, i32* %274, align 4
  %275 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  store i32 2, i32* %275, align 8
  %276 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  store i32 3, i32* %276, align 4
  %277 = load %struct.registry_priv*, %struct.registry_priv** %18, align 8
  %278 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = icmp eq i32 %279, 1
  br i1 %280, label %281, label %374

281:                                              ; preds = %272
  store i32 0, i32* %21, align 4
  store i32 0, i32* %12, align 4
  br label %282

282:                                              ; preds = %370, %281
  %283 = load i32, i32* %12, align 4
  %284 = icmp slt i32 %283, 4
  br i1 %284, label %285, label %373

285:                                              ; preds = %282
  %286 = load i32, i32* %12, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %19, align 4
  br label %288

288:                                              ; preds = %366, %285
  %289 = load i32, i32* %19, align 4
  %290 = icmp slt i32 %289, 4
  br i1 %290, label %291, label %369

291:                                              ; preds = %288
  %292 = load i32, i32* %19, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = and i32 %295, 65535
  %297 = load i32, i32* %12, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = and i32 %300, 65535
  %302 = icmp slt i32 %296, %301
  br i1 %302, label %303, label %304

303:                                              ; preds = %291
  store i32 1, i32* %21, align 4
  br label %331

304:                                              ; preds = %291
  %305 = load i32, i32* %19, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = and i32 %308, 65535
  %310 = load i32, i32* %12, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = and i32 %313, 65535
  %315 = icmp eq i32 %309, %314
  br i1 %315, label %316, label %330

316:                                              ; preds = %304
  %317 = load i32, i32* %19, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = ashr i32 %320, 16
  %322 = load i32, i32* %12, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = ashr i32 %325, 16
  %327 = icmp sgt i32 %321, %326
  br i1 %327, label %328, label %329

328:                                              ; preds = %316
  store i32 1, i32* %21, align 4
  br label %329

329:                                              ; preds = %328, %316
  br label %330

330:                                              ; preds = %329, %304
  br label %331

331:                                              ; preds = %330, %303
  %332 = load i32, i32* %21, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %365

334:                                              ; preds = %331
  %335 = load i32, i32* %12, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %336
  %338 = load i32, i32* %337, align 4
  store i32 %338, i32* %20, align 4
  %339 = load i32, i32* %19, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* %12, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %344
  store i32 %342, i32* %345, align 4
  %346 = load i32, i32* %20, align 4
  %347 = load i32, i32* %19, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %348
  store i32 %346, i32* %349, align 4
  %350 = load i32, i32* %12, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %351
  %353 = load i32, i32* %352, align 4
  store i32 %353, i32* %20, align 4
  %354 = load i32, i32* %19, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %355
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* %12, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %359
  store i32 %357, i32* %360, align 4
  %361 = load i32, i32* %20, align 4
  %362 = load i32, i32* %19, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %363
  store i32 %361, i32* %364, align 4
  store i32 0, i32* %21, align 4
  br label %365

365:                                              ; preds = %334, %331
  br label %366

366:                                              ; preds = %365
  %367 = load i32, i32* %19, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %19, align 4
  br label %288

369:                                              ; preds = %288
  br label %370

370:                                              ; preds = %369
  %371 = load i32, i32* %12, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %12, align 4
  br label %282

373:                                              ; preds = %282
  br label %374

374:                                              ; preds = %373, %272
  store i32 0, i32* %12, align 4
  br label %375

375:                                              ; preds = %398, %374
  %376 = load i32, i32* %12, align 4
  %377 = icmp slt i32 %376, 4
  br i1 %377, label %378, label %401

378:                                              ; preds = %375
  %379 = load i32, i32* %12, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.xmit_priv*, %struct.xmit_priv** %17, align 8
  %384 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %383, i32 0, i32 0
  %385 = load i32*, i32** %384, align 8
  %386 = load i32, i32* %12, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %385, i64 %387
  store i32 %382, i32* %388, align 4
  %389 = load i32, i32* %12, align 4
  %390 = load %struct.xmit_priv*, %struct.xmit_priv** %17, align 8
  %391 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %390, i32 0, i32 0
  %392 = load i32*, i32** %391, align 8
  %393 = load i32, i32* %12, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %392, i64 %394
  %396 = load i32, i32* %395, align 4
  %397 = call i32 (i8*, i32, i32, ...) @DBG_871X(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %389, i32 %396)
  br label %398

398:                                              ; preds = %378
  %399 = load i32, i32* %12, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %12, align 4
  br label %375

401:                                              ; preds = %375
  br label %402

402:                                              ; preds = %401, %72
  ret void
}

declare dso_local i32 @rtw_hal_set_hwreg(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @DBG_871X(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
