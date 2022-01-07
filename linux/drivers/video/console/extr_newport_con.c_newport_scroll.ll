; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_newport_con.c_newport_scroll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_newport_con.c_newport_scroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vc_data = type { i32, i32, i32, i32, i32, i16 }

@logo_active = common dso_local global i64 0, align 8
@SM_UP = common dso_local global i32 0, align 4
@topscan = common dso_local global i32 0, align 4
@npregs = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, i32, i32, i32, i32)* @newport_scroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @newport_scroll(%struct.vc_data* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vc_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i16*, align 8
  %16 = alloca i16*, align 8
  %17 = alloca i16, align 2
  store %struct.vc_data* %0, %struct.vc_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 0, i64* @logo_active, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %73

20:                                               ; preds = %5
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %23 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %73

26:                                               ; preds = %20
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @SM_UP, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = load i32, i32* @topscan, align 4
  %32 = load i32, i32* %11, align 4
  %33 = shl i32 %32, 4
  %34 = add i32 %31, %33
  %35 = and i32 %34, 1023
  store i32 %35, i32* @topscan, align 4
  %36 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %37 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %11, align 4
  %40 = sub i32 %38, %39
  %41 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %42 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub i32 %43, 1
  %45 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %46 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 240
  %49 = ashr i32 %48, 4
  %50 = call i32 @newport_clear_lines(i32 %40, i32 %44, i32 %49)
  br label %66

51:                                               ; preds = %26
  %52 = load i32, i32* @topscan, align 4
  %53 = load i32, i32* %11, align 4
  %54 = sub i32 0, %53
  %55 = shl i32 %54, 4
  %56 = add i32 %52, %55
  %57 = and i32 %56, 1023
  store i32 %57, i32* @topscan, align 4
  %58 = load i32, i32* %11, align 4
  %59 = sub i32 %58, 1
  %60 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %61 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 240
  %64 = ashr i32 %63, 4
  %65 = call i32 @newport_clear_lines(i32 0, i32 %59, i32 %64)
  br label %66

66:                                               ; preds = %51, %30
  %67 = load i32, i32* @topscan, align 4
  %68 = sub i32 %67, 1
  %69 = and i32 %68, 1023
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @npregs, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 4
  store i32 0, i32* %6, align 4
  br label %343

73:                                               ; preds = %20, %5
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %8, align 4
  %76 = sub i32 %74, %75
  %77 = load i32, i32* %11, align 4
  %78 = sub i32 %76, %77
  %79 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %80 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = mul i32 %78, %81
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @SM_UP, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %212

86:                                               ; preds = %73
  store i32 0, i32* %13, align 4
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %14, align 4
  %88 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %89 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %92 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %11, align 4
  %96 = add i32 %94, %95
  %97 = mul i32 %93, %96
  %98 = add i32 %90, %97
  %99 = zext i32 %98 to i64
  %100 = inttoptr i64 %99 to i16*
  store i16* %100, i16** %15, align 8
  %101 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %102 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %105 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %8, align 4
  %108 = mul i32 %106, %107
  %109 = add i32 %103, %108
  %110 = zext i32 %109 to i64
  %111 = inttoptr i64 %110 to i16*
  store i16* %111, i16** %16, align 8
  br label %112

112:                                              ; preds = %147, %86
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %12, align 4
  %115 = icmp ne i32 %113, 0
  br i1 %115, label %116, label %148

116:                                              ; preds = %112
  %117 = load i16*, i16** %15, align 8
  %118 = getelementptr inbounds i16, i16* %117, i32 1
  store i16* %118, i16** %15, align 8
  %119 = call zeroext i16 @scr_readw(i16* %117)
  store i16 %119, i16* %17, align 2
  %120 = load i16, i16* %17, align 2
  %121 = zext i16 %120 to i32
  %122 = load i16*, i16** %16, align 8
  %123 = call zeroext i16 @scr_readw(i16* %122)
  %124 = zext i16 %123 to i32
  %125 = icmp ne i32 %121, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %116
  %127 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %128 = load i16, i16* %17, align 2
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @newport_putc(%struct.vc_data* %127, i16 zeroext %128, i32 %129, i32 %130)
  %132 = load i16, i16* %17, align 2
  %133 = load i16*, i16** %16, align 8
  %134 = call i32 @scr_writew(i16 zeroext %132, i16* %133)
  br label %135

135:                                              ; preds = %126, %116
  %136 = load i16*, i16** %16, align 8
  %137 = getelementptr inbounds i16, i16* %136, i32 1
  store i16* %137, i16** %16, align 8
  %138 = load i32, i32* %13, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %13, align 4
  %140 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %141 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %139, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %135
  store i32 0, i32* %13, align 4
  %145 = load i32, i32* %14, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %14, align 4
  br label %147

147:                                              ; preds = %144, %135
  br label %112

148:                                              ; preds = %112
  %149 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %150 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %153 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %11, align 4
  %157 = sub i32 %155, %156
  %158 = mul i32 %154, %157
  %159 = add i32 %151, %158
  %160 = zext i32 %159 to i64
  %161 = inttoptr i64 %160 to i16*
  store i16* %161, i16** %16, align 8
  store i32 0, i32* %13, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %11, align 4
  %164 = sub i32 %162, %163
  store i32 %164, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %165

165:                                              ; preds = %208, %148
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* %11, align 4
  %168 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %169 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = mul i32 %167, %170
  %172 = icmp ult i32 %166, %171
  br i1 %172, label %173, label %211

173:                                              ; preds = %165
  %174 = load i16*, i16** %16, align 8
  %175 = call zeroext i16 @scr_readw(i16* %174)
  %176 = zext i16 %175 to i32
  %177 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %178 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %177, i32 0, i32 5
  %179 = load i16, i16* %178, align 4
  %180 = zext i16 %179 to i32
  %181 = icmp ne i32 %176, %180
  br i1 %181, label %182, label %195

182:                                              ; preds = %173
  %183 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %184 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %185 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %184, i32 0, i32 5
  %186 = load i16, i16* %185, align 4
  %187 = load i32, i32* %14, align 4
  %188 = load i32, i32* %13, align 4
  %189 = call i32 @newport_putc(%struct.vc_data* %183, i16 zeroext %186, i32 %187, i32 %188)
  %190 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %191 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %190, i32 0, i32 5
  %192 = load i16, i16* %191, align 4
  %193 = load i16*, i16** %16, align 8
  %194 = call i32 @scr_writew(i16 zeroext %192, i16* %193)
  br label %195

195:                                              ; preds = %182, %173
  %196 = load i16*, i16** %16, align 8
  %197 = getelementptr inbounds i16, i16* %196, i32 1
  store i16* %197, i16** %16, align 8
  %198 = load i32, i32* %13, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %13, align 4
  %200 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %201 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %199, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %195
  store i32 0, i32* %13, align 4
  %205 = load i32, i32* %14, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %14, align 4
  br label %207

207:                                              ; preds = %204, %195
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %12, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %12, align 4
  br label %165

211:                                              ; preds = %165
  br label %342

212:                                              ; preds = %73
  %213 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %214 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = sub i32 %215, 1
  store i32 %216, i32* %13, align 4
  %217 = load i32, i32* %9, align 4
  %218 = sub i32 %217, 1
  store i32 %218, i32* %14, align 4
  %219 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %220 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %223 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* %11, align 4
  %227 = sub i32 %225, %226
  %228 = mul i32 %224, %227
  %229 = add i32 %221, %228
  %230 = sub i32 %229, 2
  %231 = zext i32 %230 to i64
  %232 = inttoptr i64 %231 to i16*
  store i16* %232, i16** %15, align 8
  %233 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %234 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %237 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %9, align 4
  %240 = mul i32 %238, %239
  %241 = add i32 %235, %240
  %242 = sub i32 %241, 2
  %243 = zext i32 %242 to i64
  %244 = inttoptr i64 %243 to i16*
  store i16* %244, i16** %16, align 8
  br label %245

245:                                              ; preds = %281, %212
  %246 = load i32, i32* %12, align 4
  %247 = add nsw i32 %246, -1
  store i32 %247, i32* %12, align 4
  %248 = icmp ne i32 %246, 0
  br i1 %248, label %249, label %282

249:                                              ; preds = %245
  %250 = load i16*, i16** %15, align 8
  %251 = getelementptr inbounds i16, i16* %250, i32 -1
  store i16* %251, i16** %15, align 8
  %252 = call zeroext i16 @scr_readw(i16* %250)
  store i16 %252, i16* %17, align 2
  %253 = load i16, i16* %17, align 2
  %254 = zext i16 %253 to i32
  %255 = load i16*, i16** %16, align 8
  %256 = call zeroext i16 @scr_readw(i16* %255)
  %257 = zext i16 %256 to i32
  %258 = icmp ne i32 %254, %257
  br i1 %258, label %259, label %268

259:                                              ; preds = %249
  %260 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %261 = load i16, i16* %17, align 2
  %262 = load i32, i32* %14, align 4
  %263 = load i32, i32* %13, align 4
  %264 = call i32 @newport_putc(%struct.vc_data* %260, i16 zeroext %261, i32 %262, i32 %263)
  %265 = load i16, i16* %17, align 2
  %266 = load i16*, i16** %16, align 8
  %267 = call i32 @scr_writew(i16 zeroext %265, i16* %266)
  br label %268

268:                                              ; preds = %259, %249
  %269 = load i16*, i16** %16, align 8
  %270 = getelementptr inbounds i16, i16* %269, i32 -1
  store i16* %270, i16** %16, align 8
  %271 = load i32, i32* %13, align 4
  %272 = add nsw i32 %271, -1
  store i32 %272, i32* %13, align 4
  %273 = icmp eq i32 %271, 0
  br i1 %273, label %274, label %281

274:                                              ; preds = %268
  %275 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %276 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = sub i32 %277, 1
  store i32 %278, i32* %13, align 4
  %279 = load i32, i32* %14, align 4
  %280 = add nsw i32 %279, -1
  store i32 %280, i32* %14, align 4
  br label %281

281:                                              ; preds = %274, %268
  br label %245

282:                                              ; preds = %245
  %283 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %284 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %287 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %8, align 4
  %290 = mul i32 %288, %289
  %291 = add i32 %285, %290
  %292 = zext i32 %291 to i64
  %293 = inttoptr i64 %292 to i16*
  store i16* %293, i16** %16, align 8
  store i32 0, i32* %13, align 4
  %294 = load i32, i32* %8, align 4
  store i32 %294, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %295

295:                                              ; preds = %338, %282
  %296 = load i32, i32* %12, align 4
  %297 = load i32, i32* %11, align 4
  %298 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %299 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = mul i32 %297, %300
  %302 = icmp ult i32 %296, %301
  br i1 %302, label %303, label %341

303:                                              ; preds = %295
  %304 = load i16*, i16** %16, align 8
  %305 = call zeroext i16 @scr_readw(i16* %304)
  %306 = zext i16 %305 to i32
  %307 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %308 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %307, i32 0, i32 5
  %309 = load i16, i16* %308, align 4
  %310 = zext i16 %309 to i32
  %311 = icmp ne i32 %306, %310
  br i1 %311, label %312, label %325

312:                                              ; preds = %303
  %313 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %314 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %315 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %314, i32 0, i32 5
  %316 = load i16, i16* %315, align 4
  %317 = load i32, i32* %14, align 4
  %318 = load i32, i32* %13, align 4
  %319 = call i32 @newport_putc(%struct.vc_data* %313, i16 zeroext %316, i32 %317, i32 %318)
  %320 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %321 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %320, i32 0, i32 5
  %322 = load i16, i16* %321, align 4
  %323 = load i16*, i16** %16, align 8
  %324 = call i32 @scr_writew(i16 zeroext %322, i16* %323)
  br label %325

325:                                              ; preds = %312, %303
  %326 = load i16*, i16** %16, align 8
  %327 = getelementptr inbounds i16, i16* %326, i32 1
  store i16* %327, i16** %16, align 8
  %328 = load i32, i32* %13, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %13, align 4
  %330 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %331 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 4
  %333 = icmp eq i32 %329, %332
  br i1 %333, label %334, label %337

334:                                              ; preds = %325
  store i32 0, i32* %13, align 4
  %335 = load i32, i32* %14, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %14, align 4
  br label %337

337:                                              ; preds = %334, %325
  br label %338

338:                                              ; preds = %337
  %339 = load i32, i32* %12, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %12, align 4
  br label %295

341:                                              ; preds = %295
  br label %342

342:                                              ; preds = %341, %211
  store i32 1, i32* %6, align 4
  br label %343

343:                                              ; preds = %342, %66
  %344 = load i32, i32* %6, align 4
  ret i32 %344
}

declare dso_local i32 @newport_clear_lines(i32, i32, i32) #1

declare dso_local zeroext i16 @scr_readw(i16*) #1

declare dso_local i32 @newport_putc(%struct.vc_data*, i16 zeroext, i32, i32) #1

declare dso_local i32 @scr_writew(i16 zeroext, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
