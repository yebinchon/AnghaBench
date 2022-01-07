; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_phy_ParseBBPgParaFile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_phy_ParseBBPgParaFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.hal_com_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8, i64 }

@_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"#[v1]\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"#[v0]\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"The format in PHY_REG_PG are invalid %s\0A\00", align 1
@_FAIL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"[Exact]#\00", align 1
@PHY_REG_PG_EXACT_VALUE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"[Relative]#\00", align 1
@PHY_REG_PG_RELATIVE_VALUE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [41 x i8] c"The values in PHY_REG_PG are invalid %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"0xffff\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"#[END]#\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"#[2.4G]\00", align 1
@BAND_ON_2_4G = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"#[5G]\00", align 1
@BAND_ON_5G = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"Invalid band %s in PHY_REG_PG.txt\0A\00", align 1
@RF_1TX = common dso_local global i32 0, align 4
@RF_2TX = common dso_local global i32 0, align 4
@RF_3TX = common dso_local global i32 0, align 4
@RF_4TX = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [34 x i8] c"Invalid row in PHY_REG_PG.txt %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i8*)* @phy_ParseBBPgParaFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_ParseBBPgParaFile(%struct.adapter* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hal_com_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i8* %1, i8** %5, align 8
  %25 = load i32, i32* @_SUCCESS, align 4
  store i32 %25, i32* %6, align 4
  %26 = load %struct.adapter*, %struct.adapter** %4, align 8
  %27 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %26)
  store %struct.hal_com_data* %27, %struct.hal_com_data** %7, align 8
  store i32 1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %28 = load %struct.adapter*, %struct.adapter** %4, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load %struct.adapter*, %struct.adapter** %4, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @phy_DecryptBBPgParaFile(%struct.adapter* %34, i8* %35)
  br label %37

37:                                               ; preds = %33, %2
  %38 = load i8*, i8** %5, align 8
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i8* @GetLineFromBuffer(i8* %39)
  store i8* %40, i8** %8, align 8
  br label %41

41:                                               ; preds = %586, %37
  %42 = load i8*, i8** %8, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %589

44:                                               ; preds = %41
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @IsCommentString(i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %585, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %8, align 8
  %50 = call i64 @isAllSpaceOrTab(i8* %49, i32 1)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %586

53:                                               ; preds = %48
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %113

56:                                               ; preds = %53
  %57 = load i8*, i8** %8, align 8
  %58 = call i64 (i8*, ...) @eqNByte(i8* %57, i32* bitcast ([6 x i8]* @.str to i32*), i32 5)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 3
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = sub nsw i32 %64, 48
  %66 = trunc i32 %65 to i8
  %67 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %68 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i8 %66, i8* %69, align 8
  br label %89

70:                                               ; preds = %56
  %71 = load i8*, i8** %8, align 8
  %72 = call i64 (i8*, ...) @eqNByte(i8* %71, i32* bitcast ([6 x i8]* @.str.1 to i32*), i32 5)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 3
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = sub nsw i32 %78, 48
  %80 = trunc i32 %79 to i8
  %81 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %82 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i8 %80, i8* %83, align 8
  br label %88

84:                                               ; preds = %70
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %85)
  %87 = load i32, i32* @_FAIL, align 4
  store i32 %87, i32* %3, align 4
  br label %591

88:                                               ; preds = %74
  br label %89

89:                                               ; preds = %88, %60
  %90 = load i8*, i8** %8, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 5
  %92 = call i64 (i8*, ...) @eqNByte(i8* %91, i32* bitcast ([9 x i8]* @.str.3 to i32*), i32 8)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load i64, i64* @PHY_REG_PG_EXACT_VALUE, align 8
  %96 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %97 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store i64 %95, i64* %98, align 8
  store i32 0, i32* %14, align 4
  br label %586

99:                                               ; preds = %89
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 5
  %102 = call i64 (i8*, ...) @eqNByte(i8* %101, i32* bitcast ([12 x i8]* @.str.4 to i32*), i32 11)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load i64, i64* @PHY_REG_PG_RELATIVE_VALUE, align 8
  %106 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %107 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  store i64 %105, i64* %108, align 8
  store i32 0, i32* %14, align 4
  br label %586

109:                                              ; preds = %99
  %110 = load i8*, i8** %8, align 8
  %111 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %110)
  %112 = load i32, i32* @_FAIL, align 4
  store i32 %112, i32* %3, align 4
  br label %591

