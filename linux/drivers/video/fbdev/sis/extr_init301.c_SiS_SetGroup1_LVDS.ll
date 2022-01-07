; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_SetGroup1_LVDS.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_SetGroup1_LVDS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i16, i32, i32, i64, i32, i32, i16, i16, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i64, i64, i64, i64, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i64, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i16 }
%struct.TYPE_5__ = type { i16, i16 }
%struct.TYPE_4__ = type { i16, i16, i16 }

@VB_NoLCD = common dso_local global i32 0, align 4
@VB_SISVB = common dso_local global i32 0, align 4
@SIS_315H = common dso_local global i64 0, align 8
@SetCRT2ToLCDA = common dso_local global i32 0, align 4
@SetCRT2ToLCD = common dso_local global i32 0, align 4
@SetInSlaveMode = common dso_local global i32 0, align 4
@LCDPass11 = common dso_local global i32 0, align 4
@Panel_320x240_1 = common dso_local global i32 0, align 4
@Panel_320x240_2 = common dso_local global i32 0, align 4
@Panel_320x240_3 = common dso_local global i32 0, align 4
@EnableLVDSDDA = common dso_local global i32 0, align 4
@SetCRT2ToTV = common dso_local global i32 0, align 4
@LCDRGB18Bit = common dso_local global i32 0, align 4
@SIS_RI_800x600 = common dso_local global i16 0, align 2
@SIS_RI_1024x600 = common dso_local global i16 0, align 2
@DontExpandLCD = common dso_local global i32 0, align 4
@SIS_RI_1024x768 = common dso_local global i16 0, align 2
@HalfDCLK = common dso_local global i16 0, align 2
@IS_SIS330 = common dso_local global i64 0, align 8
@IS_SIS740 = common dso_local global i64 0, align 8
@Panel_1280x1024 = common dso_local global i32 0, align 4
@SIS_740 = common dso_local global i64 0, align 8
@SiS300_TrumpionData = common dso_local global i8** null, align 8
@VB_SIS30xC = common dso_local global i32 0, align 4
@VB_SISLVDS = common dso_local global i32 0, align 4
@VB_SISPART4SCALER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i16, i16)* @SiS_SetGroup1_LVDS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetGroup1_LVDS(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.SiS_Private*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.SiS_Private* %0, %struct.SiS_Private** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  store i16 0, i16* %10, align 2
  store i32 0, i32* %16, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %23 = load i16, i16* %6, align 2
  %24 = zext i16 %23 to i32
  %25 = icmp sle i32 %24, 19
  br i1 %25, label %26, label %43

26:                                               ; preds = %4
  %27 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %28 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %27, i32 0, i32 38
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i16, i16* %7, align 2
  %31 = zext i16 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i16, i16* %33, align 2
  store i16 %34, i16* %9, align 2
  %35 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %36 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %35, i32 0, i32 38
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i16, i16* %7, align 2
  %39 = zext i16 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i16, i16* %41, align 2
  store i16 %42, i16* %10, align 2
  br label %70

43:                                               ; preds = %4
  %44 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %45 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %44, i32 0, i32 37
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %50 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %49, i32 0, i32 0
  %51 = load i16, i16* %50, align 8
  store i16 %51, i16* %9, align 2
  br label %69

52:                                               ; preds = %43
  %53 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %54 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %53, i32 0, i32 36
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i16, i16* %7, align 2
  %57 = zext i16 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i16, i16* %59, align 2
  store i16 %60, i16* %9, align 2
  %61 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %62 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %61, i32 0, i32 36
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i16, i16* %7, align 2
  %65 = zext i16 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i16, i16* %67, align 2
  store i16 %68, i16* %10, align 2
  br label %69

69:                                               ; preds = %52, %48
  br label %70

70:                                               ; preds = %69, %26
  %71 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %72 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %82, label %75

75:                                               ; preds = %70
  %76 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %77 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @VB_NoLCD, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75, %70
  store i32 1, i32* %20, align 4
  br label %83

83:                                               ; preds = %82, %75
  %84 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %85 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @VB_SISVB, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %83
  %91 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %92 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @VB_NoLCD, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %90
  store i32 1, i32* %21, align 4
  br label %98

98:                                               ; preds = %97, %90, %83
  %99 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %100 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @SIS_315H, align 8
  %103 = icmp sge i64 %101, %102
  br i1 %103, label %104, label %126

104:                                              ; preds = %98
  %105 = load i32, i32* %20, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %126

107:                                              ; preds = %104
  %108 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %109 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @SetCRT2ToLCDA, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %126, label %114

114:                                              ; preds = %107
  %115 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %116 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %115, i32 0, i32 29
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %114
  %120 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %121 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %120, i32 0, i32 30
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %119
  store i32 1, i32* %22, align 4
  br label %125

125:                                              ; preds = %124, %119, %114
  br label %126

126:                                              ; preds = %125, %107, %104, %98
  %127 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %128 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %127, i32 0, i32 6
  %129 = load i16, i16* %128, align 8
  store i16 %129, i16* %12, align 2
  %130 = load i32, i32* %20, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %171

132:                                              ; preds = %126
  %133 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %134 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @SetCRT2ToLCD, align 4
  %137 = load i32, i32* @SetCRT2ToLCDA, align 4
  %138 = or i32 %136, %137
  %139 = and i32 %135, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %170

141:                                              ; preds = %132
  %142 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %143 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %142, i32 0, i32 29
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %169, label %146

146:                                              ; preds = %141
  %147 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %148 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %147, i32 0, i32 30
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %169, label %151

151:                                              ; preds = %146
  %152 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %153 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 129
  br i1 %155, label %156, label %168

156:                                              ; preds = %151
  %157 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %158 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @SetInSlaveMode, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %156
  %164 = load i16, i16* %12, align 2
  %165 = zext i16 %164 to i32
  %166 = sub nsw i32 %165, 8
  %167 = trunc i32 %166 to i16
  store i16 %167, i16* %12, align 2
  br label %168

168:                                              ; preds = %163, %156, %151
  br label %169

169:                                              ; preds = %168, %146, %141
  br label %170

170:                                              ; preds = %169, %132
  br label %171

171:                                              ; preds = %170, %126
  %172 = load i16, i16* %12, align 2
  %173 = zext i16 %172 to i32
  %174 = and i32 %173, 7
  %175 = trunc i32 %174 to i16
  store i16 %175, i16* %15, align 2
  %176 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %177 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %176, i32 0, i32 28
  %178 = load i32, i32* %177, align 4
  %179 = load i16, i16* %15, align 2
  %180 = zext i16 %179 to i32
  %181 = call i32 @SiS_SetReg(i32 %178, i32 26, i32 %180)
  %182 = load i16, i16* %12, align 2
  %183 = zext i16 %182 to i32
  %184 = ashr i32 %183, 3
  %185 = and i32 %184, 255
  %186 = trunc i32 %185 to i16
  store i16 %186, i16* %15, align 2
  %187 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %188 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %187, i32 0, i32 28
  %189 = load i32, i32* %188, align 4
  %190 = load i16, i16* %15, align 2
  %191 = zext i16 %190 to i32
  %192 = call i32 @SiS_SetReg(i32 %189, i32 22, i32 %191)
  %193 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %194 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %193, i32 0, i32 7
  %195 = load i16, i16* %194, align 2
  store i16 %195, i16* %13, align 2
  %196 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %197 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @SetCRT2ToLCD, align 4
  %200 = load i32, i32* @SetCRT2ToLCDA, align 4
  %201 = or i32 %199, %200
  %202 = and i32 %198, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %239

204:                                              ; preds = %171
  %205 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %206 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %205, i32 0, i32 8
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @LCDPass11, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %204
  %212 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %213 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %212, i32 0, i32 9
  %214 = load i16, i16* %213, align 8
  store i16 %214, i16* %13, align 2
  br label %215

215:                                              ; preds = %211, %204
  %216 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %217 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @Panel_320x240_1, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %233, label %221

221:                                              ; preds = %215
  %222 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %223 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @Panel_320x240_2, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %233, label %227

227:                                              ; preds = %221
  %228 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %229 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @Panel_320x240_3, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %238

233:                                              ; preds = %227, %221, %215
  %234 = load i16, i16* %13, align 2
  %235 = zext i16 %234 to i32
  %236 = ashr i32 %235, 1
  %237 = trunc i32 %236 to i16
  store i16 %237, i16* %13, align 2
  br label %238

238:                                              ; preds = %233, %227
  br label %239

239:                                              ; preds = %238, %171
  %240 = load i16, i16* %13, align 2
  %241 = zext i16 %240 to i32
  %242 = load i16, i16* %12, align 2
  %243 = zext i16 %242 to i32
  %244 = add nsw i32 %243, %241
  %245 = trunc i32 %244 to i16
  store i16 %245, i16* %12, align 2
  %246 = load i16, i16* %12, align 2
  %247 = zext i16 %246 to i32
  %248 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %249 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %248, i32 0, i32 10
  %250 = load i16, i16* %249, align 2
  %251 = zext i16 %250 to i32
  %252 = icmp sge i32 %247, %251
  br i1 %252, label %253, label %262

253:                                              ; preds = %239
  %254 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %255 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %254, i32 0, i32 10
  %256 = load i16, i16* %255, align 2
  %257 = zext i16 %256 to i32
  %258 = load i16, i16* %12, align 2
  %259 = zext i16 %258 to i32
  %260 = sub nsw i32 %259, %257
  %261 = trunc i32 %260 to i16
  store i16 %261, i16* %12, align 2
  br label %262

262:                                              ; preds = %253, %239
  %263 = load i16, i16* %12, align 2
  store i16 %263, i16* %15, align 2
  %264 = load i16, i16* %15, align 2
  %265 = zext i16 %264 to i32
  %266 = and i32 %265, 7
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %273

268:                                              ; preds = %262
  %269 = load i16, i16* %15, align 2
  %270 = zext i16 %269 to i32
  %271 = add nsw i32 %270, 8
  %272 = trunc i32 %271 to i16
  store i16 %272, i16* %15, align 2
  br label %273

273:                                              ; preds = %268, %262
  %274 = load i16, i16* %15, align 2
  %275 = zext i16 %274 to i32
  %276 = ashr i32 %275, 3
  %277 = trunc i32 %276 to i16
  store i16 %277, i16* %15, align 2
  %278 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %279 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %278, i32 0, i32 28
  %280 = load i32, i32* %279, align 4
  %281 = load i16, i16* %15, align 2
  %282 = zext i16 %281 to i32
  %283 = call i32 @SiS_SetReg(i32 %280, i32 23, i32 %282)
  %284 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %285 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %284, i32 0, i32 10
  %286 = load i16, i16* %285, align 2
  %287 = zext i16 %286 to i32
  %288 = load i16, i16* %13, align 2
  %289 = zext i16 %288 to i32
  %290 = sub nsw i32 %287, %289
  %291 = ashr i32 %290, 2
  %292 = trunc i32 %291 to i16
  store i16 %292, i16* %14, align 2
  %293 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %294 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @SetCRT2ToLCD, align 4
  %297 = load i32, i32* @SetCRT2ToLCDA, align 4
  %298 = or i32 %296, %297
  %299 = and i32 %295, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %320

301:                                              ; preds = %273
  %302 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %303 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %302, i32 0, i32 8
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @LCDPass11, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %319, label %308

308:                                              ; preds = %301
  %309 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %310 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %309, i32 0, i32 11
  %311 = load i32, i32* %310, align 4
  %312 = icmp ne i32 %311, 999
  br i1 %312, label %313, label %318

313:                                              ; preds = %308
  %314 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %315 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %314, i32 0, i32 11
  %316 = load i32, i32* %315, align 4
  %317 = trunc i32 %316 to i16
  store i16 %317, i16* %14, align 2
  br label %318

318:                                              ; preds = %313, %308
  br label %319

319:                                              ; preds = %318, %301
  br label %320

320:                                              ; preds = %319, %273
  %321 = load i16, i16* %12, align 2
  %322 = zext i16 %321 to i32
  %323 = load i16, i16* %14, align 2
  %324 = zext i16 %323 to i32
  %325 = add nsw i32 %324, %322
  %326 = trunc i32 %325 to i16
  store i16 %326, i16* %14, align 2
  %327 = load i16, i16* %14, align 2
  %328 = zext i16 %327 to i32
  %329 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %330 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %329, i32 0, i32 10
  %331 = load i16, i16* %330, align 2
  %332 = zext i16 %331 to i32
  %333 = icmp sge i32 %328, %332
  br i1 %333, label %334, label %343

334:                                              ; preds = %320
  %335 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %336 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %335, i32 0, i32 10
  %337 = load i16, i16* %336, align 2
  %338 = zext i16 %337 to i32
  %339 = load i16, i16* %14, align 2
  %340 = zext i16 %339 to i32
  %341 = sub nsw i32 %340, %338
  %342 = trunc i32 %341 to i16
  store i16 %342, i16* %14, align 2
  br label %343

343:                                              ; preds = %334, %320
  %344 = load i16, i16* %14, align 2
  %345 = zext i16 %344 to i32
  %346 = ashr i32 %345, 3
  %347 = and i32 %346, 255
  %348 = trunc i32 %347 to i16
  store i16 %348, i16* %15, align 2
  %349 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %350 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %349, i32 0, i32 4
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* @SetCRT2ToLCD, align 4
  %353 = load i32, i32* @SetCRT2ToLCDA, align 4
  %354 = or i32 %352, %353
  %355 = and i32 %351, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %377

357:                                              ; preds = %343
  %358 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %359 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %358, i32 0, i32 32
  %360 = load i64, i64* %359, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %376

362:                                              ; preds = %357
  %363 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %364 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %363, i32 0, i32 5
  %365 = load i32, i32* %364, align 4
  %366 = icmp eq i32 %365, 130
  br i1 %366, label %367, label %375

367:                                              ; preds = %362
  %368 = load i16, i16* %6, align 2
  %369 = zext i16 %368 to i32
  switch i32 %369, label %374 [
    i32 4, label %370
    i32 5, label %370
    i32 13, label %370
    i32 16, label %371
    i32 19, label %372
    i32 64, label %373
    i32 65, label %373
    i32 79, label %373
    i32 67, label %373
    i32 68, label %373
    i32 98, label %373
    i32 86, label %373
    i32 83, label %373
    i32 93, label %373
    i32 94, label %373
  ]

370:                                              ; preds = %367, %367, %367
  store i16 86, i16* %15, align 2
  br label %374

371:                                              ; preds = %367
  store i16 96, i16* %15, align 2
  br label %374

372:                                              ; preds = %367
  store i16 95, i16* %15, align 2
  br label %374

373:                                              ; preds = %367, %367, %367, %367, %367, %367, %367, %367, %367, %367
  store i16 84, i16* %15, align 2
  br label %374

374:                                              ; preds = %367, %373, %372, %371, %370
  br label %375

375:                                              ; preds = %374, %362
  br label %376

376:                                              ; preds = %375, %357
  br label %377

377:                                              ; preds = %376, %343
  %378 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %379 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %378, i32 0, i32 28
  %380 = load i32, i32* %379, align 4
  %381 = load i16, i16* %15, align 2
  %382 = zext i16 %381 to i32
  %383 = call i32 @SiS_SetReg(i32 %380, i32 20, i32 %382)
  %384 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %385 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %384, i32 0, i32 4
  %386 = load i32, i32* %385, align 8
  %387 = load i32, i32* @SetCRT2ToLCD, align 4
  %388 = load i32, i32* @SetCRT2ToLCDA, align 4
  %389 = or i32 %387, %388
  %390 = and i32 %386, %389
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %443

392:                                              ; preds = %377
  %393 = load i16, i16* %15, align 2
  %394 = zext i16 %393 to i32
  %395 = add nsw i32 %394, 2
  %396 = trunc i32 %395 to i16
  store i16 %396, i16* %15, align 2
  %397 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %398 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %397, i32 0, i32 8
  %399 = load i32, i32* %398, align 4
  %400 = load i32, i32* @LCDPass11, align 4
  %401 = and i32 %399, %400
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %442, label %403

403:                                              ; preds = %392
  %404 = load i16, i16* %15, align 2
  %405 = zext i16 %404 to i32
  %406 = add nsw i32 %405, 8
  %407 = trunc i32 %406 to i16
  store i16 %407, i16* %15, align 2
  %408 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %409 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %408, i32 0, i32 12
  %410 = load i32, i32* %409, align 8
  %411 = icmp ne i32 %410, 999
  br i1 %411, label %412, label %441

412:                                              ; preds = %403
  %413 = load i16, i16* %14, align 2
  %414 = zext i16 %413 to i32
  %415 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %416 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %415, i32 0, i32 12
  %417 = load i32, i32* %416, align 8
  %418 = add nsw i32 %414, %417
  %419 = trunc i32 %418 to i16
  store i16 %419, i16* %15, align 2
  %420 = load i16, i16* %15, align 2
  %421 = zext i16 %420 to i32
  %422 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %423 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %422, i32 0, i32 10
  %424 = load i16, i16* %423, align 2
  %425 = zext i16 %424 to i32
  %426 = icmp sge i32 %421, %425
  br i1 %426, label %427, label %436

427:                                              ; preds = %412
  %428 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %429 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %428, i32 0, i32 10
  %430 = load i16, i16* %429, align 2
  %431 = zext i16 %430 to i32
  %432 = load i16, i16* %15, align 2
  %433 = zext i16 %432 to i32
  %434 = sub nsw i32 %433, %431
  %435 = trunc i32 %434 to i16
  store i16 %435, i16* %15, align 2
  br label %436

436:                                              ; preds = %427, %412
  %437 = load i16, i16* %15, align 2
  %438 = zext i16 %437 to i32
  %439 = ashr i32 %438, 3
  %440 = trunc i32 %439 to i16
  store i16 %440, i16* %15, align 2
  br label %441

441:                                              ; preds = %436, %403
  br label %442

442:                                              ; preds = %441, %392
  br label %448

443:                                              ; preds = %377
  %444 = load i16, i16* %15, align 2
  %445 = zext i16 %444 to i32
  %446 = add nsw i32 %445, 10
  %447 = trunc i32 %446 to i16
  store i16 %447, i16* %15, align 2
  br label %448

448:                                              ; preds = %443, %442
  %449 = load i16, i16* %15, align 2
  %450 = zext i16 %449 to i32
  %451 = and i32 %450, 31
  %452 = trunc i32 %451 to i16
  store i16 %452, i16* %15, align 2
  %453 = load i16, i16* %14, align 2
  %454 = zext i16 %453 to i32
  %455 = and i32 %454, 7
  %456 = shl i32 %455, 5
  %457 = load i16, i16* %15, align 2
  %458 = zext i16 %457 to i32
  %459 = or i32 %458, %456
  %460 = trunc i32 %459 to i16
  store i16 %460, i16* %15, align 2
  %461 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %462 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %461, i32 0, i32 28
  %463 = load i32, i32* %462, align 4
  %464 = load i16, i16* %15, align 2
  %465 = zext i16 %464 to i32
  %466 = call i32 @SiS_SetReg(i32 %463, i32 21, i32 %465)
  %467 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %468 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %467, i32 0, i32 13
  %469 = load i16, i16* %468, align 4
  store i16 %469, i16* %12, align 2
  %470 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %471 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %470, i32 0, i32 4
  %472 = load i32, i32* %471, align 8
  %473 = load i32, i32* @SetCRT2ToLCD, align 4
  %474 = load i32, i32* @SetCRT2ToLCDA, align 4
  %475 = or i32 %473, %474
  %476 = and i32 %472, %475
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %490

478:                                              ; preds = %448
  %479 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %480 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %479, i32 0, i32 8
  %481 = load i32, i32* %480, align 4
  %482 = load i32, i32* @LCDPass11, align 4
  %483 = and i32 %481, %482
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %489, label %485

485:                                              ; preds = %478
  %486 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %487 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %486, i32 0, i32 14
  %488 = load i16, i16* %487, align 2
  store i16 %488, i16* %12, align 2
  br label %489

489:                                              ; preds = %485, %478
  br label %490

490:                                              ; preds = %489, %448
  %491 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %492 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %491, i32 0, i32 15
  %493 = load i16, i16* %492, align 8
  %494 = zext i16 %493 to i32
  %495 = load i16, i16* %12, align 2
  %496 = zext i16 %495 to i32
  %497 = add nsw i32 %494, %496
  %498 = trunc i32 %497 to i16
  store i16 %498, i16* %13, align 2
  %499 = load i16, i16* %13, align 2
  %500 = zext i16 %499 to i32
  %501 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %502 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %501, i32 0, i32 16
  %503 = load i16, i16* %502, align 2
  %504 = zext i16 %503 to i32
  %505 = icmp sge i32 %500, %504
  br i1 %505, label %506, label %515

506:                                              ; preds = %490
  %507 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %508 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %507, i32 0, i32 16
  %509 = load i16, i16* %508, align 2
  %510 = zext i16 %509 to i32
  %511 = load i16, i16* %13, align 2
  %512 = zext i16 %511 to i32
  %513 = sub nsw i32 %512, %510
  %514 = trunc i32 %513 to i16
  store i16 %514, i16* %13, align 2
  br label %515

515:                                              ; preds = %506, %490
  %516 = load i16, i16* %13, align 2
  store i16 %516, i16* %11, align 2
  %517 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %518 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %517, i32 0, i32 17
  %519 = load i16, i16* %518, align 4
  %520 = zext i16 %519 to i32
  %521 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %522 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %521, i32 0, i32 13
  %523 = load i16, i16* %522, align 4
  %524 = zext i16 %523 to i32
  %525 = sub nsw i32 %520, %524
  %526 = trunc i32 %525 to i16
  store i16 %526, i16* %14, align 2
  %527 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %528 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %527, i32 0, i32 3
  %529 = load i64, i64* %528, align 8
  %530 = load i64, i64* @SIS_315H, align 8
  %531 = icmp slt i64 %529, %530
  br i1 %531, label %532, label %561

532:                                              ; preds = %515
  %533 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %534 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %533, i32 0, i32 4
  %535 = load i32, i32* %534, align 8
  %536 = load i32, i32* @SetCRT2ToLCD, align 4
  %537 = load i32, i32* @SetCRT2ToLCDA, align 4
  %538 = or i32 %536, %537
  %539 = and i32 %535, %538
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %541, label %560

541:                                              ; preds = %532
  %542 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %543 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %542, i32 0, i32 8
  %544 = load i32, i32* %543, align 4
  %545 = load i32, i32* @LCDPass11, align 4
  %546 = and i32 %544, %545
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %559, label %548

548:                                              ; preds = %541
  %549 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %550 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %549, i32 0, i32 17
  %551 = load i16, i16* %550, align 4
  %552 = zext i16 %551 to i32
  %553 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %554 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %553, i32 0, i32 14
  %555 = load i16, i16* %554, align 2
  %556 = zext i16 %555 to i32
  %557 = sub nsw i32 %552, %556
  %558 = trunc i32 %557 to i16
  store i16 %558, i16* %14, align 2
  br label %559

559:                                              ; preds = %548, %541
  br label %560

560:                                              ; preds = %559, %532
  br label %561

561:                                              ; preds = %560, %515
  %562 = load i32, i32* %20, align 4
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %564, label %569

564:                                              ; preds = %561
  %565 = load i16, i16* %14, align 2
  %566 = zext i16 %565 to i32
  %567 = ashr i32 %566, 1
  %568 = trunc i32 %567 to i16
  store i16 %568, i16* %14, align 2
  br label %574

569:                                              ; preds = %561
  %570 = load i16, i16* %14, align 2
  %571 = zext i16 %570 to i32
  %572 = ashr i32 %571, 2
  %573 = trunc i32 %572 to i16
  store i16 %573, i16* %14, align 2
  br label %574

574:                                              ; preds = %569, %564
  %575 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %576 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %575, i32 0, i32 4
  %577 = load i32, i32* %576, align 8
  %578 = load i32, i32* @SetCRT2ToLCD, align 4
  %579 = load i32, i32* @SetCRT2ToLCDA, align 4
  %580 = or i32 %578, %579
  %581 = and i32 %577, %580
  %582 = icmp ne i32 %581, 0
  br i1 %582, label %583, label %612

583:                                              ; preds = %574
  %584 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %585 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %584, i32 0, i32 8
  %586 = load i32, i32* %585, align 4
  %587 = load i32, i32* @LCDPass11, align 4
  %588 = and i32 %586, %587
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %612, label %590

590:                                              ; preds = %583
  %591 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %592 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %591, i32 0, i32 18
  %593 = load i32, i32* %592, align 8
  %594 = icmp ne i32 %593, 999
  br i1 %594, label %595, label %612

595:                                              ; preds = %590
  %596 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %597 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %596, i32 0, i32 18
  %598 = load i32, i32* %597, align 8
  %599 = trunc i32 %598 to i16
  store i16 %599, i16* %14, align 2
  %600 = load i16, i16* %14, align 2
  %601 = zext i16 %600 to i32
  %602 = load i16, i16* %13, align 2
  %603 = zext i16 %602 to i32
  %604 = add nsw i32 %603, %601
  %605 = trunc i32 %604 to i16
  store i16 %605, i16* %13, align 2
  %606 = load i32, i32* %21, align 4
  %607 = icmp ne i32 %606, 0
  br i1 %607, label %608, label %611

608:                                              ; preds = %595
  %609 = load i16, i16* %13, align 2
  %610 = add i16 %609, 1
  store i16 %610, i16* %13, align 2
  br label %611

611:                                              ; preds = %608, %595
  br label %635

612:                                              ; preds = %590, %583, %574
  %613 = load i16, i16* %14, align 2
  %614 = zext i16 %613 to i32
  %615 = load i16, i16* %13, align 2
  %616 = zext i16 %615 to i32
  %617 = add nsw i32 %616, %614
  %618 = trunc i32 %617 to i16
  store i16 %618, i16* %13, align 2
  %619 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %620 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %619, i32 0, i32 3
  %621 = load i64, i64* %620, align 8
  %622 = load i64, i64* @SIS_315H, align 8
  %623 = icmp slt i64 %621, %622
  br i1 %623, label %624, label %627

624:                                              ; preds = %612
  %625 = load i16, i16* %13, align 2
  %626 = add i16 %625, 1
  store i16 %626, i16* %13, align 2
  br label %634

627:                                              ; preds = %612
  %628 = load i32, i32* %21, align 4
  %629 = icmp ne i32 %628, 0
  br i1 %629, label %630, label %633

630:                                              ; preds = %627
  %631 = load i16, i16* %13, align 2
  %632 = add i16 %631, 1
  store i16 %632, i16* %13, align 2
  br label %633

633:                                              ; preds = %630, %627
  br label %634

634:                                              ; preds = %633, %624
  br label %635

635:                                              ; preds = %634, %611
  %636 = load i16, i16* %13, align 2
  %637 = zext i16 %636 to i32
  %638 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %639 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %638, i32 0, i32 16
  %640 = load i16, i16* %639, align 2
  %641 = zext i16 %640 to i32
  %642 = icmp sge i32 %637, %641
  br i1 %642, label %643, label %652

643:                                              ; preds = %635
  %644 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %645 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %644, i32 0, i32 16
  %646 = load i16, i16* %645, align 2
  %647 = zext i16 %646 to i32
  %648 = load i16, i16* %13, align 2
  %649 = zext i16 %648 to i32
  %650 = sub nsw i32 %649, %647
  %651 = trunc i32 %650 to i16
  store i16 %651, i16* %13, align 2
  br label %652

652:                                              ; preds = %643, %635
  %653 = load i16, i16* %13, align 2
  %654 = zext i16 %653 to i32
  %655 = and i32 %654, 255
  %656 = trunc i32 %655 to i16
  store i16 %656, i16* %15, align 2
  %657 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %658 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %657, i32 0, i32 32
  %659 = load i64, i64* %658, align 8
  %660 = icmp ne i64 %659, 0
  br i1 %660, label %661, label %673

661:                                              ; preds = %652
  %662 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %663 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %662, i32 0, i32 5
  %664 = load i32, i32* %663, align 4
  %665 = icmp eq i32 %664, 130
  br i1 %665, label %666, label %672

666:                                              ; preds = %661
  %667 = load i16, i16* %6, align 2
  %668 = zext i16 %667 to i32
  %669 = icmp eq i32 %668, 16
  br i1 %669, label %670, label %671

670:                                              ; preds = %666
  store i16 169, i16* %15, align 2
  br label %671

671:                                              ; preds = %670, %666
  br label %672

672:                                              ; preds = %671, %661
  br label %673

673:                                              ; preds = %672, %652
  %674 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %675 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %674, i32 0, i32 28
  %676 = load i32, i32* %675, align 4
  %677 = load i16, i16* %15, align 2
  %678 = zext i16 %677 to i32
  %679 = call i32 @SiS_SetReg(i32 %676, i32 24, i32 %678)
  %680 = load i16, i16* %14, align 2
  %681 = zext i16 %680 to i32
  %682 = ashr i32 %681, 3
  %683 = trunc i32 %682 to i16
  store i16 %683, i16* %14, align 2
  %684 = load i16, i16* %14, align 2
  %685 = add i16 %684, 1
  store i16 %685, i16* %14, align 2
  %686 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %687 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %686, i32 0, i32 4
  %688 = load i32, i32* %687, align 8
  %689 = load i32, i32* @SetCRT2ToLCD, align 4
  %690 = load i32, i32* @SetCRT2ToLCDA, align 4
  %691 = or i32 %689, %690
  %692 = and i32 %688, %691
  %693 = icmp ne i32 %692, 0
  br i1 %693, label %694, label %713

694:                                              ; preds = %673
  %695 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %696 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %695, i32 0, i32 8
  %697 = load i32, i32* %696, align 4
  %698 = load i32, i32* @LCDPass11, align 4
  %699 = and i32 %697, %698
  %700 = icmp ne i32 %699, 0
  br i1 %700, label %712, label %701

701:                                              ; preds = %694
  %702 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %703 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %702, i32 0, i32 19
  %704 = load i32, i32* %703, align 4
  %705 = icmp ne i32 %704, 999
  br i1 %705, label %706, label %711

706:                                              ; preds = %701
  %707 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %708 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %707, i32 0, i32 19
  %709 = load i32, i32* %708, align 4
  %710 = trunc i32 %709 to i16
  store i16 %710, i16* %14, align 2
  br label %711

711:                                              ; preds = %706, %701
  br label %712

712:                                              ; preds = %711, %694
  br label %713

713:                                              ; preds = %712, %673
  %714 = load i16, i16* %13, align 2
  %715 = zext i16 %714 to i32
  %716 = load i16, i16* %14, align 2
  %717 = zext i16 %716 to i32
  %718 = add nsw i32 %717, %715
  %719 = trunc i32 %718 to i16
  store i16 %719, i16* %14, align 2
  %720 = load i16, i16* %14, align 2
  %721 = zext i16 %720 to i32
  %722 = and i32 %721, 15
  %723 = trunc i32 %722 to i16
  store i16 %723, i16* %15, align 2
  %724 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %725 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %724, i32 0, i32 28
  %726 = load i32, i32* %725, align 4
  %727 = load i16, i16* %15, align 2
  %728 = call i32 @SiS_SetRegANDOR(i32 %726, i32 25, i32 240, i16 zeroext %727)
  %729 = load i16, i16* %13, align 2
  %730 = zext i16 %729 to i32
  %731 = ashr i32 %730, 8
  %732 = and i32 %731, 7
  %733 = shl i32 %732, 3
  %734 = trunc i32 %733 to i16
  store i16 %734, i16* %15, align 2
  %735 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %736 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %735, i32 0, i32 29
  %737 = load i64, i64* %736, align 8
  %738 = icmp ne i64 %737, 0
  br i1 %738, label %744, label %739

739:                                              ; preds = %713
  %740 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %741 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %740, i32 0, i32 30
  %742 = load i64, i64* %741, align 8
  %743 = icmp ne i64 %742, 0
  br i1 %743, label %744, label %766

744:                                              ; preds = %739, %713
  %745 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %746 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %745, i32 0, i32 7
  %747 = load i16, i16* %746, align 2
  %748 = zext i16 %747 to i32
  %749 = icmp ne i32 %748, 640
  br i1 %749, label %750, label %765

750:                                              ; preds = %744
  %751 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %752 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %751, i32 0, i32 13
  %753 = load i16, i16* %752, align 4
  %754 = zext i16 %753 to i32
  %755 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %756 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %755, i32 0, i32 20
  %757 = load i32, i32* %756, align 8
  %758 = icmp ne i32 %754, %757
  br i1 %758, label %759, label %764

759:                                              ; preds = %750
  %760 = load i16, i16* %15, align 2
  %761 = zext i16 %760 to i32
  %762 = or i32 %761, 64
  %763 = trunc i32 %762 to i16
  store i16 %763, i16* %15, align 2
  br label %764

764:                                              ; preds = %759, %750
  br label %765

765:                                              ; preds = %764, %744
  br label %781

766:                                              ; preds = %739
  %767 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %768 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %767, i32 0, i32 13
  %769 = load i16, i16* %768, align 4
  %770 = zext i16 %769 to i32
  %771 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %772 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %771, i32 0, i32 20
  %773 = load i32, i32* %772, align 8
  %774 = icmp ne i32 %770, %773
  br i1 %774, label %775, label %780

775:                                              ; preds = %766
  %776 = load i16, i16* %15, align 2
  %777 = zext i16 %776 to i32
  %778 = or i32 %777, 64
  %779 = trunc i32 %778 to i16
  store i16 %779, i16* %15, align 2
  br label %780

780:                                              ; preds = %775, %766
  br label %781

781:                                              ; preds = %780, %765
  %782 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %783 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %782, i32 0, i32 21
  %784 = load i32, i32* %783, align 4
  %785 = load i32, i32* @EnableLVDSDDA, align 4
  %786 = and i32 %784, %785
  %787 = icmp ne i32 %786, 0
  br i1 %787, label %788, label %793

788:                                              ; preds = %781
  %789 = load i16, i16* %15, align 2
  %790 = zext i16 %789 to i32
  %791 = or i32 %790, 64
  %792 = trunc i32 %791 to i16
  store i16 %792, i16* %15, align 2
  br label %793

793:                                              ; preds = %788, %781
  store i16 135, i16* %13, align 2
  %794 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %795 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %794, i32 0, i32 3
  %796 = load i64, i64* %795, align 8
  %797 = load i64, i64* @SIS_315H, align 8
  %798 = icmp sge i64 %796, %797
  br i1 %798, label %804, label %799

799:                                              ; preds = %793
  %800 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %801 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %800, i32 0, i32 22
  %802 = load i32, i32* %801, align 8
  %803 = icmp sge i32 %802, 48
  br i1 %803, label %804, label %871

804:                                              ; preds = %799, %793
  store i16 7, i16* %13, align 2
  %805 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %806 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %805, i32 0, i32 23
  %807 = load i32, i32* %806, align 4
  %808 = icmp eq i32 %807, 1
  br i1 %808, label %809, label %829

809:                                              ; preds = %804
  %810 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %811 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %810, i32 0, i32 4
  %812 = load i32, i32* %811, align 8
  %813 = load i32, i32* @SetCRT2ToTV, align 4
  %814 = and i32 %812, %813
  %815 = icmp ne i32 %814, 0
  br i1 %815, label %816, label %829

816:                                              ; preds = %809
  %817 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %818 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %817, i32 0, i32 28
  %819 = load i32, i32* %818, align 4
  %820 = call i32 @SiS_GetReg(i32 %819, i32 0)
  %821 = and i32 %820, 3
  %822 = icmp ne i32 %821, 0
  br i1 %822, label %823, label %828

823:                                              ; preds = %816
  %824 = load i16, i16* %15, align 2
  %825 = zext i16 %824 to i32
  %826 = or i32 %825, 128
  %827 = trunc i32 %826 to i16
  store i16 %827, i16* %15, align 2
  br label %828

828:                                              ; preds = %823, %816
  br label %829

829:                                              ; preds = %828, %809, %804
  %830 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %831 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %830, i32 0, i32 8
  %832 = load i32, i32* %831, align 4
  %833 = load i32, i32* @LCDRGB18Bit, align 4
  %834 = and i32 %832, %833
  %835 = icmp ne i32 %834, 0
  br i1 %835, label %836, label %870

836:                                              ; preds = %829
  %837 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %838 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %837, i32 0, i32 4
  %839 = load i32, i32* %838, align 8
  %840 = load i32, i32* @SetCRT2ToLCDA, align 4
  %841 = and i32 %839, %840
  %842 = icmp ne i32 %841, 0
  br i1 %842, label %843, label %856

843:                                              ; preds = %836
  %844 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %845 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %844, i32 0, i32 34
  %846 = load i32, i32* %845, align 4
  %847 = call i32 @SiS_GetReg(i32 %846, i32 6)
  %848 = and i32 %847, 16
  %849 = icmp ne i32 %848, 0
  br i1 %849, label %850, label %855

850:                                              ; preds = %843
  %851 = load i16, i16* %15, align 2
  %852 = zext i16 %851 to i32
  %853 = or i32 %852, 128
  %854 = trunc i32 %853 to i16
  store i16 %854, i16* %15, align 2
  br label %855

855:                                              ; preds = %850, %843
  br label %869

856:                                              ; preds = %836
  %857 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %858 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %857, i32 0, i32 28
  %859 = load i32, i32* %858, align 4
  %860 = call i32 @SiS_GetReg(i32 %859, i32 0)
  %861 = and i32 %860, 1
  %862 = icmp ne i32 %861, 0
  br i1 %862, label %863, label %868

863:                                              ; preds = %856
  %864 = load i16, i16* %15, align 2
  %865 = zext i16 %864 to i32
  %866 = or i32 %865, 128
  %867 = trunc i32 %866 to i16
  store i16 %867, i16* %15, align 2
  br label %868

868:                                              ; preds = %863, %856
  br label %869

869:                                              ; preds = %868, %855
  br label %870

870:                                              ; preds = %869, %829
  br label %871

871:                                              ; preds = %870, %799
  %872 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %873 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %872, i32 0, i32 28
  %874 = load i32, i32* %873, align 4
  %875 = load i16, i16* %13, align 2
  %876 = zext i16 %875 to i32
  %877 = load i16, i16* %15, align 2
  %878 = call i32 @SiS_SetRegANDOR(i32 %874, i32 26, i32 %876, i16 zeroext %877)
  %879 = load i16, i16* %11, align 2
  store i16 %879, i16* %13, align 2
  %880 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %881 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %880, i32 0, i32 15
  %882 = load i16, i16* %881, align 8
  store i16 %882, i16* %14, align 2
  %883 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %884 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %883, i32 0, i32 4
  %885 = load i32, i32* %884, align 8
  %886 = load i32, i32* @SetCRT2ToLCD, align 4
  %887 = load i32, i32* @SetCRT2ToLCDA, align 4
  %888 = or i32 %886, %887
  %889 = and i32 %885, %888
  %890 = icmp ne i32 %889, 0
  br i1 %890, label %891, label %984

891:                                              ; preds = %871
  %892 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %893 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %892, i32 0, i32 5
  %894 = load i32, i32* %893, align 4
  switch i32 %894, label %983 [
    i32 129, label %895
    i32 128, label %905
    i32 131, label %923
    i32 130, label %958
  ]

895:                                              ; preds = %891
  %896 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %897 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %896, i32 0, i32 13
  %898 = load i16, i16* %897, align 4
  %899 = zext i16 %898 to i32
  %900 = sub nsw i32 %899, 1
  %901 = trunc i32 %900 to i16
  store i16 %901, i16* %13, align 2
  %902 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %903 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %902, i32 0, i32 13
  %904 = load i16, i16* %903, align 4
  store i16 %904, i16* %14, align 2
  br label %983

905:                                              ; preds = %891
  %906 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %907 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %906, i32 0, i32 4
  %908 = load i32, i32* %907, align 8
  %909 = load i32, i32* @SetInSlaveMode, align 4
  %910 = and i32 %908, %909
  %911 = icmp ne i32 %910, 0
  br i1 %911, label %922, label %912

912:                                              ; preds = %905
  %913 = load i16, i16* %10, align 2
  %914 = zext i16 %913 to i32
  %915 = load i16, i16* @SIS_RI_800x600, align 2
  %916 = zext i16 %915 to i32
  %917 = icmp eq i32 %914, %916
  br i1 %917, label %918, label %921

918:                                              ; preds = %912
  %919 = load i16, i16* %14, align 2
  %920 = add i16 %919, 1
  store i16 %920, i16* %14, align 2
  br label %921

921:                                              ; preds = %918, %912
  br label %922

922:                                              ; preds = %921, %905
  br label %983

923:                                              ; preds = %891
  %924 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %925 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %924, i32 0, i32 4
  %926 = load i32, i32* %925, align 8
  %927 = load i32, i32* @SetInSlaveMode, align 4
  %928 = and i32 %926, %927
  %929 = icmp ne i32 %928, 0
  br i1 %929, label %957, label %930

930:                                              ; preds = %923
  %931 = load i16, i16* %10, align 2
  %932 = zext i16 %931 to i32
  %933 = load i16, i16* @SIS_RI_1024x600, align 2
  %934 = zext i16 %933 to i32
  %935 = icmp eq i32 %932, %934
  br i1 %935, label %936, label %939

936:                                              ; preds = %930
  %937 = load i16, i16* %14, align 2
  %938 = add i16 %937, 1
  store i16 %938, i16* %14, align 2
  br label %939

939:                                              ; preds = %936, %930
  %940 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %941 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %940, i32 0, i32 8
  %942 = load i32, i32* %941, align 4
  %943 = load i32, i32* @DontExpandLCD, align 4
  %944 = and i32 %942, %943
  %945 = icmp ne i32 %944, 0
  br i1 %945, label %946, label %956

946:                                              ; preds = %939
  %947 = load i16, i16* %10, align 2
  %948 = zext i16 %947 to i32
  %949 = load i16, i16* @SIS_RI_800x600, align 2
  %950 = zext i16 %949 to i32
  %951 = icmp eq i32 %948, %950
  br i1 %951, label %952, label %955

952:                                              ; preds = %946
  %953 = load i16, i16* %14, align 2
  %954 = add i16 %953, 1
  store i16 %954, i16* %14, align 2
  br label %955

955:                                              ; preds = %952, %946
  br label %956

956:                                              ; preds = %955, %939
  br label %957

957:                                              ; preds = %956, %923
  br label %983

958:                                              ; preds = %891
  %959 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %960 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %959, i32 0, i32 3
  %961 = load i64, i64* %960, align 8
  %962 = load i64, i64* @SIS_315H, align 8
  %963 = icmp slt i64 %961, %962
  br i1 %963, label %964, label %982

964:                                              ; preds = %958
  %965 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %966 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %965, i32 0, i32 4
  %967 = load i32, i32* %966, align 8
  %968 = load i32, i32* @SetInSlaveMode, align 4
  %969 = and i32 %967, %968
  %970 = icmp ne i32 %969, 0
  br i1 %970, label %981, label %971

971:                                              ; preds = %964
  %972 = load i16, i16* %10, align 2
  %973 = zext i16 %972 to i32
  %974 = load i16, i16* @SIS_RI_1024x768, align 2
  %975 = zext i16 %974 to i32
  %976 = icmp eq i32 %973, %975
  br i1 %976, label %977, label %980

977:                                              ; preds = %971
  %978 = load i16, i16* %14, align 2
  %979 = add i16 %978, 1
  store i16 %979, i16* %14, align 2
  br label %980

980:                                              ; preds = %977, %971
  br label %981

981:                                              ; preds = %980, %964
  br label %982

982:                                              ; preds = %981, %958
  br label %983

983:                                              ; preds = %891, %982, %957, %922, %895
  br label %984

984:                                              ; preds = %983, %871
  %985 = load i16, i16* %13, align 2
  %986 = zext i16 %985 to i32
  %987 = ashr i32 %986, 8
  %988 = and i32 %987, 7
  %989 = shl i32 %988, 3
  %990 = trunc i32 %989 to i16
  store i16 %990, i16* %15, align 2
  %991 = load i16, i16* %14, align 2
  %992 = zext i16 %991 to i32
  %993 = ashr i32 %992, 8
  %994 = and i32 %993, 7
  %995 = load i16, i16* %15, align 2
  %996 = zext i16 %995 to i32
  %997 = or i32 %996, %994
  %998 = trunc i32 %997 to i16
  store i16 %998, i16* %15, align 2
  %999 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %1000 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %999, i32 0, i32 28
  %1001 = load i32, i32* %1000, align 4
  %1002 = load i16, i16* %15, align 2
  %1003 = zext i16 %1002 to i32
  %1004 = call i32 @SiS_SetReg(i32 %1001, i32 29, i32 %1003)
  %1005 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %1006 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %1005, i32 0, i32 28
  %1007 = load i32, i32* %1006, align 4
  %1008 = load i16, i16* %13, align 2
  %1009 = zext i16 %1008 to i32
  %1010 = call i32 @SiS_SetReg(i32 %1007, i32 28, i32 %1009)
  %1011 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %1012 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %1011, i32 0, i32 28
  %1013 = load i32, i32* %1012, align 4
  %1014 = load i16, i16* %14, align 2
  %1015 = zext i16 %1014 to i32
  %1016 = call i32 @SiS_SetReg(i32 %1013, i32 27, i32 %1015)
  %1017 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %1018 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %1017, i32 0, i32 3
  %1019 = load i64, i64* %1018, align 8
  %1020 = load i64, i64* @SIS_315H, align 8
  %1021 = icmp slt i64 %1019, %1020
  br i1 %1021, label %1022, label %1023

1022:                                             ; preds = %984
  br label %1024

1023:                                             ; preds = %984
  br label %1024

1024:                                             ; preds = %1023, %1022
  %1025 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %1026 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %1025, i32 0, i32 24
  %1027 = load i32, i32* %1026, align 8
  store i32 %1027, i32* %16, align 4
  %1028 = load i32, i32* %22, align 4
  %1029 = icmp ne i32 %1028, 0
  br i1 %1029, label %1030, label %1041

1030:                                             ; preds = %1024
  %1031 = load i16, i16* %9, align 2
  %1032 = zext i16 %1031 to i32
  %1033 = load i16, i16* @HalfDCLK, align 2
  %1034 = zext i16 %1033 to i32
  %1035 = and i32 %1032, %1034
  %1036 = icmp ne i32 %1035, 0
  br i1 %1036, label %1037, label %1040

1037:                                             ; preds = %1030
  %1038 = load i32, i32* %16, align 4
  %1039 = lshr i32 %1038, 1
  store i32 %1039, i32* %16, align 4
  br label %1040

1040:                                             ; preds = %1037, %1030
  br label %1041

1041:                                             ; preds = %1040, %1024
  %1042 = load i32, i32* %16, align 4
  %1043 = shl i32 %1042, 16
  store i32 %1043, i32* %17, align 4
  %1044 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %1045 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %1044, i32 0, i32 7
  %1046 = load i16, i16* %1045, align 2
  %1047 = zext i16 %1046 to i32
  %1048 = load i32, i32* %16, align 4
  %1049 = icmp eq i32 %1047, %1048
  br i1 %1049, label %1050, label %1051

1050:                                             ; preds = %1041
  store i32 65535, i32* %18, align 4
  br label %1076

1051:                                             ; preds = %1041
  %1052 = load i32, i32* %17, align 4
  %1053 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %1054 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %1053, i32 0, i32 7
  %1055 = load i16, i16* %1054, align 2
  %1056 = zext i16 %1055 to i32
  %1057 = udiv i32 %1052, %1056
  store i32 %1057, i32* %18, align 4
  %1058 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %1059 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %1058, i32 0, i32 3
  %1060 = load i64, i64* %1059, align 8
  %1061 = load i64, i64* @SIS_315H, align 8
  %1062 = icmp sge i64 %1060, %1061
  br i1 %1062, label %1063, label %1075

1063:                                             ; preds = %1051
  %1064 = load i32, i32* %17, align 4
  %1065 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %1066 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %1065, i32 0, i32 7
  %1067 = load i16, i16* %1066, align 2
  %1068 = zext i16 %1067 to i32
  %1069 = urem i32 %1064, %1068
  %1070 = icmp ne i32 %1069, 0
  br i1 %1070, label %1071, label %1074

1071:                                             ; preds = %1063
  %1072 = load i32, i32* %18, align 4
  %1073 = add i32 %1072, 1
  store i32 %1073, i32* %18, align 4
  br label %1074

1074:                                             ; preds = %1071, %1063
  br label %1075

1075:                                             ; preds = %1074, %1051
  br label %1076

1076:                                             ; preds = %1075, %1050
  %1077 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %1078 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %1077, i32 0, i32 3
  %1079 = load i64, i64* %1078, align 8
  %1080 = load i64, i64* @SIS_315H, align 8
  %1081 = icmp sge i64 %1079, %1080
  br i1 %1081, label %1082, label %1087

1082:                                             ; preds = %1076
  %1083 = load i32, i32* %17, align 4
  %1084 = load i32, i32* %18, align 4
  %1085 = udiv i32 %1083, %1084
  %1086 = sub i32 %1085, 1
  store i32 %1086, i32* %16, align 4
  br label %1095

1087:                                             ; preds = %1076
  %1088 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %1089 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %1088, i32 0, i32 25
  %1090 = load i32, i32* %1089, align 4
  %1091 = shl i32 %1090, 16
  %1092 = load i32, i32* %18, align 4
  %1093 = udiv i32 %1091, %1092
  %1094 = sub i32 %1093, 1
  store i32 %1094, i32* %16, align 4
  br label %1095

1095:                                             ; preds = %1087, %1082
  %1096 = load i32, i32* %18, align 4
  %1097 = shl i32 %1096, 16
  %1098 = load i32, i32* %16, align 4
  %1099 = and i32 %1098, 65535
  %1100 = or i32 %1097, %1099
  store i32 %1100, i32* %18, align 4
  %1101 = load i32, i32* %18, align 4
  %1102 = and i32 %1101, 255
  %1103 = trunc i32 %1102 to i16
  store i16 %1103, i16* %15, align 2
  %1104 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %1105 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %1104, i32 0, i32 28
  %1106 = load i32, i32* %1105, align 4
  %1107 = load i16, i16* %15, align 2
  %1108 = zext i16 %1107 to i32
  %1109 = call i32 @SiS_SetReg(i32 %1106, i32 31, i32 %1108)
  %1110 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %1111 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %1110, i32 0, i32 3
  %1112 = load i64, i64* %1111, align 8
  %1113 = load i64, i64* @SIS_315H, align 8
  %1114 = icmp sge i64 %1112, %1113
  br i1 %1114, label %1115, label %1126

1115:                                             ; preds = %1095
  %1116 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %1117 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %1116, i32 0, i32 13
  %1118 = load i16, i16* %1117, align 4
  %1119 = zext i16 %1118 to i32
  %1120 = shl i32 %1119, 18
  %1121 = load i32, i32* %19, align 4
  %1122 = udiv i32 %1120, %1121
  store i32 %1122, i32* %16, align 4
  %1123 = load i32, i32* %16, align 4
  %1124 = and i32 %1123, 65535
  %1125 = trunc i32 %1124 to i16
  store i16 %1125, i16* %13, align 2
  br label %1147

1126:                                             ; preds = %1095
  %1127 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %1128 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %1127, i32 0, i32 13
  %1129 = load i16, i16* %1128, align 4
  %1130 = zext i16 %1129 to i32
  %1131 = shl i32 %1130, 6
  store i32 %1131, i32* %16, align 4
  %1132 = load i32, i32* %19, align 4
  %1133 = and i32 %1132, 63
  %1134 = trunc i32 %1133 to i16
  store i16 %1134, i16* %13, align 2
  %1135 = load i16, i16* %13, align 2
  %1136 = zext i16 %1135 to i32
  %1137 = icmp eq i32 %1136, 0
  br i1 %1137, label %1138, label %1139

1138:                                             ; preds = %1126
  store i16 64, i16* %13, align 2
  br label %1139

1139:                                             ; preds = %1138, %1126
  %1140 = load i16, i16* %13, align 2
  %1141 = zext i16 %1140 to i32
  %1142 = load i32, i32* %16, align 4
  %1143 = udiv i32 %1142, %1141
  store i32 %1143, i32* %16, align 4
  %1144 = load i32, i32* %16, align 4
  %1145 = and i32 %1144, 65535
  %1146 = trunc i32 %1145 to i16
  store i16 %1146, i16* %13, align 2
  br label %1147

1147:                                             ; preds = %1139, %1115
  %1148 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %1149 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %1148, i32 0, i32 5
  %1150 = load i32, i32* %1149, align 4
  %1151 = icmp eq i32 %1150, 130
  br i1 %1151, label %1152, label %1155

1152:                                             ; preds = %1147
  %1153 = load i16, i16* %13, align 2
  %1154 = add i16 %1153, -1
  store i16 %1154, i16* %13, align 2
  br label %1155

1155:                                             ; preds = %1152, %1147
  %1156 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %1157 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %1156, i32 0, i32 21
  %1158 = load i32, i32* %1157, align 4
  %1159 = load i32, i32* @EnableLVDSDDA, align 4
  %1160 = and i32 %1158, %1159
  %1161 = icmp ne i32 %1160, 0
  br i1 %1161, label %1162, label %1181

1162:                                             ; preds = %1155
  %1163 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %1164 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %1163, i32 0, i32 29
  %1165 = load i64, i64* %1164, align 8
  %1166 = icmp ne i64 %1165, 0
  br i1 %1166, label %1173, label %1167

1167:                                             ; preds = %1162
  %1168 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %1169 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %1168, i32 0, i32 30
  %1170 = load i64, i64* %1169, align 8
  %1171 = icmp ne i64 %1170, 0
  br i1 %1171, label %1173, label %1172

1172:                                             ; preds = %1167
  store i16 1, i16* %13, align 2
  br label %1180

1173:                                             ; preds = %1167, %1162
  %1174 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %1175 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %1174, i32 0, i32 5
  %1176 = load i32, i32* %1175, align 4
  %1177 = icmp ne i32 %1176, 129
  br i1 %1177, label %1178, label %1179

1178:                                             ; preds = %1173
  store i16 1, i16* %13, align 2
  br label %1179

1179:                                             ; preds = %1178, %1173
  br label %1180

1180:                                             ; preds = %1179, %1172
  br label %1181

1181:                                             ; preds = %1180, %1155
  %1182 = load i16, i16* %13, align 2
  %1183 = zext i16 %1182 to i32
  %1184 = ashr i32 %1183, 8
  %1185 = and i32 %1184, 7
  %1186 = shl i32 %1185, 3
  %1187 = trunc i32 %1186 to i16
  store i16 %1187, i16* %15, align 2
  %1188 = load i16, i16* %15, align 2
  %1189 = zext i16 %1188 to i32
  %1190 = load i32, i32* %18, align 4
  %1191 = lshr i32 %1190, 8
  %1192 = and i32 %1191, 7
  %1193 = or i32 %1189, %1192
  %1194 = trunc i32 %1193 to i16
  store i16 %1194, i16* %15, align 2
  %1195 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %1196 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %1195, i32 0, i32 28
  %1197 = load i32, i32* %1196, align 4
  %1198 = load i16, i16* %15, align 2
  %1199 = zext i16 %1198 to i32
  %1200 = call i32 @SiS_SetReg(i32 %1197, i32 32, i32 %1199)
  %1201 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %1202 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %1201, i32 0, i32 28
  %1203 = load i32, i32* %1202, align 4
  %1204 = load i16, i16* %13, align 2
  %1205 = zext i16 %1204 to i32
  %1206 = call i32 @SiS_SetReg(i32 %1203, i32 33, i32 %1205)
  %1207 = load i32, i32* %18, align 4
  %1208 = lshr i32 %1207, 16
  store i32 %1208, i32* %18, align 4
  %1209 = load i32, i32* %22, align 4
  %1210 = icmp ne i32 %1209, 0
  br i1 %1210, label %1222, label %1211

1211:                                             ; preds = %1181
  %1212 = load i16, i16* %9, align 2
  %1213 = zext i16 %1212 to i32
  %1214 = load i16, i16* @HalfDCLK, align 2
  %1215 = zext i16 %1214 to i32
  %1216 = and i32 %1213, %1215
  %1217 = icmp ne i32 %1216, 0
  br i1 %1217, label %1218, label %1221

1218:                                             ; preds = %1211
  %1219 = load i32, i32* %18, align 4
  %1220 = lshr i32 %1219, 1
  store i32 %1220, i32* %18, align 4
  br label %1221

1221:                                             ; preds = %1218, %1211
  br label %1222

1222:                                             ; preds = %1221, %1181
  %1223 = load i32, i32* %18, align 4
  %1224 = and i32 %1223, 65280
  %1225 = lshr i32 %1224, 8
  %1226 = trunc i32 %1225 to i16
  store i16 %1226, i16* %15, align 2
  %1227 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %1228 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %1227, i32 0, i32 28
  %1229 = load i32, i32* %1228, align 4
  %1230 = load i16, i16* %15, align 2
  %1231 = zext i16 %1230 to i32
  %1232 = call i32 @SiS_SetReg(i32 %1229, i32 34, i32 %1231)
  %1233 = load i32, i32* %18, align 4
  %1234 = and i32 %1233, 255
  %1235 = trunc i32 %1234 to i16
  store i16 %1235, i16* %15, align 2
  %1236 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %1237 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %1236, i32 0, i32 28
  %1238 = load i32, i32* %1237, align 4
  %1239 = load i16, i16* %15, align 2
  %1240 = zext i16 %1239 to i32
  %1241 = call i32 @SiS_SetReg(i32 %1238, i32 35, i32 %1240)
  ret void
}

declare dso_local i32 @SiS_SetReg(i32, i32, i32) #1

declare dso_local i32 @SiS_SetRegANDOR(i32, i32, i32, i16 zeroext) #1

declare dso_local i32 @SiS_GetReg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
