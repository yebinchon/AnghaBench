; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_eraser.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_eraser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.n_tty_data* }
%struct.n_tty_data = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, %struct.tty_struct*)* @eraser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eraser(i8 zeroext %0, %struct.tty_struct* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.n_tty_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8 %0, i8* %3, align 1
  store %struct.tty_struct* %1, %struct.tty_struct** %4, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load %struct.n_tty_data*, %struct.n_tty_data** %14, align 8
  store %struct.n_tty_data* %15, %struct.n_tty_data** %5, align 8
  %16 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %17 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %20 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %310

24:                                               ; preds = %2
  %25 = load i8, i8* %3, align 1
  %26 = zext i8 %25 to i32
  %27 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %28 = call zeroext i8 @ERASE_CHAR(%struct.tty_struct* %27)
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %83

32:                                               ; preds = %24
  %33 = load i8, i8* %3, align 1
  %34 = zext i8 %33 to i32
  %35 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %36 = call zeroext i8 @WERASE_CHAR(%struct.tty_struct* %35)
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 1, i32* %6, align 4
  br label %82

40:                                               ; preds = %32
  %41 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %42 = call i64 @L_ECHO(%struct.tty_struct* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %46 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %49 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %310

50:                                               ; preds = %40
  %51 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %52 = call i64 @L_ECHOK(%struct.tty_struct* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %56 = call i32 @L_ECHOKE(%struct.tty_struct* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %60 = call i32 @L_ECHOE(%struct.tty_struct* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %81, label %62

62:                                               ; preds = %58, %54, %50
  %63 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %64 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %67 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %69 = call i32 @finish_erasing(%struct.n_tty_data* %68)
  %70 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %71 = call zeroext i8 @KILL_CHAR(%struct.tty_struct* %70)
  %72 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %73 = call i32 @echo_char(i8 zeroext %71, %struct.tty_struct* %72)
  %74 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %75 = call i64 @L_ECHOK(%struct.tty_struct* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %62
  %78 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %79 = call i32 @echo_char_raw(i8 signext 10, %struct.n_tty_data* %78)
  br label %80

80:                                               ; preds = %77, %62
  br label %310

81:                                               ; preds = %58
  store i32 2, i32* %6, align 4
  br label %82

82:                                               ; preds = %81, %39
  br label %83

83:                                               ; preds = %82, %31
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %294, %83
  %85 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %86 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @MASK(i64 %87)
  %89 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %90 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @MASK(i64 %91)
  %93 = icmp ne i64 %88, %92
  br i1 %93, label %94, label %295

94:                                               ; preds = %84
  %95 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %96 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %7, align 8
  br label %98

98:                                               ; preds = %117, %94
  %99 = load i64, i64* %7, align 8
  %100 = add i64 %99, -1
  store i64 %100, i64* %7, align 8
  %101 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %102 = load i64, i64* %7, align 8
  %103 = call signext i8 @read_buf(%struct.n_tty_data* %101, i64 %102)
  store i8 %103, i8* %3, align 1
  br label %104

104:                                              ; preds = %98
  %105 = load i8, i8* %3, align 1
  %106 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %107 = call i64 @is_continuation(i8 zeroext %105, %struct.tty_struct* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = load i64, i64* %7, align 8
  %111 = call i64 @MASK(i64 %110)
  %112 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %113 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i64 @MASK(i64 %114)
  %116 = icmp ne i64 %111, %115
  br label %117

117:                                              ; preds = %109, %104
  %118 = phi i1 [ false, %104 ], [ %116, %109 ]
  br i1 %118, label %98, label %119

119:                                              ; preds = %117
  %120 = load i8, i8* %3, align 1
  %121 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %122 = call i64 @is_continuation(i8 zeroext %120, %struct.tty_struct* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %295

125:                                              ; preds = %119
  %126 = load i32, i32* %6, align 4
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %145

128:                                              ; preds = %125
  %129 = load i8, i8* %3, align 1
  %130 = call i64 @isalnum(i8 zeroext %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %128
  %133 = load i8, i8* %3, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp eq i32 %134, 95
  br i1 %135, label %136, label %139

136:                                              ; preds = %132, %128
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %144

139:                                              ; preds = %132
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  br label %295

143:                                              ; preds = %139
  br label %144

144:                                              ; preds = %143, %136
  br label %145

145:                                              ; preds = %144, %125
  %146 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %147 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %7, align 8
  %150 = sub i64 %148, %149
  store i64 %150, i64* %8, align 8
  %151 = load i64, i64* %7, align 8
  %152 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %153 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  %154 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %155 = call i64 @L_ECHO(%struct.tty_struct* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %290

157:                                              ; preds = %145
  %158 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %159 = call i64 @L_ECHOPRT(%struct.tty_struct* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %190

161:                                              ; preds = %157
  %162 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %163 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %161
  %167 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %168 = call i32 @echo_char_raw(i8 signext 92, %struct.n_tty_data* %167)
  %169 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %170 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %169, i32 0, i32 2
  store i32 1, i32* %170, align 8
  br label %171

171:                                              ; preds = %166, %161
  %172 = load i8, i8* %3, align 1
  %173 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %174 = call i32 @echo_char(i8 zeroext %172, %struct.tty_struct* %173)
  br label %175

175:                                              ; preds = %179, %171
  %176 = load i64, i64* %8, align 8
  %177 = add i64 %176, -1
  store i64 %177, i64* %8, align 8
  %178 = icmp ugt i64 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %175
  %180 = load i64, i64* %7, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %7, align 8
  %182 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %183 = load i64, i64* %7, align 8
  %184 = call signext i8 @read_buf(%struct.n_tty_data* %182, i64 %183)
  %185 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %186 = call i32 @echo_char_raw(i8 signext %184, %struct.n_tty_data* %185)
  %187 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %188 = call i32 @echo_move_back_col(%struct.n_tty_data* %187)
  br label %175

189:                                              ; preds = %175
  br label %289

190:                                              ; preds = %157
  %191 = load i32, i32* %6, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %190
  %194 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %195 = call i32 @L_ECHOE(%struct.tty_struct* %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %202, label %197

197:                                              ; preds = %193
  %198 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %199 = call zeroext i8 @ERASE_CHAR(%struct.tty_struct* %198)
  %200 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %201 = call i32 @echo_char(i8 zeroext %199, %struct.tty_struct* %200)
  br label %288

202:                                              ; preds = %193, %190
  %203 = load i8, i8* %3, align 1
  %204 = zext i8 %203 to i32
  %205 = icmp eq i32 %204, 9
  br i1 %205, label %206, label %256

206:                                              ; preds = %202
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %207 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %208 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* %12, align 8
  br label %210

210:                                              ; preds = %250, %206
  %211 = load i64, i64* %12, align 8
  %212 = call i64 @MASK(i64 %211)
  %213 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %214 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = call i64 @MASK(i64 %215)
  %217 = icmp ne i64 %212, %216
  br i1 %217, label %218, label %251

218:                                              ; preds = %210
  %219 = load i64, i64* %12, align 8
  %220 = add i64 %219, -1
  store i64 %220, i64* %12, align 8
  %221 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %222 = load i64, i64* %12, align 8
  %223 = call signext i8 @read_buf(%struct.n_tty_data* %221, i64 %222)
  store i8 %223, i8* %3, align 1
  %224 = load i8, i8* %3, align 1
  %225 = zext i8 %224 to i32
  %226 = icmp eq i32 %225, 9
  br i1 %226, label %227, label %228

227:                                              ; preds = %218
  store i32 1, i32* %11, align 4
  br label %251

228:                                              ; preds = %218
  %229 = load i8, i8* %3, align 1
  %230 = call i64 @iscntrl(i8 zeroext %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %240

232:                                              ; preds = %228
  %233 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %234 = call i64 @L_ECHOCTL(%struct.tty_struct* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %232
  %237 = load i32, i32* %10, align 4
  %238 = add i32 %237, 2
  store i32 %238, i32* %10, align 4
  br label %239

239:                                              ; preds = %236, %232
  br label %249

240:                                              ; preds = %228
  %241 = load i8, i8* %3, align 1
  %242 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %243 = call i64 @is_continuation(i8 zeroext %241, %struct.tty_struct* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %248, label %245

245:                                              ; preds = %240
  %246 = load i32, i32* %10, align 4
  %247 = add i32 %246, 1
  store i32 %247, i32* %10, align 4
  br label %248

248:                                              ; preds = %245, %240
  br label %249

249:                                              ; preds = %248, %239
  br label %250

250:                                              ; preds = %249
  br label %210

251:                                              ; preds = %227, %210
  %252 = load i32, i32* %10, align 4
  %253 = load i32, i32* %11, align 4
  %254 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %255 = call i32 @echo_erase_tab(i32 %252, i32 %253, %struct.n_tty_data* %254)
  br label %287

256:                                              ; preds = %202
  %257 = load i8, i8* %3, align 1
  %258 = call i64 @iscntrl(i8 zeroext %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %271

260:                                              ; preds = %256
  %261 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %262 = call i64 @L_ECHOCTL(%struct.tty_struct* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %271

264:                                              ; preds = %260
  %265 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %266 = call i32 @echo_char_raw(i8 signext 8, %struct.n_tty_data* %265)
  %267 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %268 = call i32 @echo_char_raw(i8 signext 32, %struct.n_tty_data* %267)
  %269 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %270 = call i32 @echo_char_raw(i8 signext 8, %struct.n_tty_data* %269)
  br label %271

271:                                              ; preds = %264, %260, %256
  %272 = load i8, i8* %3, align 1
  %273 = call i64 @iscntrl(i8 zeroext %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %271
  %276 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %277 = call i64 @L_ECHOCTL(%struct.tty_struct* %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %286

279:                                              ; preds = %275, %271
  %280 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %281 = call i32 @echo_char_raw(i8 signext 8, %struct.n_tty_data* %280)
  %282 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %283 = call i32 @echo_char_raw(i8 signext 32, %struct.n_tty_data* %282)
  %284 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %285 = call i32 @echo_char_raw(i8 signext 8, %struct.n_tty_data* %284)
  br label %286

286:                                              ; preds = %279, %275
  br label %287

287:                                              ; preds = %286, %251
  br label %288

288:                                              ; preds = %287, %197
  br label %289

289:                                              ; preds = %288, %189
  br label %290

290:                                              ; preds = %289, %145
  %291 = load i32, i32* %6, align 4
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %290
  br label %295

294:                                              ; preds = %290
  br label %84

295:                                              ; preds = %293, %142, %124, %84
  %296 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %297 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %300 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = icmp eq i64 %298, %301
  br i1 %302, label %303, label %310

303:                                              ; preds = %295
  %304 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %305 = call i64 @L_ECHO(%struct.tty_struct* %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %303
  %308 = load %struct.n_tty_data*, %struct.n_tty_data** %5, align 8
  %309 = call i32 @finish_erasing(%struct.n_tty_data* %308)
  br label %310

310:                                              ; preds = %23, %44, %80, %307, %303, %295
  ret void
}

declare dso_local zeroext i8 @ERASE_CHAR(%struct.tty_struct*) #1

declare dso_local zeroext i8 @WERASE_CHAR(%struct.tty_struct*) #1

declare dso_local i64 @L_ECHO(%struct.tty_struct*) #1

declare dso_local i64 @L_ECHOK(%struct.tty_struct*) #1

declare dso_local i32 @L_ECHOKE(%struct.tty_struct*) #1

declare dso_local i32 @L_ECHOE(%struct.tty_struct*) #1

declare dso_local i32 @finish_erasing(%struct.n_tty_data*) #1

declare dso_local i32 @echo_char(i8 zeroext, %struct.tty_struct*) #1

declare dso_local zeroext i8 @KILL_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @echo_char_raw(i8 signext, %struct.n_tty_data*) #1

declare dso_local i64 @MASK(i64) #1

declare dso_local signext i8 @read_buf(%struct.n_tty_data*, i64) #1

declare dso_local i64 @is_continuation(i8 zeroext, %struct.tty_struct*) #1

declare dso_local i64 @isalnum(i8 zeroext) #1

declare dso_local i64 @L_ECHOPRT(%struct.tty_struct*) #1

declare dso_local i32 @echo_move_back_col(%struct.n_tty_data*) #1

declare dso_local i64 @iscntrl(i8 zeroext) #1

declare dso_local i64 @L_ECHOCTL(%struct.tty_struct*) #1

declare dso_local i32 @echo_erase_tab(i32, i32, %struct.n_tty_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