113:                                              ; preds = %53
  %114 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %115 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i8, i8* %116, align 8
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %293

120:                                              ; preds = %113
  %121 = load i8*, i8** %8, align 8
  %122 = call i64 @GetHexValueFromString(i8* %121, i32* %10, i32* %13)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %292

124:                                              ; preds = %120
  %125 = load i32, i32* %13, align 4
  %126 = load i8*, i8** %8, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8* %128, i8** %8, align 8
  %129 = load i32, i32* %10, align 4
  %130 = icmp eq i32 %129, 65535
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  br label %589

132:                                              ; preds = %124
  %133 = load i8*, i8** %8, align 8
  %134 = call i64 @GetHexValueFromString(i8* %133, i32* %11, i32* %13)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load i32, i32* %13, align 4
  %138 = load i8*, i8** %8, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  store i8* %140, i8** %8, align 8
  br label %143

141:                                              ; preds = %132
  %142 = load i32, i32* @_FAIL, align 4
  store i32 %142, i32* %3, align 4
  br label %591

143:                                              ; preds = %136
  %144 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %145 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @PHY_REG_PG_RELATIVE_VALUE, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %163

150:                                              ; preds = %143
  %151 = load i8*, i8** %8, align 8
  %152 = call i64 @GetHexValueFromString(i8* %151, i32* %12, i32* %13)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %150
  %155 = load %struct.adapter*, %struct.adapter** %4, align 8
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %12, align 4
  %159 = call i32 @PHY_StoreTxPowerByRate(%struct.adapter* %155, i32 0, i32 0, i32 1, i32 %156, i32 %157, i32 %158)
  br label %162

160:                                              ; preds = %150
  %161 = load i32, i32* @_FAIL, align 4
  store i32 %161, i32* %3, align 4
  br label %591

162:                                              ; preds = %154
  br label %291

163:                                              ; preds = %143
  %164 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %165 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @PHY_REG_PG_EXACT_VALUE, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %290

170:                                              ; preds = %163
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %171 = load i8*, i8** %8, align 8
  %172 = call i64 @GetFractionValueFromString(i8* %171, i32* %19, i32* %20, i32* %13)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %170
  %175 = load i32, i32* %13, align 4
  %176 = load i8*, i8** %8, align 8
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i8, i8* %176, i64 %177
  store i8* %178, i8** %8, align 8
  br label %181

179:                                              ; preds = %170
  %180 = load i32, i32* @_FAIL, align 4
  store i32 %180, i32* %3, align 4
  br label %591

181:                                              ; preds = %174
  %182 = load i32, i32* %19, align 4
  %183 = mul nsw i32 %182, 2
  store i32 %183, i32* %19, align 4
  %184 = load i32, i32* %20, align 4
  %185 = icmp eq i32 %184, 5
  br i1 %185, label %186, label %189

186:                                              ; preds = %181
  %187 = load i32, i32* %19, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %19, align 4
  br label %189

189:                                              ; preds = %186, %181
  %190 = load i32, i32* %19, align 4
  %191 = sdiv i32 %190, 10
  %192 = shl i32 %191, 4
  %193 = load i32, i32* %19, align 4
  %194 = srem i32 %193, 10
  %195 = add nsw i32 %192, %194
  %196 = load i32, i32* %18, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %18, align 4
  %198 = load i8*, i8** %8, align 8
  %199 = call i64 @GetFractionValueFromString(i8* %198, i32* %19, i32* %20, i32* %13)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %189
  %202 = load i32, i32* %13, align 4
  %203 = load i8*, i8** %8, align 8
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds i8, i8* %203, i64 %204
  store i8* %205, i8** %8, align 8
  br label %208

206:                                              ; preds = %189
  %207 = load i32, i32* @_FAIL, align 4
  store i32 %207, i32* %3, align 4
  br label %591

208:                                              ; preds = %201
  %209 = load i32, i32* %19, align 4
  %210 = mul nsw i32 %209, 2
  store i32 %210, i32* %19, align 4
  %211 = load i32, i32* %20, align 4
  %212 = icmp eq i32 %211, 5
  br i1 %212, label %213, label %216

213:                                              ; preds = %208
  %214 = load i32, i32* %19, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %19, align 4
  br label %216

