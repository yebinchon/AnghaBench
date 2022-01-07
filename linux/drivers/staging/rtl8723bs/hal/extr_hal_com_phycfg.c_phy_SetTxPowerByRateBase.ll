; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_phy_SetTxPowerByRateBase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_phy_SetTxPowerByRateBase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { i64***, i64*** }

@ODM_RF_PATH_D = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Invalid Rf Path %d in phy_SetTxPowerByRatBase()\0A\00", align 1
@BAND_ON_2_4G = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [85 x i8] c"Invalid RateSection %d in Band 2.4G, Rf Path %d, %dTx in phy_SetTxPowerByRateBase()\0A\00", align 1
@BAND_ON_5G = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [83 x i8] c"Invalid RateSection %d in Band 5G, Rf Path %d, %dTx in phy_SetTxPowerByRateBase()\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Invalid Band %d in phy_SetTxPowerByRateBase()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i64, i64, i32, i64, i64)* @phy_SetTxPowerByRateBase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_SetTxPowerByRateBase(%struct.adapter* %0, i64 %1, i64 %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.hal_com_data*, align 8
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load %struct.adapter*, %struct.adapter** %7, align 8
  %15 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %14)
  store %struct.hal_com_data* %15, %struct.hal_com_data** %13, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @ODM_RF_PATH_D, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i64, i64* %9, align 8
  %21 = call i32 (i8*, i64, ...) @DBG_871X(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %20)
  br label %280

22:                                               ; preds = %6
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @BAND_ON_2_4G, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %155

26:                                               ; preds = %22
  %27 = load i32, i32* %10, align 4
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
  %29 = load i64, i64* %12, align 8
  %30 = load %struct.hal_com_data*, %struct.hal_com_data** %13, align 8
  %31 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %30, i32 0, i32 1
  %32 = load i64***, i64**** %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds i64**, i64*** %32, i64 %33
  %35 = load i64**, i64*** %34, align 8
  %36 = load i64, i64* %11, align 8
  %37 = getelementptr inbounds i64*, i64** %35, i64 %36
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  store i64 %29, i64* %39, align 8
  br label %154

40:                                               ; preds = %26
  %41 = load i64, i64* %12, align 8
  %42 = load %struct.hal_com_data*, %struct.hal_com_data** %13, align 8
  %43 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %42, i32 0, i32 1
  %44 = load i64***, i64**** %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds i64**, i64*** %44, i64 %45
  %47 = load i64**, i64*** %46, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds i64*, i64** %47, i64 %48
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  store i64 %41, i64* %51, align 8
  br label %154

52:                                               ; preds = %26
  %53 = load i64, i64* %12, align 8
  %54 = load %struct.hal_com_data*, %struct.hal_com_data** %13, align 8
  %55 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %54, i32 0, i32 1
  %56 = load i64***, i64**** %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds i64**, i64*** %56, i64 %57
  %59 = load i64**, i64*** %58, align 8
  %60 = load i64, i64* %11, align 8
  %61 = getelementptr inbounds i64*, i64** %59, i64 %60
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 2
  store i64 %53, i64* %63, align 8
  br label %154

64:                                               ; preds = %26
  %65 = load i64, i64* %12, align 8
  %66 = load %struct.hal_com_data*, %struct.hal_com_data** %13, align 8
  %67 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %66, i32 0, i32 1
  %68 = load i64***, i64**** %67, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds i64**, i64*** %68, i64 %69
  %71 = load i64**, i64*** %70, align 8
  %72 = load i64, i64* %11, align 8
  %73 = getelementptr inbounds i64*, i64** %71, i64 %72
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 3
  store i64 %65, i64* %75, align 8
  br label %154

76:                                               ; preds = %26
  %77 = load i64, i64* %12, align 8
  %78 = load %struct.hal_com_data*, %struct.hal_com_data** %13, align 8
  %79 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %78, i32 0, i32 1
  %80 = load i64***, i64**** %79, align 8
  %81 = load i64, i64* %9, align 8
  %82 = getelementptr inbounds i64**, i64*** %80, i64 %81
  %83 = load i64**, i64*** %82, align 8
  %84 = load i64, i64* %11, align 8
  %85 = getelementptr inbounds i64*, i64** %83, i64 %84
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 4
  store i64 %77, i64* %87, align 8
  br label %154

88:                                               ; preds = %26
  %89 = load i64, i64* %12, align 8
  %90 = load %struct.hal_com_data*, %struct.hal_com_data** %13, align 8
  %91 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %90, i32 0, i32 1
  %92 = load i64***, i64**** %91, align 8
  %93 = load i64, i64* %9, align 8
  %94 = getelementptr inbounds i64**, i64*** %92, i64 %93
  %95 = load i64**, i64*** %94, align 8
  %96 = load i64, i64* %11, align 8
  %97 = getelementptr inbounds i64*, i64** %95, i64 %96
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 5
  store i64 %89, i64* %99, align 8
  br label %154

