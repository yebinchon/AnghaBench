; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_nls.c_nls_uniname_to_dosname.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_nls.c_nls_uniname_to_dosname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.dos_name_t = type { i8*, i32 }
%struct.uni_name_t = type { i64* }
%struct.nls_table = type { i32 }
%struct.TYPE_2__ = type { %struct.nls_table* }

@MAX_CHARSET_SIZE = common dso_local global i32 0, align 4
@DOS_NAME_LENGTH = common dso_local global i32 0, align 4
@UNI_CUR_DIR_NAME = common dso_local global i64 0, align 8
@UNI_PAR_DIR_NAME = common dso_local global i64 0, align 8
@bad_dos_chars = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nls_uniname_to_dosname(%struct.super_block* %0, %struct.dos_name_t* %1, %struct.uni_name_t* %2, i32* %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.dos_name_t*, align 8
  %7 = alloca %struct.uni_name_t*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca %struct.nls_table*, align 8
  %22 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.dos_name_t* %1, %struct.dos_name_t** %6, align 8
  store %struct.uni_name_t* %2, %struct.uni_name_t** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %12, align 4
  %23 = load i32, i32* @MAX_CHARSET_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %13, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %14, align 8
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  %27 = load %struct.dos_name_t*, %struct.dos_name_t** %6, align 8
  %28 = getelementptr inbounds %struct.dos_name_t, %struct.dos_name_t* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %17, align 8
  %30 = load %struct.uni_name_t*, %struct.uni_name_t** %7, align 8
  %31 = getelementptr inbounds %struct.uni_name_t, %struct.uni_name_t* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  store i64* %32, i64** %18, align 8
  %33 = load %struct.super_block*, %struct.super_block** %5, align 8
  %34 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.nls_table*, %struct.nls_table** %35, align 8
  store %struct.nls_table* %36, %struct.nls_table** %21, align 8
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %46, %4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @DOS_NAME_LENGTH, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i8*, i8** %17, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  store i8 32, i8* %45, align 1
  br label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %37

49:                                               ; preds = %37
  %50 = load %struct.super_block*, %struct.super_block** %5, align 8
  %51 = load i64*, i64** %18, align 8
  %52 = load i64, i64* @UNI_CUR_DIR_NAME, align 8
  %53 = inttoptr i64 %52 to i64*
  %54 = call i32 @nls_uniname_cmp(%struct.super_block* %50, i64* %51, i64* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %49
  %57 = load i8*, i8** %17, align 8
  store i8 46, i8* %57, align 1
  %58 = load %struct.dos_name_t*, %struct.dos_name_t** %6, align 8
  %59 = getelementptr inbounds %struct.dos_name_t, %struct.dos_name_t* %58, i32 0, i32 1
  store i32 0, i32* %59, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32*, i32** %8, align 8
  store i32 0, i32* %63, align 4
  br label %64

64:                                               ; preds = %62, %56
  store i32 1, i32* %22, align 4
  br label %312

65:                                               ; preds = %49
  %66 = load %struct.super_block*, %struct.super_block** %5, align 8
  %67 = load i64*, i64** %18, align 8
  %68 = load i64, i64* @UNI_PAR_DIR_NAME, align 8
  %69 = inttoptr i64 %68 to i64*
  %70 = call i32 @nls_uniname_cmp(%struct.super_block* %66, i64* %67, i64* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %65
  %73 = load i8*, i8** %17, align 8
  store i8 46, i8* %73, align 1
  %74 = load i8*, i8** %17, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  store i8 46, i8* %75, align 1
  %76 = load %struct.dos_name_t*, %struct.dos_name_t** %6, align 8
  %77 = getelementptr inbounds %struct.dos_name_t, %struct.dos_name_t* %76, i32 0, i32 1
  store i32 0, i32* %77, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = load i32*, i32** %8, align 8
  store i32 0, i32* %81, align 4
  br label %82

82:                                               ; preds = %80, %72
  store i32 1, i32* %22, align 4
  br label %312

83:                                               ; preds = %65
  store i64* null, i64** %20, align 8
  %84 = load i64*, i64** %18, align 8
  store i64* %84, i64** %19, align 8
  br label %85

85:                                               ; preds = %96, %83
  %86 = load i64*, i64** %19, align 8
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = load i64*, i64** %19, align 8
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 46
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i64*, i64** %19, align 8
  store i64* %94, i64** %20, align 8
  br label %95

95:                                               ; preds = %93, %89
  br label %96

96:                                               ; preds = %95
  %97 = load i64*, i64** %19, align 8
  %98 = getelementptr inbounds i64, i64* %97, i32 1
  store i64* %98, i64** %19, align 8
  br label %85

99:                                               ; preds = %85
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %275, %183, %99
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @DOS_NAME_LENGTH, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %278

104:                                              ; preds = %100
  %105 = load i32, i32* %9, align 4
  %106 = icmp eq i32 %105, 8
  br i1 %106, label %107, label %124

107:                                              ; preds = %104
  %108 = load i64*, i64** %20, align 8
  %109 = icmp ne i64* %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  br label %278

111:                                              ; preds = %107
  %112 = load i64*, i64** %18, align 8
  %113 = load i64*, i64** %20, align 8
  %114 = icmp ule i64* %112, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %111
  %116 = load i64*, i64** %18, align 8
  %117 = load i64*, i64** %20, align 8
  %118 = icmp ult i64* %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  store i32 1, i32* %12, align 4
  br label %120

120:                                              ; preds = %119, %115
  %121 = load i64*, i64** %20, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 1
  store i64* %122, i64** %18, align 8
  br label %123

123:                                              ; preds = %120, %111
  br label %124

124:                                              ; preds = %123, %104
  %125 = load i64*, i64** %18, align 8
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  br label %278

129:                                              ; preds = %124
  %130 = load i64*, i64** %18, align 8
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 32
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  store i32 1, i32* %12, align 4
  br label %274

134:                                              ; preds = %129
  %135 = load i64*, i64** %18, align 8
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %136, 46
  br i1 %137, label %138, label %145

138:                                              ; preds = %134
  %139 = load i64*, i64** %18, align 8
  %140 = load i64*, i64** %20, align 8
  %141 = icmp ult i64* %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  store i32 1, i32* %12, align 4
  br label %144

143:                                              ; preds = %138
  store i32 8, i32* %9, align 4
  br label %144

144:                                              ; preds = %143, %142
  br label %273

145:                                              ; preds = %134
  %146 = load i32, i32* @bad_dos_chars, align 4
  %147 = load i64*, i64** %18, align 8
  %148 = load i64, i64* %147, align 8
  %149 = call i64 @nls_wstrchr(i32 %146, i64 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %145
  store i32 1, i32* %12, align 4
  %152 = load i8*, i8** %17, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  store i8 95, i8* %155, align 1
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %9, align 4
  br label %272

158:                                              ; preds = %145
  %159 = load %struct.nls_table*, %struct.nls_table** %21, align 8
  %160 = load i64*, i64** %18, align 8
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @convert_uni_to_ch(%struct.nls_table* %159, i8* %26, i64 %161, i32* %12)
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %11, align 4
  %164 = icmp sgt i32 %163, 1
  br i1 %164, label %165, label %204

165:                                              ; preds = %158
  %166 = load i32, i32* %9, align 4
  %167 = icmp sge i32 %166, 8
  br i1 %167, label %168, label %175

168:                                              ; preds = %165
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* %11, align 4
  %171 = add nsw i32 %169, %170
  %172 = load i32, i32* @DOS_NAME_LENGTH, align 4
  %173 = icmp sgt i32 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  br label %278

175:                                              ; preds = %168, %165
  %176 = load i32, i32* %9, align 4
  %177 = icmp slt i32 %176, 8
  br i1 %177, label %178, label %184

178:                                              ; preds = %175
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* %11, align 4
  %181 = add nsw i32 %179, %180
  %182 = icmp sgt i32 %181, 8
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  store i32 8, i32* %9, align 4
  br label %100

184:                                              ; preds = %178, %175
  store i8 -1, i8* %15, align 1
  store i32 0, i32* %10, align 4
  br label %185

185:                                              ; preds = %198, %184
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* %11, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %203

189:                                              ; preds = %185
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %26, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = load i8*, i8** %17, align 8
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  store i8 %193, i8* %197, align 1
  br label %198

198:                                              ; preds = %189
  %199 = load i32, i32* %10, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %10, align 4
  %201 = load i32, i32* %9, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %9, align 4
  br label %185

203:                                              ; preds = %185
  br label %271

204:                                              ; preds = %158
  %205 = load i8, i8* %26, align 16
  %206 = sext i8 %205 to i32
  %207 = icmp sge i32 %206, 97
  br i1 %207, label %208, label %234

208:                                              ; preds = %204
  %209 = load i8, i8* %26, align 16
  %210 = sext i8 %209 to i32
  %211 = icmp sle i32 %210, 122
  br i1 %211, label %212, label %234

212:                                              ; preds = %208
  %213 = load i8, i8* %26, align 16
  %214 = sext i8 %213 to i32
  %215 = sub nsw i32 %214, 32
  %216 = trunc i32 %215 to i8
  %217 = load i8*, i8** %17, align 8
  %218 = load i32, i32* %9, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %217, i64 %219
  store i8 %216, i8* %220, align 1
  %221 = load i32, i32* %9, align 4
  %222 = icmp slt i32 %221, 8
  br i1 %222, label %223, label %228

223:                                              ; preds = %212
  %224 = load i8, i8* %15, align 1
  %225 = sext i8 %224 to i32
  %226 = or i32 %225, 8
  %227 = trunc i32 %226 to i8
  store i8 %227, i8* %15, align 1
  br label %233

228:                                              ; preds = %212
  %229 = load i8, i8* %15, align 1
  %230 = sext i8 %229 to i32
  %231 = or i32 %230, 16
  %232 = trunc i32 %231 to i8
  store i8 %232, i8* %15, align 1
  br label %233

233:                                              ; preds = %228, %223
  br label %268

234:                                              ; preds = %208, %204
  %235 = load i8, i8* %26, align 16
  %236 = sext i8 %235 to i32
  %237 = icmp sge i32 %236, 65
  br i1 %237, label %238, label %261

238:                                              ; preds = %234
  %239 = load i8, i8* %26, align 16
  %240 = sext i8 %239 to i32
  %241 = icmp sle i32 %240, 90
  br i1 %241, label %242, label %261

242:                                              ; preds = %238
  %243 = load i8, i8* %26, align 16
  %244 = load i8*, i8** %17, align 8
  %245 = load i32, i32* %9, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* %244, i64 %246
  store i8 %243, i8* %247, align 1
  %248 = load i32, i32* %9, align 4
  %249 = icmp slt i32 %248, 8
  br i1 %249, label %250, label %255

250:                                              ; preds = %242
  %251 = load i8, i8* %16, align 1
  %252 = sext i8 %251 to i32
  %253 = or i32 %252, 8
  %254 = trunc i32 %253 to i8
  store i8 %254, i8* %16, align 1
  br label %260

255:                                              ; preds = %242
  %256 = load i8, i8* %16, align 1
  %257 = sext i8 %256 to i32
  %258 = or i32 %257, 16
  %259 = trunc i32 %258 to i8
  store i8 %259, i8* %16, align 1
  br label %260

260:                                              ; preds = %255, %250
  br label %267

261:                                              ; preds = %238, %234
  %262 = load i8, i8* %26, align 16
  %263 = load i8*, i8** %17, align 8
  %264 = load i32, i32* %9, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, i8* %263, i64 %265
  store i8 %262, i8* %266, align 1
  br label %267

267:                                              ; preds = %261, %260
  br label %268

268:                                              ; preds = %267, %233
  %269 = load i32, i32* %9, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %9, align 4
  br label %271

271:                                              ; preds = %268, %203
  br label %272

272:                                              ; preds = %271, %151
  br label %273

273:                                              ; preds = %272, %144
  br label %274

274:                                              ; preds = %273, %133
  br label %275

275:                                              ; preds = %274
  %276 = load i64*, i64** %18, align 8
  %277 = getelementptr inbounds i64, i64* %276, i32 1
  store i64* %277, i64** %18, align 8
  br label %100

278:                                              ; preds = %174, %128, %110, %100
  %279 = load i8*, i8** %17, align 8
  %280 = load i8, i8* %279, align 1
  %281 = sext i8 %280 to i32
  %282 = icmp eq i32 %281, 229
  br i1 %282, label %283, label %285

283:                                              ; preds = %278
  %284 = load i8*, i8** %17, align 8
  store i8 5, i8* %284, align 1
  br label %285

285:                                              ; preds = %283, %278
  %286 = load i64*, i64** %18, align 8
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %285
  store i32 1, i32* %12, align 4
  br label %290

290:                                              ; preds = %289, %285
  %291 = load i8, i8* %16, align 1
  %292 = sext i8 %291 to i32
  %293 = load i8, i8* %15, align 1
  %294 = sext i8 %293 to i32
  %295 = and i32 %292, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %290
  %298 = load %struct.dos_name_t*, %struct.dos_name_t** %6, align 8
  %299 = getelementptr inbounds %struct.dos_name_t, %struct.dos_name_t* %298, i32 0, i32 1
  store i32 255, i32* %299, align 8
  br label %305

300:                                              ; preds = %290
  %301 = load i8, i8* %15, align 1
  %302 = sext i8 %301 to i32
  %303 = load %struct.dos_name_t*, %struct.dos_name_t** %6, align 8
  %304 = getelementptr inbounds %struct.dos_name_t, %struct.dos_name_t* %303, i32 0, i32 1
  store i32 %302, i32* %304, align 8
  br label %305

305:                                              ; preds = %300, %297
  %306 = load i32*, i32** %8, align 8
  %307 = icmp ne i32* %306, null
  br i1 %307, label %308, label %311

308:                                              ; preds = %305
  %309 = load i32, i32* %12, align 4
  %310 = load i32*, i32** %8, align 8
  store i32 %309, i32* %310, align 4
  br label %311

311:                                              ; preds = %308, %305
  store i32 0, i32* %22, align 4
  br label %312

312:                                              ; preds = %311, %82, %64
  %313 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %313)
  %314 = load i32, i32* %22, align 4
  switch i32 %314, label %316 [
    i32 0, label %315
    i32 1, label %315
  ]

315:                                              ; preds = %312, %312
  ret void

316:                                              ; preds = %312
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_2__* @EXFAT_SB(%struct.super_block*) #2

declare dso_local i32 @nls_uniname_cmp(%struct.super_block*, i64*, i64*) #2

declare dso_local i64 @nls_wstrchr(i32, i64) #2

declare dso_local i32 @convert_uni_to_ch(%struct.nls_table*, i8*, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