216:                                              ; preds = %213, %208
  %217 = load i32, i32* %18, align 4
  %218 = shl i32 %217, 8
  store i32 %218, i32* %18, align 4
  %219 = load i32, i32* %19, align 4
  %220 = sdiv i32 %219, 10
  %221 = shl i32 %220, 4
  %222 = load i32, i32* %19, align 4
  %223 = srem i32 %222, 10
  %224 = add nsw i32 %221, %223
  %225 = load i32, i32* %18, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %18, align 4
  %227 = load i8*, i8** %8, align 8
  %228 = call i64 @GetFractionValueFromString(i8* %227, i32* %19, i32* %20, i32* %13)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %216
  %231 = load i32, i32* %13, align 4
  %232 = load i8*, i8** %8, align 8
  %233 = sext i32 %231 to i64
  %234 = getelementptr inbounds i8, i8* %232, i64 %233
  store i8* %234, i8** %8, align 8
  br label %237

235:                                              ; preds = %216
  %236 = load i32, i32* @_FAIL, align 4
  store i32 %236, i32* %3, align 4
  br label %591

237:                                              ; preds = %230
  %238 = load i32, i32* %19, align 4
  %239 = mul nsw i32 %238, 2
  store i32 %239, i32* %19, align 4
  %240 = load i32, i32* %20, align 4
  %241 = icmp eq i32 %240, 5
  br i1 %241, label %242, label %245

242:                                              ; preds = %237
  %243 = load i32, i32* %19, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %19, align 4
  br label %245

245:                                              ; preds = %242, %237
  %246 = load i32, i32* %18, align 4
  %247 = shl i32 %246, 8
  store i32 %247, i32* %18, align 4
  %248 = load i32, i32* %19, align 4
  %249 = sdiv i32 %248, 10
  %250 = shl i32 %249, 4
  %251 = load i32, i32* %19, align 4
  %252 = srem i32 %251, 10
  %253 = add nsw i32 %250, %252
  %254 = load i32, i32* %18, align 4
  %255 = or i32 %254, %253
  store i32 %255, i32* %18, align 4
  %256 = load i8*, i8** %8, align 8
  %257 = call i64 @GetFractionValueFromString(i8* %256, i32* %19, i32* %20, i32* %13)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %245
  %260 = load i32, i32* %13, align 4
  %261 = load i8*, i8** %8, align 8
  %262 = sext i32 %260 to i64
  %263 = getelementptr inbounds i8, i8* %261, i64 %262
  store i8* %263, i8** %8, align 8
  br label %266

264:                                              ; preds = %245
  %265 = load i32, i32* @_FAIL, align 4
  store i32 %265, i32* %3, align 4
  br label %591

266:                                              ; preds = %259
  %267 = load i32, i32* %19, align 4
  %268 = mul nsw i32 %267, 2
  store i32 %268, i32* %19, align 4
  %269 = load i32, i32* %20, align 4
  %270 = icmp eq i32 %269, 5
  br i1 %270, label %271, label %274

271:                                              ; preds = %266
  %272 = load i32, i32* %19, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %19, align 4
  br label %274

274:                                              ; preds = %271, %266
  %275 = load i32, i32* %18, align 4
  %276 = shl i32 %275, 8
  store i32 %276, i32* %18, align 4
  %277 = load i32, i32* %19, align 4
  %278 = sdiv i32 %277, 10
  %279 = shl i32 %278, 4
  %280 = load i32, i32* %19, align 4
  %281 = srem i32 %280, 10
  %282 = add nsw i32 %279, %281
  %283 = load i32, i32* %18, align 4
  %284 = or i32 %283, %282
  store i32 %284, i32* %18, align 4
  %285 = load %struct.adapter*, %struct.adapter** %4, align 8
  %286 = load i32, i32* %10, align 4
  %287 = load i32, i32* %11, align 4
  %288 = load i32, i32* %18, align 4
  %289 = call i32 @PHY_StoreTxPowerByRate(%struct.adapter* %285, i32 0, i32 0, i32 1, i32 %286, i32 %287, i32 %288)
  br label %290

290:                                              ; preds = %274, %163
  br label %291

291:                                              ; preds = %290, %162
  br label %292

292:                                              ; preds = %291, %120
  br label %584

293:                                              ; preds = %113
  %294 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %295 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 0
  %297 = load i8, i8* %296, align 8
  %298 = sext i8 %297 to i32
  %299 = icmp sgt i32 %298, 0
  br i1 %299, label %300, label %583

