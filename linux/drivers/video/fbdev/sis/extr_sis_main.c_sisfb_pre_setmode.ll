; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sisfb_pre_setmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sisfb_pre_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.sis_video_info = type { i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@VB_VIDEOBRIDGE = common dso_local global i32 0, align 4
@VB_DISPTYPE_DISP2 = common dso_local global i32 0, align 4
@SISSR = common dso_local global i32 0, align 4
@SISCR = common dso_local global i32 0, align 4
@TV_YPBPR = common dso_local global i32 0, align 4
@VB2_SISYPBPRBRIDGE = common dso_local global i32 0, align 4
@TV_HIVISION = common dso_local global i32 0, align 4
@VB2_SISHIVISIONBRIDGE = common dso_local global i32 0, align 4
@SIS_661 = common dso_local global i64 0, align 8
@SIS_SIMULTANEOUS_VIEW_ENABLE = common dso_local global i32 0, align 4
@TV_SCART = common dso_local global i32 0, align 4
@SIS_VB_OUTPUT_SCART = common dso_local global i32 0, align 4
@TV_SVIDEO = common dso_local global i32 0, align 4
@SIS_VB_OUTPUT_SVIDEO = common dso_local global i32 0, align 4
@TV_AVIDEO = common dso_local global i32 0, align 4
@SIS_VB_OUTPUT_COMPOSITE = common dso_local global i32 0, align 4
@SIS_DRIVER_MODE = common dso_local global i32 0, align 4
@TV_PAL = common dso_local global i32 0, align 4
@TV_PALM = common dso_local global i32 0, align 4
@TV_PALN = common dso_local global i32 0, align 4
@TV_NTSC = common dso_local global i32 0, align 4
@TV_NTSCJ = common dso_local global i32 0, align 4
@SIS_VB_OUTPUT_LCD = common dso_local global i32 0, align 4
@SIS_VB_OUTPUT_CRT2 = common dso_local global i32 0, align 4
@sisbios_mode = common dso_local global %struct.TYPE_4__* null, align 8
@SIS_VB_OUTPUT_DISABLE = common dso_local global i32 0, align 4
@SIS_300 = common dso_local global i64 0, align 8
@SIS_300_VGA = common dso_local global i64 0, align 8
@SIS_315_VGA = common dso_local global i64 0, align 8
@TV_YPBPR1080I = common dso_local global i32 0, align 4
@TV_YPBPR525P = common dso_local global i32 0, align 4
@TV_YPBPR750P = common dso_local global i32 0, align 4
@TV_YPBPRALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sis_video_info*)* @sisfb_pre_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sisfb_pre_setmode(%struct.sis_video_info* %0) #0 {
  %2 = alloca %struct.sis_video_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sis_video_info* %0, %struct.sis_video_info** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @VB_VIDEOBRIDGE, align 4
  %10 = load i32, i32* @VB_DISPTYPE_DISP2, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %13 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load i32, i32* @SISSR, align 4
  %17 = call i32 @SiS_SetReg(i32 %16, i32 5, i32 134)
  %18 = load i32, i32* @SISCR, align 4
  %19 = call i32 @SiS_GetReg(i32 %18, i32 49)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, -97
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, 4
  store i32 %23, i32* %4, align 4
  %24 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %25 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 15
  store i32 %27, i32* %5, align 4
  %28 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %29 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %28, i32 0, i32 12
  %30 = call i32 @SiS_SetEnableDstn(%struct.TYPE_5__* %29, i32 0)
  %31 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %32 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %31, i32 0, i32 12
  %33 = call i32 @SiS_SetEnableFstn(%struct.TYPE_5__* %32, i32 0)
  %34 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %35 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %34, i32 0, i32 5
  store i32 0, i32* %35, align 4
  %36 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %37 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %36, i32 0, i32 4
  store i32 0, i32* %37, align 8
  %38 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %39 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @VB_DISPTYPE_DISP2, align 4
  %42 = and i32 %40, %41
  switch i32 %42, label %309 [
    i32 129, label %43
    i32 130, label %249
    i32 128, label %278
  ]

43:                                               ; preds = %1
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, -193
  store i32 %45, i32* %7, align 4
  %46 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %47 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @TV_YPBPR, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %43
  %53 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %54 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @VB2_SISYPBPRBRIDGE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %156

60:                                               ; preds = %52, %43
  %61 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %62 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @TV_HIVISION, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %101

67:                                               ; preds = %60
  %68 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %69 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @VB2_SISHIVISIONBRIDGE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %101

74:                                               ; preds = %67
  %75 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %76 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SIS_661, align 8
  %79 = icmp sge i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %81, 4
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, 96
  store i32 %84, i32* %6, align 4
  br label %88

85:                                               ; preds = %74
  %86 = load i32, i32* %3, align 4
  %87 = or i32 %86, 128
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %85, %80
  %89 = load i32, i32* @SIS_SIMULTANEOUS_VIEW_ENABLE, align 4
  %90 = load i32, i32* %3, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %3, align 4
  %92 = load i32, i32* %4, align 4
  %93 = or i32 %92, 1
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %6, align 4
  %95 = or i32 %94, 1
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* @TV_HIVISION, align 4
  %97 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %98 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %155

