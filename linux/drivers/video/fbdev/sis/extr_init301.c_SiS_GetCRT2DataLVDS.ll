; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_GetCRT2DataLVDS.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_GetCRT2DataLVDS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, %struct.SiS_LVDSData*, %struct.SiS_LVDSData*, %struct.SiS_LVDSData*, %struct.SiS_LVDSData*, %struct.SiS_LVDSData*, %struct.SiS_LVDSData*, %struct.SiS_LVDSData*, %struct.SiS_LVDSData*, %struct.SiS_LVDSData*, %struct.SiS_LVDSData*, %struct.SiS_LVDSData*, %struct.SiS_LVDSData*, %struct.SiS_LVDSData*, %struct.SiS_LVDSData*, %struct.SiS_LVDSData*, %struct.SiS_LVDSData*, %struct.SiS_LVDSData*, %struct.SiS_LVDSData*, %struct.SiS_LVDSData*, %struct.SiS_LVDSData*, i64, i64, i64, i64, i64, i64 }
%struct.SiS_LVDSData = type { i32, i32, i32, i32 }

@VB_SISVB = common dso_local global i32 0, align 4
@SetCRT2ToLCDA = common dso_local global i32 0, align 4
@VB_NoLCD = common dso_local global i32 0, align 4
@SetCRT2ToLCD = common dso_local global i32 0, align 4
@LCDPass11 = common dso_local global i32 0, align 4
@DontExpandLCD = common dso_local global i32 0, align 4
@SetDOSMode = common dso_local global i32 0, align 4
@CUT_BARCO1366 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i16, i16)* @SiS_GetCRT2DataLVDS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_GetCRT2DataLVDS(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.SiS_Private*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca %struct.SiS_LVDSData*, align 8
  store %struct.SiS_Private* %0, %struct.SiS_Private** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  store %struct.SiS_LVDSData* null, %struct.SiS_LVDSData** %12, align 8
  %13 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %14 = load i16, i16* %6, align 2
  %15 = load i16, i16* %7, align 2
  %16 = call i32 @SiS_GetCRT2ResInfo(%struct.SiS_Private* %13, i16 zeroext %14, i16 zeroext %15)
  %17 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %18 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @VB_SISVB, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %4
  %24 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %25 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %27 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %26, i32 0, i32 2
  store i32 1, i32* %27, align 8
  %28 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %29 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %28, i32 0, i32 42
  store i64 0, i64* %29, align 8
  %30 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %31 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %30, i32 0, i32 3
  store i32 50, i32* %31, align 4
  %32 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %33 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %32, i32 0, i32 41
  store i64 0, i64* %33, align 8
  %34 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %35 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %34, i32 0, i32 40
  store i64 0, i64* %35, align 8
  %36 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %37 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %36, i32 0, i32 39
  store i64 0, i64* %37, align 8
  %38 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %39 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %38, i32 0, i32 38
  store i64 0, i64* %39, align 8
  %40 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %41 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %40, i32 0, i32 37
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %23, %4
  %43 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %44 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @VB_SISVB, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %51 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SetCRT2ToLCDA, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %242

57:                                               ; preds = %49, %42
  %58 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %59 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %58, i32 0, i32 5
  %60 = load i16, i16* %59, align 4
  store i16 %60, i16* %11, align 2
  %61 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %62 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @VB_NoLCD, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %57
  %68 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %69 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @SetCRT2ToLCD, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %76 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %75, i32 0, i32 5
  store i16 1, i16* %76, align 4
  br label %77

77:                                               ; preds = %74, %67, %57
  %78 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %79 = load i16, i16* %6, align 2
  %80 = load i16, i16* %7, align 2
  %81 = load i16, i16* %8, align 2
  %82 = call i32 @SiS_GetCRT2Ptr(%struct.SiS_Private* %78, i16 zeroext %79, i16 zeroext %80, i16 zeroext %81, i16* %9, i16* %10)
  %83 = load i16, i16* %11, align 2
  %84 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %85 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %84, i32 0, i32 5
  store i16 %83, i16* %85, align 4
  %86 = load i16, i16* %9, align 2
  %87 = zext i16 %86 to i32
  switch i32 %87, label %148 [
    i32 10, label %88
    i32 14, label %92
    i32 12, label %96
    i32 16, label %100
    i32 18, label %104
    i32 20, label %108
    i32 90, label %112
    i32 91, label %116
    i32 92, label %120
    i32 93, label %124
    i32 94, label %128
    i32 95, label %132
    i32 96, label %136
    i32 97, label %140
    i32 99, label %144
  ]

88:                                               ; preds = %77
  %89 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %90 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %89, i32 0, i32 36
  %91 = load %struct.SiS_LVDSData*, %struct.SiS_LVDSData** %90, align 8
  store %struct.SiS_LVDSData* %91, %struct.SiS_LVDSData** %12, align 8
  br label %148

92:                                               ; preds = %77
  %93 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %94 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %93, i32 0, i32 35
  %95 = load %struct.SiS_LVDSData*, %struct.SiS_LVDSData** %94, align 8
  store %struct.SiS_LVDSData* %95, %struct.SiS_LVDSData** %12, align 8
  br label %148

96:                                               ; preds = %77
  %97 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %98 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %97, i32 0, i32 34
  %99 = load %struct.SiS_LVDSData*, %struct.SiS_LVDSData** %98, align 8
  store %struct.SiS_LVDSData* %99, %struct.SiS_LVDSData** %12, align 8
  br label %148

100:                                              ; preds = %77
  %101 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %102 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %101, i32 0, i32 33
  %103 = load %struct.SiS_LVDSData*, %struct.SiS_LVDSData** %102, align 8
  store %struct.SiS_LVDSData* %103, %struct.SiS_LVDSData** %12, align 8
  br label %148

104:                                              ; preds = %77
  %105 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %106 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %105, i32 0, i32 32
  %107 = load %struct.SiS_LVDSData*, %struct.SiS_LVDSData** %106, align 8
  store %struct.SiS_LVDSData* %107, %struct.SiS_LVDSData** %12, align 8
  br label %148

108:                                              ; preds = %77
  %109 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %110 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %109, i32 0, i32 31
  %111 = load %struct.SiS_LVDSData*, %struct.SiS_LVDSData** %110, align 8
  store %struct.SiS_LVDSData* %111, %struct.SiS_LVDSData** %12, align 8
  br label %148

112:                                              ; preds = %77
  %113 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %114 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %113, i32 0, i32 25
  %115 = load %struct.SiS_LVDSData*, %struct.SiS_LVDSData** %114, align 8
  store %struct.SiS_LVDSData* %115, %struct.SiS_LVDSData** %12, align 8
  br label %148

116:                                              ; preds = %77
  %117 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %118 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %117, i32 0, i32 24
  %119 = load %struct.SiS_LVDSData*, %struct.SiS_LVDSData** %118, align 8
  store %struct.SiS_LVDSData* %119, %struct.SiS_LVDSData** %12, align 8
  br label %148

120:                                              ; preds = %77
  %121 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %122 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %121, i32 0, i32 23
  %123 = load %struct.SiS_LVDSData*, %struct.SiS_LVDSData** %122, align 8
  store %struct.SiS_LVDSData* %123, %struct.SiS_LVDSData** %12, align 8
  br label %148

124:                                              ; preds = %77
  %125 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %126 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %125, i32 0, i32 22
  %127 = load %struct.SiS_LVDSData*, %struct.SiS_LVDSData** %126, align 8
  store %struct.SiS_LVDSData* %127, %struct.SiS_LVDSData** %12, align 8
  br label %148

128:                                              ; preds = %77
  %129 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %130 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %129, i32 0, i32 21
  %131 = load %struct.SiS_LVDSData*, %struct.SiS_LVDSData** %130, align 8
  store %struct.SiS_LVDSData* %131, %struct.SiS_LVDSData** %12, align 8
  br label %148

132:                                              ; preds = %77
  %133 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %134 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %133, i32 0, i32 20
  %135 = load %struct.SiS_LVDSData*, %struct.SiS_LVDSData** %134, align 8
  store %struct.SiS_LVDSData* %135, %struct.SiS_LVDSData** %12, align 8
  br label %148

136:                                              ; preds = %77
  %137 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %138 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %137, i32 0, i32 19
  %139 = load %struct.SiS_LVDSData*, %struct.SiS_LVDSData** %138, align 8
  store %struct.SiS_LVDSData* %139, %struct.SiS_LVDSData** %12, align 8
  br label %148

140:                                              ; preds = %77
  %141 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %142 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %141, i32 0, i32 18
  %143 = load %struct.SiS_LVDSData*, %struct.SiS_LVDSData** %142, align 8
  store %struct.SiS_LVDSData* %143, %struct.SiS_LVDSData** %12, align 8
  br label %148

144:                                              ; preds = %77
  %145 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %146 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %145, i32 0, i32 17
  %147 = load %struct.SiS_LVDSData*, %struct.SiS_LVDSData** %146, align 8
  store %struct.SiS_LVDSData* %147, %struct.SiS_LVDSData** %12, align 8
  br label %148

148:                                              ; preds = %77, %144, %140, %136, %132, %128, %124, %120, %116, %112, %108, %104, %100, %96, %92, %88
  %149 = load %struct.SiS_LVDSData*, %struct.SiS_LVDSData** %12, align 8
  %150 = icmp ne %struct.SiS_LVDSData* %149, null
  br i1 %150, label %151, label %188

151:                                              ; preds = %148
  %152 = load %struct.SiS_LVDSData*, %struct.SiS_LVDSData** %12, align 8
  %153 = load i16, i16* %10, align 2
  %154 = zext i16 %153 to i32
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.SiS_LVDSData, %struct.SiS_LVDSData* %152, i64 %155
  %157 = getelementptr inbounds %struct.SiS_LVDSData, %struct.SiS_LVDSData* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %160 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %159, i32 0, i32 16
  store i32 %158, i32* %160, align 4
  %161 = load %struct.SiS_LVDSData*, %struct.SiS_LVDSData** %12, align 8
  %162 = load i16, i16* %10, align 2
  %163 = zext i16 %162 to i32
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.SiS_LVDSData, %struct.SiS_LVDSData* %161, i64 %164
  %166 = getelementptr inbounds %struct.SiS_LVDSData, %struct.SiS_LVDSData* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %169 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %168, i32 0, i32 15
  store i32 %167, i32* %169, align 8
  %170 = load %struct.SiS_LVDSData*, %struct.SiS_LVDSData** %12, align 8
  %171 = load i16, i16* %10, align 2
  %172 = zext i16 %171 to i32
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.SiS_LVDSData, %struct.SiS_LVDSData* %170, i64 %173
  %175 = getelementptr inbounds %struct.SiS_LVDSData, %struct.SiS_LVDSData* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %178 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %177, i32 0, i32 14
  store i32 %176, i32* %178, align 4
  %179 = load %struct.SiS_LVDSData*, %struct.SiS_LVDSData** %12, align 8
  %180 = load i16, i16* %10, align 2
  %181 = zext i16 %180 to i32
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.SiS_LVDSData, %struct.SiS_LVDSData* %179, i64 %182
  %184 = getelementptr inbounds %struct.SiS_LVDSData, %struct.SiS_LVDSData* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %187 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %186, i32 0, i32 13
  store i32 %185, i32* %187, align 8
  br label %194

188:                                              ; preds = %148
  %189 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %190 = load i16, i16* %6, align 2
  %191 = load i16, i16* %7, align 2
  %192 = load i16, i16* %8, align 2
  %193 = call i32 @SiS_CalcPanelLinkTiming(%struct.SiS_Private* %189, i16 zeroext %190, i16 zeroext %191, i16 zeroext %192)
  br label %194

194:                                              ; preds = %188, %151
  %195 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %196 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @VB_SISVB, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %241, label %201

201:                                              ; preds = %194
  %202 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %203 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @SetCRT2ToLCD, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %241

208:                                              ; preds = %201
  %209 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %210 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %209, i32 0, i32 6
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @LCDPass11, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %241, label %215

215:                                              ; preds = %208
  %216 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %217 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %216, i32 0, i32 6
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @DontExpandLCD, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %215
  %223 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %224 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %223, i32 0, i32 7
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @SetDOSMode, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %240

229:                                              ; preds = %222, %215
  %230 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %231 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %230, i32 0, i32 9
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %234 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %233, i32 0, i32 8
  store i32 %232, i32* %234, align 8
  %235 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %236 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %235, i32 0, i32 11
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %239 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %238, i32 0, i32 10
  store i32 %237, i32* %239, align 8
  br label %240

240:                                              ; preds = %229, %222
  br label %241

241:                                              ; preds = %240, %208, %201, %194
  br label %242

242:                                              ; preds = %241, %56
  ret void
}

declare dso_local i32 @SiS_GetCRT2ResInfo(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_GetCRT2Ptr(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext, i16*, i16*) #1

declare dso_local i32 @SiS_CalcPanelLinkTiming(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