300:                                              ; preds = %293
  store i32 0, i32* %21, align 4
  %301 = load i8*, i8** %8, align 8
  %302 = call i64 (i8*, ...) @eqNByte(i8* %301, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 6)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %300
  br label %589

305:                                              ; preds = %300
  %306 = load i8*, i8** %8, align 8
  %307 = call i64 (i8*, ...) @eqNByte(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %306, i32 7)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %582, label %309

309:                                              ; preds = %305
  %310 = load i8*, i8** %8, align 8
  %311 = getelementptr inbounds i8, i8* %310, i64 0
  %312 = load i8, i8* %311, align 1
  %313 = sext i8 %312 to i32
  %314 = icmp eq i32 %313, 35
  br i1 %314, label %315, label %344

315:                                              ; preds = %309
  store i32 0, i32* %21, align 4
  %316 = load i8*, i8** %8, align 8
  %317 = call i64 (i8*, ...) @eqNByte(i8* %316, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 7)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %315
  %320 = load i32, i32* @BAND_ON_2_4G, align 4
  store i32 %320, i32* %16, align 4
  %321 = load i32, i32* %21, align 4
  %322 = add nsw i32 %321, 8
  store i32 %322, i32* %21, align 4
  br label %336

323:                                              ; preds = %315
  %324 = load i8*, i8** %8, align 8
  %325 = call i64 (i8*, ...) @eqNByte(i8* %324, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 5)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %331

327:                                              ; preds = %323
  %328 = load i32, i32* @BAND_ON_5G, align 4
  store i32 %328, i32* %16, align 4
  %329 = load i32, i32* %21, align 4
  %330 = add nsw i32 %329, 6
  store i32 %330, i32* %21, align 4
  br label %335

331:                                              ; preds = %323
  %332 = load i8*, i8** %8, align 8
  %333 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i8* %332)
  %334 = load i32, i32* @_FAIL, align 4
  store i32 %334, i32* %3, align 4
  br label %591

335:                                              ; preds = %327
  br label %336

336:                                              ; preds = %335, %319
  %337 = load i8*, i8** %8, align 8
  %338 = load i32, i32* %21, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i8, i8* %337, i64 %339
  %341 = load i8, i8* %340, align 1
  %342 = sext i8 %341 to i32
  %343 = sub nsw i32 %342, 65
  store i32 %343, i32* %17, align 4
  br label %581

344:                                              ; preds = %309
  %345 = load i8*, i8** %8, align 8
  %346 = getelementptr inbounds i8, i8* %345, i64 1
  %347 = load i8, i8* %346, align 1
  %348 = sext i8 %347 to i32
  %349 = icmp eq i32 %348, 49
  br i1 %349, label %350, label %352

350:                                              ; preds = %344
  %351 = load i32, i32* @RF_1TX, align 4
  store i32 %351, i32* %15, align 4
  br label %386

352:                                              ; preds = %344
  %353 = load i8*, i8** %8, align 8
  %354 = getelementptr inbounds i8, i8* %353, i64 1
  %355 = load i8, i8* %354, align 1
  %356 = sext i8 %355 to i32
  %357 = icmp eq i32 %356, 50
  br i1 %357, label %358, label %360

358:                                              ; preds = %352
  %359 = load i32, i32* @RF_2TX, align 4
  store i32 %359, i32* %15, align 4
  br label %385

360:                                              ; preds = %352
  %361 = load i8*, i8** %8, align 8
  %362 = getelementptr inbounds i8, i8* %361, i64 1
  %363 = load i8, i8* %362, align 1
  %364 = sext i8 %363 to i32
  %365 = icmp eq i32 %364, 51
  br i1 %365, label %366, label %368

366:                                              ; preds = %360
  %367 = load i32, i32* @RF_3TX, align 4
  store i32 %367, i32* %15, align 4
  br label %384

368:                                              ; preds = %360
  %369 = load i8*, i8** %8, align 8
  %370 = getelementptr inbounds i8, i8* %369, i64 1
  %371 = load i8, i8* %370, align 1
  %372 = sext i8 %371 to i32
  %373 = icmp eq i32 %372, 52
  br i1 %373, label %374, label %376

374:                                              ; preds = %368
  %375 = load i32, i32* @RF_4TX, align 4
  store i32 %375, i32* %15, align 4
  br label %383