101:                                              ; preds = %67, %60
  %102 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %103 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @TV_SCART, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %101
  %109 = load i32, i32* @SIS_VB_OUTPUT_SCART, align 4
  %110 = load i32, i32* @SIS_SIMULTANEOUS_VIEW_ENABLE, align 4
  %111 = or i32 %109, %110
  store i32 %111, i32* %3, align 4
  %112 = load i32, i32* %4, align 4
  %113 = or i32 %112, 1
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %6, align 4
  %115 = or i32 %114, 1
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* @TV_SCART, align 4
  %117 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %118 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %154

121:                                              ; preds = %101
  %122 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %123 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @TV_SVIDEO, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %121
  %129 = load i32, i32* @SIS_VB_OUTPUT_SVIDEO, align 4
  %130 = load i32, i32* @SIS_SIMULTANEOUS_VIEW_ENABLE, align 4
  %131 = or i32 %129, %130
  store i32 %131, i32* %3, align 4
  %132 = load i32, i32* @TV_SVIDEO, align 4
  %133 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %134 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %128, %121
  %138 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %139 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @TV_AVIDEO, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %137
  %145 = load i32, i32* @SIS_VB_OUTPUT_COMPOSITE, align 4
  %146 = load i32, i32* @SIS_SIMULTANEOUS_VIEW_ENABLE, align 4
  %147 = or i32 %145, %146
  store i32 %147, i32* %3, align 4
  %148 = load i32, i32* @TV_AVIDEO, align 4
  %149 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %150 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 8
  br label %153

153:                                              ; preds = %144, %137
  br label %154

154:                                              ; preds = %153, %108
  br label %155

155:                                              ; preds = %154, %88
  br label %156

156:                                              ; preds = %155, %59
  %157 = load i32, i32* @SIS_DRIVER_MODE, align 4
  %158 = load i32, i32* %4, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %4, align 4
  %160 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %161 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @TV_AVIDEO, align 4
  %164 = load i32, i32* @TV_SVIDEO, align 4
  %165 = or i32 %163, %164
  %166 = and i32 %162, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %248

168:                                              ; preds = %156
  %169 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %170 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @TV_PAL, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %220

175:                                              ; preds = %168
  %176 = load i32, i32* %4, align 4
  %177 = or i32 %176, 1
  store i32 %177, i32* %4, align 4
  %178 = load i32, i32* %6, align 4
  %179 = or i32 %178, 1
  store i32 %179, i32* %6, align 4
  %180 = load i32, i32* @TV_PAL, align 4
  %181 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %182 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  %185 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %186 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @TV_PALM, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %175
  %192 = load i32, i32* %7, align 4
  %193 = or i32 %192, 64
  store i32 %193, i32* %7, align 4
  %194 = load i32, i32* %6, align 4
  %195 = or i32 %194, 4
  store i32 %195, i32* %6, align 4
  %196 = load i32, i32* @TV_PALM, align 4
  %197 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %198 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 8
  br label %219

201:                                              ; preds = %175
  %202 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %203 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @TV_PALN, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %218

208:                                              ; preds = %201
  %209 = load i32, i32* %7, align 4
  %210 = or i32 %209, 128
  store i32 %210, i32* %7, align 4
  %211 = load i32, i32* %6, align 4
  %212 = or i32 %211, 8
  store i32 %212, i32* %6, align 4
  %213 = load i32, i32* @TV_PALN, align 4
  %214 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %215 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = or i32 %216, %213
  store i32 %217, i32* %215, align 8
  br label %218

218:                                              ; preds = %208, %201
  br label %219

219:                                              ; preds = %218, %191
  br label %247

220:                                              ; preds = %168
  %221 = load i32, i32* %4, align 4
  %222 = and i32 %221, -2
  store i32 %222, i32* %4, align 4
  %223 = load i32, i32* %6, align 4
  %224 = and i32 %223, -2
  store i32 %224, i32* %6, align 4
  %225 = load i32, i32* @TV_NTSC, align 4
  %226 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %227 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = or i32 %228, %225
  store i32 %229, i32* %227, align 8
  %230 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %231 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %230, i32 0, i32 6
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @TV_NTSCJ, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %246

236:                                              ; preds = %220
  %237 = load i32, i32* %7, align 4
  %238 = or i32 %237, 64
  store i32 %238, i32* %7, align 4
  %239 = load i32, i32* %6, align 4
  %240 = or i32 %239, 2
  store i32 %240, i32* %6, align 4
  %241 = load i32, i32* @TV_NTSCJ, align 4
  %242 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %243 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = or i32 %244, %241
  store i32 %245, i32* %243, align 8
  br label %246

246:                                              ; preds = %236, %220
  br label %247

247:                                              ; preds = %246, %219
  br label %248

248:                                              ; preds = %247, %156
  br label %315

