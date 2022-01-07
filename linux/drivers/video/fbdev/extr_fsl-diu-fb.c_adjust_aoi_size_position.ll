; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fsl-diu-fb.c_adjust_aoi_size_position.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fsl-diu-fb.c_adjust_aoi_size_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i8*, i32 }
%struct.fb_info = type { %struct.mfb_info* }
%struct.mfb_info = type { i32, i64, i64, i32, %struct.fsl_diu_data* }
%struct.fsl_diu_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.mfb_info* }
%struct.TYPE_3__ = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_var_screeninfo*, %struct.fb_info*)* @adjust_aoi_size_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_aoi_size_position(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.mfb_info*, align 8
  %6 = alloca %struct.mfb_info*, align 8
  %7 = alloca %struct.mfb_info*, align 8
  %8 = alloca %struct.fsl_diu_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %17 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 0
  %19 = load %struct.mfb_info*, %struct.mfb_info** %18, align 8
  store %struct.mfb_info* %19, %struct.mfb_info** %7, align 8
  %20 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %21 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %20, i32 0, i32 4
  %22 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %21, align 8
  store %struct.fsl_diu_data* %22, %struct.fsl_diu_data** %8, align 8
  %23 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %24 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %11, align 4
  %26 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %8, align 8
  %27 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %14, align 8
  %33 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %8, align 8
  %34 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %15, align 8
  %40 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %41 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %2
  %45 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %46 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %44, %2
  %48 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %49 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %54 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %52, %47
  %56 = load i32, i32* %11, align 4
  switch i32 %56, label %290 [
    i32 132, label %57
    i32 131, label %74
    i32 129, label %74
    i32 130, label %162
    i32 128, label %162
  ]

57:                                               ; preds = %55
  %58 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %59 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %64 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %62, %57
  %66 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %67 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %72 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %70, %65
  br label %290

74:                                               ; preds = %55, %55
  %75 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %8, align 8
  %76 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = add i32 %78, 1
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load %struct.mfb_info*, %struct.mfb_info** %82, align 8
  store %struct.mfb_info* %83, %struct.mfb_info** %5, align 8
  %84 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %85 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = icmp sgt i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 1, i32 0
  store i32 %89, i32* %12, align 4
  %90 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %91 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load i8*, i8** %14, align 8
  %94 = icmp ugt i8* %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %74
  %96 = load i8*, i8** %14, align 8
  %97 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %98 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  br label %99

99:                                               ; preds = %95, %74
  %100 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %101 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %104 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr i8, i8* %105, i64 %102
  %107 = load i8*, i8** %14, align 8
  %108 = icmp ugt i8* %106, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %99
  %110 = load i8*, i8** %14, align 8
  %111 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %112 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = ptrtoint i8* %110 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %118 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %109, %99
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %124 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %9, align 4
  br label %130

127:                                              ; preds = %119
  %128 = load i8*, i8** %15, align 8
  %129 = ptrtoint i8* %128 to i32
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %127, %122
  %131 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %132 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %130
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %139 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 8
  br label %140

140:                                              ; preds = %136, %130
  %141 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %142 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %145 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %143, %147
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = icmp sgt i64 %148, %150
  br i1 %151, label %152, label %161

152:                                              ; preds = %140
  %153 = load i32, i32* %9, align 4
  %154 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %155 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = sub nsw i32 %153, %156
  %158 = sext i32 %157 to i64
  %159 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %160 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %159, i32 0, i32 2
  store i64 %158, i64* %160, align 8
  br label %161

161:                                              ; preds = %152, %140
  br label %290

162:                                              ; preds = %55, %55
  %163 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %8, align 8
  %164 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %163, i32 0, i32 0
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sub i32 %166, 1
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  %171 = load %struct.mfb_info*, %struct.mfb_info** %170, align 8
  store %struct.mfb_info* %171, %struct.mfb_info** %6, align 8
  %172 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %8, align 8
  %173 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %172, i32 0, i32 0
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sub i32 %175, 1
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  store i8* %181, i8** %16, align 8
  %182 = load %struct.mfb_info*, %struct.mfb_info** %6, align 8
  %183 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = load i8*, i8** %16, align 8
  %186 = getelementptr i8, i8* %185, i64 %184
  %187 = ptrtoint i8* %186 to i32
  store i32 %187, i32* %10, align 4
  %188 = load %struct.mfb_info*, %struct.mfb_info** %6, align 8
  %189 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = icmp sgt i32 %190, 0
  %192 = zext i1 %191 to i64
  %193 = select i1 %191, i32 1, i32 0
  store i32 %193, i32* %13, align 4
  %194 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %195 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = load i8*, i8** %14, align 8
  %198 = icmp ugt i8* %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %162
  %200 = load i8*, i8** %14, align 8
  %201 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %202 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %201, i32 0, i32 0
  store i8* %200, i8** %202, align 8
  br label %203

203:                                              ; preds = %199, %162
  %204 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %205 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %208 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = getelementptr i8, i8* %209, i64 %206
  %211 = load i8*, i8** %14, align 8
  %212 = icmp ugt i8* %210, %211
  br i1 %212, label %213, label %223

213:                                              ; preds = %203
  %214 = load i8*, i8** %14, align 8
  %215 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %216 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = ptrtoint i8* %214 to i64
  %219 = ptrtoint i8* %217 to i64
  %220 = sub i64 %218, %219
  %221 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %222 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %221, i32 0, i32 1
  store i64 %220, i64* %222, align 8
  br label %223

223:                                              ; preds = %213, %203
  %224 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %225 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = icmp slt i64 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %223
  %229 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %230 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %229, i32 0, i32 2
  store i64 0, i64* %230, align 8
  br label %231

231:                                              ; preds = %228, %223
  %232 = load i32, i32* %13, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %253

234:                                              ; preds = %231
  %235 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %236 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = load i32, i32* %10, align 4
  %239 = sext i32 %238 to i64
  %240 = icmp slt i64 %237, %239
  br i1 %240, label %241, label %246

241:                                              ; preds = %234
  %242 = load i32, i32* %10, align 4
  %243 = sext i32 %242 to i64
  %244 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %245 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %244, i32 0, i32 2
  store i64 %243, i64* %245, align 8
  br label %246

246:                                              ; preds = %241, %234
  %247 = load i8*, i8** %15, align 8
  %248 = load i32, i32* %10, align 4
  %249 = sext i32 %248 to i64
  %250 = sub i64 0, %249
  %251 = getelementptr i8, i8* %247, i64 %250
  %252 = ptrtoint i8* %251 to i32
  store i32 %252, i32* %9, align 4
  br label %256

253:                                              ; preds = %231
  %254 = load i8*, i8** %15, align 8
  %255 = ptrtoint i8* %254 to i32
  store i32 %255, i32* %9, align 4
  br label %256

256:                                              ; preds = %253, %246
  %257 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %258 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* %9, align 4
  %261 = icmp sgt i32 %259, %260
  br i1 %261, label %262, label %266

262:                                              ; preds = %256
  %263 = load i32, i32* %9, align 4
  %264 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %265 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %264, i32 0, i32 1
  store i32 %263, i32* %265, align 8
  br label %266

266:                                              ; preds = %262, %256
  %267 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %268 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %271 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = sext i32 %272 to i64
  %274 = add nsw i64 %269, %273
  %275 = inttoptr i64 %274 to i8*
  %276 = load i8*, i8** %15, align 8
  %277 = icmp ugt i8* %275, %276
  br i1 %277, label %278, label %289

278:                                              ; preds = %266
  %279 = load i8*, i8** %15, align 8
  %280 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %281 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = sext i32 %282 to i64
  %284 = sub i64 0, %283
  %285 = getelementptr i8, i8* %279, i64 %284
  %286 = ptrtoint i8* %285 to i64
  %287 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %288 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %287, i32 0, i32 2
  store i64 %286, i64* %288, align 8
  br label %289

289:                                              ; preds = %278, %266
  br label %290

290:                                              ; preds = %55, %289, %161, %73
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
