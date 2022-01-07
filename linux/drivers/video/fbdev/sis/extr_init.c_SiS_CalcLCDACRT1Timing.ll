; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_CalcLCDACRT1Timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_CalcLCDACRT1Timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i16, i32, i16, i16, i16, i16, i16, i64, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i64, i16, i16, i16, i16, i16, i32*, i32, i32, i64, i64 }

@LCDPass11 = common dso_local global i32 0, align 4
@HalfDCLK = common dso_local global i16 0, align 2
@SIS_315H = common dso_local global i64 0, align 8
@DontExpandLCD = common dso_local global i32 0, align 4
@DoubleScanMode = common dso_local global i16 0, align 2
@Panel_1024x600 = common dso_local global i64 0, align 8
@Panel_1024x768 = common dso_local global i64 0, align 8
@Panel_800x600 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiS_CalcLCDACRT1Timing(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.SiS_Private*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.SiS_Private* %0, %struct.SiS_Private** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  store i16 0, i16* %9, align 2
  store i16 0, i16* %10, align 2
  %14 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %15 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %14, i32 0, i32 0
  %16 = load i16, i16* %15, align 8
  store i16 %16, i16* %11, align 2
  %17 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %18 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @LCDPass11, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %330

24:                                               ; preds = %3
  %25 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %26 = load i16, i16* %5, align 2
  %27 = load i16, i16* %6, align 2
  %28 = call zeroext i16 @SiS_GetModeFlag(%struct.SiS_Private* %25, i16 zeroext %26, i16 zeroext %27)
  store i16 %28, i16* %7, align 2
  %29 = load i16, i16* %7, align 2
  %30 = zext i16 %29 to i32
  %31 = load i16, i16* @HalfDCLK, align 2
  %32 = zext i16 %31 to i32
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %24
  %36 = load i16, i16* %11, align 2
  %37 = zext i16 %36 to i32
  %38 = ashr i32 %37, 1
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %11, align 2
  br label %40

40:                                               ; preds = %35, %24
  %41 = load i16, i16* %11, align 2
  %42 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %43 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %42, i32 0, i32 2
  store i16 %41, i16* %43, align 8
  %44 = load i16, i16* %11, align 2
  %45 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %46 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %45, i32 0, i32 3
  store i16 %44, i16* %46, align 2
  %47 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %48 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %47, i32 0, i32 5
  %49 = load i16, i16* %48, align 2
  %50 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %51 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %50, i32 0, i32 4
  store i16 %49, i16* %51, align 4
  %52 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %53 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %52, i32 0, i32 5
  %54 = load i16, i16* %53, align 2
  %55 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %56 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %55, i32 0, i32 6
  store i16 %54, i16* %56, align 8
  %57 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %58 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %57, i32 0, i32 7
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SIS_315H, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %40
  br label %64

63:                                               ; preds = %40
  br label %64

64:                                               ; preds = %63, %62
  %65 = load i16, i16* %9, align 2
  %66 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %67 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %66, i32 0, i32 12
  store i16 %65, i16* %67, align 8
  %68 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %69 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %68, i32 0, i32 11
  store i16 %65, i16* %69, align 2
  %70 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %71 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %70, i32 0, i32 7
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SIS_315H, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %77

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %75
  %78 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %79 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %78, i32 0, i32 17
  %80 = load i16, i16* %79, align 4
  %81 = zext i16 %80 to i32
  %82 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %83 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %82, i32 0, i32 18
  %84 = load i16, i16* %83, align 2
  %85 = zext i16 %84 to i32
  %86 = sub nsw i32 %81, %85
  %87 = trunc i32 %86 to i16
  store i16 %87, i16* %9, align 2
  %88 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %89 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %88, i32 0, i32 5
  %90 = load i16, i16* %89, align 2
  store i16 %90, i16* %8, align 2
  %91 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %92 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @DontExpandLCD, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %77
  %98 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %99 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %98, i32 0, i32 18
  %100 = load i16, i16* %99, align 2
  store i16 %100, i16* %8, align 2
  br label %109

101:                                              ; preds = %77
  %102 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %103 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %102, i32 0, i32 7
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @SIS_315H, align 8
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %107, %101
  br label %109

109:                                              ; preds = %108, %97
  %110 = load i16, i16* %9, align 2
  %111 = zext i16 %110 to i32
  %112 = load i16, i16* %8, align 2
  %113 = zext i16 %112 to i32
  %114 = add nsw i32 %111, %113
  %115 = trunc i32 %114 to i16
  %116 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %117 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %116, i32 0, i32 22
  store i16 %115, i16* %117, align 4
  %118 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %119 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %118, i32 0, i32 21
  store i16 %115, i16* %119, align 2
  %120 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %121 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %120, i32 0, i32 5
  %122 = load i16, i16* %121, align 2
  store i16 %122, i16* %8, align 2
  %123 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %124 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @DontExpandLCD, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %109
  %130 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %131 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %130, i32 0, i32 18
  %132 = load i16, i16* %131, align 2
  %133 = zext i16 %132 to i32
  %134 = load i16, i16* %8, align 2
  %135 = zext i16 %134 to i32
  %136 = sub nsw i32 %133, %135
  %137 = ashr i32 %136, 1
  %138 = load i16, i16* %8, align 2
  %139 = zext i16 %138 to i32
  %140 = add nsw i32 %139, %137
  %141 = trunc i32 %140 to i16
  store i16 %141, i16* %8, align 2
  br label %142

142:                                              ; preds = %129, %109
  %143 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %144 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %143, i32 0, i32 29
  %145 = load i64, i64* %144, align 8
  %146 = load i16, i16* %8, align 2
  %147 = zext i16 %146 to i64
  %148 = add nsw i64 %147, %145
  %149 = trunc i64 %148 to i16
  store i16 %149, i16* %8, align 2
  %150 = load i16, i16* %8, align 2
  %151 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %152 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %151, i32 0, i32 23
  store i16 %150, i16* %152, align 2
  %153 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %154 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %153, i32 0, i32 28
  %155 = load i64, i64* %154, align 8
  %156 = load i16, i16* %8, align 2
  %157 = zext i16 %156 to i64
  %158 = add nsw i64 %157, %155
  %159 = trunc i64 %158 to i16
  store i16 %159, i16* %8, align 2
  %160 = load i16, i16* %8, align 2
  %161 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %162 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %161, i32 0, i32 24
  store i16 %160, i16* %162, align 8
  %163 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %164 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %163, i32 0, i32 7
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @SIS_315H, align 8
  %167 = icmp slt i64 %165, %166
  br i1 %167, label %168, label %177

168:                                              ; preds = %142
  %169 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %170 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %169, i32 0, i32 23
  %171 = load i16, i16* %170, align 2
  %172 = add i16 %171, -1
  store i16 %172, i16* %170, align 2
  %173 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %174 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %173, i32 0, i32 24
  %175 = load i16, i16* %174, align 8
  %176 = add i16 %175, -1
  store i16 %176, i16* %174, align 8
  br label %177

177:                                              ; preds = %168, %142
  %178 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %179 = call i32 @SiS_CalcCRRegisters(%struct.SiS_Private* %178, i32 8)
  %180 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %181 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %180, i32 0, i32 25
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 15
  %184 = load i32, i32* %183, align 4
  %185 = and i32 %184, -249
  store i32 %185, i32* %183, align 4
  %186 = load i16, i16* %10, align 2
  %187 = zext i16 %186 to i32
  %188 = shl i32 %187, 4
  %189 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %190 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %189, i32 0, i32 25
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 15
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, %188
  store i32 %194, i32* %192, align 4
  %195 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %196 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %195, i32 0, i32 25
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 16
  %199 = load i32, i32* %198, align 4
  %200 = and i32 %199, -225
  store i32 %200, i32* %198, align 4
  %201 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %202 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %201, i32 0, i32 26
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @SiS_SetRegAND(i32 %203, i32 17, i32 127)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %205

205:                                              ; preds = %221, %177
  %206 = load i32, i32* %12, align 4
  %207 = icmp sle i32 %206, 7
  br i1 %207, label %208, label %226

208:                                              ; preds = %205
  %209 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %210 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %209, i32 0, i32 26
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %13, align 4
  %213 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %214 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %213, i32 0, i32 25
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @SiS_SetReg(i32 %211, i32 %212, i32 %219)
  br label %221

221:                                              ; preds = %208
  %222 = load i32, i32* %12, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %12, align 4
  %224 = load i32, i32* %13, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %13, align 4
  br label %205

226:                                              ; preds = %205
  store i32 16, i32* %13, align 4
  br label %227

227:                                              ; preds = %243, %226
  %228 = load i32, i32* %12, align 4
  %229 = icmp sle i32 %228, 10
  br i1 %229, label %230, label %248

230:                                              ; preds = %227
  %231 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %232 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %231, i32 0, i32 26
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* %13, align 4
  %235 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %236 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %235, i32 0, i32 25
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %12, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @SiS_SetReg(i32 %233, i32 %234, i32 %241)
  br label %243

243:                                              ; preds = %230
  %244 = load i32, i32* %12, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %12, align 4
  %246 = load i32, i32* %13, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %13, align 4
  br label %227

248:                                              ; preds = %227
  store i32 21, i32* %13, align 4
  br label %249

249:                                              ; preds = %265, %248
  %250 = load i32, i32* %12, align 4
  %251 = icmp sle i32 %250, 12
  br i1 %251, label %252, label %270

252:                                              ; preds = %249
  %253 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %254 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %253, i32 0, i32 26
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* %13, align 4
  %257 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %258 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %257, i32 0, i32 25
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* %12, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @SiS_SetReg(i32 %255, i32 %256, i32 %263)
  br label %265

265:                                              ; preds = %252
  %266 = load i32, i32* %12, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %12, align 4
  %268 = load i32, i32* %13, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %13, align 4
  br label %249

270:                                              ; preds = %249
  store i32 10, i32* %13, align 4
  br label %271

271:                                              ; preds = %287, %270
  %272 = load i32, i32* %12, align 4
  %273 = icmp sle i32 %272, 15
  br i1 %273, label %274, label %292

274:                                              ; preds = %271
  %275 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %276 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %275, i32 0, i32 27
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* %13, align 4
  %279 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %280 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %279, i32 0, i32 25
  %281 = load i32*, i32** %280, align 8
  %282 = load i32, i32* %12, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @SiS_SetReg(i32 %277, i32 %278, i32 %285)
  br label %287

287:                                              ; preds = %274
  %288 = load i32, i32* %12, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %12, align 4
  %290 = load i32, i32* %13, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %13, align 4
  br label %271

292:                                              ; preds = %271
  %293 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %294 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %293, i32 0, i32 25
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 16
  %297 = load i32, i32* %296, align 4
  %298 = and i32 %297, 224
  %299 = trunc i32 %298 to i16
  store i16 %299, i16* %8, align 2
  %300 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %301 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %300, i32 0, i32 27
  %302 = load i32, i32* %301, align 4
  %303 = load i16, i16* %8, align 2
  %304 = call i32 @SiS_SetRegANDOR(i32 %302, i32 14, i32 31, i16 zeroext %303)
  %305 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %306 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %305, i32 0, i32 25
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 16
  %309 = load i32, i32* %308, align 4
  %310 = and i32 %309, 1
  %311 = shl i32 %310, 5
  %312 = trunc i32 %311 to i16
  store i16 %312, i16* %8, align 2
  %313 = load i16, i16* %7, align 2
  %314 = zext i16 %313 to i32
  %315 = load i16, i16* @DoubleScanMode, align 2
  %316 = zext i16 %315 to i32
  %317 = and i32 %314, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %324

319:                                              ; preds = %292
  %320 = load i16, i16* %8, align 2
  %321 = zext i16 %320 to i32
  %322 = or i32 %321, 128
  %323 = trunc i32 %322 to i16
  store i16 %323, i16* %8, align 2
  br label %324

324:                                              ; preds = %319, %292
  %325 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %326 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %325, i32 0, i32 26
  %327 = load i32, i32* %326, align 8
  %328 = load i16, i16* %8, align 2
  %329 = call i32 @SiS_SetRegANDOR(i32 %327, i32 9, i32 95, i16 zeroext %328)
  br label %330

330:                                              ; preds = %324, %23
  ret void
}

declare dso_local zeroext i16 @SiS_GetModeFlag(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_CalcCRRegisters(%struct.SiS_Private*, i32) #1

declare dso_local i32 @SiS_SetRegAND(i32, i32, i32) #1

declare dso_local i32 @SiS_SetReg(i32, i32, i32) #1

declare dso_local i32 @SiS_SetRegANDOR(i32, i32, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
