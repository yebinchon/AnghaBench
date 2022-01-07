; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fsl-diu-fb.c_install_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fsl-diu-fb.c_install_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_videomode = type { i32 }
%struct.fb_info = type { i32, i32, i32, %struct.TYPE_4__, %struct.fb_monspecs, i32, i32, i32*, %struct.mfb_info* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.fb_monspecs = type { i32, i32, %struct.fb_videomode* }
%struct.mfb_info = type { i64, i32, i32, i32, %struct.fsl_diu_data* }
%struct.fsl_diu_data = type { i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"320x240\00", align 1
@fsl_diu_mode_db = common dso_local global %struct.fb_videomode* null, align 8
@FB_ACTIVATE_NOW = common dso_local global i32 0, align 4
@fsl_diu_ops = common dso_local global i32 0, align 4
@FBINFO_DEFAULT = common dso_local global i32 0, align 4
@FBINFO_VIRTFB = common dso_local global i32 0, align 4
@FBINFO_PARTIAL_PAN_OK = common dso_local global i32 0, align 4
@FBINFO_READS_FAST = common dso_local global i32 0, align 4
@PLANE0 = common dso_local global i64 0, align 8
@fb_mode = common dso_local global i8* null, align 8
@default_bpp = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FB_MISC_1ST_DETAIL = common dso_local global i32 0, align 4
@FB_MODE_IS_FIRST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"fsl_diu_check_var failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"register_framebuffer failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%s registered successfully\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @install_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @install_fb(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mfb_info*, align 8
  %6 = alloca %struct.fsl_diu_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.fb_videomode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fb_monspecs*, align 8
  %13 = alloca %struct.fb_videomode*, align 8
  %14 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 8
  %17 = load %struct.mfb_info*, %struct.mfb_info** %16, align 8
  store %struct.mfb_info* %17, %struct.mfb_info** %5, align 8
  %18 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %19 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %18, i32 0, i32 4
  %20 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %19, align 8
  store %struct.fsl_diu_data* %20, %struct.fsl_diu_data** %6, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %21 = load %struct.fb_videomode*, %struct.fb_videomode** @fsl_diu_mode_db, align 8
  store %struct.fb_videomode* %21, %struct.fb_videomode** %9, align 8
  %22 = load %struct.fb_videomode*, %struct.fb_videomode** @fsl_diu_mode_db, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.fb_videomode* %22)
  store i32 %23, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %24 = load i32, i32* @FB_ACTIVATE_NOW, align 4
  %25 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %29 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %28, i32 0, i32 7
  store i32* @fsl_diu_ops, i32** %29, align 8
  %30 = load i32, i32* @FBINFO_DEFAULT, align 4
  %31 = load i32, i32* @FBINFO_VIRTFB, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @FBINFO_PARTIAL_PAN_OK, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @FBINFO_READS_FAST, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %40 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 4
  %44 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %45 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %44, i32 0, i32 2
  %46 = call i32 @fb_alloc_cmap(i32* %45, i32 16, i32 0)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %1
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %242

51:                                               ; preds = %1
  %52 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %53 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PLANE0, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %90

57:                                               ; preds = %51
  %58 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %6, align 8
  %59 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %57
  %63 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %6, align 8
  %64 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %67 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %66, i32 0, i32 4
  %68 = call i32 @fb_edid_to_monspecs(i32 %65, %struct.fb_monspecs* %67)
  %69 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %70 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %70, i32 0, i32 2
  %72 = load %struct.fb_videomode*, %struct.fb_videomode** %71, align 8
  %73 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %74 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %78 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %77, i32 0, i32 5
  %79 = call i32 @fb_videomode_to_modelist(%struct.fb_videomode* %72, i32 %76, i32* %78)
  %80 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %81 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %81, i32 0, i32 2
  %83 = load %struct.fb_videomode*, %struct.fb_videomode** %82, align 8
  store %struct.fb_videomode* %83, %struct.fb_videomode** %9, align 8
  %84 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %85 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %62, %57
  %89 = load i8*, i8** @fb_mode, align 8
  store i8* %89, i8** %7, align 8
  br label %92

90:                                               ; preds = %51
  %91 = load i8*, i8** %8, align 8
  store i8* %91, i8** %7, align 8
  br label %92

92:                                               ; preds = %90, %88
  %93 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %94 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %93, i32 0, i32 3
  %95 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = load %struct.fb_videomode*, %struct.fb_videomode** %9, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @default_bpp, align 4
  %100 = call i32 @fb_find_mode(%struct.TYPE_4__* %94, %struct.fb_info* %95, i8* %96, %struct.fb_videomode* %97, i32 %98, i32* null, i32 %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %119, label %103

103:                                              ; preds = %92
  %104 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %105 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @PLANE0, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %6, align 8
  %111 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  store i32 0, i32* %11, align 4
  br label %118

115:                                              ; preds = %109, %103
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %2, align 4
  br label %242

118:                                              ; preds = %114
  br label %119

119:                                              ; preds = %118, %92
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %136, label %122

122:                                              ; preds = %119
  %123 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %124 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %123, i32 0, i32 3
  %125 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = load %struct.fb_videomode*, %struct.fb_videomode** @fsl_diu_mode_db, align 8
  %128 = load %struct.fb_videomode*, %struct.fb_videomode** @fsl_diu_mode_db, align 8
  %129 = call i32 @ARRAY_SIZE(%struct.fb_videomode* %128)
  %130 = load i32, i32* @default_bpp, align 4
  %131 = call i32 @fb_find_mode(%struct.TYPE_4__* %124, %struct.fb_info* %125, i8* %126, %struct.fb_videomode* %127, i32 %129, i32* null, i32 %130)
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %4, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %122
  store i32 1, i32* %11, align 4
  br label %135

135:                                              ; preds = %134, %122
  br label %136

136:                                              ; preds = %135, %119
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %198, label %139

139:                                              ; preds = %136
  %140 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %141 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %141, i32 0, i32 2
  %143 = load %struct.fb_videomode*, %struct.fb_videomode** %142, align 8
  %144 = icmp ne %struct.fb_videomode* %143, null
  br i1 %144, label %145, label %198

145:                                              ; preds = %139
  %146 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %147 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %146, i32 0, i32 4
  store %struct.fb_monspecs* %147, %struct.fb_monspecs** %12, align 8
  %148 = load %struct.fb_monspecs*, %struct.fb_monspecs** %12, align 8
  %149 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %148, i32 0, i32 2
  %150 = load %struct.fb_videomode*, %struct.fb_videomode** %149, align 8
  %151 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %150, i64 0
  store %struct.fb_videomode* %151, %struct.fb_videomode** %13, align 8
  %152 = load %struct.fb_monspecs*, %struct.fb_monspecs** %12, align 8
  %153 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @FB_MISC_1ST_DETAIL, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %189

158:                                              ; preds = %145
  store i32 0, i32* %14, align 4
  br label %159

159:                                              ; preds = %185, %158
  %160 = load i32, i32* %14, align 4
  %161 = load %struct.fb_monspecs*, %struct.fb_monspecs** %12, align 8
  %162 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp ult i32 %160, %163
  br i1 %164, label %165, label %188

165:                                              ; preds = %159
  %166 = load %struct.fb_monspecs*, %struct.fb_monspecs** %12, align 8
  %167 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %166, i32 0, i32 2
  %168 = load %struct.fb_videomode*, %struct.fb_videomode** %167, align 8
  %169 = load i32, i32* %14, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %168, i64 %170
  %172 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @FB_MODE_IS_FIRST, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %165
  %178 = load %struct.fb_monspecs*, %struct.fb_monspecs** %12, align 8
  %179 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %178, i32 0, i32 2
  %180 = load %struct.fb_videomode*, %struct.fb_videomode** %179, align 8
  %181 = load i32, i32* %14, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %180, i64 %182
  store %struct.fb_videomode* %183, %struct.fb_videomode** %13, align 8
  br label %188

184:                                              ; preds = %165
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %14, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %14, align 4
  br label %159

188:                                              ; preds = %177, %159
  br label %189

189:                                              ; preds = %188, %145
  %190 = load i32, i32* @default_bpp, align 4
  %191 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %192 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  store i32 %190, i32* %193, align 4
  %194 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %195 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %194, i32 0, i32 3
  %196 = load %struct.fb_videomode*, %struct.fb_videomode** %13, align 8
  %197 = call i32 @fb_videomode_to_var(%struct.TYPE_4__* %195, %struct.fb_videomode* %196)
  br label %198

198:                                              ; preds = %189, %139, %136
  %199 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %200 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %199, i32 0, i32 3
  %201 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %202 = call i64 @fsl_diu_check_var(%struct.TYPE_4__* %200, %struct.fb_info* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %216

204:                                              ; preds = %198
  %205 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %206 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @dev_err(i32 %207, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %209 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %210 = call i32 @unmap_video_memory(%struct.fb_info* %209)
  %211 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %212 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %211, i32 0, i32 2
  %213 = call i32 @fb_dealloc_cmap(i32* %212)
  %214 = load i32, i32* @EINVAL, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %2, align 4
  br label %242

216:                                              ; preds = %198
  %217 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %218 = call i64 @register_framebuffer(%struct.fb_info* %217)
  %219 = icmp slt i64 %218, 0
  br i1 %219, label %220, label %232

220:                                              ; preds = %216
  %221 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %222 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @dev_err(i32 %223, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %225 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %226 = call i32 @unmap_video_memory(%struct.fb_info* %225)
  %227 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %228 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %227, i32 0, i32 2
  %229 = call i32 @fb_dealloc_cmap(i32* %228)
  %230 = load i32, i32* @EINVAL, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %2, align 4
  br label %242

232:                                              ; preds = %216
  %233 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %234 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %233, i32 0, i32 1
  store i32 1, i32* %234, align 8
  %235 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %236 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %239 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @dev_info(i32 %237, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %240)
  store i32 0, i32* %2, align 4
  br label %242

242:                                              ; preds = %232, %220, %204, %115, %49
  %243 = load i32, i32* %2, align 4
  ret i32 %243
}

declare dso_local i32 @ARRAY_SIZE(%struct.fb_videomode*) #1

declare dso_local i32 @fb_alloc_cmap(i32*, i32, i32) #1

declare dso_local i32 @fb_edid_to_monspecs(i32, %struct.fb_monspecs*) #1

declare dso_local i32 @fb_videomode_to_modelist(%struct.fb_videomode*, i32, i32*) #1

declare dso_local i32 @fb_find_mode(%struct.TYPE_4__*, %struct.fb_info*, i8*, %struct.fb_videomode*, i32, i32*, i32) #1

declare dso_local i32 @fb_videomode_to_var(%struct.TYPE_4__*, %struct.fb_videomode*) #1

declare dso_local i64 @fsl_diu_check_var(%struct.TYPE_4__*, %struct.fb_info*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @unmap_video_memory(%struct.fb_info*) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i64 @register_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
