; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-sysfs.c_store_overlays.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-sysfs.c_store_overlays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fb_info = type { i32 }
%struct.omapfb_info = type { i32, i32, %struct.omap_overlay**, i64*, %struct.omapfb2_device* }
%struct.omap_overlay = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }
%struct.omapfb2_device = type { i32, i32, %struct.omap_overlay** }

@OMAPFB_MAX_OVL_PER_FB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"overlay already in use\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"detaching %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_overlays to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_overlays(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fb_info*, align 8
  %10 = alloca %struct.omapfb_info*, align 8
  %11 = alloca %struct.omapfb2_device*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.omap_overlay*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.omapfb_info*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = call %struct.fb_info* @dev_get_drvdata(%struct.device* %28)
  store %struct.fb_info* %29, %struct.fb_info** %9, align 8
  %30 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %31 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %30)
  store %struct.omapfb_info* %31, %struct.omapfb_info** %10, align 8
  %32 = load %struct.omapfb_info*, %struct.omapfb_info** %10, align 8
  %33 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %32, i32 0, i32 4
  %34 = load %struct.omapfb2_device*, %struct.omapfb2_device** %33, align 8
  store %struct.omapfb2_device* %34, %struct.omapfb2_device** %11, align 8
  %35 = load i32, i32* @OMAPFB_MAX_OVL_PER_FB, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %12, align 8
  %38 = alloca %struct.omap_overlay*, i64 %36, align 16
  store i64 %36, i64* %13, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %15, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @strlen(i8* %39)
  store i32 %40, i32* %18, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %18, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 10
  br i1 %48, label %49, label %52

49:                                               ; preds = %4
  %50 = load i32, i32* %18, align 4
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %18, align 4
  br label %52

52:                                               ; preds = %49, %4
  %53 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %54 = call i32 @lock_fb_info(%struct.fb_info* %53)
  %55 = load %struct.omapfb2_device*, %struct.omapfb2_device** %11, align 8
  %56 = call i32 @omapfb_lock(%struct.omapfb2_device* %55)
  %57 = load i32, i32* %18, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %128

59:                                               ; preds = %52
  %60 = load i8*, i8** %7, align 8
  store i8* %60, i8** %20, align 8
  br label %61

61:                                               ; preds = %124, %59
  %62 = load i8*, i8** %20, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* %18, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = icmp ult i8* %62, %66
  br i1 %67, label %68, label %127

68:                                               ; preds = %61
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* @OMAPFB_MAX_OVL_PER_FB, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %16, align 4
  br label %356

75:                                               ; preds = %68
  %76 = load i8*, i8** %20, align 8
  %77 = call i32 @simple_strtoul(i8* %76, i8** %20, i32 0)
  store i32 %77, i32* %21, align 4
  %78 = load i32, i32* %21, align 4
  %79 = load %struct.omapfb2_device*, %struct.omapfb2_device** %11, align 8
  %80 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %78, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %16, align 4
  br label %356

86:                                               ; preds = %75
  store i32 0, i32* %22, align 4
  store i32 0, i32* %17, align 4
  br label %87

87:                                               ; preds = %106, %86
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %87
  %92 = load i32, i32* %17, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %38, i64 %93
  %95 = load %struct.omap_overlay*, %struct.omap_overlay** %94, align 8
  %96 = load %struct.omapfb2_device*, %struct.omapfb2_device** %11, align 8
  %97 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %96, i32 0, i32 2
  %98 = load %struct.omap_overlay**, %struct.omap_overlay*** %97, align 8
  %99 = load i32, i32* %21, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %98, i64 %100
  %102 = load %struct.omap_overlay*, %struct.omap_overlay** %101, align 8
  %103 = icmp eq %struct.omap_overlay* %95, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  store i32 1, i32* %22, align 4
  br label %109

105:                                              ; preds = %91
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %17, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %17, align 4
  br label %87

109:                                              ; preds = %104, %87
  %110 = load i32, i32* %22, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %124, label %112

112:                                              ; preds = %109
  %113 = load %struct.omapfb2_device*, %struct.omapfb2_device** %11, align 8
  %114 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %113, i32 0, i32 2
  %115 = load %struct.omap_overlay**, %struct.omap_overlay*** %114, align 8
  %116 = load i32, i32* %21, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %115, i64 %117
  %119 = load %struct.omap_overlay*, %struct.omap_overlay** %118, align 8
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %15, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %38, i64 %122
  store %struct.omap_overlay* %119, %struct.omap_overlay** %123, align 8
  br label %124