376:                                              ; preds = %368
  %377 = load i8*, i8** %8, align 8
  %378 = getelementptr inbounds i8, i8* %377, i64 1
  %379 = load i8, i8* %378, align 1
  %380 = sext i8 %379 to i32
  %381 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 %380)
  %382 = load i32, i32* @_FAIL, align 4
  store i32 %382, i32* %3, align 4
  br label %591

383:                                              ; preds = %374
  br label %384

384:                                              ; preds = %383, %366
  br label %385

385:                                              ; preds = %384, %358
  br label %386

386:                                              ; preds = %385, %350
  br label %387

387:                                              ; preds = %395, %386
  %388 = load i8*, i8** %8, align 8
  %389 = load i32, i32* %21, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i8, i8* %388, i64 %390
  %392 = load i8, i8* %391, align 1
  %393 = sext i8 %392 to i32
  %394 = icmp ne i32 %393, 93
  br i1 %394, label %395, label %398

395:                                              ; preds = %387
  %396 = load i32, i32* %21, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %21, align 4
  br label %387

398:                                              ; preds = %387
  %399 = load i32, i32* %21, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %21, align 4
  %401 = load i32, i32* %21, align 4
  %402 = load i8*, i8** %8, align 8
  %403 = sext i32 %401 to i64
  %404 = getelementptr inbounds i8, i8* %402, i64 %403
  store i8* %404, i8** %8, align 8
  %405 = load i8*, i8** %8, align 8
  %406 = call i64 @GetHexValueFromString(i8* %405, i32* %10, i32* %13)
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %413

408:                                              ; preds = %398
  %409 = load i32, i32* %13, align 4
  %410 = load i8*, i8** %8, align 8
  %411 = sext i32 %409 to i64
  %412 = getelementptr inbounds i8, i8* %410, i64 %411
  store i8* %412, i8** %8, align 8
  br label %415

413:                                              ; preds = %398
  %414 = load i32, i32* @_FAIL, align 4
  store i32 %414, i32* %3, align 4
  br label %591

415:                                              ; preds = %408
  %416 = load i8*, i8** %8, align 8
  %417 = call i64 @GetHexValueFromString(i8* %416, i32* %11, i32* %13)
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %424

419:                                              ; preds = %415
  %420 = load i32, i32* %13, align 4
  %421 = load i8*, i8** %8, align 8
  %422 = sext i32 %420 to i64
  %423 = getelementptr inbounds i8, i8* %421, i64 %422
  store i8* %423, i8** %8, align 8
  br label %426

424:                                              ; preds = %415
  %425 = load i32, i32* @_FAIL, align 4
  store i32 %425, i32* %3, align 4
  br label %591

426:                                              ; preds = %419
  %427 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %428 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %427, i32 0, i32 0
  %429 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %428, i32 0, i32 1
  %430 = load i64, i64* %429, align 8
  %431 = load i64, i64* @PHY_REG_PG_RELATIVE_VALUE, align 8
  %432 = icmp eq i64 %430, %431
  br i1 %432, label %433, label %449

433:                                              ; preds = %426
  %434 = load i8*, i8** %8, align 8
  %435 = call i64 @GetHexValueFromString(i8* %434, i32* %12, i32* %13)
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %446

437:                                              ; preds = %433
  %438 = load %struct.adapter*, %struct.adapter** %4, align 8
  %439 = load i32, i32* %16, align 4
  %440 = load i32, i32* %17, align 4
  %441 = load i32, i32* %15, align 4
  %442 = load i32, i32* %10, align 4
  %443 = load i32, i32* %11, align 4
  %444 = load i32, i32* %12, align 4
  %445 = call i32 @PHY_StoreTxPowerByRate(%struct.adapter* %438, i32 %439, i32 %440, i32 %441, i32 %442, i32 %443, i32 %444)
  br label %448

446:                                              ; preds = %433
  %447 = load i32, i32* @_FAIL, align 4
  store i32 %447, i32* %3, align 4
  br label %591

448:                                              ; preds = %437
  br label %580

449:                                              ; preds = %426
  %450 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %451 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %451, i32 0, i32 1
  %453 = load i64, i64* %452, align 8
  %454 = load i64, i64* @PHY_REG_PG_EXACT_VALUE, align 8
  %455 = icmp eq i64 %453, %454
  br i1 %455, label %456, label %579

456:                                              ; preds = %449
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %457 = load i8*, i8** %8, align 8
  %458 = call i64 @GetFractionValueFromString(i8* %457, i32* %23, i32* %24, i32* %13)
  %459 = icmp ne i64 %458, 0
  br i1 %459, label %460, label %465

