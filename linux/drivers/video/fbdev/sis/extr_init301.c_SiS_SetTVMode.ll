; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_SetTVMode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_SetTVMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i8*, i8*, i32, i32, i64, i32, i64, i32, i32, i32, i64, i32, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i16 }

@SetCRT2ToTV = common dso_local global i32 0, align 4
@SIS_661 = common dso_local global i64 0, align 8
@SetPALTV = common dso_local global i32 0, align 4
@TVSetPAL = common dso_local global i32 0, align 4
@VB_SISVB = common dso_local global i32 0, align 4
@SIS_630 = common dso_local global i64 0, align 8
@SIS_730 = common dso_local global i64 0, align 8
@SIS_315H = common dso_local global i64 0, align 8
@XGI_20 = common dso_local global i64 0, align 8
@SIS_330 = common dso_local global i64 0, align 8
@EnablePALMN = common dso_local global i8 0, align 1
@EnablePALM = common dso_local global i16 0, align 2
@TVSetPALM = common dso_local global i32 0, align 4
@EnablePALN = common dso_local global i16 0, align 2
@TVSetPALN = common dso_local global i32 0, align 4
@EnableNTSCJ = common dso_local global i16 0, align 2
@TVSetNTSCJ = common dso_local global i32 0, align 4
@SetCRT2ToHiVision = common dso_local global i32 0, align 4
@YPbPr750p = common dso_local global i64 0, align 8
@TVSetYPbPr750p = common dso_local global i32 0, align 4
@YPbPr525p = common dso_local global i64 0, align 8
@TVSetYPbPr525p = common dso_local global i32 0, align 4
@YPbPrHiVision = common dso_local global i64 0, align 8
@TVSetHiVision = common dso_local global i32 0, align 4
@TVSetYPbPr525i = common dso_local global i32 0, align 4
@SetCRT2ToYPbPr525750 = common dso_local global i32 0, align 4
@TVOverScan = common dso_local global i16 0, align 2
@TVSetCHOverScan = common dso_local global i32 0, align 4
@SIS_RI_800x480 = common dso_local global i16 0, align 2
@SIS_RI_1024x576 = common dso_local global i16 0, align 2
@SIS_RI_1280x720 = common dso_local global i16 0, align 2
@TVAspect169 = common dso_local global i32 0, align 4
@TVAspect43LB = common dso_local global i32 0, align 4
@TVAspect43 = common dso_local global i32 0, align 4
@SetCRT2ToSCART = common dso_local global i32 0, align 4
@SetInSlaveMode = common dso_local global i32 0, align 4
@SetNotSimuMode = common dso_local global i32 0, align 4
@TVSetTVSimuMode = common dso_local global i32 0, align 4
@SIS_RI_1024x768 = common dso_local global i16 0, align 2
@TVSet525p1024 = common dso_local global i32 0, align 4
@TVSetNTSC1024 = common dso_local global i32 0, align 4
@TVRPLLDIV2XO = common dso_local global i32 0, align 4
@VB_SIS30xBLV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiS_SetTVMode(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.SiS_Private*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i8*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  store %struct.SiS_Private* %0, %struct.SiS_Private** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %13 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %14 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %7, align 8
  store i16 0, i16* %10, align 2
  store i16 0, i16* %11, align 2
  %16 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %17 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %12, align 1
  %20 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %21 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %20, i32 0, i32 2
  store i32 0, i32* %21, align 8
  %22 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %23 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SetCRT2ToTV, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  br label %884

29:                                               ; preds = %3
  %30 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %31 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %30, i32 0, i32 14
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %884

35:                                               ; preds = %29
  %36 = load i16, i16* %5, align 2
  %37 = zext i16 %36 to i32
  %38 = icmp sgt i32 %37, 19
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %41 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %40, i32 0, i32 13
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i16, i16* %6, align 2
  %44 = zext i16 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i16, i16* %46, align 2
  store i16 %47, i16* %10, align 2
  br label %48

48:                                               ; preds = %39, %35
  %49 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %50 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SIS_661, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %436

54:                                               ; preds = %48
  %55 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %56 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SetPALTV, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load i32, i32* @TVSetPAL, align 4
  %63 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %64 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %61, %54
  %68 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %69 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @VB_SISVB, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %297

74:                                               ; preds = %67
  store i16 0, i16* %8, align 2
  %75 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %76 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SIS_630, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %82 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SIS_730, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80, %74
  store i16 53, i16* %8, align 2
  store i16 254, i16* %11, align 2
  br label %109

87:                                               ; preds = %80
  %88 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %89 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @SIS_315H, align 8
  %92 = icmp sge i64 %90, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %87
  store i16 56, i16* %8, align 2
  %94 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %95 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @XGI_20, align 8
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %93
  store i16 243, i16* %11, align 2
  %100 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %101 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @SIS_330, align 8
  %104 = icmp sge i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  store i16 283, i16* %11, align 2
  br label %106

106:                                              ; preds = %105, %99
  br label %107

107:                                              ; preds = %106, %93
  br label %108

108:                                              ; preds = %107, %87
  br label %109

109:                                              ; preds = %108, %86
  %110 = load i16, i16* %8, align 2
  %111 = icmp ne i16 %110, 0
  br i1 %111, label %112, label %207

112:                                              ; preds = %109
  %113 = load i16, i16* %11, align 2
  %114 = zext i16 %113 to i32
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %145

116:                                              ; preds = %112
  %117 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %118 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %117, i32 0, i32 12
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %145

121:                                              ; preds = %116
  %122 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %123 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %122, i32 0, i32 11
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %145, label %126

126:                                              ; preds = %121
  %127 = load i8*, i8** %7, align 8
  %128 = load i16, i16* %11, align 2
  %129 = zext i16 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i8, i8* %130, align 1
  store i8 %131, i8* %12, align 1
  %132 = load i8, i8* %12, align 1
  %133 = zext i8 %132 to i32
  %134 = load i8, i8* @EnablePALMN, align 1
  %135 = zext i8 %134 to i32
  %136 = and i32 %133, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %126
  %139 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %140 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %139, i32 0, i32 9
  %141 = load i32, i32* %140, align 8
  %142 = load i16, i16* %8, align 2
  %143 = call i32 @SiS_SetRegAND(i32 %141, i16 zeroext %142, i32 63)
  br label %144

144:                                              ; preds = %138, %126
  br label %145

145:                                              ; preds = %144, %121, %116, %112
  %146 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %147 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %146, i32 0, i32 9
  %148 = load i32, i32* %147, align 8
  %149 = load i16, i16* %8, align 2
  %150 = zext i16 %149 to i32
  %151 = call zeroext i16 @SiS_GetReg(i32 %148, i32 %150)
  store i16 %151, i16* %9, align 2
  %152 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %153 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @TVSetPAL, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %192

158:                                              ; preds = %145
  %159 = load i16, i16* %9, align 2
  %160 = zext i16 %159 to i32
  %161 = load i16, i16* @EnablePALM, align 2
  %162 = zext i16 %161 to i32
  %163 = and i32 %160, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %177

165:                                              ; preds = %158
  %166 = load i32, i32* @TVSetPALM, align 4
  %167 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %168 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  %171 = load i32, i32* @TVSetPAL, align 4
  %172 = xor i32 %171, -1
  %173 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %174 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = and i32 %175, %172
  store i32 %176, i32* %174, align 8
  br label %191

177:                                              ; preds = %158
  %178 = load i16, i16* %9, align 2
  %179 = zext i16 %178 to i32
  %180 = load i16, i16* @EnablePALN, align 2
  %181 = zext i16 %180 to i32
  %182 = and i32 %179, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %177
  %185 = load i32, i32* @TVSetPALN, align 4
  %186 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %187 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 8
  br label %190

190:                                              ; preds = %184, %177
  br label %191

191:                                              ; preds = %190, %165
  br label %206

192:                                              ; preds = %145
  %193 = load i16, i16* %9, align 2
  %194 = zext i16 %193 to i32
  %195 = load i16, i16* @EnableNTSCJ, align 2
  %196 = zext i16 %195 to i32
  %197 = and i32 %194, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %192
  %200 = load i32, i32* @TVSetNTSCJ, align 4
  %201 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %202 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 8
  br label %205

205:                                              ; preds = %199, %192
  br label %206

206:                                              ; preds = %205, %191
  br label %207

207:                                              ; preds = %206, %109
  %208 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %209 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @SetCRT2ToHiVision, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %296

214:                                              ; preds = %207
  %215 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %216 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %215, i32 0, i32 6
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @YPbPr750p, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %226

220:                                              ; preds = %214
  %221 = load i32, i32* @TVSetYPbPr750p, align 4
  %222 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %223 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = or i32 %224, %221
  store i32 %225, i32* %223, align 8
  br label %258

226:                                              ; preds = %214
  %227 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %228 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %227, i32 0, i32 6
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @YPbPr525p, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %238

232:                                              ; preds = %226
  %233 = load i32, i32* @TVSetYPbPr525p, align 4
  %234 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %235 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = or i32 %236, %233
  store i32 %237, i32* %235, align 8
  br label %257

238:                                              ; preds = %226
  %239 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %240 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %239, i32 0, i32 6
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @YPbPrHiVision, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %250

244:                                              ; preds = %238
  %245 = load i32, i32* @TVSetHiVision, align 4
  %246 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %247 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 8
  br label %256

250:                                              ; preds = %238
  %251 = load i32, i32* @TVSetYPbPr525i, align 4
  %252 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %253 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 8
  br label %256

256:                                              ; preds = %250, %244
  br label %257

257:                                              ; preds = %256, %232
  br label %258

258:                                              ; preds = %257, %220
  %259 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %260 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @TVSetYPbPr750p, align 4
  %263 = load i32, i32* @TVSetYPbPr525p, align 4
  %264 = or i32 %262, %263
  %265 = load i32, i32* @TVSetYPbPr525i, align 4
  %266 = or i32 %264, %265
  %267 = and i32 %261, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %281

269:                                              ; preds = %258
  %270 = load i32, i32* @SetCRT2ToHiVision, align 4
  %271 = xor i32 %270, -1
  %272 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %273 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = and i32 %274, %271
  store i32 %275, i32* %273, align 4
  %276 = load i32, i32* @SetCRT2ToYPbPr525750, align 4
  %277 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %278 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = or i32 %279, %276
  store i32 %280, i32* %278, align 4
  br label %295

281:                                              ; preds = %258
  %282 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %283 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @TVSetHiVision, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %294

288:                                              ; preds = %281
  %289 = load i32, i32* @TVSetPAL, align 4
  %290 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %291 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = or i32 %292, %289
  store i32 %293, i32* %291, align 8
  br label %294

294:                                              ; preds = %288, %281
  br label %295

295:                                              ; preds = %294, %269
  br label %296

296:                                              ; preds = %295, %207
  br label %435

297:                                              ; preds = %67
  %298 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %299 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %298, i32 0, i32 7
  %300 = load i32, i32* %299, align 8
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %434

302:                                              ; preds = %297
  %303 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %304 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %303, i32 0, i32 8
  %305 = load i32, i32* %304, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %374

307:                                              ; preds = %302
  %308 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %309 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %308, i32 0, i32 7
  %310 = load i32, i32* %309, align 8
  %311 = icmp eq i32 %310, 1
  br i1 %311, label %312, label %335

312:                                              ; preds = %307
  %313 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %314 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %313, i32 0, i32 9
  %315 = load i32, i32* %314, align 8
  %316 = call zeroext i16 @SiS_GetReg(i32 %315, i32 53)
  store i16 %316, i16* %8, align 2
  %317 = load i16, i16* %8, align 2
  %318 = zext i16 %317 to i32
  %319 = load i16, i16* @TVOverScan, align 2
  %320 = zext i16 %319 to i32
  %321 = and i32 %318, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %328, label %323

323:                                              ; preds = %312
  %324 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %325 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %324, i32 0, i32 8
  %326 = load i32, i32* %325, align 4
  %327 = icmp eq i32 %326, 1
  br i1 %327, label %328, label %334

328:                                              ; preds = %323, %312
  %329 = load i32, i32* @TVSetCHOverScan, align 4
  %330 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %331 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 8
  %333 = or i32 %332, %329
  store i32 %333, i32* %331, align 8
  br label %334

334:                                              ; preds = %328, %323
  br label %362

335:                                              ; preds = %307
  %336 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %337 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %336, i32 0, i32 7
  %338 = load i32, i32* %337, align 8
  %339 = icmp eq i32 %338, 2
  br i1 %339, label %340, label %361

340:                                              ; preds = %335
  %341 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %342 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %341, i32 0, i32 9
  %343 = load i32, i32* %342, align 8
  %344 = call zeroext i16 @SiS_GetReg(i32 %343, i32 121)
  store i16 %344, i16* %8, align 2
  %345 = load i16, i16* %8, align 2
  %346 = zext i16 %345 to i32
  %347 = and i32 %346, 128
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %354, label %349

349:                                              ; preds = %340
  %350 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %351 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %350, i32 0, i32 8
  %352 = load i32, i32* %351, align 4
  %353 = icmp eq i32 %352, 1
  br i1 %353, label %354, label %360

354:                                              ; preds = %349, %340
  %355 = load i32, i32* @TVSetCHOverScan, align 4
  %356 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %357 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 8
  %359 = or i32 %358, %355
  store i32 %359, i32* %357, align 8
  br label %360

360:                                              ; preds = %354, %349
  br label %361

361:                                              ; preds = %360, %335
  br label %362

362:                                              ; preds = %361, %334
  %363 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %364 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %363, i32 0, i32 10
  %365 = load i64, i64* %364, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %373

367:                                              ; preds = %362
  %368 = load i32, i32* @TVSetCHOverScan, align 4
  %369 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %370 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 8
  %372 = or i32 %371, %368
  store i32 %372, i32* %370, align 8
  br label %373

373:                                              ; preds = %367, %362
  br label %374

374:                                              ; preds = %373, %302
  %375 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %376 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %375, i32 0, i32 7
  %377 = load i32, i32* %376, align 8
  %378 = icmp eq i32 %377, 2
  br i1 %378, label %379, label %433

379:                                              ; preds = %374
  %380 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %381 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %380, i32 0, i32 9
  %382 = load i32, i32* %381, align 8
  %383 = call zeroext i16 @SiS_GetReg(i32 %382, i32 56)
  store i16 %383, i16* %8, align 2
  %384 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %385 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 8
  %387 = load i32, i32* @TVSetPAL, align 4
  %388 = and i32 %386, %387
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %418

390:                                              ; preds = %379
  %391 = load i16, i16* %8, align 2
  %392 = zext i16 %391 to i32
  %393 = load i16, i16* @EnablePALM, align 2
  %394 = zext i16 %393 to i32
  %395 = and i32 %392, %394
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %403

397:                                              ; preds = %390
  %398 = load i32, i32* @TVSetPALM, align 4
  %399 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %400 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %399, i32 0, i32 2
  %401 = load i32, i32* %400, align 8
  %402 = or i32 %401, %398
  store i32 %402, i32* %400, align 8
  br label %417

403:                                              ; preds = %390
  %404 = load i16, i16* %8, align 2
  %405 = zext i16 %404 to i32
  %406 = load i16, i16* @EnablePALN, align 2
  %407 = zext i16 %406 to i32
  %408 = and i32 %405, %407
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %416

410:                                              ; preds = %403
  %411 = load i32, i32* @TVSetPALN, align 4
  %412 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %413 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %412, i32 0, i32 2
  %414 = load i32, i32* %413, align 8
  %415 = or i32 %414, %411
  store i32 %415, i32* %413, align 8
  br label %416

416:                                              ; preds = %410, %403
  br label %417

417:                                              ; preds = %416, %397
  br label %432

418:                                              ; preds = %379
  %419 = load i16, i16* %8, align 2
  %420 = zext i16 %419 to i32
  %421 = load i16, i16* @EnableNTSCJ, align 2
  %422 = zext i16 %421 to i32
  %423 = and i32 %420, %422
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %431

425:                                              ; preds = %418
  %426 = load i32, i32* @TVSetNTSCJ, align 4
  %427 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %428 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 8
  %430 = or i32 %429, %426
  store i32 %430, i32* %428, align 8
  br label %431

431:                                              ; preds = %425, %418
  br label %432

432:                                              ; preds = %431, %417
  br label %433

433:                                              ; preds = %432, %374
  br label %434

434:                                              ; preds = %433, %297
  br label %435

435:                                              ; preds = %434, %296
  br label %669

436:                                              ; preds = %48
  %437 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %438 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %437, i32 0, i32 9
  %439 = load i32, i32* %438, align 8
  %440 = call zeroext i16 @SiS_GetReg(i32 %439, i32 53)
  store i16 %440, i16* %9, align 2
  %441 = load i16, i16* %9, align 2
  %442 = zext i16 %441 to i32
  %443 = and i32 %442, 1
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %488

445:                                              ; preds = %436
  %446 = load i32, i32* @TVSetPAL, align 4
  %447 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %448 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %447, i32 0, i32 2
  %449 = load i32, i32* %448, align 8
  %450 = or i32 %449, %446
  store i32 %450, i32* %448, align 8
  %451 = load i16, i16* %9, align 2
  %452 = zext i16 %451 to i32
  %453 = and i32 %452, 8
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %461

455:                                              ; preds = %445
  %456 = load i32, i32* @TVSetPALN, align 4
  %457 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %458 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %457, i32 0, i32 2
  %459 = load i32, i32* %458, align 8
  %460 = or i32 %459, %456
  store i32 %460, i32* %458, align 8
  br label %487

461:                                              ; preds = %445
  %462 = load i16, i16* %9, align 2
  %463 = zext i16 %462 to i32
  %464 = and i32 %463, 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %486

466:                                              ; preds = %461
  %467 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %468 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %467, i32 0, i32 5
  %469 = load i32, i32* %468, align 8
  %470 = load i32, i32* @VB_SISVB, align 4
  %471 = and i32 %469, %470
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %480

473:                                              ; preds = %466
  %474 = load i32, i32* @TVSetPAL, align 4
  %475 = xor i32 %474, -1
  %476 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %477 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %476, i32 0, i32 2
  %478 = load i32, i32* %477, align 8
  %479 = and i32 %478, %475
  store i32 %479, i32* %477, align 8
  br label %480

480:                                              ; preds = %473, %466
  %481 = load i32, i32* @TVSetPALM, align 4
  %482 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %483 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %482, i32 0, i32 2
  %484 = load i32, i32* %483, align 8
  %485 = or i32 %484, %481
  store i32 %485, i32* %483, align 8
  br label %486

486:                                              ; preds = %480, %461
  br label %487

487:                                              ; preds = %486, %455
  br label %500

488:                                              ; preds = %436
  %489 = load i16, i16* %9, align 2
  %490 = zext i16 %489 to i32
  %491 = and i32 %490, 2
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %499

493:                                              ; preds = %488
  %494 = load i32, i32* @TVSetNTSCJ, align 4
  %495 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %496 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %495, i32 0, i32 2
  %497 = load i32, i32* %496, align 8
  %498 = or i32 %497, %494
  store i32 %498, i32* %496, align 8
  br label %499

499:                                              ; preds = %493, %488
  br label %500

500:                                              ; preds = %499, %487
  %501 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %502 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %501, i32 0, i32 7
  %503 = load i32, i32* %502, align 8
  %504 = icmp eq i32 %503, 2
  br i1 %504, label %505, label %528

505:                                              ; preds = %500
  %506 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %507 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %506, i32 0, i32 8
  %508 = load i32, i32* %507, align 4
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %527

510:                                              ; preds = %505
  %511 = load i16, i16* %9, align 2
  %512 = zext i16 %511 to i32
  %513 = and i32 %512, 16
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %520, label %515

515:                                              ; preds = %510
  %516 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %517 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %516, i32 0, i32 8
  %518 = load i32, i32* %517, align 4
  %519 = icmp eq i32 %518, 1
  br i1 %519, label %520, label %526

520:                                              ; preds = %515, %510
  %521 = load i32, i32* @TVSetCHOverScan, align 4
  %522 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %523 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %522, i32 0, i32 2
  %524 = load i32, i32* %523, align 8
  %525 = or i32 %524, %521
  store i32 %525, i32* %523, align 8
  br label %526

526:                                              ; preds = %520, %515
  br label %527

527:                                              ; preds = %526, %505
  br label %528

528:                                              ; preds = %527, %500
  %529 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %530 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %529, i32 0, i32 5
  %531 = load i32, i32* %530, align 8
  %532 = load i32, i32* @VB_SISVB, align 4
  %533 = and i32 %531, %532
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %668

535:                                              ; preds = %528
  %536 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %537 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %536, i32 0, i32 3
  %538 = load i32, i32* %537, align 4
  %539 = load i32, i32* @SetCRT2ToYPbPr525750, align 4
  %540 = and i32 %538, %539
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %542, label %579

542:                                              ; preds = %535
  %543 = load i16, i16* %9, align 2
  %544 = zext i16 %543 to i32
  %545 = and i32 %544, 224
  %546 = trunc i32 %545 to i16
  store i16 %546, i16* %9, align 2
  %547 = load i16, i16* %9, align 2
  %548 = zext i16 %547 to i32
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %550, label %556

550:                                              ; preds = %542
  %551 = load i32, i32* @TVSetYPbPr525i, align 4
  %552 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %553 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %552, i32 0, i32 2
  %554 = load i32, i32* %553, align 8
  %555 = or i32 %554, %551
  store i32 %555, i32* %553, align 8
  br label %578

556:                                              ; preds = %542
  %557 = load i16, i16* %9, align 2
  %558 = zext i16 %557 to i32
  %559 = icmp eq i32 %558, 32
  br i1 %559, label %560, label %566

560:                                              ; preds = %556
  %561 = load i32, i32* @TVSetYPbPr525p, align 4
  %562 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %563 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %562, i32 0, i32 2
  %564 = load i32, i32* %563, align 8
  %565 = or i32 %564, %561
  store i32 %565, i32* %563, align 8
  br label %577

566:                                              ; preds = %556
  %567 = load i16, i16* %9, align 2
  %568 = zext i16 %567 to i32
  %569 = icmp eq i32 %568, 64
  br i1 %569, label %570, label %576

570:                                              ; preds = %566
  %571 = load i32, i32* @TVSetYPbPr750p, align 4
  %572 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %573 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %572, i32 0, i32 2
  %574 = load i32, i32* %573, align 8
  %575 = or i32 %574, %571
  store i32 %575, i32* %573, align 8
  br label %576

576:                                              ; preds = %570, %566
  br label %577

577:                                              ; preds = %576, %560
  br label %578

578:                                              ; preds = %577, %550
  br label %595

579:                                              ; preds = %535
  %580 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %581 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %580, i32 0, i32 3
  %582 = load i32, i32* %581, align 4
  %583 = load i32, i32* @SetCRT2ToHiVision, align 4
  %584 = and i32 %582, %583
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %586, label %594

586:                                              ; preds = %579
  %587 = load i32, i32* @TVSetHiVision, align 4
  %588 = load i32, i32* @TVSetPAL, align 4
  %589 = or i32 %587, %588
  %590 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %591 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %590, i32 0, i32 2
  %592 = load i32, i32* %591, align 8
  %593 = or i32 %592, %589
  store i32 %593, i32* %591, align 8
  br label %594

594:                                              ; preds = %586, %579
  br label %595

595:                                              ; preds = %594, %578
  %596 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %597 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %596, i32 0, i32 3
  %598 = load i32, i32* %597, align 4
  %599 = load i32, i32* @SetCRT2ToYPbPr525750, align 4
  %600 = load i32, i32* @SetCRT2ToHiVision, align 4
  %601 = or i32 %599, %600
  %602 = and i32 %598, %601
  %603 = icmp ne i32 %602, 0
  br i1 %603, label %604, label %667

604:                                              ; preds = %595
  %605 = load i16, i16* %10, align 2
  %606 = zext i16 %605 to i32
  %607 = load i16, i16* @SIS_RI_800x480, align 2
  %608 = zext i16 %607 to i32
  %609 = icmp eq i32 %606, %608
  br i1 %609, label %622, label %610

610:                                              ; preds = %604
  %611 = load i16, i16* %10, align 2
  %612 = zext i16 %611 to i32
  %613 = load i16, i16* @SIS_RI_1024x576, align 2
  %614 = zext i16 %613 to i32
  %615 = icmp eq i32 %612, %614
  br i1 %615, label %622, label %616

616:                                              ; preds = %610
  %617 = load i16, i16* %10, align 2
  %618 = zext i16 %617 to i32
  %619 = load i16, i16* @SIS_RI_1280x720, align 2
  %620 = zext i16 %619 to i32
  %621 = icmp eq i32 %618, %620
  br i1 %621, label %622, label %628

622:                                              ; preds = %616, %610, %604
  %623 = load i32, i32* @TVAspect169, align 4
  %624 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %625 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %624, i32 0, i32 2
  %626 = load i32, i32* %625, align 8
  %627 = or i32 %626, %623
  store i32 %627, i32* %625, align 8
  br label %666

628:                                              ; preds = %616
  %629 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %630 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %629, i32 0, i32 9
  %631 = load i32, i32* %630, align 8
  %632 = call zeroext i16 @SiS_GetReg(i32 %631, i32 57)
  store i16 %632, i16* %9, align 2
  %633 = load i16, i16* %9, align 2
  %634 = zext i16 %633 to i32
  %635 = and i32 %634, 2
  %636 = icmp ne i32 %635, 0
  br i1 %636, label %637, label %659

637:                                              ; preds = %628
  %638 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %639 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %638, i32 0, i32 2
  %640 = load i32, i32* %639, align 8
  %641 = load i32, i32* @TVSetYPbPr750p, align 4
  %642 = load i32, i32* @TVSetHiVision, align 4
  %643 = or i32 %641, %642
  %644 = and i32 %640, %643
  %645 = icmp ne i32 %644, 0
  br i1 %645, label %646, label %652

646:                                              ; preds = %637
  %647 = load i32, i32* @TVAspect169, align 4
  %648 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %649 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %648, i32 0, i32 2
  %650 = load i32, i32* %649, align 8
  %651 = or i32 %650, %647
  store i32 %651, i32* %649, align 8
  br label %658

652:                                              ; preds = %637
  %653 = load i32, i32* @TVAspect43LB, align 4
  %654 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %655 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %654, i32 0, i32 2
  %656 = load i32, i32* %655, align 8
  %657 = or i32 %656, %653
  store i32 %657, i32* %655, align 8
  br label %658

658:                                              ; preds = %652, %646
  br label %665

659:                                              ; preds = %628
  %660 = load i32, i32* @TVAspect43, align 4
  %661 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %662 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %661, i32 0, i32 2
  %663 = load i32, i32* %662, align 8
  %664 = or i32 %663, %660
  store i32 %664, i32* %662, align 8
  br label %665

665:                                              ; preds = %659, %658
  br label %666

666:                                              ; preds = %665, %622
  br label %667

667:                                              ; preds = %666, %595
  br label %668

668:                                              ; preds = %667, %528
  br label %669

669:                                              ; preds = %668, %435
  %670 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %671 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %670, i32 0, i32 3
  %672 = load i32, i32* %671, align 4
  %673 = load i32, i32* @SetCRT2ToSCART, align 4
  %674 = and i32 %672, %673
  %675 = icmp ne i32 %674, 0
  br i1 %675, label %676, label %682

676:                                              ; preds = %669
  %677 = load i32, i32* @TVSetPAL, align 4
  %678 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %679 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %678, i32 0, i32 2
  %680 = load i32, i32* %679, align 8
  %681 = or i32 %680, %677
  store i32 %681, i32* %679, align 8
  br label %682

682:                                              ; preds = %676, %669
  %683 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %684 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %683, i32 0, i32 5
  %685 = load i32, i32* %684, align 8
  %686 = load i32, i32* @VB_SISVB, align 4
  %687 = and i32 %685, %686
  %688 = icmp ne i32 %687, 0
  br i1 %688, label %689, label %877

689:                                              ; preds = %682
  %690 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %691 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %690, i32 0, i32 3
  %692 = load i32, i32* %691, align 4
  %693 = load i32, i32* @SetCRT2ToHiVision, align 4
  %694 = and i32 %692, %693
  %695 = icmp ne i32 %694, 0
  br i1 %695, label %696, label %712

696:                                              ; preds = %689
  %697 = load i32, i32* @TVSetPAL, align 4
  %698 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %699 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %698, i32 0, i32 2
  %700 = load i32, i32* %699, align 8
  %701 = or i32 %700, %697
  store i32 %701, i32* %699, align 8
  %702 = load i32, i32* @TVSetPALM, align 4
  %703 = load i32, i32* @TVSetPALN, align 4
  %704 = or i32 %702, %703
  %705 = load i32, i32* @TVSetNTSCJ, align 4
  %706 = or i32 %704, %705
  %707 = xor i32 %706, -1
  %708 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %709 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %708, i32 0, i32 2
  %710 = load i32, i32* %709, align 8
  %711 = and i32 %710, %707
  store i32 %711, i32* %709, align 8
  br label %745

712:                                              ; preds = %689
  %713 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %714 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %713, i32 0, i32 3
  %715 = load i32, i32* %714, align 4
  %716 = load i32, i32* @SetCRT2ToYPbPr525750, align 4
  %717 = and i32 %715, %716
  %718 = icmp ne i32 %717, 0
  br i1 %718, label %719, label %744

719:                                              ; preds = %712
  %720 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %721 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %720, i32 0, i32 2
  %722 = load i32, i32* %721, align 8
  %723 = load i32, i32* @TVSetYPbPr525i, align 4
  %724 = load i32, i32* @TVSetYPbPr525p, align 4
  %725 = or i32 %723, %724
  %726 = load i32, i32* @TVSetYPbPr750p, align 4
  %727 = or i32 %725, %726
  %728 = and i32 %722, %727
  %729 = icmp ne i32 %728, 0
  br i1 %729, label %730, label %743

730:                                              ; preds = %719
  %731 = load i32, i32* @TVSetPAL, align 4
  %732 = load i32, i32* @TVSetNTSCJ, align 4
  %733 = or i32 %731, %732
  %734 = load i32, i32* @TVSetPALM, align 4
  %735 = or i32 %733, %734
  %736 = load i32, i32* @TVSetPALN, align 4
  %737 = or i32 %735, %736
  %738 = xor i32 %737, -1
  %739 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %740 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %739, i32 0, i32 2
  %741 = load i32, i32* %740, align 8
  %742 = and i32 %741, %738
  store i32 %742, i32* %740, align 8
  br label %743

743:                                              ; preds = %730, %719
  br label %744

744:                                              ; preds = %743, %712
  br label %745

745:                                              ; preds = %744, %696
  %746 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %747 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %746, i32 0, i32 3
  %748 = load i32, i32* %747, align 4
  %749 = load i32, i32* @SetInSlaveMode, align 4
  %750 = and i32 %748, %749
  %751 = icmp ne i32 %750, 0
  br i1 %751, label %752, label %766

752:                                              ; preds = %745
  %753 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %754 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %753, i32 0, i32 3
  %755 = load i32, i32* %754, align 4
  %756 = load i32, i32* @SetNotSimuMode, align 4
  %757 = and i32 %755, %756
  %758 = icmp ne i32 %757, 0
  br i1 %758, label %765, label %759

759:                                              ; preds = %752
  %760 = load i32, i32* @TVSetTVSimuMode, align 4
  %761 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %762 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %761, i32 0, i32 2
  %763 = load i32, i32* %762, align 8
  %764 = or i32 %763, %760
  store i32 %764, i32* %762, align 8
  br label %765

765:                                              ; preds = %759, %752
  br label %766

766:                                              ; preds = %765, %745
  %767 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %768 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %767, i32 0, i32 2
  %769 = load i32, i32* %768, align 8
  %770 = load i32, i32* @TVSetPAL, align 4
  %771 = and i32 %769, %770
  %772 = icmp ne i32 %771, 0
  br i1 %772, label %810, label %773

773:                                              ; preds = %766
  %774 = load i16, i16* %10, align 2
  %775 = zext i16 %774 to i32
  %776 = load i16, i16* @SIS_RI_1024x768, align 2
  %777 = zext i16 %776 to i32
  %778 = icmp eq i32 %775, %777
  br i1 %778, label %779, label %809

779:                                              ; preds = %773
  %780 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %781 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %780, i32 0, i32 2
  %782 = load i32, i32* %781, align 8
  %783 = load i32, i32* @TVSetYPbPr525p, align 4
  %784 = and i32 %782, %783
  %785 = icmp ne i32 %784, 0
  br i1 %785, label %786, label %792

786:                                              ; preds = %779
  %787 = load i32, i32* @TVSet525p1024, align 4
  %788 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %789 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %788, i32 0, i32 2
  %790 = load i32, i32* %789, align 8
  %791 = or i32 %790, %787
  store i32 %791, i32* %789, align 8
  br label %808

792:                                              ; preds = %779
  %793 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %794 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %793, i32 0, i32 2
  %795 = load i32, i32* %794, align 8
  %796 = load i32, i32* @TVSetHiVision, align 4
  %797 = load i32, i32* @TVSetYPbPr750p, align 4
  %798 = or i32 %796, %797
  %799 = and i32 %795, %798
  %800 = icmp ne i32 %799, 0
  br i1 %800, label %807, label %801

801:                                              ; preds = %792
  %802 = load i32, i32* @TVSetNTSC1024, align 4
  %803 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %804 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %803, i32 0, i32 2
  %805 = load i32, i32* %804, align 8
  %806 = or i32 %805, %802
  store i32 %806, i32* %804, align 8
  br label %807

807:                                              ; preds = %801, %792
  br label %808

808:                                              ; preds = %807, %786
  br label %809

809:                                              ; preds = %808, %773
  br label %810

810:                                              ; preds = %809, %766
  %811 = load i32, i32* @TVRPLLDIV2XO, align 4
  %812 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %813 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %812, i32 0, i32 2
  %814 = load i32, i32* %813, align 8
  %815 = or i32 %814, %811
  store i32 %815, i32* %813, align 8
  %816 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %817 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %816, i32 0, i32 3
  %818 = load i32, i32* %817, align 4
  %819 = load i32, i32* @SetCRT2ToHiVision, align 4
  %820 = and i32 %818, %819
  %821 = icmp ne i32 %820, 0
  br i1 %821, label %822, label %836

822:                                              ; preds = %810
  %823 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %824 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %823, i32 0, i32 3
  %825 = load i32, i32* %824, align 4
  %826 = load i32, i32* @SetInSlaveMode, align 4
  %827 = and i32 %825, %826
  %828 = icmp ne i32 %827, 0
  br i1 %828, label %829, label %836

829:                                              ; preds = %822
  %830 = load i32, i32* @TVRPLLDIV2XO, align 4
  %831 = xor i32 %830, -1
  %832 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %833 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %832, i32 0, i32 2
  %834 = load i32, i32* %833, align 8
  %835 = and i32 %834, %831
  store i32 %835, i32* %833, align 8
  br label %876

836:                                              ; preds = %822, %810
  %837 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %838 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %837, i32 0, i32 2
  %839 = load i32, i32* %838, align 8
  %840 = load i32, i32* @TVSetYPbPr525p, align 4
  %841 = load i32, i32* @TVSetYPbPr750p, align 4
  %842 = or i32 %840, %841
  %843 = and i32 %839, %842
  %844 = icmp ne i32 %843, 0
  br i1 %844, label %845, label %852

845:                                              ; preds = %836
  %846 = load i32, i32* @TVRPLLDIV2XO, align 4
  %847 = xor i32 %846, -1
  %848 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %849 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %848, i32 0, i32 2
  %850 = load i32, i32* %849, align 8
  %851 = and i32 %850, %847
  store i32 %851, i32* %849, align 8
  br label %875

852:                                              ; preds = %836
  %853 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %854 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %853, i32 0, i32 5
  %855 = load i32, i32* %854, align 8
  %856 = load i32, i32* @VB_SIS30xBLV, align 4
  %857 = and i32 %855, %856
  %858 = icmp ne i32 %857, 0
  br i1 %858, label %874, label %859

859:                                              ; preds = %852
  %860 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %861 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %860, i32 0, i32 2
  %862 = load i32, i32* %861, align 8
  %863 = load i32, i32* @TVSetTVSimuMode, align 4
  %864 = and i32 %862, %863
  %865 = icmp ne i32 %864, 0
  br i1 %865, label %866, label %873

866:                                              ; preds = %859
  %867 = load i32, i32* @TVRPLLDIV2XO, align 4
  %868 = xor i32 %867, -1
  %869 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %870 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %869, i32 0, i32 2
  %871 = load i32, i32* %870, align 8
  %872 = and i32 %871, %868
  store i32 %872, i32* %870, align 8
  br label %873

873:                                              ; preds = %866, %859
  br label %874

874:                                              ; preds = %873, %852
  br label %875

875:                                              ; preds = %874, %845
  br label %876

876:                                              ; preds = %875, %829
  br label %877

877:                                              ; preds = %876, %682
  %878 = load i32, i32* @SetPALTV, align 4
  %879 = xor i32 %878, -1
  %880 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %881 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %880, i32 0, i32 3
  %882 = load i32, i32* %881, align 4
  %883 = and i32 %882, %879
  store i32 %883, i32* %881, align 4
  br label %884

884:                                              ; preds = %877, %34, %28
  ret void
}

declare dso_local i32 @SiS_SetRegAND(i32, i16 zeroext, i32) #1

declare dso_local zeroext i16 @SiS_GetReg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