100:                                              ; preds = %26
  %101 = load i64, i64* %12, align 8
  %102 = load %struct.hal_com_data*, %struct.hal_com_data** %13, align 8
  %103 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %102, i32 0, i32 1
  %104 = load i64***, i64**** %103, align 8
  %105 = load i64, i64* %9, align 8
  %106 = getelementptr inbounds i64**, i64*** %104, i64 %105
  %107 = load i64**, i64*** %106, align 8
  %108 = load i64, i64* %11, align 8
  %109 = getelementptr inbounds i64*, i64** %107, i64 %108
  %110 = load i64*, i64** %109, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 6
  store i64 %101, i64* %111, align 8
  br label %154

112:                                              ; preds = %26
  %113 = load i64, i64* %12, align 8
  %114 = load %struct.hal_com_data*, %struct.hal_com_data** %13, align 8
  %115 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %114, i32 0, i32 1
  %116 = load i64***, i64**** %115, align 8
  %117 = load i64, i64* %9, align 8
  %118 = getelementptr inbounds i64**, i64*** %116, i64 %117
  %119 = load i64**, i64*** %118, align 8
  %120 = load i64, i64* %11, align 8
  %121 = getelementptr inbounds i64*, i64** %119, i64 %120
  %122 = load i64*, i64** %121, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 7
  store i64 %113, i64* %123, align 8
  br label %154

124:                                              ; preds = %26
  %125 = load i64, i64* %12, align 8
  %126 = load %struct.hal_com_data*, %struct.hal_com_data** %13, align 8
  %127 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %126, i32 0, i32 1
  %128 = load i64***, i64**** %127, align 8
  %129 = load i64, i64* %9, align 8
  %130 = getelementptr inbounds i64**, i64*** %128, i64 %129
  %131 = load i64**, i64*** %130, align 8
  %132 = load i64, i64* %11, align 8
  %133 = getelementptr inbounds i64*, i64** %131, i64 %132
  %134 = load i64*, i64** %133, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 8
  store i64 %125, i64* %135, align 8
  br label %154

136:                                              ; preds = %26
  %137 = load i64, i64* %12, align 8
  %138 = load %struct.hal_com_data*, %struct.hal_com_data** %13, align 8
  %139 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %138, i32 0, i32 1
  %140 = load i64***, i64**** %139, align 8
  %141 = load i64, i64* %9, align 8
  %142 = getelementptr inbounds i64**, i64*** %140, i64 %141
  %143 = load i64**, i64*** %142, align 8
  %144 = load i64, i64* %11, align 8
  %145 = getelementptr inbounds i64*, i64** %143, i64 %144
  %146 = load i64*, i64** %145, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 9
  store i64 %137, i64* %147, align 8
  br label %154

148:                                              ; preds = %26
  %149 = load i32, i32* %10, align 4
  %150 = zext i32 %149 to i64
  %151 = load i64, i64* %9, align 8
  %152 = load i64, i64* %11, align 8
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
  %160 = load i32, i32* %10, align 4
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
  %162 = load i64, i64* %12, align 8
  %163 = load %struct.hal_com_data*, %struct.hal_com_data** %13, align 8
  %164 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %163, i32 0, i32 0
  %165 = load i64***, i64**** %164, align 8
  %166 = load i64, i64* %9, align 8
  %167 = getelementptr inbounds i64**, i64*** %165, i64 %166
  %168 = load i64**, i64*** %167, align 8
  %169 = load i64, i64* %11, align 8
  %170 = getelementptr inbounds i64*, i64** %168, i64 %169
  %171 = load i64*, i64** %170, align 8
  %172 = getelementptr inbounds i64, i64* %171, i64 0
  store i64 %162, i64* %172, align 8
  br label %275

173:                                              ; preds = %159
  %174 = load i64, i64* %12, align 8
  %175 = load %struct.hal_com_data*, %struct.hal_com_data** %13, align 8
  %176 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %175, i32 0, i32 0
  %177 = load i64***, i64**** %176, align 8
  %178 = load i64, i64* %9, align 8
  %179 = getelementptr inbounds i64**, i64*** %177, i64 %178
  %180 = load i64**, i64*** %179, align 8
  %181 = load i64, i64* %11, align 8
  %182 = getelementptr inbounds i64*, i64** %180, i64 %181
  %183 = load i64*, i64** %182, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 1
  store i64 %174, i64* %184, align 8
  br label %275

185:                                              ; preds = %159
  %186 = load i64, i64* %12, align 8
  %187 = load %struct.hal_com_data*, %struct.hal_com_data** %13, align 8
  %188 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %187, i32 0, i32 0
  %189 = load i64***, i64**** %188, align 8
  %190 = load i64, i64* %9, align 8
  %191 = getelementptr inbounds i64**, i64*** %189, i64 %190
  %192 = load i64**, i64*** %191, align 8
  %193 = load i64, i64* %11, align 8
  %194 = getelementptr inbounds i64*, i64** %192, i64 %193
  %195 = load i64*, i64** %194, align 8
  %196 = getelementptr inbounds i64, i64* %195, i64 2
  store i64 %186, i64* %196, align 8
  br label %275