460:                                              ; preds = %456
  %461 = load i32, i32* %13, align 4
  %462 = load i8*, i8** %8, align 8
  %463 = sext i32 %461 to i64
  %464 = getelementptr inbounds i8, i8* %462, i64 %463
  store i8* %464, i8** %8, align 8
  br label %467

465:                                              ; preds = %456
  %466 = load i32, i32* @_FAIL, align 4
  store i32 %466, i32* %3, align 4
  br label %591

467:                                              ; preds = %460
  %468 = load i32, i32* %23, align 4
  %469 = mul nsw i32 %468, 2
  store i32 %469, i32* %23, align 4
  %470 = load i32, i32* %24, align 4
  %471 = icmp eq i32 %470, 5
  br i1 %471, label %472, label %475

472:                                              ; preds = %467
  %473 = load i32, i32* %23, align 4
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %23, align 4
  br label %475

475:                                              ; preds = %472, %467
  %476 = load i32, i32* %23, align 4
  %477 = sdiv i32 %476, 10
  %478 = shl i32 %477, 4
  %479 = load i32, i32* %23, align 4
  %480 = srem i32 %479, 10
  %481 = add nsw i32 %478, %480
  %482 = load i32, i32* %22, align 4
  %483 = or i32 %482, %481
  store i32 %483, i32* %22, align 4
  %484 = load i8*, i8** %8, align 8
  %485 = call i64 @GetFractionValueFromString(i8* %484, i32* %23, i32* %24, i32* %13)
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %487, label %492

487:                                              ; preds = %475
  %488 = load i32, i32* %13, align 4
  %489 = load i8*, i8** %8, align 8
  %490 = sext i32 %488 to i64
  %491 = getelementptr inbounds i8, i8* %489, i64 %490
  store i8* %491, i8** %8, align 8
  br label %494

492:                                              ; preds = %475
  %493 = load i32, i32* @_FAIL, align 4
  store i32 %493, i32* %3, align 4
  br label %591

494:                                              ; preds = %487
  %495 = load i32, i32* %23, align 4
  %496 = mul nsw i32 %495, 2
  store i32 %496, i32* %23, align 4
  %497 = load i32, i32* %24, align 4
  %498 = icmp eq i32 %497, 5
  br i1 %498, label %499, label %502

499:                                              ; preds = %494
  %500 = load i32, i32* %23, align 4
  %501 = add nsw i32 %500, 1
  store i32 %501, i32* %23, align 4
  br label %502

502:                                              ; preds = %499, %494
  %503 = load i32, i32* %22, align 4
  %504 = shl i32 %503, 8
  store i32 %504, i32* %22, align 4
  %505 = load i32, i32* %23, align 4
  %506 = sdiv i32 %505, 10
  %507 = shl i32 %506, 4
  %508 = load i32, i32* %23, align 4
  %509 = srem i32 %508, 10
  %510 = add nsw i32 %507, %509
  %511 = load i32, i32* %22, align 4
  %512 = or i32 %511, %510
  store i32 %512, i32* %22, align 4
  %513 = load i8*, i8** %8, align 8
  %514 = call i64 @GetFractionValueFromString(i8* %513, i32* %23, i32* %24, i32* %13)
  %515 = icmp ne i64 %514, 0
  br i1 %515, label %516, label %521

516:                                              ; preds = %502
  %517 = load i32, i32* %13, align 4
  %518 = load i8*, i8** %8, align 8
  %519 = sext i32 %517 to i64
  %520 = getelementptr inbounds i8, i8* %518, i64 %519
  store i8* %520, i8** %8, align 8
  br label %523

521:                                              ; preds = %502
  %522 = load i32, i32* @_FAIL, align 4
  store i32 %522, i32* %3, align 4
  br label %591

523:                                              ; preds = %516
  %524 = load i32, i32* %23, align 4
  %525 = mul nsw i32 %524, 2
  store i32 %525, i32* %23, align 4
  %526 = load i32, i32* %24, align 4
  %527 = icmp eq i32 %526, 5
  br i1 %527, label %528, label %531

528:                                              ; preds = %523
  %529 = load i32, i32* %23, align 4
  %530 = add nsw i32 %529, 1
  store i32 %530, i32* %23, align 4
  br label %531

