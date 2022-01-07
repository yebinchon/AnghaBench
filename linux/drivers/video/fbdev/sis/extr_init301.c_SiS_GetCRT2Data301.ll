; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_GetCRT2Data301.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_GetCRT2Data301.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_LCDData = type { i32, i32, i16, i8, i16, i8 }
%struct.SiS_Private = type { i16, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32, i16, i8, i16, i16, i32, i32, %struct.SiS_LCDData*, %struct.SiS_LCDData*, %struct.SiS_LCDData*, %struct.SiS_LCDData*, %struct.SiS_LCDData*, %struct.SiS_LCDData*, %struct.SiS_LCDData*, %struct.SiS_LCDData*, %struct.SiS_LCDData*, %struct.SiS_LCDData*, %struct.SiS_LCDData*, %struct.SiS_LCDData*, %struct.SiS_LCDData*, %struct.SiS_LCDData*, %struct.SiS_LCDData*, %struct.SiS_LCDData*, %struct.SiS_LCDData*, i64, %struct.SiS_TVData*, %struct.SiS_TVData*, %struct.SiS_TVData*, %struct.SiS_TVData*, %struct.SiS_TVData*, %struct.SiS_TVData*, %struct.SiS_TVData*, %struct.SiS_TVData*, %struct.SiS_TVData*, %struct.SiS_TVData*, %struct.SiS_TVData*, %struct.SiS_TVData*, %struct.SiS_TVData*, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.SiS_TVData = type { i32, i32, i16, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i16, i16, i16 }
%struct.TYPE_3__ = type { i16, i16 }

@SetCRT2ToRAMDAC = common dso_local global i32 0, align 4
@HalfDCLK = common dso_local global i16 0, align 2
@SetCRT2ToTV = common dso_local global i32 0, align 4
@SetCRT2ToHiVision = common dso_local global i32 0, align 4
@SIS_RI_960x600 = common dso_local global i16 0, align 2
@SIS_RI_1024x768 = common dso_local global i16 0, align 2
@SIS_RI_1280x1024 = common dso_local global i16 0, align 2
@SIS_RI_1280x720 = common dso_local global i16 0, align 2
@TVSetTVSimuMode = common dso_local global i32 0, align 4
@ExtHiTVHT = common dso_local global i16 0, align 2
@ExtHiTVVT = common dso_local global i8 0, align 1
@SetInSlaveMode = common dso_local global i32 0, align 4
@StHiTVHT = common dso_local global i16 0, align 2
@StHiTVVT = common dso_local global i8 0, align 1
@SetCRT2ToYPbPr525750 = common dso_local global i32 0, align 4
@TVSetYPbPr750p = common dso_local global i32 0, align 4
@TVSetYPbPr525p = common dso_local global i32 0, align 4
@NTSCHT = common dso_local global i8* null, align 8
@TVSet525p1024 = common dso_local global i32 0, align 4
@NTSC2HT = common dso_local global i8* null, align 8
@NTSCVT = common dso_local global i8* null, align 8
@TVSetNTSC1024 = common dso_local global i32 0, align 4
@TVSetPAL = common dso_local global i32 0, align 4
@PALHT = common dso_local global i32 0, align 4
@PALVT = common dso_local global i32 0, align 4
@SetCRT2ToLCD = common dso_local global i32 0, align 4
@DontExpandLCD = common dso_local global i32 0, align 4
@LCDPass11 = common dso_local global i32 0, align 4
@LCDVESATiming = common dso_local global i32 0, align 4
@SIS_315H = common dso_local global i32 0, align 4
@SiS310_ExtCompaq1280x1024Data = common dso_local global %struct.SiS_LCDData* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i16, i16)* @SiS_GetCRT2Data301 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_GetCRT2Data301(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.SiS_Private*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i8*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca %struct.SiS_LCDData*, align 8
  %18 = alloca %struct.SiS_TVData*, align 8
  %19 = alloca i32, align 4
  store %struct.SiS_Private* %0, %struct.SiS_Private** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  store i8* null, i8** %9, align 8
  store i16 0, i16* %13, align 2
  store %struct.SiS_LCDData* null, %struct.SiS_LCDData** %17, align 8
  store %struct.SiS_TVData* null, %struct.SiS_TVData** %18, align 8
  %20 = load i16, i16* %6, align 2
  %21 = zext i16 %20 to i32
  %22 = icmp sle i32 %21, 19
  br i1 %22, label %23, label %40

23:                                               ; preds = %4
  %24 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %25 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %24, i32 0, i32 64
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i16, i16* %7, align 2
  %28 = zext i16 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i16, i16* %30, align 2
  store i16 %31, i16* %12, align 2
  %32 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %33 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %32, i32 0, i32 64
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i16, i16* %7, align 2
  %36 = zext i16 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i16, i16* %38, align 2
  store i16 %39, i16* %14, align 2
  br label %67

40:                                               ; preds = %4
  %41 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %42 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %41, i32 0, i32 48
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %47 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %46, i32 0, i32 0
  %48 = load i16, i16* %47, align 8
  store i16 %48, i16* %12, align 2
  store i16 0, i16* %14, align 2
  br label %66

49:                                               ; preds = %40
  %50 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %51 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %50, i32 0, i32 63
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i16, i16* %7, align 2
  %54 = zext i16 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i16, i16* %56, align 2
  store i16 %57, i16* %12, align 2
  %58 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %59 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %58, i32 0, i32 63
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i16, i16* %7, align 2
  %62 = zext i16 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i16, i16* %64, align 2
  store i16 %65, i16* %14, align 2
  br label %66

66:                                               ; preds = %49, %45
  br label %67

67:                                               ; preds = %66, %23
  %68 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %69 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %68, i32 0, i32 4
  store i32 0, i32* %69, align 8
  %70 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %71 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %70, i32 0, i32 5
  store i32 50, i32* %71, align 4
  %72 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %73 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %72, i32 0, i32 6
  store i32 0, i32* %73, align 8
  %74 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %75 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %74, i32 0, i32 7
  store i32 0, i32* %75, align 4
  %76 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %77 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %76, i32 0, i32 8
  store i32 0, i32* %77, align 8
  %78 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %79 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %78, i32 0, i32 9
  store i32 0, i32* %79, align 4
  %80 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %81 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %80, i32 0, i32 10
  store i32 0, i32* %81, align 8
  %82 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %83 = load i16, i16* %6, align 2
  %84 = load i16, i16* %7, align 2
  %85 = call i32 @SiS_GetCRT2ResInfo(%struct.SiS_Private* %82, i16 zeroext %83, i16 zeroext %84)
  %86 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %87 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @SetCRT2ToRAMDAC, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %146

92:                                               ; preds = %67
  %93 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %94 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %93, i32 0, i32 48
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %139

97:                                               ; preds = %92
  %98 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %99 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %98, i32 0, i32 11
  store i32 1, i32* %99, align 4
  %100 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %101 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %100, i32 0, i32 12
  store i32 1, i32* %101, align 8
  %102 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %103 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %102, i32 0, i32 14
  %104 = load i16, i16* %103, align 2
  %105 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %106 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %105, i32 0, i32 13
  store i16 %104, i16* %106, align 4
  %107 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %108 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %107, i32 0, i32 16
  %109 = load i16, i16* %108, align 2
  %110 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %111 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %110, i32 0, i32 15
  store i16 %109, i16* %111, align 8
  %112 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %113 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %112, i32 0, i32 17
  %114 = load i16, i16* %113, align 4
  store i16 %114, i16* %10, align 2
  %115 = load i16, i16* %12, align 2
  %116 = zext i16 %115 to i32
  %117 = load i16, i16* @HalfDCLK, align 2
  %118 = zext i16 %117 to i32
  %119 = and i32 %116, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %97
  %122 = load i16, i16* %10, align 2
  %123 = zext i16 %122 to i32
  %124 = shl i32 %123, 1
  %125 = trunc i32 %124 to i16
  store i16 %125, i16* %10, align 2
  br label %126

126:                                              ; preds = %121, %97
  %127 = load i16, i16* %10, align 2
  %128 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %129 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %128, i32 0, i32 19
  store i16 %127, i16* %129, align 8
  %130 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %131 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %130, i32 0, i32 18
  store i16 %127, i16* %131, align 2
  %132 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %133 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %132, i32 0, i32 22
  %134 = load i8, i8* %133, align 4
  %135 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %136 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %135, i32 0, i32 21
  store i8 %134, i8* %136, align 1
  %137 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %138 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %137, i32 0, i32 20
  store i8 %134, i8* %138, align 2
  br label %145

139:                                              ; preds = %92
  %140 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %141 = load i16, i16* %6, align 2
  %142 = load i16, i16* %7, align 2
  %143 = load i16, i16* %8, align 2
  %144 = call i32 @SiS_GetRAMDAC2DATA(%struct.SiS_Private* %140, i16 zeroext %141, i16 zeroext %142, i16 zeroext %143)
  br label %145

145:                                              ; preds = %139, %126
  br label %1031

146:                                              ; preds = %67
  %147 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %148 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @SetCRT2ToTV, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %603

153:                                              ; preds = %146
  %154 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %155 = load i16, i16* %6, align 2
  %156 = load i16, i16* %7, align 2
  %157 = load i16, i16* %8, align 2
  %158 = call i32 @SiS_GetCRT2Ptr(%struct.SiS_Private* %154, i16 zeroext %155, i16 zeroext %156, i16 zeroext %157, i16* %15, i16* %16)
  %159 = load i16, i16* %15, align 2
  %160 = zext i16 %159 to i32
  switch i32 %160, label %213 [
    i32 2, label %161
    i32 3, label %165
    i32 4, label %169
    i32 5, label %173
    i32 6, label %177
    i32 7, label %181
    i32 8, label %185
    i32 9, label %189
    i32 10, label %193
    i32 11, label %197
    i32 12, label %201
    i32 13, label %205
    i32 14, label %209
  ]

161:                                              ; preds = %153
  %162 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %163 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %162, i32 0, i32 61
  %164 = load %struct.SiS_TVData*, %struct.SiS_TVData** %163, align 8
  store %struct.SiS_TVData* %164, %struct.SiS_TVData** %18, align 8
  br label %217

165:                                              ; preds = %153
  %166 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %167 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %166, i32 0, i32 60
  %168 = load %struct.SiS_TVData*, %struct.SiS_TVData** %167, align 8
  store %struct.SiS_TVData* %168, %struct.SiS_TVData** %18, align 8
  br label %217

169:                                              ; preds = %153
  %170 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %171 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %170, i32 0, i32 59
  %172 = load %struct.SiS_TVData*, %struct.SiS_TVData** %171, align 8
  store %struct.SiS_TVData* %172, %struct.SiS_TVData** %18, align 8
  br label %217

173:                                              ; preds = %153
  %174 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %175 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %174, i32 0, i32 58
  %176 = load %struct.SiS_TVData*, %struct.SiS_TVData** %175, align 8
  store %struct.SiS_TVData* %176, %struct.SiS_TVData** %18, align 8
  br label %217

177:                                              ; preds = %153
  %178 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %179 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %178, i32 0, i32 57
  %180 = load %struct.SiS_TVData*, %struct.SiS_TVData** %179, align 8
  store %struct.SiS_TVData* %180, %struct.SiS_TVData** %18, align 8
  br label %217

181:                                              ; preds = %153
  %182 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %183 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %182, i32 0, i32 56
  %184 = load %struct.SiS_TVData*, %struct.SiS_TVData** %183, align 8
  store %struct.SiS_TVData* %184, %struct.SiS_TVData** %18, align 8
  br label %217

185:                                              ; preds = %153
  %186 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %187 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %186, i32 0, i32 49
  %188 = load %struct.SiS_TVData*, %struct.SiS_TVData** %187, align 8
  store %struct.SiS_TVData* %188, %struct.SiS_TVData** %18, align 8
  br label %217

189:                                              ; preds = %153
  %190 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %191 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %190, i32 0, i32 55
  %192 = load %struct.SiS_TVData*, %struct.SiS_TVData** %191, align 8
  store %struct.SiS_TVData* %192, %struct.SiS_TVData** %18, align 8
  br label %217

193:                                              ; preds = %153
  %194 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %195 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %194, i32 0, i32 54
  %196 = load %struct.SiS_TVData*, %struct.SiS_TVData** %195, align 8
  store %struct.SiS_TVData* %196, %struct.SiS_TVData** %18, align 8
  br label %217

197:                                              ; preds = %153
  %198 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %199 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %198, i32 0, i32 53
  %200 = load %struct.SiS_TVData*, %struct.SiS_TVData** %199, align 8
  store %struct.SiS_TVData* %200, %struct.SiS_TVData** %18, align 8
  br label %217

201:                                              ; preds = %153
  %202 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %203 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %202, i32 0, i32 52
  %204 = load %struct.SiS_TVData*, %struct.SiS_TVData** %203, align 8
  store %struct.SiS_TVData* %204, %struct.SiS_TVData** %18, align 8
  br label %217

205:                                              ; preds = %153
  %206 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %207 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %206, i32 0, i32 51
  %208 = load %struct.SiS_TVData*, %struct.SiS_TVData** %207, align 8
  store %struct.SiS_TVData* %208, %struct.SiS_TVData** %18, align 8
  br label %217

209:                                              ; preds = %153
  %210 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %211 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %210, i32 0, i32 50
  %212 = load %struct.SiS_TVData*, %struct.SiS_TVData** %211, align 8
  store %struct.SiS_TVData* %212, %struct.SiS_TVData** %18, align 8
  br label %217

213:                                              ; preds = %153
  %214 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %215 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %214, i32 0, i32 49
  %216 = load %struct.SiS_TVData*, %struct.SiS_TVData** %215, align 8
  store %struct.SiS_TVData* %216, %struct.SiS_TVData** %18, align 8
  br label %217

217:                                              ; preds = %213, %209, %205, %201, %197, %193, %189, %185, %181, %177, %173, %169, %165, %161
  %218 = load %struct.SiS_TVData*, %struct.SiS_TVData** %18, align 8
  %219 = load i16, i16* %16, align 2
  %220 = zext i16 %219 to i32
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %218, i64 %221
  %223 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %226 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %225, i32 0, i32 11
  store i32 %224, i32* %226, align 4
  %227 = load %struct.SiS_TVData*, %struct.SiS_TVData** %18, align 8
  %228 = load i16, i16* %16, align 2
  %229 = zext i16 %228 to i32
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %227, i64 %230
  %232 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %235 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %234, i32 0, i32 12
  store i32 %233, i32* %235, align 8
  %236 = load %struct.SiS_TVData*, %struct.SiS_TVData** %18, align 8
  %237 = load i16, i16* %16, align 2
  %238 = zext i16 %237 to i32
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %236, i64 %239
  %241 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %240, i32 0, i32 2
  %242 = load i16, i16* %241, align 4
  %243 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %244 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %243, i32 0, i32 18
  store i16 %242, i16* %244, align 2
  %245 = load %struct.SiS_TVData*, %struct.SiS_TVData** %18, align 8
  %246 = load i16, i16* %16, align 2
  %247 = zext i16 %246 to i32
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %245, i64 %248
  %250 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %249, i32 0, i32 3
  %251 = load i8, i8* %250, align 2
  %252 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %253 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %252, i32 0, i32 20
  store i8 %251, i8* %253, align 2
  %254 = load %struct.SiS_TVData*, %struct.SiS_TVData** %18, align 8
  %255 = load i16, i16* %16, align 2
  %256 = zext i16 %255 to i32
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %254, i64 %257
  %259 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %258, i32 0, i32 4
  %260 = load i16, i16* %259, align 4
  %261 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %262 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %261, i32 0, i32 13
  store i16 %260, i16* %262, align 4
  %263 = load %struct.SiS_TVData*, %struct.SiS_TVData** %18, align 8
  %264 = load i16, i16* %16, align 2
  %265 = zext i16 %264 to i32
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %263, i64 %266
  %268 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %267, i32 0, i32 5
  %269 = load i16, i16* %268, align 2
  %270 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %271 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %270, i32 0, i32 15
  store i16 %269, i16* %271, align 8
  %272 = load %struct.SiS_TVData*, %struct.SiS_TVData** %18, align 8
  %273 = load i16, i16* %16, align 2
  %274 = zext i16 %273 to i32
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %272, i64 %275
  %277 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %276, i32 0, i32 6
  %278 = load i32, i32* %277, align 4
  %279 = and i32 %278, 4095
  %280 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %281 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %280, i32 0, i32 10
  store i32 %279, i32* %281, align 8
  %282 = load i16, i16* %12, align 2
  %283 = zext i16 %282 to i32
  %284 = load i16, i16* @HalfDCLK, align 2
  %285 = zext i16 %284 to i32
  %286 = and i32 %283, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %346

288:                                              ; preds = %217
  %289 = load %struct.SiS_TVData*, %struct.SiS_TVData** %18, align 8
  %290 = load i16, i16* %16, align 2
  %291 = zext i16 %290 to i32
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %289, i64 %292
  %294 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %293, i32 0, i32 7
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %297 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %296, i32 0, i32 5
  store i32 %295, i32* %297, align 4
  %298 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %299 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %298, i32 0, i32 10
  %300 = load i32, i32* %299, align 8
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %345

302:                                              ; preds = %288
  %303 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %304 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %303, i32 0, i32 10
  %305 = load i32, i32* %304, align 8
  %306 = add nsw i32 %305, 3
  %307 = ashr i32 %306, 1
  %308 = sub nsw i32 %307, 3
  %309 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %310 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %309, i32 0, i32 10
  store i32 %308, i32* %310, align 8
  %311 = load %struct.SiS_TVData*, %struct.SiS_TVData** %18, align 8
  %312 = load i16, i16* %16, align 2
  %313 = zext i16 %312 to i32
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %311, i64 %314
  %316 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %315, i32 0, i32 6
  %317 = load i32, i32* %316, align 4
  %318 = ashr i32 %317, 12
  %319 = and i32 %318, 7
  %320 = trunc i32 %319 to i16
  store i16 %320, i16* %10, align 2
  %321 = load %struct.SiS_TVData*, %struct.SiS_TVData** %18, align 8
  %322 = load i16, i16* %16, align 2
  %323 = zext i16 %322 to i32
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %321, i64 %324
  %326 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %325, i32 0, i32 6
  %327 = load i32, i32* %326, align 4
  %328 = and i32 %327, 32768
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %337

330:                                              ; preds = %302
  %331 = load i16, i16* %10, align 2
  %332 = zext i16 %331 to i32
  %333 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %334 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %333, i32 0, i32 10
  %335 = load i32, i32* %334, align 8
  %336 = sub nsw i32 %335, %332
  store i32 %336, i32* %334, align 8
  br label %344

337:                                              ; preds = %302
  %338 = load i16, i16* %10, align 2
  %339 = zext i16 %338 to i32
  %340 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %341 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %340, i32 0, i32 10
  %342 = load i32, i32* %341, align 8
  %343 = add nsw i32 %342, %339
  store i32 %343, i32* %341, align 8
  br label %344

344:                                              ; preds = %337, %330
  br label %345

345:                                              ; preds = %344, %288
  br label %356

346:                                              ; preds = %217
  %347 = load %struct.SiS_TVData*, %struct.SiS_TVData** %18, align 8
  %348 = load i16, i16* %16, align 2
  %349 = zext i16 %348 to i32
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %347, i64 %350
  %352 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %351, i32 0, i32 8
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %355 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %354, i32 0, i32 5
  store i32 %353, i32* %355, align 4
  br label %356

356:                                              ; preds = %346, %345
  %357 = load %struct.SiS_TVData*, %struct.SiS_TVData** %18, align 8
  %358 = load i16, i16* %16, align 2
  %359 = zext i16 %358 to i32
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %357, i64 %360
  %362 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %361, i32 0, i32 9
  %363 = load i32, i32* %362, align 4
  %364 = shl i32 %363, 7
  %365 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %366 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %365, i32 0, i32 4
  store i32 %364, i32* %366, align 8
  %367 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %368 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* @SetCRT2ToHiVision, align 4
  %371 = and i32 %369, %370
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %441

373:                                              ; preds = %356
  %374 = load i16, i16* %14, align 2
  %375 = zext i16 %374 to i32
  %376 = load i16, i16* @SIS_RI_960x600, align 2
  %377 = zext i16 %376 to i32
  %378 = icmp eq i32 %375, %377
  br i1 %378, label %397, label %379

379:                                              ; preds = %373
  %380 = load i16, i16* %14, align 2
  %381 = zext i16 %380 to i32
  %382 = load i16, i16* @SIS_RI_1024x768, align 2
  %383 = zext i16 %382 to i32
  %384 = icmp eq i32 %381, %383
  br i1 %384, label %397, label %385

385:                                              ; preds = %379
  %386 = load i16, i16* %14, align 2
  %387 = zext i16 %386 to i32
  %388 = load i16, i16* @SIS_RI_1280x1024, align 2
  %389 = zext i16 %388 to i32
  %390 = icmp eq i32 %387, %389
  br i1 %390, label %397, label %391

391:                                              ; preds = %385
  %392 = load i16, i16* %14, align 2
  %393 = zext i16 %392 to i32
  %394 = load i16, i16* @SIS_RI_1280x720, align 2
  %395 = zext i16 %394 to i32
  %396 = icmp eq i32 %393, %395
  br i1 %396, label %397, label %400

397:                                              ; preds = %391, %385, %379, %373
  %398 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %399 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %398, i32 0, i32 4
  store i32 64, i32* %399, align 8
  br label %400

400:                                              ; preds = %397, %391
  %401 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %402 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %401, i32 0, i32 16
  %403 = load i16, i16* %402, align 2
  %404 = zext i16 %403 to i32
  %405 = icmp eq i32 %404, 350
  br i1 %405, label %406, label %412

406:                                              ; preds = %400
  %407 = load i32, i32* @TVSetTVSimuMode, align 4
  %408 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %409 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %408, i32 0, i32 23
  %410 = load i32, i32* %409, align 8
  %411 = or i32 %410, %407
  store i32 %411, i32* %409, align 8
  br label %412

412:                                              ; preds = %406, %400
  %413 = load i16, i16* @ExtHiTVHT, align 2
  %414 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %415 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %414, i32 0, i32 19
  store i16 %413, i16* %415, align 8
  %416 = load i8, i8* @ExtHiTVVT, align 1
  %417 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %418 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %417, i32 0, i32 21
  store i8 %416, i8* %418, align 1
  %419 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %420 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = load i32, i32* @SetInSlaveMode, align 4
  %423 = and i32 %421, %422
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %440

425:                                              ; preds = %412
  %426 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %427 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %426, i32 0, i32 23
  %428 = load i32, i32* %427, align 8
  %429 = load i32, i32* @TVSetTVSimuMode, align 4
  %430 = and i32 %428, %429
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %439

432:                                              ; preds = %425
  %433 = load i16, i16* @StHiTVHT, align 2
  %434 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %435 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %434, i32 0, i32 19
  store i16 %433, i16* %435, align 8
  %436 = load i8, i8* @StHiTVVT, align 1
  %437 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %438 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %437, i32 0, i32 21
  store i8 %436, i8* %438, align 1
  br label %439

439:                                              ; preds = %432, %425
  br label %440

440:                                              ; preds = %439, %412
  br label %602

441:                                              ; preds = %356
  %442 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %443 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 4
  %445 = load i32, i32* @SetCRT2ToYPbPr525750, align 4
  %446 = and i32 %444, %445
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %511

448:                                              ; preds = %441
  %449 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %450 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %449, i32 0, i32 23
  %451 = load i32, i32* %450, align 8
  %452 = load i32, i32* @TVSetYPbPr750p, align 4
  %453 = and i32 %451, %452
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %460

455:                                              ; preds = %448
  %456 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %457 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %456, i32 0, i32 19
  store i16 1650, i16* %457, align 8
  %458 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %459 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %458, i32 0, i32 21
  store i8 -18, i8* %459, align 1
  br label %510

460:                                              ; preds = %448
  %461 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %462 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %461, i32 0, i32 23
  %463 = load i32, i32* %462, align 8
  %464 = load i32, i32* @TVSetYPbPr525p, align 4
  %465 = and i32 %463, %464
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %488

467:                                              ; preds = %460
  %468 = load i8*, i8** @NTSCHT, align 8
  %469 = ptrtoint i8* %468 to i16
  %470 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %471 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %470, i32 0, i32 19
  store i16 %469, i16* %471, align 8
  %472 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %473 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %472, i32 0, i32 23
  %474 = load i32, i32* %473, align 8
  %475 = load i32, i32* @TVSet525p1024, align 4
  %476 = and i32 %474, %475
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %483

478:                                              ; preds = %467
  %479 = load i8*, i8** @NTSC2HT, align 8
  %480 = ptrtoint i8* %479 to i16
  %481 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %482 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %481, i32 0, i32 19
  store i16 %480, i16* %482, align 8
  br label %483

483:                                              ; preds = %478, %467
  %484 = load i8*, i8** @NTSCVT, align 8
  %485 = ptrtoint i8* %484 to i8
  %486 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %487 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %486, i32 0, i32 21
  store i8 %485, i8* %487, align 1
  br label %509

488:                                              ; preds = %460
  %489 = load i8*, i8** @NTSCHT, align 8
  %490 = ptrtoint i8* %489 to i16
  %491 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %492 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %491, i32 0, i32 19
  store i16 %490, i16* %492, align 8
  %493 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %494 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %493, i32 0, i32 23
  %495 = load i32, i32* %494, align 8
  %496 = load i32, i32* @TVSetNTSC1024, align 4
  %497 = and i32 %495, %496
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %499, label %504

499:                                              ; preds = %488
  %500 = load i8*, i8** @NTSC2HT, align 8
  %501 = ptrtoint i8* %500 to i16
  %502 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %503 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %502, i32 0, i32 19
  store i16 %501, i16* %503, align 8
  br label %504

504:                                              ; preds = %499, %488
  %505 = load i8*, i8** @NTSCVT, align 8
  %506 = ptrtoint i8* %505 to i8
  %507 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %508 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %507, i32 0, i32 21
  store i8 %506, i8* %508, align 1
  br label %509

509:                                              ; preds = %504, %483
  br label %510

510:                                              ; preds = %509, %455
  br label %601

511:                                              ; preds = %441
  %512 = load %struct.SiS_TVData*, %struct.SiS_TVData** %18, align 8
  %513 = load i16, i16* %16, align 2
  %514 = zext i16 %513 to i32
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %512, i64 %515
  %517 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %516, i32 0, i32 10
  %518 = load i32, i32* %517, align 4
  %519 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %520 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %519, i32 0, i32 6
  store i32 %518, i32* %520, align 8
  %521 = load %struct.SiS_TVData*, %struct.SiS_TVData** %18, align 8
  %522 = load i16, i16* %16, align 2
  %523 = zext i16 %522 to i32
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %521, i64 %524
  %526 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %525, i32 0, i32 11
  %527 = load i32, i32* %526, align 4
  %528 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %529 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %528, i32 0, i32 7
  store i32 %527, i32* %529, align 4
  %530 = load %struct.SiS_TVData*, %struct.SiS_TVData** %18, align 8
  %531 = load i16, i16* %16, align 2
  %532 = zext i16 %531 to i32
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %530, i64 %533
  %535 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %534, i32 0, i32 12
  %536 = load i32, i32* %535, align 4
  %537 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %538 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %537, i32 0, i32 8
  store i32 %536, i32* %538, align 8
  %539 = load %struct.SiS_TVData*, %struct.SiS_TVData** %18, align 8
  %540 = load i16, i16* %16, align 2
  %541 = zext i16 %540 to i32
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %539, i64 %542
  %544 = getelementptr inbounds %struct.SiS_TVData, %struct.SiS_TVData* %543, i32 0, i32 13
  %545 = load i32, i32* %544, align 4
  %546 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %547 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %546, i32 0, i32 9
  store i32 %545, i32* %547, align 4
  %548 = load i16, i16* %12, align 2
  %549 = zext i16 %548 to i32
  %550 = load i16, i16* @HalfDCLK, align 2
  %551 = zext i16 %550 to i32
  %552 = and i32 %549, %551
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %554, label %563

554:                                              ; preds = %511
  %555 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %556 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %555, i32 0, i32 6
  store i32 0, i32* %556, align 8
  %557 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %558 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %557, i32 0, i32 7
  store i32 244, i32* %558, align 4
  %559 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %560 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %559, i32 0, i32 8
  store i32 16, i32* %560, align 8
  %561 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %562 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %561, i32 0, i32 9
  store i32 56, i32* %562, align 4
  br label %563

563:                                              ; preds = %554, %511
  %564 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %565 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %564, i32 0, i32 23
  %566 = load i32, i32* %565, align 8
  %567 = load i32, i32* @TVSetPAL, align 4
  %568 = and i32 %566, %567
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %591, label %570

570:                                              ; preds = %563
  %571 = load i8*, i8** @NTSCHT, align 8
  %572 = ptrtoint i8* %571 to i16
  %573 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %574 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %573, i32 0, i32 19
  store i16 %572, i16* %574, align 8
  %575 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %576 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %575, i32 0, i32 23
  %577 = load i32, i32* %576, align 8
  %578 = load i32, i32* @TVSetNTSC1024, align 4
  %579 = and i32 %577, %578
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %581, label %586

581:                                              ; preds = %570
  %582 = load i8*, i8** @NTSC2HT, align 8
  %583 = ptrtoint i8* %582 to i16
  %584 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %585 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %584, i32 0, i32 19
  store i16 %583, i16* %585, align 8
  br label %586

586:                                              ; preds = %581, %570
  %587 = load i8*, i8** @NTSCVT, align 8
  %588 = ptrtoint i8* %587 to i8
  %589 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %590 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %589, i32 0, i32 21
  store i8 %588, i8* %590, align 1
  br label %600

591:                                              ; preds = %563
  %592 = load i32, i32* @PALHT, align 4
  %593 = trunc i32 %592 to i16
  %594 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %595 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %594, i32 0, i32 19
  store i16 %593, i16* %595, align 8
  %596 = load i32, i32* @PALVT, align 4
  %597 = trunc i32 %596 to i8
  %598 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %599 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %598, i32 0, i32 21
  store i8 %597, i8* %599, align 1
  br label %600

600:                                              ; preds = %591, %586
  br label %601

601:                                              ; preds = %600, %510
  br label %602

602:                                              ; preds = %601, %440
  br label %1030

603:                                              ; preds = %146
  %604 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %605 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %604, i32 0, i32 1
  %606 = load i32, i32* %605, align 4
  %607 = load i32, i32* @SetCRT2ToLCD, align 4
  %608 = and i32 %606, %607
  %609 = icmp ne i32 %608, 0
  br i1 %609, label %610, label %1029

610:                                              ; preds = %603
  %611 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %612 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %611, i32 0, i32 11
  store i32 1, i32* %612, align 4
  %613 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %614 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %613, i32 0, i32 12
  store i32 1, i32* %614, align 8
  %615 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %616 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %615, i32 0, i32 48
  %617 = load i64, i64* %616, align 8
  %618 = icmp ne i64 %617, 0
  br i1 %618, label %619, label %657

619:                                              ; preds = %610
  %620 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %621 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %620, i32 0, i32 14
  %622 = load i16, i16* %621, align 2
  %623 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %624 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %623, i32 0, i32 13
  store i16 %622, i16* %624, align 4
  %625 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %626 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %625, i32 0, i32 16
  %627 = load i16, i16* %626, align 2
  %628 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %629 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %628, i32 0, i32 15
  store i16 %627, i16* %629, align 8
  %630 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %631 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %630, i32 0, i32 17
  %632 = load i16, i16* %631, align 4
  store i16 %632, i16* %10, align 2
  %633 = load i16, i16* %12, align 2
  %634 = zext i16 %633 to i32
  %635 = load i16, i16* @HalfDCLK, align 2
  %636 = zext i16 %635 to i32
  %637 = and i32 %634, %636
  %638 = icmp ne i32 %637, 0
  br i1 %638, label %639, label %644

639:                                              ; preds = %619
  %640 = load i16, i16* %10, align 2
  %641 = zext i16 %640 to i32
  %642 = shl i32 %641, 1
  %643 = trunc i32 %642 to i16
  store i16 %643, i16* %10, align 2
  br label %644

644:                                              ; preds = %639, %619
  %645 = load i16, i16* %10, align 2
  %646 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %647 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %646, i32 0, i32 19
  store i16 %645, i16* %647, align 8
  %648 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %649 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %648, i32 0, i32 18
  store i16 %645, i16* %649, align 2
  %650 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %651 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %650, i32 0, i32 22
  %652 = load i8, i8* %651, align 4
  %653 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %654 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %653, i32 0, i32 21
  store i8 %652, i8* %654, align 1
  %655 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %656 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %655, i32 0, i32 20
  store i8 %652, i8* %656, align 2
  br label %1028

657:                                              ; preds = %610
  store i32 0, i32* %19, align 4
  %658 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %659 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %658, i32 0, i32 24
  %660 = load i32, i32* %659, align 4
  %661 = load i32, i32* @DontExpandLCD, align 4
  %662 = and i32 %660, %661
  %663 = icmp ne i32 %662, 0
  br i1 %663, label %664, label %692

664:                                              ; preds = %657
  %665 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %666 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %665, i32 0, i32 24
  %667 = load i32, i32* %666, align 4
  %668 = load i32, i32* @LCDPass11, align 4
  %669 = and i32 %667, %668
  %670 = icmp ne i32 %669, 0
  br i1 %670, label %692, label %671

671:                                              ; preds = %664
  %672 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %673 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %672, i32 0, i32 25
  %674 = load i16, i16* %673, align 8
  %675 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %676 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %675, i32 0, i32 18
  store i16 %674, i16* %676, align 2
  %677 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %678 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %677, i32 0, i32 26
  %679 = load i8, i8* %678, align 2
  %680 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %681 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %680, i32 0, i32 20
  store i8 %679, i8* %681, align 2
  %682 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %683 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %682, i32 0, i32 25
  %684 = load i16, i16* %683, align 8
  %685 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %686 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %685, i32 0, i32 19
  store i16 %684, i16* %686, align 8
  %687 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %688 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %687, i32 0, i32 26
  %689 = load i8, i8* %688, align 2
  %690 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %691 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %690, i32 0, i32 21
  store i8 %689, i8* %691, align 1
  store i32 1, i32* %19, align 4
  br label %708

692:                                              ; preds = %664, %657
  %693 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %694 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %693, i32 0, i32 24
  %695 = load i32, i32* %694, align 4
  %696 = load i32, i32* @DontExpandLCD, align 4
  %697 = and i32 %695, %696
  %698 = icmp ne i32 %697, 0
  br i1 %698, label %707, label %699

699:                                              ; preds = %692
  %700 = load i16, i16* %13, align 2
  %701 = zext i16 %700 to i32
  %702 = icmp ne i32 %701, 0
  br i1 %702, label %703, label %707

703:                                              ; preds = %699
  %704 = load i8*, i8** %9, align 8
  %705 = icmp ne i8* %704, null
  br i1 %705, label %706, label %707

706:                                              ; preds = %703
  br label %707

707:                                              ; preds = %706, %703, %699, %692
  br label %708

708:                                              ; preds = %707, %671
  %709 = load i32, i32* %19, align 4
  %710 = icmp ne i32 %709, 0
  br i1 %710, label %846, label %711

711:                                              ; preds = %708
  %712 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %713 = load i16, i16* %6, align 2
  %714 = load i16, i16* %7, align 2
  %715 = load i16, i16* %8, align 2
  %716 = call i32 @SiS_GetCRT2Ptr(%struct.SiS_Private* %712, i16 zeroext %713, i16 zeroext %714, i16 zeroext %715, i16* %15, i16* %16)
  %717 = load i16, i16* %15, align 2
  %718 = zext i16 %717 to i32
  switch i32 %718, label %787 [
    i32 138, label %719
    i32 170, label %723
    i32 136, label %727
    i32 168, label %727
    i32 135, label %731
    i32 167, label %735
    i32 134, label %739
    i32 166, label %739
    i32 133, label %743
    i32 165, label %743
    i32 132, label %747
    i32 164, label %747
    i32 131, label %751
    i32 163, label %751
    i32 137, label %755
    i32 169, label %759
    i32 130, label %763
    i32 162, label %767
    i32 129, label %771
    i32 161, label %775
    i32 128, label %779
    i32 160, label %779
    i32 100, label %783
  ]

719:                                              ; preds = %711
  %720 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %721 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %720, i32 0, i32 31
  %722 = load %struct.SiS_LCDData*, %struct.SiS_LCDData** %721, align 8
  store %struct.SiS_LCDData* %722, %struct.SiS_LCDData** %17, align 8
  br label %791

723:                                              ; preds = %711
  %724 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %725 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %724, i32 0, i32 47
  %726 = load %struct.SiS_LCDData*, %struct.SiS_LCDData** %725, align 8
  store %struct.SiS_LCDData* %726, %struct.SiS_LCDData** %17, align 8
  br label %791

727:                                              ; preds = %711, %711
  %728 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %729 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %728, i32 0, i32 46
  %730 = load %struct.SiS_LCDData*, %struct.SiS_LCDData** %729, align 8
  store %struct.SiS_LCDData* %730, %struct.SiS_LCDData** %17, align 8
  br label %791

731:                                              ; preds = %711
  %732 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %733 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %732, i32 0, i32 45
  %734 = load %struct.SiS_LCDData*, %struct.SiS_LCDData** %733, align 8
  store %struct.SiS_LCDData* %734, %struct.SiS_LCDData** %17, align 8
  br label %791

735:                                              ; preds = %711
  %736 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %737 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %736, i32 0, i32 44
  %738 = load %struct.SiS_LCDData*, %struct.SiS_LCDData** %737, align 8
  store %struct.SiS_LCDData* %738, %struct.SiS_LCDData** %17, align 8
  br label %791

739:                                              ; preds = %711, %711
  %740 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %741 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %740, i32 0, i32 43
  %742 = load %struct.SiS_LCDData*, %struct.SiS_LCDData** %741, align 8
  store %struct.SiS_LCDData* %742, %struct.SiS_LCDData** %17, align 8
  br label %791

743:                                              ; preds = %711, %711
  %744 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %745 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %744, i32 0, i32 42
  %746 = load %struct.SiS_LCDData*, %struct.SiS_LCDData** %745, align 8
  store %struct.SiS_LCDData* %746, %struct.SiS_LCDData** %17, align 8
  br label %791

747:                                              ; preds = %711, %711
  %748 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %749 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %748, i32 0, i32 41
  %750 = load %struct.SiS_LCDData*, %struct.SiS_LCDData** %749, align 8
  store %struct.SiS_LCDData* %750, %struct.SiS_LCDData** %17, align 8
  br label %791

751:                                              ; preds = %711, %711
  %752 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %753 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %752, i32 0, i32 40
  %754 = load %struct.SiS_LCDData*, %struct.SiS_LCDData** %753, align 8
  store %struct.SiS_LCDData* %754, %struct.SiS_LCDData** %17, align 8
  br label %791

755:                                              ; preds = %711
  %756 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %757 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %756, i32 0, i32 39
  %758 = load %struct.SiS_LCDData*, %struct.SiS_LCDData** %757, align 8
  store %struct.SiS_LCDData* %758, %struct.SiS_LCDData** %17, align 8
  br label %791

759:                                              ; preds = %711
  %760 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %761 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %760, i32 0, i32 32
  %762 = load %struct.SiS_LCDData*, %struct.SiS_LCDData** %761, align 8
  store %struct.SiS_LCDData* %762, %struct.SiS_LCDData** %17, align 8
  br label %791

763:                                              ; preds = %711
  %764 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %765 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %764, i32 0, i32 38
  %766 = load %struct.SiS_LCDData*, %struct.SiS_LCDData** %765, align 8
  store %struct.SiS_LCDData* %766, %struct.SiS_LCDData** %17, align 8
  br label %791

767:                                              ; preds = %711
  %768 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %769 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %768, i32 0, i32 37
  %770 = load %struct.SiS_LCDData*, %struct.SiS_LCDData** %769, align 8
  store %struct.SiS_LCDData* %770, %struct.SiS_LCDData** %17, align 8
  br label %791

771:                                              ; preds = %711
  %772 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %773 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %772, i32 0, i32 36
  %774 = load %struct.SiS_LCDData*, %struct.SiS_LCDData** %773, align 8
  store %struct.SiS_LCDData* %774, %struct.SiS_LCDData** %17, align 8
  br label %791

775:                                              ; preds = %711
  %776 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %777 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %776, i32 0, i32 35
  %778 = load %struct.SiS_LCDData*, %struct.SiS_LCDData** %777, align 8
  store %struct.SiS_LCDData* %778, %struct.SiS_LCDData** %17, align 8
  br label %791

779:                                              ; preds = %711, %711
  %780 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %781 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %780, i32 0, i32 34
  %782 = load %struct.SiS_LCDData*, %struct.SiS_LCDData** %781, align 8
  store %struct.SiS_LCDData* %782, %struct.SiS_LCDData** %17, align 8
  br label %791

783:                                              ; preds = %711
  %784 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %785 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %784, i32 0, i32 33
  %786 = load %struct.SiS_LCDData*, %struct.SiS_LCDData** %785, align 8
  store %struct.SiS_LCDData* %786, %struct.SiS_LCDData** %17, align 8
  br label %791

787:                                              ; preds = %711
  %788 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %789 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %788, i32 0, i32 31
  %790 = load %struct.SiS_LCDData*, %struct.SiS_LCDData** %789, align 8
  store %struct.SiS_LCDData* %790, %struct.SiS_LCDData** %17, align 8
  br label %791

791:                                              ; preds = %787, %783, %779, %775, %771, %767, %763, %759, %755, %751, %747, %743, %739, %735, %731, %727, %723, %719
  %792 = load %struct.SiS_LCDData*, %struct.SiS_LCDData** %17, align 8
  %793 = load i16, i16* %16, align 2
  %794 = zext i16 %793 to i32
  %795 = sext i32 %794 to i64
  %796 = getelementptr inbounds %struct.SiS_LCDData, %struct.SiS_LCDData* %792, i64 %795
  %797 = getelementptr inbounds %struct.SiS_LCDData, %struct.SiS_LCDData* %796, i32 0, i32 0
  %798 = load i32, i32* %797, align 4
  %799 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %800 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %799, i32 0, i32 11
  store i32 %798, i32* %800, align 4
  %801 = load %struct.SiS_LCDData*, %struct.SiS_LCDData** %17, align 8
  %802 = load i16, i16* %16, align 2
  %803 = zext i16 %802 to i32
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds %struct.SiS_LCDData, %struct.SiS_LCDData* %801, i64 %804
  %806 = getelementptr inbounds %struct.SiS_LCDData, %struct.SiS_LCDData* %805, i32 0, i32 1
  %807 = load i32, i32* %806, align 4
  %808 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %809 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %808, i32 0, i32 12
  store i32 %807, i32* %809, align 8
  %810 = load %struct.SiS_LCDData*, %struct.SiS_LCDData** %17, align 8
  %811 = load i16, i16* %16, align 2
  %812 = zext i16 %811 to i32
  %813 = sext i32 %812 to i64
  %814 = getelementptr inbounds %struct.SiS_LCDData, %struct.SiS_LCDData* %810, i64 %813
  %815 = getelementptr inbounds %struct.SiS_LCDData, %struct.SiS_LCDData* %814, i32 0, i32 2
  %816 = load i16, i16* %815, align 4
  %817 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %818 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %817, i32 0, i32 18
  store i16 %816, i16* %818, align 2
  %819 = load %struct.SiS_LCDData*, %struct.SiS_LCDData** %17, align 8
  %820 = load i16, i16* %16, align 2
  %821 = zext i16 %820 to i32
  %822 = sext i32 %821 to i64
  %823 = getelementptr inbounds %struct.SiS_LCDData, %struct.SiS_LCDData* %819, i64 %822
  %824 = getelementptr inbounds %struct.SiS_LCDData, %struct.SiS_LCDData* %823, i32 0, i32 3
  %825 = load i8, i8* %824, align 2
  %826 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %827 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %826, i32 0, i32 20
  store i8 %825, i8* %827, align 2
  %828 = load %struct.SiS_LCDData*, %struct.SiS_LCDData** %17, align 8
  %829 = load i16, i16* %16, align 2
  %830 = zext i16 %829 to i32
  %831 = sext i32 %830 to i64
  %832 = getelementptr inbounds %struct.SiS_LCDData, %struct.SiS_LCDData* %828, i64 %831
  %833 = getelementptr inbounds %struct.SiS_LCDData, %struct.SiS_LCDData* %832, i32 0, i32 4
  %834 = load i16, i16* %833, align 4
  %835 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %836 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %835, i32 0, i32 19
  store i16 %834, i16* %836, align 8
  %837 = load %struct.SiS_LCDData*, %struct.SiS_LCDData** %17, align 8
  %838 = load i16, i16* %16, align 2
  %839 = zext i16 %838 to i32
  %840 = sext i32 %839 to i64
  %841 = getelementptr inbounds %struct.SiS_LCDData, %struct.SiS_LCDData* %837, i64 %840
  %842 = getelementptr inbounds %struct.SiS_LCDData, %struct.SiS_LCDData* %841, i32 0, i32 5
  %843 = load i8, i8* %842, align 2
  %844 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %845 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %844, i32 0, i32 21
  store i8 %843, i8* %845, align 1
  br label %846

846:                                              ; preds = %791, %708
  %847 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %848 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %847, i32 0, i32 27
  %849 = load i16, i16* %848, align 4
  store i16 %849, i16* %10, align 2
  %850 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %851 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %850, i32 0, i32 28
  %852 = load i16, i16* %851, align 2
  store i16 %852, i16* %11, align 2
  %853 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %854 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %853, i32 0, i32 29
  %855 = load i32, i32* %854, align 8
  switch i32 %855, label %1007 [
    i32 138, label %856
    i32 131, label %935
    i32 137, label %959
    i32 129, label %983
  ]

856:                                              ; preds = %846
  %857 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %858 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %857, i32 0, i32 2
  %859 = load i32, i32* %858, align 8
  %860 = load i32, i32* @LCDVESATiming, align 4
  %861 = and i32 %859, %860
  %862 = icmp ne i32 %861, 0
  br i1 %862, label %863, label %886

863:                                              ; preds = %856
  %864 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %865 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %864, i32 0, i32 30
  %866 = load i32, i32* %865, align 4
  %867 = load i32, i32* @SIS_315H, align 4
  %868 = icmp slt i32 %866, %867
  br i1 %868, label %869, label %885

869:                                              ; preds = %863
  %870 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %871 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %870, i32 0, i32 16
  %872 = load i16, i16* %871, align 2
  %873 = zext i16 %872 to i32
  %874 = icmp eq i32 %873, 350
  br i1 %874, label %875, label %876

875:                                              ; preds = %869
  store i16 560, i16* %11, align 2
  br label %884

876:                                              ; preds = %869
  %877 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %878 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %877, i32 0, i32 16
  %879 = load i16, i16* %878, align 2
  %880 = zext i16 %879 to i32
  %881 = icmp eq i32 %880, 400
  br i1 %881, label %882, label %883

882:                                              ; preds = %876
  store i16 640, i16* %11, align 2
  br label %883

883:                                              ; preds = %882, %876
  br label %884

884:                                              ; preds = %883, %875
  br label %885

885:                                              ; preds = %884, %863
  br label %934

886:                                              ; preds = %856
  %887 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %888 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %887, i32 0, i32 16
  %889 = load i16, i16* %888, align 2
  %890 = zext i16 %889 to i32
  %891 = icmp eq i32 %890, 357
  br i1 %891, label %892, label %893

892:                                              ; preds = %886
  store i16 527, i16* %11, align 2
  br label %933

893:                                              ; preds = %886
  %894 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %895 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %894, i32 0, i32 16
  %896 = load i16, i16* %895, align 2
  %897 = zext i16 %896 to i32
  %898 = icmp eq i32 %897, 420
  br i1 %898, label %899, label %900

899:                                              ; preds = %893
  store i16 620, i16* %11, align 2
  br label %932

900:                                              ; preds = %893
  %901 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %902 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %901, i32 0, i32 16
  %903 = load i16, i16* %902, align 2
  %904 = zext i16 %903 to i32
  %905 = icmp eq i32 %904, 525
  br i1 %905, label %906, label %907

906:                                              ; preds = %900
  store i16 775, i16* %11, align 2
  br label %931

907:                                              ; preds = %900
  %908 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %909 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %908, i32 0, i32 16
  %910 = load i16, i16* %909, align 2
  %911 = zext i16 %910 to i32
  %912 = icmp eq i32 %911, 600
  br i1 %912, label %913, label %914

913:                                              ; preds = %907
  store i16 775, i16* %11, align 2
  br label %930

914:                                              ; preds = %907
  %915 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %916 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %915, i32 0, i32 16
  %917 = load i16, i16* %916, align 2
  %918 = zext i16 %917 to i32
  %919 = icmp eq i32 %918, 350
  br i1 %919, label %920, label %921

920:                                              ; preds = %914
  store i16 560, i16* %11, align 2
  br label %929

921:                                              ; preds = %914
  %922 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %923 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %922, i32 0, i32 16
  %924 = load i16, i16* %923, align 2
  %925 = zext i16 %924 to i32
  %926 = icmp eq i32 %925, 400
  br i1 %926, label %927, label %928

927:                                              ; preds = %921
  store i16 640, i16* %11, align 2
  br label %928

928:                                              ; preds = %927, %921
  br label %929

929:                                              ; preds = %928, %920
  br label %930

930:                                              ; preds = %929, %913
  br label %931

931:                                              ; preds = %930, %906
  br label %932

932:                                              ; preds = %931, %899
  br label %933

933:                                              ; preds = %932, %892
  br label %934

934:                                              ; preds = %933, %885
  br label %1007

935:                                              ; preds = %846
  %936 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %937 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %936, i32 0, i32 16
  %938 = load i16, i16* %937, align 2
  %939 = zext i16 %938 to i32
  %940 = icmp eq i32 %939, 350
  br i1 %940, label %941, label %942

941:                                              ; preds = %935
  store i16 700, i16* %11, align 2
  br label %958

942:                                              ; preds = %935
  %943 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %944 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %943, i32 0, i32 16
  %945 = load i16, i16* %944, align 2
  %946 = zext i16 %945 to i32
  %947 = icmp eq i32 %946, 400
  br i1 %947, label %948, label %949

948:                                              ; preds = %942
  store i16 800, i16* %11, align 2
  br label %957

949:                                              ; preds = %942
  %950 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %951 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %950, i32 0, i32 16
  %952 = load i16, i16* %951, align 2
  %953 = zext i16 %952 to i32
  %954 = icmp eq i32 %953, 1024
  br i1 %954, label %955, label %956

955:                                              ; preds = %949
  store i16 960, i16* %11, align 2
  br label %956

956:                                              ; preds = %955, %949
  br label %957

957:                                              ; preds = %956, %948
  br label %958

958:                                              ; preds = %957, %941
  br label %1007

959:                                              ; preds = %846
  %960 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %961 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %960, i32 0, i32 16
  %962 = load i16, i16* %961, align 2
  %963 = zext i16 %962 to i32
  %964 = icmp eq i32 %963, 360
  br i1 %964, label %965, label %966

965:                                              ; preds = %959
  store i16 768, i16* %11, align 2
  br label %982

966:                                              ; preds = %959
  %967 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %968 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %967, i32 0, i32 16
  %969 = load i16, i16* %968, align 2
  %970 = zext i16 %969 to i32
  %971 = icmp eq i32 %970, 375
  br i1 %971, label %972, label %973

972:                                              ; preds = %966
  store i16 800, i16* %11, align 2
  br label %981

973:                                              ; preds = %966
  %974 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %975 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %974, i32 0, i32 16
  %976 = load i16, i16* %975, align 2
  %977 = zext i16 %976 to i32
  %978 = icmp eq i32 %977, 405
  br i1 %978, label %979, label %980

979:                                              ; preds = %973
  store i16 864, i16* %11, align 2
  br label %980

980:                                              ; preds = %979, %973
  br label %981

981:                                              ; preds = %980, %972
  br label %982

982:                                              ; preds = %981, %965
  br label %1007

983:                                              ; preds = %846
  %984 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %985 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %984, i32 0, i32 2
  %986 = load i32, i32* %985, align 8
  %987 = load i32, i32* @LCDVESATiming, align 4
  %988 = and i32 %986, %987
  %989 = icmp ne i32 %988, 0
  br i1 %989, label %1006, label %990

990:                                              ; preds = %983
  %991 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %992 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %991, i32 0, i32 16
  %993 = load i16, i16* %992, align 2
  %994 = zext i16 %993 to i32
  %995 = icmp eq i32 %994, 350
  br i1 %995, label %996, label %997

996:                                              ; preds = %990
  store i16 875, i16* %11, align 2
  br label %1005

997:                                              ; preds = %990
  %998 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %999 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %998, i32 0, i32 16
  %1000 = load i16, i16* %999, align 2
  %1001 = zext i16 %1000 to i32
  %1002 = icmp eq i32 %1001, 400
  br i1 %1002, label %1003, label %1004

1003:                                             ; preds = %997
  store i16 1000, i16* %11, align 2
  br label %1004

1004:                                             ; preds = %1003, %997
  br label %1005

1005:                                             ; preds = %1004, %996
  br label %1006

1006:                                             ; preds = %1005, %983
  br label %1007

1007:                                             ; preds = %846, %1006, %982, %958, %934
  %1008 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %1009 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %1008, i32 0, i32 24
  %1010 = load i32, i32* %1009, align 4
  %1011 = load i32, i32* @DontExpandLCD, align 4
  %1012 = and i32 %1010, %1011
  %1013 = icmp ne i32 %1012, 0
  br i1 %1013, label %1014, label %1021

1014:                                             ; preds = %1007
  %1015 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %1016 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %1015, i32 0, i32 14
  %1017 = load i16, i16* %1016, align 2
  store i16 %1017, i16* %10, align 2
  %1018 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %1019 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %1018, i32 0, i32 16
  %1020 = load i16, i16* %1019, align 2
  store i16 %1020, i16* %11, align 2
  br label %1021

1021:                                             ; preds = %1014, %1007
  %1022 = load i16, i16* %10, align 2
  %1023 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %1024 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %1023, i32 0, i32 13
  store i16 %1022, i16* %1024, align 4
  %1025 = load i16, i16* %11, align 2
  %1026 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %1027 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %1026, i32 0, i32 15
  store i16 %1025, i16* %1027, align 8
  br label %1028

1028:                                             ; preds = %1021, %644
  br label %1029

1029:                                             ; preds = %1028, %603
  br label %1030

1030:                                             ; preds = %1029, %602
  br label %1031

1031:                                             ; preds = %1030, %145
  ret void
}

declare dso_local i32 @SiS_GetCRT2ResInfo(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_GetRAMDAC2DATA(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_GetCRT2Ptr(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext, i16*, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