124:                                              ; preds = %112, %109
  %125 = load i8*, i8** %20, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %20, align 8
  br label %61

127:                                              ; preds = %61
  br label %128

128:                                              ; preds = %127, %52
  store i32 0, i32* %17, align 4
  br label %129

129:                                              ; preds = %154, %128
  %130 = load i32, i32* %17, align 4
  %131 = load i32, i32* %15, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %157

133:                                              ; preds = %129
  %134 = load %struct.omapfb2_device*, %struct.omapfb2_device** %11, align 8
  %135 = load i32, i32* %17, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %38, i64 %136
  %138 = load %struct.omap_overlay*, %struct.omap_overlay** %137, align 8
  %139 = call %struct.omapfb_info* @get_overlay_fb(%struct.omapfb2_device* %134, %struct.omap_overlay* %138)
  store %struct.omapfb_info* %139, %struct.omapfb_info** %23, align 8
  %140 = load %struct.omapfb_info*, %struct.omapfb_info** %23, align 8
  %141 = icmp ne %struct.omapfb_info* %140, null
  br i1 %141, label %142, label %153

142:                                              ; preds = %133
  %143 = load %struct.omapfb_info*, %struct.omapfb_info** %23, align 8
  %144 = load %struct.omapfb_info*, %struct.omapfb_info** %10, align 8
  %145 = icmp ne %struct.omapfb_info* %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %142
  %147 = load %struct.omapfb2_device*, %struct.omapfb2_device** %11, align 8
  %148 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @dev_err(i32 %149, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %16, align 4
  br label %356

153:                                              ; preds = %142, %133
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %17, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %17, align 4
  br label %129

157:                                              ; preds = %129
  store i32 0, i32* %17, align 4
  br label %158

158:                                              ; preds = %275, %157
  %159 = load i32, i32* %17, align 4
  %160 = load %struct.omapfb_info*, %struct.omapfb_info** %10, align 8
  %161 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp slt i32 %159, %162
  br i1 %163, label %164, label %278

164:                                              ; preds = %158
  %165 = load %struct.omapfb_info*, %struct.omapfb_info** %10, align 8
  %166 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %165, i32 0, i32 2
  %167 = load %struct.omap_overlay**, %struct.omap_overlay*** %166, align 8
  %168 = load i32, i32* %17, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %167, i64 %169
  %171 = load %struct.omap_overlay*, %struct.omap_overlay** %170, align 8
  store %struct.omap_overlay* %171, %struct.omap_overlay** %14, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %24, align 4
  br label %172

172:                                              ; preds = %185, %164
  %173 = load i32, i32* %24, align 4
  %174 = load i32, i32* %15, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %188

176:                                              ; preds = %172
  %177 = load %struct.omap_overlay*, %struct.omap_overlay** %14, align 8
  %178 = load i32, i32* %24, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %38, i64 %179
  %181 = load %struct.omap_overlay*, %struct.omap_overlay** %180, align 8
  %182 = icmp eq %struct.omap_overlay* %177, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %176
  store i32 1, i32* %25, align 4
  br label %188

184:                                              ; preds = %176
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %24, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %24, align 4
  br label %172

188:                                              ; preds = %183, %172
  %189 = load i32, i32* %25, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  br label %275

192:                                              ; preds = %188
  %193 = load %struct.omapfb_info*, %struct.omapfb_info** %10, align 8
  %194 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %193, i32 0, i32 2
  %195 = load %struct.omap_overlay**, %struct.omap_overlay*** %194, align 8
  %196 = load i32, i32* %17, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %195, i64 %197
  %199 = load %struct.omap_overlay*, %struct.omap_overlay** %198, align 8
  %200 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %201)
  %203 = load %struct.omapfb_info*, %struct.omapfb_info** %10, align 8
  %204 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @omapfb_get_mem_region(i32 %205)
  %207 = load %struct.omap_overlay*, %struct.omap_overlay** %14, align 8
  %208 = call i32 @omapfb_overlay_enable(%struct.omap_overlay* %207, i32 0)
  %209 = load %struct.omap_overlay*, %struct.omap_overlay** %14, align 8
  %210 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %209, i32 0, i32 0
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %210, align 8
  %212 = icmp ne %struct.TYPE_2__* %211, null
  br i1 %212, label %213, label %223

