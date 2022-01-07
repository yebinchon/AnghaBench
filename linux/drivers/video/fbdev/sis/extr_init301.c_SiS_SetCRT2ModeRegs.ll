; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_SetCRT2ModeRegs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_SetCRT2ModeRegs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i8*, i32, i64, i16, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64, i32 }

@SetCRT2ToLCDA = common dso_local global i32 0, align 4
@SIS_315H = common dso_local global i64 0, align 8
@DisableCRT2Display = common dso_local global i32 0, align 4
@VB_SISVB = common dso_local global i32 0, align 4
@SetInSlaveMode = common dso_local global i32 0, align 4
@SetCRT2ToRAMDAC = common dso_local global i32 0, align 4
@SetCRT2ToLCD = common dso_local global i32 0, align 4
@ModeVGA = common dso_local global i16 0, align 2
@VB_SIS301 = common dso_local global i32 0, align 4
@SetCRT2ToTV = common dso_local global i32 0, align 4
@TVSetYPbPr750p = common dso_local global i32 0, align 4
@TVSetYPbPr525p = common dso_local global i32 0, align 4
@TVRPLLDIV2XO = common dso_local global i32 0, align 4
@VB_SIS30xBLV = common dso_local global i32 0, align 4
@VB_SIS30xCLV = common dso_local global i32 0, align 4
@CRT2Mode = common dso_local global i16 0, align 2
@DriverMode = common dso_local global i32 0, align 4
@IS_SIS65x = common dso_local global i32 0, align 4
@IS_SIS740 = common dso_local global i64 0, align 8
@SIS_550 = common dso_local global i64 0, align 8
@SIS_661 = common dso_local global i64 0, align 8
@VB_NoLCD = common dso_local global i32 0, align 4
@VB_SISLVDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i16)* @SiS_SetCRT2ModeRegs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetCRT2ModeRegs(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.SiS_Private*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  store i16 0, i16* %10, align 2
  %12 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %13 = load i16, i16* %5, align 2
  %14 = load i16, i16* %6, align 2
  %15 = call zeroext i16 @SiS_GetModeFlag(%struct.SiS_Private* %12, i16 zeroext %13, i16 zeroext %14)
  store i16 %15, i16* %9, align 2
  %16 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %17 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SetCRT2ToLCDA, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %24 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %23, i32 0, i32 11
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @SiS_SetRegANDOR(i32 %25, i32 0, i16 zeroext 175, i16 zeroext 64)
  %27 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %28 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %27, i32 0, i32 11
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @SiS_SetRegAND(i32 %29, i32 46, i32 247)
  br label %338

31:                                               ; preds = %3
  store i16 0, i16* %7, align 2
  store i16 4, i16* %8, align 2
  br label %32

32:                                               ; preds = %43, %31
  %33 = load i16, i16* %7, align 2
  %34 = zext i16 %33 to i32
  %35 = icmp slt i32 %34, 3
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %38 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %37, i32 0, i32 11
  %39 = load i32, i32* %38, align 8
  %40 = load i16, i16* %8, align 2
  %41 = zext i16 %40 to i32
  %42 = call i32 @SiS_SetReg(i32 %39, i32 %41, i16 zeroext 0)
  br label %43

43:                                               ; preds = %36
  %44 = load i16, i16* %7, align 2
  %45 = add i16 %44, 1
  store i16 %45, i16* %7, align 2
  %46 = load i16, i16* %8, align 2
  %47 = add i16 %46, 1
  store i16 %47, i16* %8, align 2
  br label %32

48:                                               ; preds = %32
  %49 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %50 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SIS_315H, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %56 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %55, i32 0, i32 11
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @SiS_SetRegAND(i32 %57, i32 2, i32 127)
  br label %59

59:                                               ; preds = %54, %48
  %60 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %61 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %60, i32 0, i32 3
  %62 = load i16, i16* %61, align 8
  store i16 %62, i16* %11, align 2
  %63 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %64 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SIS_315H, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %70

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69, %68
  %71 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %72 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @DisableCRT2Display, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  store i16 0, i16* %10, align 2
  br label %78

78:                                               ; preds = %77, %70
  %79 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %80 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SIS_315H, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %86 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %85, i32 0, i32 11
  %87 = load i32, i32* %86, align 8
  %88 = load i16, i16* %10, align 2
  %89 = call i32 @SiS_SetReg(i32 %87, i32 0, i16 zeroext %88)
  br label %91

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90, %84
  %92 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %93 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @VB_SISVB, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %328

98:                                               ; preds = %91
  store i16 1, i16* %10, align 2
  %99 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %100 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @SetInSlaveMode, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %98
  %106 = load i16, i16* %10, align 2
  %107 = zext i16 %106 to i32
  %108 = or i32 %107, 2
  %109 = trunc i32 %108 to i16
  store i16 %109, i16* %10, align 2
  br label %110

110:                                              ; preds = %105, %98
  %111 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %112 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @SetCRT2ToRAMDAC, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %134, label %117

117:                                              ; preds = %110
  %118 = load i16, i16* %10, align 2
  %119 = zext i16 %118 to i32
  %120 = xor i32 %119, 5
  %121 = trunc i32 %120 to i16
  store i16 %121, i16* %10, align 2
  %122 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %123 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @SetCRT2ToLCD, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %117
  %129 = load i16, i16* %10, align 2
  %130 = zext i16 %129 to i32
  %131 = xor i32 %130, 1
  %132 = trunc i32 %131 to i16
  store i16 %132, i16* %10, align 2
  br label %133

133:                                              ; preds = %128, %117
  br label %134

134:                                              ; preds = %133, %110
  %135 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %136 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @SIS_315H, align 8
  %139 = icmp slt i64 %137, %138
  br i1 %139, label %140, label %164

140:                                              ; preds = %134
  %141 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %142 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @DisableCRT2Display, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %140
  store i16 0, i16* %10, align 2
  br label %148

148:                                              ; preds = %147, %140
  %149 = load i16, i16* %10, align 2
  %150 = zext i16 %149 to i32
  %151 = shl i32 %150, 5
  %152 = and i32 %151, 255
  %153 = trunc i32 %152 to i16
  store i16 %153, i16* %10, align 2
  %154 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %155 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %154, i32 0, i32 11
  %156 = load i32, i32* %155, align 8
  %157 = load i16, i16* %10, align 2
  %158 = call i32 @SiS_SetReg(i32 %156, i32 1, i16 zeroext %157)
  %159 = load i16, i16* %10, align 2
  %160 = zext i16 %159 to i32
  %161 = ashr i32 %160, 5
  %162 = and i32 %161, 255
  %163 = trunc i32 %162 to i16
  store i16 %163, i16* %10, align 2
  br label %192

164:                                              ; preds = %134
  %165 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %166 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @DisableCRT2Display, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %164
  store i16 8, i16* %10, align 2
  br label %182

172:                                              ; preds = %164
  %173 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %174 = call i64 @SiS_IsDualEdge(%struct.SiS_Private* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %181, label %176

176:                                              ; preds = %172
  %177 = load i16, i16* %10, align 2
  %178 = zext i16 %177 to i32
  %179 = or i32 %178, 8
  %180 = trunc i32 %179 to i16
  store i16 %180, i16* %10, align 2
  br label %181

181:                                              ; preds = %176, %172
  br label %182

182:                                              ; preds = %181, %171
  %183 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %184 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %183, i32 0, i32 11
  %185 = load i32, i32* %184, align 8
  %186 = load i16, i16* %10, align 2
  %187 = call i32 @SiS_SetRegANDOR(i32 %185, i32 46, i16 zeroext 240, i16 zeroext %186)
  %188 = load i16, i16* %10, align 2
  %189 = zext i16 %188 to i32
  %190 = and i32 %189, -9
  %191 = trunc i32 %190 to i16
  store i16 %191, i16* %10, align 2
  br label %192

192:                                              ; preds = %182, %148
  %193 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %194 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %193, i32 0, i32 3
  %195 = load i16, i16* %194, align 8
  %196 = sext i16 %195 to i32
  %197 = load i16, i16* @ModeVGA, align 2
  %198 = sext i16 %197 to i32
  %199 = icmp eq i32 %196, %198
  br i1 %199, label %200, label %212

200:                                              ; preds = %192
  %201 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %202 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @SetInSlaveMode, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %212, label %207

207:                                              ; preds = %200
  %208 = load i16, i16* %10, align 2
  %209 = zext i16 %208 to i32
  %210 = or i32 %209, 16
  %211 = trunc i32 %210 to i16
  store i16 %211, i16* %10, align 2
  br label %212

212:                                              ; preds = %207, %200, %192
  %213 = load i16, i16* %10, align 2
  %214 = zext i16 %213 to i32
  %215 = or i32 %214, 128
  %216 = trunc i32 %215 to i16
  store i16 %216, i16* %10, align 2
  %217 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %218 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @VB_SIS301, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %239

223:                                              ; preds = %212
  %224 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %225 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %224, i32 0, i32 6
  %226 = load i32, i32* %225, align 4
  %227 = icmp slt i32 %226, 1280
  br i1 %227, label %228, label %238

228:                                              ; preds = %223
  %229 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %230 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %229, i32 0, i32 7
  %231 = load i32, i32* %230, align 8
  %232 = icmp slt i32 %231, 960
  br i1 %232, label %233, label %238

233:                                              ; preds = %228
  %234 = load i16, i16* %10, align 2
  %235 = zext i16 %234 to i32
  %236 = and i32 %235, -129
  %237 = trunc i32 %236 to i16
  store i16 %237, i16* %10, align 2
  br label %238

238:                                              ; preds = %233, %228, %223
  br label %239

239:                                              ; preds = %238, %212
  %240 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %241 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @SetCRT2ToTV, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %269

246:                                              ; preds = %239
  %247 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %248 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %247, i32 0, i32 8
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @TVSetYPbPr750p, align 4
  %251 = load i32, i32* @TVSetYPbPr525p, align 4
  %252 = or i32 %250, %251
  %253 = and i32 %249, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %268, label %255

255:                                              ; preds = %246
  %256 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %257 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @SetInSlaveMode, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %267

262:                                              ; preds = %255
  %263 = load i16, i16* %10, align 2
  %264 = zext i16 %263 to i32
  %265 = or i32 %264, 32
  %266 = trunc i32 %265 to i16
  store i16 %266, i16* %10, align 2
  br label %267

267:                                              ; preds = %262, %255
  br label %268

268:                                              ; preds = %267, %246
  br label %269

269:                                              ; preds = %268, %239
  %270 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %271 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %270, i32 0, i32 12
  %272 = load i32, i32* %271, align 4
  %273 = load i16, i16* %10, align 2
  %274 = call i32 @SiS_SetRegANDOR(i32 %272, i32 13, i16 zeroext 64, i16 zeroext %273)
  store i16 128, i16* %10, align 2
  %275 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %276 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @VB_SIS301, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %293

281:                                              ; preds = %269
  %282 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %283 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %282, i32 0, i32 6
  %284 = load i32, i32* %283, align 4
  %285 = icmp slt i32 %284, 1280
  br i1 %285, label %286, label %292

286:                                              ; preds = %281
  %287 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %288 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %287, i32 0, i32 7
  %289 = load i32, i32* %288, align 8
  %290 = icmp slt i32 %289, 960
  br i1 %290, label %291, label %292

291:                                              ; preds = %286
  store i16 0, i16* %10, align 2
  br label %292

292:                                              ; preds = %291, %286, %281
  br label %293

293:                                              ; preds = %292, %269
  %294 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %295 = call i64 @SiS_IsDualLink(%struct.SiS_Private* %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %302

297:                                              ; preds = %293
  %298 = load i16, i16* %10, align 2
  %299 = zext i16 %298 to i32
  %300 = or i32 %299, 64
  %301 = trunc i32 %300 to i16
  store i16 %301, i16* %10, align 2
  br label %302

302:                                              ; preds = %297, %293
  %303 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %304 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @SetCRT2ToTV, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %322

309:                                              ; preds = %302
  %310 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %311 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %310, i32 0, i32 8
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @TVRPLLDIV2XO, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %321

316:                                              ; preds = %309
  %317 = load i16, i16* %10, align 2
  %318 = zext i16 %317 to i32
  %319 = or i32 %318, 64
  %320 = trunc i32 %319 to i16
  store i16 %320, i16* %10, align 2
  br label %321

321:                                              ; preds = %316, %309
  br label %322

322:                                              ; preds = %321, %302
  %323 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %324 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %323, i32 0, i32 12
  %325 = load i32, i32* %324, align 4
  %326 = load i16, i16* %10, align 2
  %327 = call i32 @SiS_SetReg(i32 %325, i32 12, i16 zeroext %326)
  br label %337

328:                                              ; preds = %91
  %329 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %330 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %329, i32 0, i32 2
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* @SIS_315H, align 8
  %333 = icmp sge i64 %331, %332
  br i1 %333, label %334, label %335

334:                                              ; preds = %328
  br label %336

335:                                              ; preds = %328
  br label %336

336:                                              ; preds = %335, %334
  br label %337

337:                                              ; preds = %336, %322
  br label %338

338:                                              ; preds = %337, %22
  %339 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %340 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %339, i32 0, i32 4
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @VB_SISVB, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %386

345:                                              ; preds = %338
  %346 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %347 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %346, i32 0, i32 2
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @SIS_315H, align 8
  %350 = icmp sge i64 %348, %349
  br i1 %350, label %351, label %352

351:                                              ; preds = %345
  br label %361

352:                                              ; preds = %345
  %353 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %354 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %353, i32 0, i32 4
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* @VB_SIS30xBLV, align 4
  %357 = and i32 %355, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %360

359:                                              ; preds = %352
  br label %360

360:                                              ; preds = %359, %352
  br label %361

361:                                              ; preds = %360, %351
  %362 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %363 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %362, i32 0, i32 4
  %364 = load i32, i32* %363, align 4
  %365 = load i32, i32* @VB_SIS30xBLV, align 4
  %366 = and i32 %364, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %385

368:                                              ; preds = %361
  %369 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %370 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %369, i32 0, i32 12
  %371 = load i32, i32* %370, align 4
  %372 = call i32 @SiS_SetRegOR(i32 %371, i32 13, i32 128)
  %373 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %374 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %373, i32 0, i32 4
  %375 = load i32, i32* %374, align 4
  %376 = load i32, i32* @VB_SIS30xCLV, align 4
  %377 = and i32 %375, %376
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %384

379:                                              ; preds = %368
  %380 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %381 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %380, i32 0, i32 12
  %382 = load i32, i32* %381, align 4
  %383 = call i32 @SiS_SetRegOR(i32 %382, i32 58, i32 192)
  br label %384

384:                                              ; preds = %379, %368
  br label %385

385:                                              ; preds = %384, %361
  br label %387

386:                                              ; preds = %338
  br label %387

387:                                              ; preds = %386, %385
  ret void
}

declare dso_local zeroext i16 @SiS_GetModeFlag(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetRegANDOR(i32, i32, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetRegAND(i32, i32, i32) #1

declare dso_local i32 @SiS_SetReg(i32, i32, i16 zeroext) #1

declare dso_local i64 @SiS_IsDualEdge(%struct.SiS_Private*) #1

declare dso_local i64 @SiS_IsDualLink(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_SetRegOR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
