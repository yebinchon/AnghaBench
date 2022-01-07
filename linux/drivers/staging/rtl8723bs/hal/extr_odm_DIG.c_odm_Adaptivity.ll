; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_DIG.c_odm_Adaptivity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_DIG.c_odm_Adaptivity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i64*, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i64, i32 }

@ODM_BB_ADAPTIVITY = common dso_local global i32 0, align 4
@ODM_COMP_DIG = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Go to odm_DynamicEDCCA()\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"odm_Adaptivity() =====>\0A\00", align 1
@.str.2 = private unnamed_addr constant [91 x i8] c"ForceEDCCA =%d, IGI_Base = 0x%x, TH_L2H_ini = %d, TH_EDCCA_HL_diff = %d, AdapEn_RSSI = %d\0A\00", align 1
@ODM_BW20M = common dso_local global i64 0, align 8
@ODM_BW40M = common dso_local global i64 0, align 8
@ODM_BW80M = common dso_local global i64 0, align 8
@ODM_REG_DBG_RPT_11N = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@rOFDM0_ECCAThreshold = common dso_local global i32 0, align 4
@bMaskByte0 = common dso_local global i32 0, align 4
@bMaskByte2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"BandWidth =%s, IGI_target = 0x%x, EDCCA_State =%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"80M\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"40M\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"20M\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"IGI = 0x%x, TH_L2H_dmc = %d, TH_H2L_dmc = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @odm_Adaptivity(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %5, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ODM_BB_ADAPTIVITY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = load i32, i32* @ODM_COMP_DIG, align 4
  %22 = load i32, i32* @ODM_DBG_LOUD, align 4
  %23 = call i32 @ODM_RT_TRACE(%struct.TYPE_5__* %20, i32 %21, i32 %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %276

24:                                               ; preds = %2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = load i32, i32* @ODM_COMP_DIG, align 4
  %27 = load i32, i32* @ODM_DBG_LOUD, align 4
  %28 = call i32 @ODM_RT_TRACE(%struct.TYPE_5__* %25, i32 %26, i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = load i32, i32* @ODM_COMP_DIG, align 4
  %31 = load i32, i32* @ODM_DBG_LOUD, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 16
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 @ODM_RT_TRACE(%struct.TYPE_5__* %29, i32 %30, i32 %31, i8* %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 5
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ODM_BW20M, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %24
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %9, align 4
  br label %90

60:                                               ; preds = %24
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 5
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ODM_BW40M, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 2
  store i32 %71, i32* %9, align 4
  br label %89

72:                                               ; preds = %60
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 5
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @ODM_BW80M, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 2
  store i32 %83, i32* %9, align 4
  br label %88

84:                                               ; preds = %72
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %84, %79
  br label %89

89:                                               ; preds = %88, %67
  br label %90

90:                                               ; preds = %89, %56
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 6
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %110

98:                                               ; preds = %90
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 14
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @ODM_REG_DBG_RPT_11N, align 4
  %103 = load i32, i32* @bMaskDWord, align 4
  %104 = call i32 @PHY_SetBBReg(i32 %101, i32 %102, i32 %103, i32 520)
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @odm_SearchPwdBLowerBound(%struct.TYPE_5__* %105, i32 %108)
  br label %110

110:                                              ; preds = %98, %90
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 15
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 8
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %118, align 4
  %120 = icmp sgt i32 %119, 149
  br i1 %120, label %121, label %134

121:                                              ; preds = %115, %110
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 14
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @rOFDM0_ECCAThreshold, align 4
  %126 = load i32, i32* @bMaskByte0, align 4
  %127 = call i32 @PHY_SetBBReg(i32 %124, i32 %125, i32 %126, i32 127)
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 14
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @rOFDM0_ECCAThreshold, align 4
  %132 = load i32, i32* @bMaskByte2, align 4
  %133 = call i32 @PHY_SetBBReg(i32 %130, i32 %131, i32 %132, i32 127)
  br label %276

134:                                              ; preds = %115
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 16
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %160, label %139

139:                                              ; preds = %134
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 9
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = icmp sgt i32 %142, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %139
  store i32 1, i32* %10, align 4
  br label %159

148:                                              ; preds = %139
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 9
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = sub nsw i32 %154, 5
  %156 = icmp slt i32 %151, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %148
  store i32 0, i32* %10, align 4
  br label %158

158:                                              ; preds = %157, %148
  br label %159

159:                                              ; preds = %158, %147
  br label %161

160:                                              ; preds = %134
  store i32 1, i32* %10, align 4
  br label %161

161:                                              ; preds = %160, %159
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 15
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %184

166:                                              ; preds = %161
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 10
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %184

171:                                              ; preds = %166
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 11
  %174 = load i32, i32* %173, align 8
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %171
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 7
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %183 = call i32 @odm_NHMBB(%struct.TYPE_5__* %182)
  br label %184

184:                                              ; preds = %181, %176, %171, %166, %161
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %186 = load i32, i32* @ODM_COMP_DIG, align 4
  %187 = load i32, i32* @ODM_DBG_LOUD, align 4
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 5
  %190 = load i64*, i64** %189, align 8
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @ODM_BW80M, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %184
  br label %204

195:                                              ; preds = %184
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 5
  %198 = load i64*, i64** %197, align 8
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @ODM_BW40M, align 8
  %201 = icmp eq i64 %199, %200
  %202 = zext i1 %201 to i64
  %203 = select i1 %201, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  br label %204

204:                                              ; preds = %195, %194
  %205 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), %194 ], [ %203, %195 ]
  %206 = load i32, i32* %9, align 4
  %207 = load i32, i32* %10, align 4
  %208 = sext i32 %207 to i64
  %209 = inttoptr i64 %208 to i8*
  %210 = call i32 @ODM_RT_TRACE(%struct.TYPE_5__* %185, i32 %186, i32 %187, i8* %209)
  %211 = load i32, i32* %10, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %251

213:                                              ; preds = %204
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* %4, align 4
  %216 = sub nsw i32 %214, %215
  store i32 %216, i32* %8, align 4
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* %8, align 4
  %221 = add nsw i32 %219, %220
  store i32 %221, i32* %6, align 4
  %222 = load i32, i32* %6, align 4
  %223 = icmp sgt i32 %222, 10
  br i1 %223, label %224, label %225

224:                                              ; preds = %213
  store i32 10, i32* %6, align 4
  br label %225

225:                                              ; preds = %224, %213
  %226 = load i32, i32* %6, align 4
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = sub nsw i32 %226, %229
  store i32 %230, i32* %7, align 4
  %231 = load i32, i32* %7, align 4
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 12
  %234 = load i32, i32* %233, align 4
  %235 = icmp slt i32 %231, %234
  br i1 %235, label %236, label %240

236:                                              ; preds = %225
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 12
  %239 = load i32, i32* %238, align 4
  store i32 %239, i32* %7, align 4
  br label %240

240:                                              ; preds = %236, %225
  %241 = load i32, i32* %6, align 4
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 13
  %244 = load i32, i32* %243, align 8
  %245 = icmp slt i32 %241, %244
  br i1 %245, label %246, label %250

246:                                              ; preds = %240
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 13
  %249 = load i32, i32* %248, align 8
  store i32 %249, i32* %6, align 4
  br label %250

250:                                              ; preds = %246, %240
  br label %252

251:                                              ; preds = %204
  store i32 127, i32* %6, align 4
  store i32 127, i32* %7, align 4
  br label %252

252:                                              ; preds = %251, %250
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %254 = load i32, i32* @ODM_COMP_DIG, align 4
  %255 = load i32, i32* @ODM_DBG_LOUD, align 4
  %256 = load i32, i32* %4, align 4
  %257 = load i32, i32* %6, align 4
  %258 = load i32, i32* %7, align 4
  %259 = sext i32 %258 to i64
  %260 = inttoptr i64 %259 to i8*
  %261 = call i32 @ODM_RT_TRACE(%struct.TYPE_5__* %253, i32 %254, i32 %255, i8* %260)
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 14
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @rOFDM0_ECCAThreshold, align 4
  %266 = load i32, i32* @bMaskByte0, align 4
  %267 = load i32, i32* %6, align 4
  %268 = call i32 @PHY_SetBBReg(i32 %264, i32 %265, i32 %266, i32 %267)
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 14
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @rOFDM0_ECCAThreshold, align 4
  %273 = load i32, i32* @bMaskByte2, align 4
  %274 = load i32, i32* %7, align 4
  %275 = call i32 @PHY_SetBBReg(i32 %271, i32 %272, i32 %273, i32 %274)
  br label %276

276:                                              ; preds = %252, %121, %19
  ret void
}

declare dso_local i32 @ODM_RT_TRACE(%struct.TYPE_5__*, i32, i32, i8*) #1

declare dso_local i32 @PHY_SetBBReg(i32, i32, i32, i32) #1

declare dso_local i32 @odm_SearchPwdBLowerBound(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @odm_NHMBB(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
