; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_PHY_GetTxPowerByRateBase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_PHY_GetTxPowerByRateBase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { i64***, i64*** }

@ODM_RF_PATH_D = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"Invalid Rf Path %d in PHY_GetTxPowerByRateBase()\0A\00", align 1
@BAND_ON_2_4G = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [85 x i8] c"Invalid RateSection %d in Band 2.4G, Rf Path %d, %dTx in PHY_GetTxPowerByRateBase()\0A\00", align 1
@BAND_ON_5G = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [83 x i8] c"Invalid RateSection %d in Band 5G, Rf Path %d, %dTx in PHY_GetTxPowerByRateBase()\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Invalid Band %d in PHY_GetTxPowerByRateBase()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PHY_GetTxPowerByRateBase(%struct.adapter* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.hal_com_data*, align 8
  %13 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.adapter*, %struct.adapter** %7, align 8
  %15 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %14)
  store %struct.hal_com_data* %15, %struct.hal_com_data** %12, align 8
  store i64 0, i64* %13, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @ODM_RF_PATH_D, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i64, i64* %9, align 8
  %21 = call i32 (i8*, i64, ...) @DBG_871X(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %20)
  store i64 0, i64* %6, align 8
  br label %282

22:                                               ; preds = %5
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @BAND_ON_2_4G, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %155

26:                                               ; preds = %22
  %27 = load i32, i32* %11, align 4
  switch i32 %27, label %148 [
    i32 137, label %28
    i32 132, label %40
    i32 136, label %52
    i32 133, label %64
    i32 135, label %76
    i32 134, label %88
    i32 131, label %100
    i32 130, label %112
    i32 129, label %124
    i32 128, label %136
  ]

28:                                               ; preds = %26
  %29 = load %struct.hal_com_data*, %struct.hal_com_data** %12, align 8
  %30 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %29, i32 0, i32 0
  %31 = load i64***, i64**** %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds i64**, i64*** %31, i64 %32
  %34 = load i64**, i64*** %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds i64*, i64** %34, i64 %35
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %13, align 8
  br label %154

40:                                               ; preds = %26
  %41 = load %struct.hal_com_data*, %struct.hal_com_data** %12, align 8
  %42 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %41, i32 0, i32 0
  %43 = load i64***, i64**** %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds i64**, i64*** %43, i64 %44
  %46 = load i64**, i64*** %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds i64*, i64** %46, i64 %47
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %13, align 8
  br label %154

52:                                               ; preds = %26
  %53 = load %struct.hal_com_data*, %struct.hal_com_data** %12, align 8
  %54 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %53, i32 0, i32 0
  %55 = load i64***, i64**** %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds i64**, i64*** %55, i64 %56
  %58 = load i64**, i64*** %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds i64*, i64** %58, i64 %59
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 2
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %13, align 8
  br label %154

64:                                               ; preds = %26
  %65 = load %struct.hal_com_data*, %struct.hal_com_data** %12, align 8
  %66 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %65, i32 0, i32 0
  %67 = load i64***, i64**** %66, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds i64**, i64*** %67, i64 %68
  %70 = load i64**, i64*** %69, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds i64*, i64** %70, i64 %71
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 3
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %13, align 8
  br label %154

76:                                               ; preds = %26
  %77 = load %struct.hal_com_data*, %struct.hal_com_data** %12, align 8
  %78 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %77, i32 0, i32 0
  %79 = load i64***, i64**** %78, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds i64**, i64*** %79, i64 %80
  %82 = load i64**, i64*** %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds i64*, i64** %82, i64 %83
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 4
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %13, align 8
  br label %154

88:                                               ; preds = %26
  %89 = load %struct.hal_com_data*, %struct.hal_com_data** %12, align 8
  %90 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %89, i32 0, i32 0
  %91 = load i64***, i64**** %90, align 8
  %92 = load i64, i64* %9, align 8
  %93 = getelementptr inbounds i64**, i64*** %91, i64 %92
  %94 = load i64**, i64*** %93, align 8
  %95 = load i64, i64* %10, align 8
  %96 = getelementptr inbounds i64*, i64** %94, i64 %95
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 5
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %13, align 8
  br label %154

100:                                              ; preds = %26
  %101 = load %struct.hal_com_data*, %struct.hal_com_data** %12, align 8
  %102 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %101, i32 0, i32 0
  %103 = load i64***, i64**** %102, align 8
  %104 = load i64, i64* %9, align 8
  %105 = getelementptr inbounds i64**, i64*** %103, i64 %104
  %106 = load i64**, i64*** %105, align 8
  %107 = load i64, i64* %10, align 8
  %108 = getelementptr inbounds i64*, i64** %106, i64 %107
  %109 = load i64*, i64** %108, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 6
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %13, align 8
  br label %154