197:                                              ; preds = %159
  %198 = load i64, i64* %12, align 8
  %199 = load %struct.hal_com_data*, %struct.hal_com_data** %13, align 8
  %200 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %199, i32 0, i32 0
  %201 = load i64***, i64**** %200, align 8
  %202 = load i64, i64* %9, align 8
  %203 = getelementptr inbounds i64**, i64*** %201, i64 %202
  %204 = load i64**, i64*** %203, align 8
  %205 = load i64, i64* %11, align 8
  %206 = getelementptr inbounds i64*, i64** %204, i64 %205
  %207 = load i64*, i64** %206, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 3
  store i64 %198, i64* %208, align 8
  br label %275

209:                                              ; preds = %159
  %210 = load i64, i64* %12, align 8
  %211 = load %struct.hal_com_data*, %struct.hal_com_data** %13, align 8
  %212 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %211, i32 0, i32 0
  %213 = load i64***, i64**** %212, align 8
  %214 = load i64, i64* %9, align 8
  %215 = getelementptr inbounds i64**, i64*** %213, i64 %214
  %216 = load i64**, i64*** %215, align 8
  %217 = load i64, i64* %11, align 8
  %218 = getelementptr inbounds i64*, i64** %216, i64 %217
  %219 = load i64*, i64** %218, align 8
  %220 = getelementptr inbounds i64, i64* %219, i64 4
  store i64 %210, i64* %220, align 8
  br label %275

221:                                              ; preds = %159
  %222 = load i64, i64* %12, align 8
  %223 = load %struct.hal_com_data*, %struct.hal_com_data** %13, align 8
  %224 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %223, i32 0, i32 0
  %225 = load i64***, i64**** %224, align 8
  %226 = load i64, i64* %9, align 8
  %227 = getelementptr inbounds i64**, i64*** %225, i64 %226
  %228 = load i64**, i64*** %227, align 8
  %229 = load i64, i64* %11, align 8
  %230 = getelementptr inbounds i64*, i64** %228, i64 %229
  %231 = load i64*, i64** %230, align 8
  %232 = getelementptr inbounds i64, i64* %231, i64 5
  store i64 %222, i64* %232, align 8
  br label %275

233:                                              ; preds = %159
  %234 = load i64, i64* %12, align 8
  %235 = load %struct.hal_com_data*, %struct.hal_com_data** %13, align 8
  %236 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %235, i32 0, i32 0
  %237 = load i64***, i64**** %236, align 8
  %238 = load i64, i64* %9, align 8
  %239 = getelementptr inbounds i64**, i64*** %237, i64 %238
  %240 = load i64**, i64*** %239, align 8
  %241 = load i64, i64* %11, align 8
  %242 = getelementptr inbounds i64*, i64** %240, i64 %241
  %243 = load i64*, i64** %242, align 8
  %244 = getelementptr inbounds i64, i64* %243, i64 6
  store i64 %234, i64* %244, align 8
  br label %275

245:                                              ; preds = %159
  %246 = load i64, i64* %12, align 8
  %247 = load %struct.hal_com_data*, %struct.hal_com_data** %13, align 8
  %248 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %247, i32 0, i32 0
  %249 = load i64***, i64**** %248, align 8
  %250 = load i64, i64* %9, align 8
  %251 = getelementptr inbounds i64**, i64*** %249, i64 %250
  %252 = load i64**, i64*** %251, align 8
  %253 = load i64, i64* %11, align 8
  %254 = getelementptr inbounds i64*, i64** %252, i64 %253
  %255 = load i64*, i64** %254, align 8
  %256 = getelementptr inbounds i64, i64* %255, i64 7
  store i64 %246, i64* %256, align 8
  br label %275

257:                                              ; preds = %159
  %258 = load i64, i64* %12, align 8
  %259 = load %struct.hal_com_data*, %struct.hal_com_data** %13, align 8
  %260 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %259, i32 0, i32 0
  %261 = load i64***, i64**** %260, align 8
  %262 = load i64, i64* %9, align 8
  %263 = getelementptr inbounds i64**, i64*** %261, i64 %262
  %264 = load i64**, i64*** %263, align 8
  %265 = load i64, i64* %11, align 8
  %266 = getelementptr inbounds i64*, i64** %264, i64 %265
  %267 = load i64*, i64** %266, align 8
  %268 = getelementptr inbounds i64, i64* %267, i64 8
  store i64 %258, i64* %268, align 8
  br label %275

269:                                              ; preds = %159
  %270 = load i32, i32* %10, align 4
  %271 = zext i32 %270 to i64
  %272 = load i64, i64* %9, align 8
  %273 = load i64, i64* %11, align 8
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

280:                                              ; preds = %19, %279, %154
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @DBG_871X(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