213:                                              ; preds = %192
  %214 = load %struct.omap_overlay*, %struct.omap_overlay** %14, align 8
  %215 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %214, i32 0, i32 0
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 0
  %218 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %217, align 8
  %219 = load %struct.omap_overlay*, %struct.omap_overlay** %14, align 8
  %220 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %219, i32 0, i32 0
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** %220, align 8
  %222 = call i32 %218(%struct.TYPE_2__* %221)
  br label %223

223:                                              ; preds = %213, %192
  %224 = load %struct.omapfb_info*, %struct.omapfb_info** %10, align 8
  %225 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @omapfb_put_mem_region(i32 %226)
  %228 = load i32, i32* %17, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %24, align 4
  br label %230

230:                                              ; preds = %265, %223
  %231 = load i32, i32* %24, align 4
  %232 = load %struct.omapfb_info*, %struct.omapfb_info** %10, align 8
  %233 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = icmp slt i32 %231, %234
  br i1 %235, label %236, label %268

236:                                              ; preds = %230
  %237 = load %struct.omapfb_info*, %struct.omapfb_info** %10, align 8
  %238 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %237, i32 0, i32 3
  %239 = load i64*, i64** %238, align 8
  %240 = load i32, i32* %24, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i64, i64* %239, i64 %241
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.omapfb_info*, %struct.omapfb_info** %10, align 8
  %245 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %244, i32 0, i32 3
  %246 = load i64*, i64** %245, align 8
  %247 = load i32, i32* %24, align 4
  %248 = sub nsw i32 %247, 1
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i64, i64* %246, i64 %249
  store i64 %243, i64* %250, align 8
  %251 = load %struct.omapfb_info*, %struct.omapfb_info** %10, align 8
  %252 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %251, i32 0, i32 2
  %253 = load %struct.omap_overlay**, %struct.omap_overlay*** %252, align 8
  %254 = load i32, i32* %24, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %253, i64 %255
  %257 = load %struct.omap_overlay*, %struct.omap_overlay** %256, align 8
  %258 = load %struct.omapfb_info*, %struct.omapfb_info** %10, align 8
  %259 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %258, i32 0, i32 2
  %260 = load %struct.omap_overlay**, %struct.omap_overlay*** %259, align 8
  %261 = load i32, i32* %24, align 4
  %262 = sub nsw i32 %261, 1
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %260, i64 %263
  store %struct.omap_overlay* %257, %struct.omap_overlay** %264, align 8
  br label %265

265:                                              ; preds = %236
  %266 = load i32, i32* %24, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %24, align 4
  br label %230

268:                                              ; preds = %230
  %269 = load %struct.omapfb_info*, %struct.omapfb_info** %10, align 8
  %270 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = add nsw i32 %271, -1
  store i32 %272, i32* %270, align 8
  %273 = load i32, i32* %17, align 4
  %274 = add nsw i32 %273, -1
  store i32 %274, i32* %17, align 4
  br label %275

275:                                              ; preds = %268, %191
  %276 = load i32, i32* %17, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %17, align 4
  br label %158

278:                                              ; preds = %158
  store i32 0, i32* %17, align 4
  br label %279

279:                                              ; preds = %332, %278
  %280 = load i32, i32* %17, align 4
  %281 = load i32, i32* %15, align 4
  %282 = icmp slt i32 %280, %281
  br i1 %282, label %283, label %335

283:                                              ; preds = %279
  %284 = load i32, i32* %17, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %38, i64 %285
  %287 = load %struct.omap_overlay*, %struct.omap_overlay** %286, align 8
  store %struct.omap_overlay* %287, %struct.omap_overlay** %14, align 8
  store i32 0, i32* %27, align 4
  store i32 0, i32* %26, align 4
  br label %288

288:                                              ; preds = %306, %283
  %289 = load i32, i32* %26, align 4
  %290 = load %struct.omapfb_info*, %struct.omapfb_info** %10, align 8
  %291 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = icmp slt i32 %289, %292
  br i1 %293, label %294, label %309

