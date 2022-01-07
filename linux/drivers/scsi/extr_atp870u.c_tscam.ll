; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_atp870u.c_tscam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_atp870u.c_tscam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.atp_unit = type { i16* }

@tscam.g2q_tab = internal global [8 x i8] c"812+4-.'", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*, i32, i32)* @tscam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tscam(%struct.Scsi_Host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca [33 x i8], align 16
  %15 = alloca [2 x i8], align 1
  %16 = alloca %struct.atp_unit*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 0
  %19 = bitcast i32* %18 to %struct.atp_unit*
  store %struct.atp_unit* %19, %struct.atp_unit** %16, align 8
  %20 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %21 = call i32 @atp_writeb_io(%struct.atp_unit* %20, i32 0, i32 1, i32 8)
  %22 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %23 = call i32 @atp_writeb_io(%struct.atp_unit* %22, i32 0, i32 2, i32 127)
  %24 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %25 = call i32 @atp_writeb_io(%struct.atp_unit* %24, i32 0, i32 17, i32 32)
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 64
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %508

30:                                               ; preds = %3
  store i16 1, i16* %11, align 2
  %31 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %32 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %31, i32 0, i32 0
  %33 = load i16*, i16** %32, align 8
  %34 = getelementptr inbounds i16, i16* %33, i64 0
  %35 = load i16, i16* %34, align 2
  %36 = zext i16 %35 to i32
  %37 = load i16, i16* %11, align 2
  %38 = zext i16 %37 to i32
  %39 = shl i32 %38, %36
  %40 = trunc i32 %39 to i16
  store i16 %40, i16* %11, align 2
  store i8 16, i8* %8, align 1
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %30
  %44 = load i16, i16* %11, align 2
  %45 = zext i16 %44 to i32
  %46 = or i32 %45, 65280
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %11, align 2
  store i8 8, i8* %8, align 1
  br label %48

48:                                               ; preds = %43, %30
  %49 = load i16, i16* %11, align 2
  store i16 %49, i16* %12, align 2
  %50 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %51 = call i32 @atp_writeb_io(%struct.atp_unit* %50, i32 0, i32 2, i32 2)
  %52 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %53 = call i32 @atp_writeb_io(%struct.atp_unit* %52, i32 0, i32 3, i32 0)
  %54 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %55 = call i32 @atp_writeb_io(%struct.atp_unit* %54, i32 0, i32 4, i32 0)
  %56 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %57 = call i32 @atp_writeb_io(%struct.atp_unit* %56, i32 0, i32 5, i32 0)
  %58 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %59 = call i32 @atp_writeb_io(%struct.atp_unit* %58, i32 0, i32 6, i32 0)
  %60 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %61 = call i32 @atp_writeb_io(%struct.atp_unit* %60, i32 0, i32 7, i32 0)
  %62 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %63 = call i32 @atp_writeb_io(%struct.atp_unit* %62, i32 0, i32 8, i32 0)
  store i8 0, i8* %7, align 1
  br label %64

64:                                               ; preds = %168, %48
  %65 = load i8, i8* %7, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* %8, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %171

70:                                               ; preds = %64
  store i16 1, i16* %11, align 2
  %71 = load i16, i16* %11, align 2
  %72 = zext i16 %71 to i32
  %73 = load i8, i8* %7, align 1
  %74 = zext i8 %73 to i32
  %75 = shl i32 %72, %74
  %76 = trunc i32 %75 to i16
  store i16 %76, i16* %11, align 2
  %77 = load i16, i16* %11, align 2
  %78 = zext i16 %77 to i32
  %79 = load i16, i16* %12, align 2
  %80 = zext i16 %79 to i32
  %81 = and i32 %78, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %70
  br label %168

84:                                               ; preds = %70
  %85 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %86 = call i32 @atp_writeb_io(%struct.atp_unit* %85, i32 0, i32 15, i32 0)
  %87 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %88 = call i32 @atp_writeb_io(%struct.atp_unit* %87, i32 0, i32 18, i32 0)
  %89 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %90 = call i32 @atp_writeb_io(%struct.atp_unit* %89, i32 0, i32 19, i32 0)
  %91 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %92 = call i32 @atp_writeb_io(%struct.atp_unit* %91, i32 0, i32 20, i32 0)
  %93 = load i8, i8* %7, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp sgt i32 %94, 7
  br i1 %95, label %96, label %102

96:                                               ; preds = %84
  %97 = load i8, i8* %7, align 1
  %98 = zext i8 %97 to i32
  %99 = and i32 %98, 7
  %100 = or i32 %99, 64
  %101 = trunc i32 %100 to i8
  store i8 %101, i8* %9, align 1
  br label %104

102:                                              ; preds = %84
  %103 = load i8, i8* %7, align 1
  store i8 %103, i8* %9, align 1
  br label %104

104:                                              ; preds = %102, %96
  %105 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %106 = load i8, i8* %9, align 1
  %107 = zext i8 %106 to i32
  %108 = call i32 @atp_writeb_io(%struct.atp_unit* %105, i32 0, i32 21, i32 %107)
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %113 = call i32 @atp_writeb_io(%struct.atp_unit* %112, i32 0, i32 27, i32 1)
  br label %117

114:                                              ; preds = %104
  %115 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %116 = call i32 @atp_writeb_io(%struct.atp_unit* %115, i32 0, i32 27, i32 0)
  br label %117

117:                                              ; preds = %114, %111
  br label %118

118:                                              ; preds = %148, %117
  %119 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %120 = call i32 @atp_writeb_io(%struct.atp_unit* %119, i32 0, i32 24, i32 9)
  br label %121

121:                                              ; preds = %126, %118
  %122 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %123 = call i32 @atp_readb_io(%struct.atp_unit* %122, i32 0, i32 31)
  %124 = and i32 %123, 128
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = call i32 (...) @cpu_relax()
  br label %121

128:                                              ; preds = %121
  %129 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %130 = call i32 @atp_readb_io(%struct.atp_unit* %129, i32 0, i32 23)
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %9, align 1
  %132 = load i8, i8* %9, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp eq i32 %133, 133
  br i1 %134, label %139, label %135

135:                                              ; preds = %128
  %136 = load i8, i8* %9, align 1
  %137 = zext i8 %136 to i32
  %138 = icmp eq i32 %137, 66
  br i1 %138, label %139, label %140

139:                                              ; preds = %135, %128
  br label %152

140:                                              ; preds = %135
  %141 = load i8, i8* %9, align 1
  %142 = zext i8 %141 to i32
  %143 = icmp ne i32 %142, 22
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %146 = call i32 @atp_writeb_io(%struct.atp_unit* %145, i32 0, i32 16, i32 65)
  br label %147

147:                                              ; preds = %144, %140
  br label %148

148:                                              ; preds = %147
  %149 = load i8, i8* %9, align 1
  %150 = zext i8 %149 to i32
  %151 = icmp ne i32 %150, 22
  br i1 %151, label %118, label %152

152:                                              ; preds = %148, %139
  %153 = load i8, i8* %9, align 1
  %154 = zext i8 %153 to i32
  %155 = icmp eq i32 %154, 133
  br i1 %155, label %160, label %156

156:                                              ; preds = %152
  %157 = load i8, i8* %9, align 1
  %158 = zext i8 %157 to i32
  %159 = icmp eq i32 %158, 66
  br i1 %159, label %160, label %161

160:                                              ; preds = %156, %152
  br label %168

161:                                              ; preds = %156
  %162 = load i16, i16* %11, align 2
  %163 = zext i16 %162 to i32
  %164 = load i16, i16* %12, align 2
  %165 = zext i16 %164 to i32
  %166 = or i32 %165, %163
  %167 = trunc i32 %166 to i16
  store i16 %167, i16* %12, align 2
  br label %168

168:                                              ; preds = %161, %160, %83
  %169 = load i8, i8* %7, align 1
  %170 = add i8 %169, 1
  store i8 %170, i8* %7, align 1
  br label %64

171:                                              ; preds = %64
  %172 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %173 = call i32 @atp_writeb_io(%struct.atp_unit* %172, i32 0, i32 2, i32 127)
  %174 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %175 = call i32 @atp_writeb_io(%struct.atp_unit* %174, i32 0, i32 27, i32 2)
  %176 = call i32 @udelay(i32 2)
  store i16 128, i16* %13, align 2
  %177 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %178 = load i16, i16* %13, align 2
  %179 = call i32 @atp_writew_io(%struct.atp_unit* %177, i32 0, i32 28, i16 zeroext %178)
  %180 = load i16, i16* %13, align 2
  %181 = zext i16 %180 to i32
  %182 = or i32 %181, 64
  %183 = trunc i32 %182 to i16
  store i16 %183, i16* %13, align 2
  %184 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %185 = load i16, i16* %13, align 2
  %186 = call i32 @atp_writew_io(%struct.atp_unit* %184, i32 0, i32 28, i16 zeroext %185)
  %187 = load i16, i16* %13, align 2
  %188 = zext i16 %187 to i32
  %189 = or i32 %188, 4
  %190 = trunc i32 %189 to i16
  store i16 %190, i16* %13, align 2
  %191 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %192 = load i16, i16* %13, align 2
  %193 = call i32 @atp_writew_io(%struct.atp_unit* %191, i32 0, i32 28, i16 zeroext %192)
  %194 = call i32 @udelay(i32 2)
  %195 = load i16, i16* %13, align 2
  %196 = zext i16 %195 to i32
  %197 = and i32 %196, 127
  %198 = trunc i32 %197 to i16
  store i16 %198, i16* %13, align 2
  %199 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %200 = load i16, i16* %13, align 2
  %201 = call i32 @atp_writew_io(%struct.atp_unit* %199, i32 0, i32 28, i16 zeroext %200)
  %202 = call i32 @msleep(i32 128)
  %203 = load i16, i16* %13, align 2
  %204 = zext i16 %203 to i32
  %205 = and i32 %204, 251
  %206 = trunc i32 %205 to i16
  store i16 %206, i16* %13, align 2
  %207 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %208 = load i16, i16* %13, align 2
  %209 = call i32 @atp_writew_io(%struct.atp_unit* %207, i32 0, i32 28, i16 zeroext %208)
  br label %210

210:                                              ; preds = %215, %171
  %211 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %212 = call i32 @atp_readb_io(%struct.atp_unit* %211, i32 0, i32 28)
  %213 = and i32 %212, 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %210
  br label %210

216:                                              ; preds = %210
  %217 = call i32 @udelay(i32 2)
  %218 = call i32 @udelay(i32 100)
  store i64 0, i64* %10, align 8
  br label %219

219:                                              ; preds = %229, %216
  %220 = load i64, i64* %10, align 8
  %221 = icmp ult i64 %220, 196608
  br i1 %221, label %222, label %232

222:                                              ; preds = %219
  %223 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %224 = call i32 @atp_readb_io(%struct.atp_unit* %223, i32 0, i32 28)
  %225 = and i32 %224, 128
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %222
  br label %232

228:                                              ; preds = %222
  br label %229

229:                                              ; preds = %228
  %230 = load i64, i64* %10, align 8
  %231 = add i64 %230, 1
  store i64 %231, i64* %10, align 8
  br label %219

232:                                              ; preds = %227, %219
  %233 = load i64, i64* %10, align 8
  %234 = icmp ult i64 %233, 196608
  br i1 %234, label %235, label %267

235:                                              ; preds = %232
  store i64 0, i64* %10, align 8
  br label %236

236:                                              ; preds = %263, %235
  %237 = load i64, i64* %10, align 8
  %238 = icmp ult i64 %237, 196608
  br i1 %238, label %239, label %266

239:                                              ; preds = %236
  %240 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %241 = call i32 @atp_readb_io(%struct.atp_unit* %240, i32 0, i32 28)
  %242 = and i32 %241, 129
  %243 = icmp eq i32 %242, 129
  br i1 %243, label %244, label %262

244:                                              ; preds = %239
  %245 = call i32 @udelay(i32 2)
  %246 = load i16, i16* %13, align 2
  %247 = zext i16 %246 to i32
  %248 = or i32 %247, 32771
  %249 = trunc i32 %248 to i16
  store i16 %249, i16* %13, align 2
  %250 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %251 = load i16, i16* %13, align 2
  %252 = call i32 @atp_writew_io(%struct.atp_unit* %250, i32 0, i32 28, i16 zeroext %251)
  %253 = call i32 @udelay(i32 2)
  %254 = load i16, i16* %13, align 2
  %255 = zext i16 %254 to i32
  %256 = and i32 %255, 191
  %257 = trunc i32 %256 to i16
  store i16 %257, i16* %13, align 2
  %258 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %259 = load i16, i16* %13, align 2
  %260 = call i32 @atp_writew_io(%struct.atp_unit* %258, i32 0, i32 28, i16 zeroext %259)
  %261 = call i32 @udelay(i32 2)
  br label %266

262:                                              ; preds = %239
  br label %263

263:                                              ; preds = %262
  %264 = load i64, i64* %10, align 8
  %265 = add i64 %264, 1
  store i64 %265, i64* %10, align 8
  br label %236

266:                                              ; preds = %244, %236
  br label %267

267:                                              ; preds = %266, %232
  br label %268

268:                                              ; preds = %267, %464
  %269 = call i32 @mdelay(i32 2)
  %270 = call i32 @udelay(i32 48)
  %271 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %272 = call i32 @atp_readb_io(%struct.atp_unit* %271, i32 0, i32 28)
  %273 = and i32 %272, 128
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %294

275:                                              ; preds = %268
  %276 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %277 = call i32 @atp_writew_io(%struct.atp_unit* %276, i32 0, i32 28, i16 zeroext 0)
  %278 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %279 = call i32 @atp_writeb_io(%struct.atp_unit* %278, i32 0, i32 27, i32 0)
  %280 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %281 = call i32 @atp_writeb_io(%struct.atp_unit* %280, i32 0, i32 21, i32 0)
  %282 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %283 = call i32 @atp_writeb_io(%struct.atp_unit* %282, i32 0, i32 24, i32 9)
  br label %284

284:                                              ; preds = %289, %275
  %285 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %286 = call i32 @atp_readb_io(%struct.atp_unit* %285, i32 0, i32 31)
  %287 = and i32 %286, 128
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %284
  %290 = call i32 (...) @cpu_relax()
  br label %284

291:                                              ; preds = %284
  %292 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %293 = call i32 @atp_readb_io(%struct.atp_unit* %292, i32 0, i32 23)
  br label %508

294:                                              ; preds = %268
  %295 = load i16, i16* %13, align 2
  %296 = zext i16 %295 to i32
  %297 = and i32 %296, 255
  %298 = trunc i32 %297 to i16
  store i16 %298, i16* %13, align 2
  %299 = load i16, i16* %13, align 2
  %300 = zext i16 %299 to i32
  %301 = or i32 %300, 16128
  %302 = trunc i32 %301 to i16
  store i16 %302, i16* %13, align 2
  %303 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %304 = call zeroext i8 @fun_scam(%struct.atp_unit* %303, i16* %13)
  %305 = call i32 @udelay(i32 2)
  %306 = load i16, i16* %13, align 2
  %307 = zext i16 %306 to i32
  %308 = and i32 %307, 255
  %309 = trunc i32 %308 to i16
  store i16 %309, i16* %13, align 2
  %310 = load i16, i16* %13, align 2
  %311 = zext i16 %310 to i32
  %312 = or i32 %311, 8192
  %313 = trunc i32 %312 to i16
  store i16 %313, i16* %13, align 2
  %314 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %315 = call zeroext i8 @fun_scam(%struct.atp_unit* %314, i16* %13)
  %316 = call i32 @udelay(i32 2)
  store i8 8, i8* %7, align 1
  store i8 0, i8* %8, align 1
  br label %317

317:                                              ; preds = %294, %322, %373, %374
  %318 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %319 = call i32 @atp_readw_io(%struct.atp_unit* %318, i32 0, i32 28)
  %320 = and i32 %319, 8192
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %317
  br label %317

323:                                              ; preds = %317
  %324 = call i32 @udelay(i32 2)
  %325 = load i16, i16* %13, align 2
  %326 = zext i16 %325 to i32
  %327 = and i32 %326, 255
  %328 = trunc i32 %327 to i16
  store i16 %328, i16* %13, align 2
  %329 = load i16, i16* %13, align 2
  %330 = zext i16 %329 to i32
  %331 = or i32 %330, 8192
  %332 = trunc i32 %331 to i16
  store i16 %332, i16* %13, align 2
  %333 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %334 = call zeroext i8 @fun_scam(%struct.atp_unit* %333, i16* %13)
  store i8 %334, i8* %9, align 1
  %335 = load i8, i8* %9, align 1
  %336 = zext i8 %335 to i32
  %337 = and i32 %336, 3
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %323
  br label %377

340:                                              ; preds = %323
  %341 = load i8, i8* %8, align 1
  %342 = zext i8 %341 to i64
  %343 = getelementptr inbounds [33 x i8], [33 x i8]* %14, i64 0, i64 %342
  %344 = load i8, i8* %343, align 1
  %345 = zext i8 %344 to i32
  %346 = shl i32 %345, 1
  %347 = trunc i32 %346 to i8
  store i8 %347, i8* %343, align 1
  %348 = load i8, i8* %8, align 1
  %349 = zext i8 %348 to i64
  %350 = getelementptr inbounds [33 x i8], [33 x i8]* %14, i64 0, i64 %349
  %351 = load i8, i8* %350, align 1
  %352 = zext i8 %351 to i32
  %353 = and i32 %352, 254
  %354 = trunc i32 %353 to i8
  store i8 %354, i8* %350, align 1
  %355 = load i8, i8* %9, align 1
  %356 = zext i8 %355 to i32
  %357 = and i32 %356, 2
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %367

359:                                              ; preds = %340
  %360 = load i8, i8* %8, align 1
  %361 = zext i8 %360 to i64
  %362 = getelementptr inbounds [33 x i8], [33 x i8]* %14, i64 0, i64 %361
  %363 = load i8, i8* %362, align 1
  %364 = zext i8 %363 to i32
  %365 = or i32 %364, 1
  %366 = trunc i32 %365 to i8
  store i8 %366, i8* %362, align 1
  br label %367

367:                                              ; preds = %359, %340
  %368 = load i8, i8* %7, align 1
  %369 = add i8 %368, -1
  store i8 %369, i8* %7, align 1
  %370 = load i8, i8* %7, align 1
  %371 = zext i8 %370 to i32
  %372 = icmp sgt i32 %371, 0
  br i1 %372, label %373, label %374

373:                                              ; preds = %367
  br label %317

374:                                              ; preds = %367
  %375 = load i8, i8* %8, align 1
  %376 = add i8 %375, 1
  store i8 %376, i8* %8, align 1
  store i8 8, i8* %7, align 1
  br label %317

377:                                              ; preds = %339
  store i8 15, i8* %7, align 1
  %378 = getelementptr inbounds [33 x i8], [33 x i8]* %14, i64 0, i64 0
  %379 = load i8, i8* %378, align 16
  store i8 %379, i8* %8, align 1
  %380 = load i8, i8* %8, align 1
  %381 = zext i8 %380 to i32
  %382 = and i32 %381, 32
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %385

384:                                              ; preds = %377
  store i8 7, i8* %7, align 1
  br label %385

385:                                              ; preds = %384, %377
  %386 = load i8, i8* %8, align 1
  %387 = zext i8 %386 to i32
  %388 = and i32 %387, 6
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %417

390:                                              ; preds = %385
  %391 = getelementptr inbounds [33 x i8], [33 x i8]* %14, i64 0, i64 1
  %392 = load i8, i8* %391, align 1
  store i8 %392, i8* %9, align 1
  br label %393

393:                                              ; preds = %390, %415
  store i16 1, i16* %11, align 2
  %394 = load i8, i8* %9, align 1
  %395 = zext i8 %394 to i32
  %396 = load i16, i16* %11, align 2
  %397 = zext i16 %396 to i32
  %398 = shl i32 %397, %395
  %399 = trunc i32 %398 to i16
  store i16 %399, i16* %11, align 2
  %400 = load i16, i16* %11, align 2
  %401 = zext i16 %400 to i32
  %402 = load i16, i16* %12, align 2
  %403 = zext i16 %402 to i32
  %404 = and i32 %401, %403
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %407

406:                                              ; preds = %393
  br label %416

407:                                              ; preds = %393
  %408 = load i8, i8* %9, align 1
  %409 = zext i8 %408 to i32
  %410 = icmp sgt i32 %409, 0
  br i1 %410, label %411, label %414

411:                                              ; preds = %407
  %412 = load i8, i8* %9, align 1
  %413 = add i8 %412, -1
  store i8 %413, i8* %9, align 1
  br label %415

414:                                              ; preds = %407
  br label %416

415:                                              ; preds = %411
  br label %393

416:                                              ; preds = %414, %406
  br label %417

417:                                              ; preds = %416, %385
  %418 = load i16, i16* %11, align 2
  %419 = zext i16 %418 to i32
  %420 = load i16, i16* %12, align 2
  %421 = zext i16 %420 to i32
  %422 = and i32 %419, %421
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %450

424:                                              ; preds = %417
  %425 = load i8, i8* %7, align 1
  store i8 %425, i8* %9, align 1
  br label %426

426:                                              ; preds = %424, %448
  store i16 1, i16* %11, align 2
  %427 = load i8, i8* %9, align 1
  %428 = zext i8 %427 to i32
  %429 = load i16, i16* %11, align 2
  %430 = zext i16 %429 to i32
  %431 = shl i32 %430, %428
  %432 = trunc i32 %431 to i16
  store i16 %432, i16* %11, align 2
  %433 = load i16, i16* %11, align 2
  %434 = zext i16 %433 to i32
  %435 = load i16, i16* %12, align 2
  %436 = zext i16 %435 to i32
  %437 = and i32 %434, %436
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %440

439:                                              ; preds = %426
  br label %449

440:                                              ; preds = %426
  %441 = load i8, i8* %9, align 1
  %442 = zext i8 %441 to i32
  %443 = icmp sgt i32 %442, 0
  br i1 %443, label %444, label %447

444:                                              ; preds = %440
  %445 = load i8, i8* %9, align 1
  %446 = add i8 %445, -1
  store i8 %446, i8* %9, align 1
  br label %448

447:                                              ; preds = %440
  br label %449

448:                                              ; preds = %444
  br label %426

449:                                              ; preds = %447, %439
  br label %450

450:                                              ; preds = %449, %417
  %451 = load i16, i16* %11, align 2
  %452 = zext i16 %451 to i32
  %453 = load i16, i16* %12, align 2
  %454 = zext i16 %453 to i32
  %455 = or i32 %454, %452
  %456 = trunc i32 %455 to i16
  store i16 %456, i16* %12, align 2
  %457 = load i8, i8* %9, align 1
  %458 = zext i8 %457 to i32
  %459 = icmp slt i32 %458, 8
  br i1 %459, label %460, label %462

460:                                              ; preds = %450
  %461 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 0
  store i8 56, i8* %461, align 1
  br label %464

462:                                              ; preds = %450
  %463 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 0
  store i8 49, i8* %463, align 1
  br label %464

464:                                              ; preds = %462, %460
  %465 = load i8, i8* %9, align 1
  %466 = zext i8 %465 to i32
  %467 = and i32 %466, 7
  %468 = trunc i32 %467 to i8
  store i8 %468, i8* %9, align 1
  %469 = load i8, i8* %9, align 1
  %470 = zext i8 %469 to i64
  %471 = getelementptr inbounds [8 x i8], [8 x i8]* @tscam.g2q_tab, i64 0, i64 %470
  %472 = load i8, i8* %471, align 1
  %473 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 1
  store i8 %472, i8* %473, align 1
  %474 = load i16, i16* %13, align 2
  %475 = zext i16 %474 to i32
  %476 = and i32 %475, 255
  %477 = trunc i32 %476 to i16
  store i16 %477, i16* %13, align 2
  %478 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 0
  %479 = load i8, i8* %478, align 1
  %480 = zext i8 %479 to i32
  %481 = shl i32 %480, 8
  %482 = trunc i32 %481 to i16
  store i16 %482, i16* %11, align 2
  %483 = load i16, i16* %11, align 2
  %484 = zext i16 %483 to i32
  %485 = load i16, i16* %13, align 2
  %486 = zext i16 %485 to i32
  %487 = or i32 %486, %484
  %488 = trunc i32 %487 to i16
  store i16 %488, i16* %13, align 2
  %489 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %490 = call zeroext i8 @fun_scam(%struct.atp_unit* %489, i16* %13)
  %491 = load i16, i16* %13, align 2
  %492 = zext i16 %491 to i32
  %493 = and i32 %492, 255
  %494 = trunc i32 %493 to i16
  store i16 %494, i16* %13, align 2
  %495 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 1
  %496 = load i8, i8* %495, align 1
  %497 = zext i8 %496 to i32
  %498 = shl i32 %497, 8
  %499 = trunc i32 %498 to i16
  store i16 %499, i16* %11, align 2
  %500 = load i16, i16* %11, align 2
  %501 = zext i16 %500 to i32
  %502 = load i16, i16* %13, align 2
  %503 = zext i16 %502 to i32
  %504 = or i32 %503, %501
  %505 = trunc i32 %504 to i16
  store i16 %505, i16* %13, align 2
  %506 = load %struct.atp_unit*, %struct.atp_unit** %16, align 8
  %507 = call zeroext i8 @fun_scam(%struct.atp_unit* %506, i16* %13)
  br label %268

508:                                              ; preds = %291, %29
  ret void
}

declare dso_local i32 @atp_writeb_io(%struct.atp_unit*, i32, i32, i32) #1

declare dso_local i32 @atp_readb_io(%struct.atp_unit*, i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @atp_writew_io(%struct.atp_unit*, i32, i32, i16 zeroext) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local zeroext i8 @fun_scam(%struct.atp_unit*, i16*) #1

declare dso_local i32 @atp_readw_io(%struct.atp_unit*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
