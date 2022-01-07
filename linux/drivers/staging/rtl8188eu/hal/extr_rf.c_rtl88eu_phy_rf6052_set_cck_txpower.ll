; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rf.c_rtl88eu_phy_rf6052_set_cck_txpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rf.c_rtl88eu_phy_rf6052_set_cck_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv, %struct.hal_data_8188e* }
%struct.mlme_ext_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.hal_data_8188e = type { i64, i32**, i32, %struct.dm_priv }
%struct.dm_priv = type { i64 }

@SCAN_PROCESS = common dso_local global i64 0, align 8
@RF_PATH_A = common dso_local global i64 0, align 8
@RF_PATH_B = common dso_local global i64 0, align 8
@TxHighPwrLevel_Level1 = common dso_local global i64 0, align 8
@TxHighPwrLevel_Level2 = common dso_local global i64 0, align 8
@RF6052_MAX_TX_PWR = common dso_local global i64 0, align 8
@rTxAGC_A_CCK1_Mcs32 = common dso_local global i32 0, align 4
@bMaskByte1 = common dso_local global i32 0, align 4
@rTxAGC_B_CCK11_A_CCK2_11 = common dso_local global i32 0, align 4
@bMaskByte0 = common dso_local global i32 0, align 4
@rTxAGC_B_CCK1_55_Mcs32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl88eu_phy_rf6052_set_cck_txpower(%struct.adapter* %0, i64* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.hal_data_8188e*, align 8
  %6 = alloca %struct.dm_priv*, align 8
  %7 = alloca %struct.mlme_ext_priv*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i64* %1, i64** %4, align 8
  %15 = load %struct.adapter*, %struct.adapter** %3, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 1
  %17 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %16, align 8
  store %struct.hal_data_8188e* %17, %struct.hal_data_8188e** %5, align 8
  %18 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %5, align 8
  %19 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %18, i32 0, i32 3
  store %struct.dm_priv* %19, %struct.dm_priv** %6, align 8
  %20 = load %struct.adapter*, %struct.adapter** %3, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 0
  store %struct.mlme_ext_priv* %21, %struct.mlme_ext_priv** %7, align 8
  %22 = bitcast [2 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 8, i1 false)
  store i32 0, i32* %9, align 4
  %23 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %7, align 8
  %24 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SCAN_PROCESS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %69

29:                                               ; preds = %2
  %30 = load i64, i64* @RF_PATH_A, align 8
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %30
  store i32 1061109567, i32* %31, align 4
  %32 = load i64, i64* @RF_PATH_B, align 8
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %32
  store i32 1061109567, i32* %33, align 4
  %34 = load i64, i64* @RF_PATH_A, align 8
  store i64 %34, i64* %11, align 8
  br label %35

35:                                               ; preds = %65, %29
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @RF_PATH_B, align 8
  %38 = icmp ule i64 %36, %37
  br i1 %38, label %39, label %68

39:                                               ; preds = %35
  %40 = load i64*, i64** %4, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %4, align 8
  %45 = load i64, i64* %11, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = shl i64 %47, 8
  %49 = or i64 %43, %48
  %50 = load i64*, i64** %4, align 8
  %51 = load i64, i64* %11, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = shl i64 %53, 16
  %55 = or i64 %49, %54
  %56 = load i64*, i64** %4, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = shl i64 %59, 24
  %61 = or i64 %55, %60
  %62 = trunc i64 %61 to i32
  %63 = load i64, i64* %11, align 8
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %63
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %39
  %66 = load i64, i64* %11, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %11, align 8
  br label %35

68:                                               ; preds = %35
  br label %177

69:                                               ; preds = %2
  %70 = load %struct.dm_priv*, %struct.dm_priv** %6, align 8
  %71 = getelementptr inbounds %struct.dm_priv, %struct.dm_priv* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @TxHighPwrLevel_Level1, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load i64, i64* @RF_PATH_A, align 8
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %76
  store i32 269488144, i32* %77, align 4
  %78 = load i64, i64* @RF_PATH_B, align 8
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %78
  store i32 269488144, i32* %79, align 4
  br label %176

80:                                               ; preds = %69
  %81 = load %struct.dm_priv*, %struct.dm_priv** %6, align 8
  %82 = getelementptr inbounds %struct.dm_priv, %struct.dm_priv* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @TxHighPwrLevel_Level2, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load i64, i64* @RF_PATH_A, align 8
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %87
  store i32 0, i32* %88, align 4
  %89 = load i64, i64* @RF_PATH_B, align 8
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %89
  store i32 0, i32* %90, align 4
  br label %175

91:                                               ; preds = %80
  %92 = load i64, i64* @RF_PATH_A, align 8
  store i64 %92, i64* %11, align 8
  br label %93

93:                                               ; preds = %123, %91
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* @RF_PATH_B, align 8
  %96 = icmp ule i64 %94, %95
  br i1 %96, label %97, label %126

97:                                               ; preds = %93
  %98 = load i64*, i64** %4, align 8
  %99 = load i64, i64* %11, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load i64*, i64** %4, align 8
  %103 = load i64, i64* %11, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = shl i64 %105, 8
  %107 = or i64 %101, %106
  %108 = load i64*, i64** %4, align 8
  %109 = load i64, i64* %11, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = shl i64 %111, 16
  %113 = or i64 %107, %112
  %114 = load i64*, i64** %4, align 8
  %115 = load i64, i64* %11, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = shl i64 %117, 24
  %119 = or i64 %113, %118
  %120 = trunc i64 %119 to i32
  %121 = load i64, i64* %11, align 8
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %121
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %97
  %124 = load i64, i64* %11, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %11, align 8
  br label %93

126:                                              ; preds = %93
  %127 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %5, align 8
  %128 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %174

131:                                              ; preds = %126
  %132 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %5, align 8
  %133 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %132, i32 0, i32 1
  %134 = load i32**, i32*** %133, align 8
  %135 = getelementptr inbounds i32*, i32** %134, i64 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 6
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %5, align 8
  %140 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %139, i32 0, i32 1
  %141 = load i32**, i32*** %140, align 8
  %142 = getelementptr inbounds i32*, i32** %141, i64 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 7
  %145 = load i32, i32* %144, align 4
  %146 = shl i32 %145, 8
  %147 = add nsw i32 %138, %146
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %9, align 4
  %149 = load i64, i64* @RF_PATH_A, align 8
  %150 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, %148
  store i32 %152, i32* %150, align 4
  %153 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %5, align 8
  %154 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %153, i32 0, i32 1
  %155 = load i32**, i32*** %154, align 8
  %156 = getelementptr inbounds i32*, i32** %155, i64 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 14
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %5, align 8
  %161 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %160, i32 0, i32 1
  %162 = load i32**, i32*** %161, align 8
  %163 = getelementptr inbounds i32*, i32** %162, i64 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 15
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 %166, 24
  %168 = add nsw i32 %159, %167
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %9, align 4
  %170 = load i64, i64* @RF_PATH_B, align 8
  %171 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, %169
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %131, %126
  br label %175

175:                                              ; preds = %174, %86
  br label %176

176:                                              ; preds = %175, %75
  br label %177

177:                                              ; preds = %176, %68
  %178 = load i64, i64* @RF_PATH_A, align 8
  store i64 %178, i64* %11, align 8
  br label %179

179:                                              ; preds = %205, %177
  %180 = load i64, i64* %11, align 8
  %181 = load i64, i64* @RF_PATH_B, align 8
  %182 = icmp ule i64 %180, %181
  br i1 %182, label %183, label %208

183:                                              ; preds = %179
  %184 = load i64, i64* %11, align 8
  %185 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %184
  %186 = bitcast i32* %185 to i64*
  store i64* %186, i64** %13, align 8
  store i64 0, i64* %12, align 8
  br label %187

187:                                              ; preds = %201, %183
  %188 = load i64, i64* %12, align 8
  %189 = icmp ult i64 %188, 4
  br i1 %189, label %190, label %204

190:                                              ; preds = %187
  %191 = load i64*, i64** %13, align 8
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @RF6052_MAX_TX_PWR, align 8
  %194 = icmp ugt i64 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = load i64, i64* @RF6052_MAX_TX_PWR, align 8
  %197 = load i64*, i64** %13, align 8
  store i64 %196, i64* %197, align 8
  br label %198

198:                                              ; preds = %195, %190
  %199 = load i64*, i64** %13, align 8
  %200 = getelementptr inbounds i64, i64* %199, i32 1
  store i64* %200, i64** %13, align 8
  br label %201

201:                                              ; preds = %198
  %202 = load i64, i64* %12, align 8
  %203 = add i64 %202, 1
  store i64 %203, i64* %12, align 8
  br label %187

204:                                              ; preds = %187
  br label %205

205:                                              ; preds = %204
  %206 = load i64, i64* %11, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %11, align 8
  br label %179

208:                                              ; preds = %179
  %209 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %5, align 8
  %210 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %209, i32 0, i32 2
  %211 = call i32 @rtl88eu_dm_txpower_track_adjust(i32* %210, i32 1, i64* %14, i32* %10)
  %212 = load i64, i64* %14, align 8
  %213 = icmp eq i64 %212, 1
  br i1 %213, label %214, label %223

214:                                              ; preds = %208
  %215 = load i32, i32* %10, align 4
  %216 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %217, %215
  store i32 %218, i32* %216, align 4
  %219 = load i32, i32* %10, align 4
  %220 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, %219
  store i32 %222, i32* %220, align 4
  br label %236

223:                                              ; preds = %208
  %224 = load i64, i64* %14, align 8
  %225 = icmp eq i64 %224, 2
  br i1 %225, label %226, label %235

226:                                              ; preds = %223
  %227 = load i32, i32* %10, align 4
  %228 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %229 = load i32, i32* %228, align 4
  %230 = sub nsw i32 %229, %227
  store i32 %230, i32* %228, align 4
  %231 = load i32, i32* %10, align 4
  %232 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %233 = load i32, i32* %232, align 4
  %234 = sub nsw i32 %233, %231
  store i32 %234, i32* %232, align 4
  br label %235

235:                                              ; preds = %226, %223
  br label %236

236:                                              ; preds = %235, %214
  %237 = load i64, i64* @RF_PATH_A, align 8
  %238 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = and i32 %239, 255
  store i32 %240, i32* %9, align 4
  %241 = load %struct.adapter*, %struct.adapter** %3, align 8
  %242 = load i32, i32* @rTxAGC_A_CCK1_Mcs32, align 4
  %243 = load i32, i32* @bMaskByte1, align 4
  %244 = load i32, i32* %9, align 4
  %245 = call i32 @phy_set_bb_reg(%struct.adapter* %241, i32 %242, i32 %243, i32 %244)
  %246 = load i64, i64* @RF_PATH_A, align 8
  %247 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = ashr i32 %248, 8
  store i32 %249, i32* %9, align 4
  %250 = load %struct.adapter*, %struct.adapter** %3, align 8
  %251 = load i32, i32* @rTxAGC_B_CCK11_A_CCK2_11, align 4
  %252 = load i32, i32* %9, align 4
  %253 = call i32 @phy_set_bb_reg(%struct.adapter* %250, i32 %251, i32 -256, i32 %252)
  %254 = load i64, i64* @RF_PATH_B, align 8
  %255 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = ashr i32 %256, 24
  store i32 %257, i32* %9, align 4
  %258 = load %struct.adapter*, %struct.adapter** %3, align 8
  %259 = load i32, i32* @rTxAGC_B_CCK11_A_CCK2_11, align 4
  %260 = load i32, i32* @bMaskByte0, align 4
  %261 = load i32, i32* %9, align 4
  %262 = call i32 @phy_set_bb_reg(%struct.adapter* %258, i32 %259, i32 %260, i32 %261)
  %263 = load i64, i64* @RF_PATH_B, align 8
  %264 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = and i32 %265, 16777215
  store i32 %266, i32* %9, align 4
  %267 = load %struct.adapter*, %struct.adapter** %3, align 8
  %268 = load i32, i32* @rTxAGC_B_CCK1_55_Mcs32, align 4
  %269 = load i32, i32* %9, align 4
  %270 = call i32 @phy_set_bb_reg(%struct.adapter* %267, i32 %268, i32 -256, i32 %269)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rtl88eu_dm_txpower_track_adjust(i32*, i32, i64*, i32*) #2

declare dso_local i32 @phy_set_bb_reg(%struct.adapter*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