294:                                              ; preds = %288
  %295 = load %struct.omap_overlay*, %struct.omap_overlay** %14, align 8
  %296 = load %struct.omapfb_info*, %struct.omapfb_info** %10, align 8
  %297 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %296, i32 0, i32 2
  %298 = load %struct.omap_overlay**, %struct.omap_overlay*** %297, align 8
  %299 = load i32, i32* %26, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %298, i64 %300
  %302 = load %struct.omap_overlay*, %struct.omap_overlay** %301, align 8
  %303 = icmp eq %struct.omap_overlay* %295, %302
  br i1 %303, label %304, label %305

304:                                              ; preds = %294
  store i32 1, i32* %27, align 4
  br label %309

305:                                              ; preds = %294
  br label %306

306:                                              ; preds = %305
  %307 = load i32, i32* %26, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %26, align 4
  br label %288

309:                                              ; preds = %304, %288
  %310 = load i32, i32* %27, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %309
  br label %332

313:                                              ; preds = %309
  %314 = load %struct.omapfb_info*, %struct.omapfb_info** %10, align 8
  %315 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %314, i32 0, i32 3
  %316 = load i64*, i64** %315, align 8
  %317 = load %struct.omapfb_info*, %struct.omapfb_info** %10, align 8
  %318 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i64, i64* %316, i64 %320
  store i64 0, i64* %321, align 8
  %322 = load %struct.omap_overlay*, %struct.omap_overlay** %14, align 8
  %323 = load %struct.omapfb_info*, %struct.omapfb_info** %10, align 8
  %324 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %323, i32 0, i32 2
  %325 = load %struct.omap_overlay**, %struct.omap_overlay*** %324, align 8
  %326 = load %struct.omapfb_info*, %struct.omapfb_info** %10, align 8
  %327 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %327, align 8
  %330 = sext i32 %328 to i64
  %331 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %325, i64 %330
  store %struct.omap_overlay* %322, %struct.omap_overlay** %331, align 8
  store i32 1, i32* %19, align 4
  br label %332

332:                                              ; preds = %313, %312
  %333 = load i32, i32* %17, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %17, align 4
  br label %279

335:                                              ; preds = %279
  %336 = load i32, i32* %19, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %353

338:                                              ; preds = %335
  %339 = load %struct.omapfb_info*, %struct.omapfb_info** %10, align 8
  %340 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @omapfb_get_mem_region(i32 %341)
  %343 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %344 = call i32 @omapfb_apply_changes(%struct.fb_info* %343, i32 0)
  store i32 %344, i32* %16, align 4
  %345 = load %struct.omapfb_info*, %struct.omapfb_info** %10, align 8
  %346 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = call i32 @omapfb_put_mem_region(i32 %347)
  %349 = load i32, i32* %16, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %338
  br label %356

352:                                              ; preds = %338
  br label %353

353:                                              ; preds = %352, %335
  %354 = load i64, i64* %8, align 8
  %355 = trunc i64 %354 to i32
  store i32 %355, i32* %16, align 4
  br label %356

356:                                              ; preds = %353, %351, %146, %83, %72
  %357 = load %struct.omapfb2_device*, %struct.omapfb2_device** %11, align 8
  %358 = call i32 @omapfb_unlock(%struct.omapfb2_device* %357)
  %359 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %360 = call i32 @unlock_fb_info(%struct.fb_info* %359)
  %361 = load i32, i32* %16, align 4
  %362 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %362)
  ret i32 %361
}

declare dso_local %struct.fb_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.omapfb_info* @FB2OFB(%struct.fb_info*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @lock_fb_info(%struct.fb_info*) #1

declare dso_local i32 @omapfb_lock(%struct.omapfb2_device*) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local %struct.omapfb_info* @get_overlay_fb(%struct.omapfb2_device*, %struct.omap_overlay*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @omapfb_get_mem_region(i32) #1

declare dso_local i32 @omapfb_overlay_enable(%struct.omap_overlay*, i32) #1

declare dso_local i32 @omapfb_put_mem_region(i32) #1

declare dso_local i32 @omapfb_apply_changes(%struct.fb_info*, i32) #1

declare dso_local i32 @omapfb_unlock(%struct.omapfb2_device*) #1

declare dso_local i32 @unlock_fb_info(%struct.fb_info*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