249:                                              ; preds = %1
  %250 = load i32, i32* @SIS_VB_OUTPUT_LCD, align 4
  %251 = load i32, i32* @SIS_SIMULTANEOUS_VIEW_ENABLE, align 4
  %252 = or i32 %250, %251
  store i32 %252, i32* %3, align 4
  %253 = load i32, i32* @SIS_DRIVER_MODE, align 4
  %254 = load i32, i32* %4, align 4
  %255 = or i32 %254, %253
  store i32 %255, i32* %4, align 4
  %256 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %257 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %256, i32 0, i32 12
  %258 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %259 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %258, i32 0, i32 8
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @SiS_SetEnableDstn(%struct.TYPE_5__* %257, i32 %260)
  %262 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %263 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %262, i32 0, i32 12
  %264 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %265 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %264, i32 0, i32 9
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @SiS_SetEnableFstn(%struct.TYPE_5__* %263, i32 %266)
  %268 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %269 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %268, i32 0, i32 9
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %272 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %271, i32 0, i32 4
  store i32 %270, i32* %272, align 8
  %273 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %274 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %273, i32 0, i32 8
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %277 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %276, i32 0, i32 5
  store i32 %275, i32* %277, align 4
  br label %315

278:                                              ; preds = %1
  %279 = load i32, i32* @SIS_VB_OUTPUT_CRT2, align 4
  %280 = load i32, i32* @SIS_SIMULTANEOUS_VIEW_ENABLE, align 4
  %281 = or i32 %279, %280
  store i32 %281, i32* %3, align 4
  %282 = load i32, i32* @SIS_DRIVER_MODE, align 4
  %283 = load i32, i32* %4, align 4
  %284 = or i32 %283, %282
  store i32 %284, i32* %4, align 4
  %285 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %286 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %285, i32 0, i32 13
  %287 = load i32, i32* %286, align 8
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %300

289:                                              ; preds = %278
  %290 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sisbios_mode, align 8
  %291 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %292 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %291, i32 0, i32 10
  %293 = load i64, i64* %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = shl i32 %296, 4
  %298 = load i32, i32* %5, align 4
  %299 = or i32 %298, %297
  store i32 %299, i32* %5, align 4
  br label %308

300:                                              ; preds = %278
  %301 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %302 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = and i32 %303, 15
  %305 = shl i32 %304, 4
  %306 = load i32, i32* %5, align 4
  %307 = or i32 %306, %305
  store i32 %307, i32* %5, align 4
  br label %308

308:                                              ; preds = %300, %289
  br label %315

309:                                              ; preds = %1
  store i32 0, i32* %3, align 4
  %310 = load i32, i32* @SIS_DRIVER_MODE, align 4
  %311 = load i32, i32* @SIS_VB_OUTPUT_DISABLE, align 4
  %312 = or i32 %310, %311
  %313 = load i32, i32* %4, align 4
  %314 = or i32 %313, %312
  store i32 %314, i32* %4, align 4
  br label %315

315:                                              ; preds = %309, %308, %249, %248
  %316 = load i32, i32* @SISCR, align 4
  %317 = load i32, i32* %3, align 4
  %318 = call i32 @SiS_SetReg(i32 %316, i32 48, i32 %317)
  %319 = load i32, i32* @SISCR, align 4
  %320 = load i32, i32* %5, align 4
  %321 = call i32 @SiS_SetReg(i32 %319, i32 51, i32 %320)
  %322 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %323 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %322, i32 0, i32 3
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @SIS_661, align 8
  %326 = icmp sge i64 %324, %325
  br i1 %326, label %327, label %328

327:                                              ; preds = %315
  br label %340

328:                                              ; preds = %315
  %329 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %330 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %329, i32 0, i32 3
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* @SIS_300, align 8
  %333 = icmp ne i64 %331, %332
  br i1 %333, label %334, label %339

334:                                              ; preds = %328
  %335 = load i32, i32* @SISCR, align 4
  %336 = load i32, i32* %8, align 4
  %337 = load i32, i32* %7, align 4
  %338 = call i32 @SiS_SetReg(i32 %335, i32 %336, i32 %337)
  br label %339

339:                                              ; preds = %334, %328
  br label %340

340:                                              ; preds = %339, %327
  %341 = load i32, i32* @SISCR, align 4
  %342 = load i32, i32* %4, align 4
  %343 = call i32 @SiS_SetReg(i32 %341, i32 49, i32 %342)
  %344 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %345 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %344, i32 0, i32 11
  %346 = load i32, i32* %345, align 8
  %347 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %348 = getelementptr inbounds %struct.sis_video_info, %struct.sis_video_info* %347, i32 0, i32 12
  %349 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %348, i32 0, i32 0
  store i32 %346, i32* %349, align 4
  %350 = load %struct.sis_video_info*, %struct.sis_video_info** %2, align 8
  %351 = call i32 @sisfb_check_engine_and_sync(%struct.sis_video_info* %350)
  ret void
}

declare dso_local i32 @SiS_SetReg(i32, i32, i32) #1

declare dso_local i32 @SiS_GetReg(i32, i32) #1

declare dso_local i32 @SiS_SetEnableDstn(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @SiS_SetEnableFstn(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @sisfb_check_engine_and_sync(%struct.sis_video_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