531:                                              ; preds = %528, %523
  %532 = load i32, i32* %22, align 4
  %533 = shl i32 %532, 8
  store i32 %533, i32* %22, align 4
  %534 = load i32, i32* %23, align 4
  %535 = sdiv i32 %534, 10
  %536 = shl i32 %535, 4
  %537 = load i32, i32* %23, align 4
  %538 = srem i32 %537, 10
  %539 = add nsw i32 %536, %538
  %540 = load i32, i32* %22, align 4
  %541 = or i32 %540, %539
  store i32 %541, i32* %22, align 4
  %542 = load i8*, i8** %8, align 8
  %543 = call i64 @GetFractionValueFromString(i8* %542, i32* %23, i32* %24, i32* %13)
  %544 = icmp ne i64 %543, 0
  br i1 %544, label %545, label %550

545:                                              ; preds = %531
  %546 = load i32, i32* %13, align 4
  %547 = load i8*, i8** %8, align 8
  %548 = sext i32 %546 to i64
  %549 = getelementptr inbounds i8, i8* %547, i64 %548
  store i8* %549, i8** %8, align 8
  br label %552

550:                                              ; preds = %531
  %551 = load i32, i32* @_FAIL, align 4
  store i32 %551, i32* %3, align 4
  br label %591

552:                                              ; preds = %545
  %553 = load i32, i32* %23, align 4
  %554 = mul nsw i32 %553, 2
  store i32 %554, i32* %23, align 4
  %555 = load i32, i32* %24, align 4
  %556 = icmp eq i32 %555, 5
  br i1 %556, label %557, label %560

557:                                              ; preds = %552
  %558 = load i32, i32* %23, align 4
  %559 = add nsw i32 %558, 1
  store i32 %559, i32* %23, align 4
  br label %560

560:                                              ; preds = %557, %552
  %561 = load i32, i32* %22, align 4
  %562 = shl i32 %561, 8
  store i32 %562, i32* %22, align 4
  %563 = load i32, i32* %23, align 4
  %564 = sdiv i32 %563, 10
  %565 = shl i32 %564, 4
  %566 = load i32, i32* %23, align 4
  %567 = srem i32 %566, 10
  %568 = add nsw i32 %565, %567
  %569 = load i32, i32* %22, align 4
  %570 = or i32 %569, %568
  store i32 %570, i32* %22, align 4
  %571 = load %struct.adapter*, %struct.adapter** %4, align 8
  %572 = load i32, i32* %16, align 4
  %573 = load i32, i32* %17, align 4
  %574 = load i32, i32* %15, align 4
  %575 = load i32, i32* %10, align 4
  %576 = load i32, i32* %11, align 4
  %577 = load i32, i32* %22, align 4
  %578 = call i32 @PHY_StoreTxPowerByRate(%struct.adapter* %571, i32 %572, i32 %573, i32 %574, i32 %575, i32 %576, i32 %577)
  br label %579

579:                                              ; preds = %560, %449
  br label %580

580:                                              ; preds = %579, %448
  br label %581

581:                                              ; preds = %580, %336
  br label %582

582:                                              ; preds = %581, %305
  br label %583

583:                                              ; preds = %582, %293
  br label %584

584:                                              ; preds = %583, %292
  br label %585

585:                                              ; preds = %584, %44
  br label %586

586:                                              ; preds = %585, %104, %94, %52
  %587 = load i8*, i8** %9, align 8
  %588 = call i8* @GetLineFromBuffer(i8* %587)
  store i8* %588, i8** %8, align 8
  br label %41

589:                                              ; preds = %304, %131, %41
  %590 = load i32, i32* %6, align 4
  store i32 %590, i32* %3, align 4
  br label %591

591:                                              ; preds = %589, %550, %521, %492, %465, %446, %424, %413, %376, %331, %264, %235, %206, %179, %160, %141, %109, %84
  %592 = load i32, i32* %3, align 4
  ret i32 %592
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @phy_DecryptBBPgParaFile(%struct.adapter*, i8*) #1

declare dso_local i8* @GetLineFromBuffer(i8*) #1

declare dso_local i32 @IsCommentString(i8*) #1

declare dso_local i64 @isAllSpaceOrTab(i8*, i32) #1

declare dso_local i64 @eqNByte(i8*, ...) #1

declare dso_local i32 @DBG_871X(i8*, ...) #1

declare dso_local i64 @GetHexValueFromString(i8*, i32*, i32*) #1

declare dso_local i32 @PHY_StoreTxPowerByRate(%struct.adapter*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @GetFractionValueFromString(i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