112:                                              ; preds = %26
  %113 = load %struct.hal_com_data*, %struct.hal_com_data** %12, align 8
  %114 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %113, i32 0, i32 0
  %115 = load i64***, i64**** %114, align 8
  %116 = load i64, i64* %9, align 8
  %117 = getelementptr inbounds i64**, i64*** %115, i64 %116
  %118 = load i64**, i64*** %117, align 8
  %119 = load i64, i64* %10, align 8
  %120 = getelementptr inbounds i64*, i64** %118, i64 %119
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 7
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %13, align 8
  br label %154

124:                                              ; preds = %26
  %125 = load %struct.hal_com_data*, %struct.hal_com_data** %12, align 8
  %126 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %125, i32 0, i32 0
  %127 = load i64***, i64**** %126, align 8
  %128 = load i64, i64* %9, align 8
  %129 = getelementptr inbounds i64**, i64*** %127, i64 %128
  %130 = load i64**, i64*** %129, align 8
  %131 = load i64, i64* %10, align 8
  %132 = getelementptr inbounds i64*, i64** %130, i64 %131
  %133 = load i64*, i64** %132, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 8
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %13, align 8
  br label %154

136:                                              ; preds = %26
  %137 = load %struct.hal_com_data*, %struct.hal_com_data** %12, align 8
  %138 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %137, i32 0, i32 0
  %139 = load i64***, i64**** %138, align 8
  %140 = load i64, i64* %9, align 8
  %141 = getelementptr inbounds i64**, i64*** %139, i64 %140
  %142 = load i64**, i64*** %141, align 8
  %143 = load i64, i64* %10, align 8
  %144 = getelementptr inbounds i64*, i64** %142, i64 %143
  %145 = load i64*, i64** %144, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 9
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %13, align 8
  br label %154

148:                                              ; preds = %26
  %149 = load i32, i32* %11, align 4
  %150 = zext i32 %149 to i64
  %151 = load i64, i64* %9, align 8
  %152 = load i64, i64* %10, align 8
  %153 = call i32 (i8*, i64, ...) @DBG_871X(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i64 %150, i64 %151, i64 %152)
  br label %154

154:                                              ; preds = %148, %136, %124, %112, %100, %88, %76, %64, %52, %40, %28
  br label %280

155:                                              ; preds = %22
  %156 = load i64, i64* %8, align 8
  %157 = load i64, i64* @BAND_ON_5G, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %276

159:                                              ; preds = %155
  %160 = load i32, i32* %11, align 4
  switch i32 %160, label %269 [
    i32 132, label %161
    i32 136, label %173
    i32 133, label %185
    i32 135, label %197
    i32 134, label %209
    i32 131, label %221
    i32 130, label %233
    i32 129, label %245
    i32 128, label %257
  ]

161:                                              ; preds = %159
  %162 = load %struct.hal_com_data*, %struct.hal_com_data** %12, align 8
  %163 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %162, i32 0, i32 1
  %164 = load i64***, i64**** %163, align 8
  %165 = load i64, i64* %9, align 8
  %166 = getelementptr inbounds i64**, i64*** %164, i64 %165
  %167 = load i64**, i64*** %166, align 8
  %168 = load i64, i64* %10, align 8
  %169 = getelementptr inbounds i64*, i64** %167, i64 %168
  %170 = load i64*, i64** %169, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 0
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %13, align 8
  br label %275

173:                                              ; preds = %159
  %174 = load %struct.hal_com_data*, %struct.hal_com_data** %12, align 8
  %175 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %174, i32 0, i32 1
  %176 = load i64***, i64**** %175, align 8
  %177 = load i64, i64* %9, align 8
  %178 = getelementptr inbounds i64**, i64*** %176, i64 %177
  %179 = load i64**, i64*** %178, align 8
  %180 = load i64, i64* %10, align 8
  %181 = getelementptr inbounds i64*, i64** %179, i64 %180
  %182 = load i64*, i64** %181, align 8
  %183 = getelementptr inbounds i64, i64* %182, i64 1
  %184 = load i64, i64* %183, align 8
  store i64 %184, i64* %13, align 8
  br label %275

185:                                              ; preds = %159
  %186 = load %struct.hal_com_data*, %struct.hal_com_data** %12, align 8
  %187 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %186, i32 0, i32 1
  %188 = load i64***, i64**** %187, align 8
  %189 = load i64, i64* %9, align 8
  %190 = getelementptr inbounds i64**, i64*** %188, i64 %189
  %191 = load i64**, i64*** %190, align 8
  %192 = load i64, i64* %10, align 8
  %193 = getelementptr inbounds i64*, i64** %191, i64 %192
  %194 = load i64*, i64** %193, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 2
  %196 = load i64, i64* %195, align 8
  store i64 %196, i64* %13, align 8
  br label %275

197:                                              ; preds = %159
  %198 = load %struct.hal_com_data*, %struct.hal_com_data** %12, align 8
  %199 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %198, i32 0, i32 1
  %200 = load i64***, i64**** %199, align 8
  %201 = load i64, i64* %9, align 8
  %202 = getelementptr inbounds i64**, i64*** %200, i64 %201
  %203 = load i64**, i64*** %202, align 8
  %204 = load i64, i64* %10, align 8
  %205 = getelementptr inbounds i64*, i64** %203, i64 %204
  %206 = load i64*, i64** %205, align 8
  %207 = getelementptr inbounds i64, i64* %206, i64 3
  %208 = load i64, i64* %207, align 8
  store i64 %208, i64* %13, align 8
  br label %275

209:                                              ; preds = %159
  %210 = load %struct.hal_com_data*, %struct.hal_com_data** %12, align 8
  %211 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %210, i32 0, i32 1
  %212 = load i64***, i64**** %211, align 8
  %213 = load i64, i64* %9, align 8
  %214 = getelementptr inbounds i64**, i64*** %212, i64 %213
  %215 = load i64**, i64*** %214, align 8
  %216 = load i64, i64* %10, align 8
  %217 = getelementptr inbounds i64*, i64** %215, i64 %216
  %218 = load i64*, i64** %217, align 8
  %219 = getelementptr inbounds i64, i64* %218, i64 4
  %220 = load i64, i64* %219, align 8
  store i64 %220, i64* %13, align 8
  br label %275

221:                                              ; preds = %159
  %222 = load %struct.hal_com_data*, %struct.hal_com_data** %12, align 8
  %223 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %222, i32 0, i32 1
  %224 = load i64***, i64**** %223, align 8
  %225 = load i64, i64* %9, align 8
  %226 = getelementptr inbounds i64**, i64*** %224, i64 %225
  %227 = load i64**, i64*** %226, align 8
  %228 = load i64, i64* %10, align 8
  %229 = getelementptr inbounds i64*, i64** %227, i64 %228
  %230 = load i64*, i64** %229, align 8
  %231 = getelementptr inbounds i64, i64* %230, i64 5
  %232 = load i64, i64* %231, align 8
  store i64 %232, i64* %13, align 8
  br label %275

233:                                              ; preds = %159
  %234 = load %struct.hal_com_data*, %struct.hal_com_data** %12, align 8
  %235 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %234, i32 0, i32 1
  %236 = load i64***, i64**** %235, align 8
  %237 = load i64, i64* %9, align 8
  %238 = getelementptr inbounds i64**, i64*** %236, i64 %237
  %239 = load i64**, i64*** %238, align 8
  %240 = load i64, i64* %10, align 8
  %241 = getelementptr inbounds i64*, i64** %239, i64 %240
  %242 = load i64*, i64** %241, align 8
  %243 = getelementptr inbounds i64, i64* %242, i64 6
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* %13, align 8
  br label %275

245:                                              ; preds = %159
  %246 = load %struct.hal_com_data*, %struct.hal_com_data** %12, align 8
  %247 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %246, i32 0, i32 1
  %248 = load i64***, i64**** %247, align 8
  %249 = load i64, i64* %9, align 8
  %250 = getelementptr inbounds i64**, i64*** %248, i64 %249
  %251 = load i64**, i64*** %250, align 8
  %252 = load i64, i64* %10, align 8
  %253 = getelementptr inbounds i64*, i64** %251, i64 %252
  %254 = load i64*, i64** %253, align 8
  %255 = getelementptr inbounds i64, i64* %254, i64 7
  %256 = load i64, i64* %255, align 8
  store i64 %256, i64* %13, align 8
  br label %275

257:                                              ; preds = %159
  %258 = load %struct.hal_com_data*, %struct.hal_com_data** %12, align 8
  %259 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %258, i32 0, i32 1
  %260 = load i64***, i64**** %259, align 8
  %261 = load i64, i64* %9, align 8
  %262 = getelementptr inbounds i64**, i64*** %260, i64 %261
  %263 = load i64**, i64*** %262, align 8
  %264 = load i64, i64* %10, align 8
  %265 = getelementptr inbounds i64*, i64** %263, i64 %264
  %266 = load i64*, i64** %265, align 8
  %267 = getelementptr inbounds i64, i64* %266, i64 8
  %268 = load i64, i64* %267, align 8
  store i64 %268, i64* %13, align 8
  br label %275

269:                                              ; preds = %159
  %270 = load i32, i32* %11, align 4
  %271 = zext i32 %270 to i64
  %272 = load i64, i64* %9, align 8
  %273 = load i64, i64* %10, align 8
  %274 = call i32 (i8*, i64, ...) @DBG_871X(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i64 %271, i64 %272, i64 %273)
  br label %275

275:                                              ; preds = %269, %257, %245, %233, %221, %209, %197, %185, %173, %161
  br label %279

276:                                              ; preds = %155
  %277 = load i64, i64* %8, align 8
  %278 = call i32 (i8*, i64, ...) @DBG_871X(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i64 %277)
  br label %279

279:                                              ; preds = %276, %275
  br label %280

280:                                              ; preds = %279, %154
  %281 = load i64, i64* %13, align 8
  store i64 %281, i64* %6, align 8
  br label %282

282:                                              ; preds = %280, %19
  %283 = load i64, i64* %6, align 8
  ret i64 %283
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @DBG_871X(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
