; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_ccamisc.c_findcard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_ccamisc.c_findcard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zcrypt_device_status_ext = type { i32, i32, i64 }
%struct.cca_info = type { i32, i8, i64, i8, i64 }

@EINVAL = common dso_local global i32 0, align 4
@MAX_ZDEV_ENTRIES_EXT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, i32*, i32, i32)* @findcard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @findcard(i64 %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.zcrypt_device_status_ext*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.cca_info, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 -1, i32* %18, align 4
  %19 = load i64, i64* %7, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21, %5
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %278

27:                                               ; preds = %21
  %28 = load i32, i32* @MAX_ZDEV_ENTRIES_EXT, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.zcrypt_device_status_ext* @kmalloc_array(i32 %28, i32 16, i32 %29)
  store %struct.zcrypt_device_status_ext* %30, %struct.zcrypt_device_status_ext** %12, align 8
  %31 = load %struct.zcrypt_device_status_ext*, %struct.zcrypt_device_status_ext** %12, align 8
  %32 = icmp ne %struct.zcrypt_device_status_ext* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %278

36:                                               ; preds = %27
  %37 = load %struct.zcrypt_device_status_ext*, %struct.zcrypt_device_status_ext** %12, align 8
  %38 = call i32 @zcrypt_device_status_mask_ext(%struct.zcrypt_device_status_ext* %37)
  store i32 0, i32* %16, align 4
  br label %39

39:                                               ; preds = %130, %36
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* @MAX_ZDEV_ENTRIES_EXT, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %133

43:                                               ; preds = %39
  %44 = load %struct.zcrypt_device_status_ext*, %struct.zcrypt_device_status_ext** %12, align 8
  %45 = load i32, i32* %16, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.zcrypt_device_status_ext, %struct.zcrypt_device_status_ext* %44, i64 %46
  %48 = getelementptr inbounds %struct.zcrypt_device_status_ext, %struct.zcrypt_device_status_ext* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @AP_QID_CARD(i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load %struct.zcrypt_device_status_ext*, %struct.zcrypt_device_status_ext** %12, align 8
  %52 = load i32, i32* %16, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.zcrypt_device_status_ext, %struct.zcrypt_device_status_ext* %51, i64 %53
  %55 = getelementptr inbounds %struct.zcrypt_device_status_ext, %struct.zcrypt_device_status_ext* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @AP_QID_QUEUE(i32 %56)
  store i32 %57, i32* %14, align 4
  %58 = load %struct.zcrypt_device_status_ext*, %struct.zcrypt_device_status_ext** %12, align 8
  %59 = load i32, i32* %16, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.zcrypt_device_status_ext, %struct.zcrypt_device_status_ext* %58, i64 %60
  %62 = getelementptr inbounds %struct.zcrypt_device_status_ext, %struct.zcrypt_device_status_ext* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %125

65:                                               ; preds = %43
  %66 = load %struct.zcrypt_device_status_ext*, %struct.zcrypt_device_status_ext** %12, align 8
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.zcrypt_device_status_ext, %struct.zcrypt_device_status_ext* %66, i64 %68
  %70 = getelementptr inbounds %struct.zcrypt_device_status_ext, %struct.zcrypt_device_status_ext* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %125

74:                                               ; preds = %65
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %14, align 4
  %77 = call i64 @cca_info_cache_fetch(i32 %75, i32 %76, %struct.cca_info* %15)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %124

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.cca_info, %struct.cca_info* %15, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %84, label %124

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.cca_info, %struct.cca_info* %15, i32 0, i32 1
  %86 = load i8, i8* %85, align 4
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 50
  br i1 %88, label %89, label %124

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.cca_info, %struct.cca_info* %15, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %7, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %124

94:                                               ; preds = %89
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %94
  br label %133

98:                                               ; preds = %94
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %14, align 4
  %101 = call i64 @fetch_cca_info(i32 %99, i32 %100, %struct.cca_info* %15)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %123

103:                                              ; preds = %98
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @cca_info_cache_update(i32 %104, i32 %105, %struct.cca_info* %15)
  %107 = getelementptr inbounds %struct.cca_info, %struct.cca_info* %15, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = icmp sge i32 %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %103
  %112 = getelementptr inbounds %struct.cca_info, %struct.cca_info* %15, i32 0, i32 1
  %113 = load i8, i8* %112, align 4
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 50
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.cca_info, %struct.cca_info* %15, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %7, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %133

122:                                              ; preds = %116, %111, %103
  br label %123

123:                                              ; preds = %122, %98
  br label %124

124:                                              ; preds = %123, %89, %84, %79, %74
  br label %129

125:                                              ; preds = %65, %43
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %14, align 4
  %128 = call i32 @cca_info_cache_scrub(i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %125, %124
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %16, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %16, align 4
  br label %39

133:                                              ; preds = %121, %97, %39
  %134 = load i32, i32* %16, align 4
  %135 = load i32, i32* @MAX_ZDEV_ENTRIES_EXT, align 4
  %136 = icmp sge i32 %134, %135
  br i1 %136, label %137, label %246

137:                                              ; preds = %133
  store i32 0, i32* %16, align 4
  br label %138

138:                                              ; preds = %220, %137
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* @MAX_ZDEV_ENTRIES_EXT, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %223

142:                                              ; preds = %138
  %143 = load %struct.zcrypt_device_status_ext*, %struct.zcrypt_device_status_ext** %12, align 8
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.zcrypt_device_status_ext, %struct.zcrypt_device_status_ext* %143, i64 %145
  %147 = getelementptr inbounds %struct.zcrypt_device_status_ext, %struct.zcrypt_device_status_ext* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %142
  %151 = load %struct.zcrypt_device_status_ext*, %struct.zcrypt_device_status_ext** %12, align 8
  %152 = load i32, i32* %16, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.zcrypt_device_status_ext, %struct.zcrypt_device_status_ext* %151, i64 %153
  %155 = getelementptr inbounds %struct.zcrypt_device_status_ext, %struct.zcrypt_device_status_ext* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = and i32 %156, 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %150, %142
  br label %220

160:                                              ; preds = %150
  %161 = load %struct.zcrypt_device_status_ext*, %struct.zcrypt_device_status_ext** %12, align 8
  %162 = load i32, i32* %16, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.zcrypt_device_status_ext, %struct.zcrypt_device_status_ext* %161, i64 %163
  %165 = getelementptr inbounds %struct.zcrypt_device_status_ext, %struct.zcrypt_device_status_ext* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @AP_QID_CARD(i32 %166)
  store i32 %167, i32* %13, align 4
  %168 = load %struct.zcrypt_device_status_ext*, %struct.zcrypt_device_status_ext** %12, align 8
  %169 = load i32, i32* %16, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.zcrypt_device_status_ext, %struct.zcrypt_device_status_ext* %168, i64 %170
  %172 = getelementptr inbounds %struct.zcrypt_device_status_ext, %struct.zcrypt_device_status_ext* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @AP_QID_QUEUE(i32 %173)
  store i32 %174, i32* %14, align 4
  %175 = load i32, i32* %13, align 4
  %176 = load i32, i32* %14, align 4
  %177 = call i64 @fetch_cca_info(i32 %175, i32 %176, %struct.cca_info* %15)
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %219

179:                                              ; preds = %160
  %180 = load i32, i32* %13, align 4
  %181 = load i32, i32* %14, align 4
  %182 = call i32 @cca_info_cache_update(i32 %180, i32 %181, %struct.cca_info* %15)
  %183 = getelementptr inbounds %struct.cca_info, %struct.cca_info* %15, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %11, align 4
  %186 = icmp sge i32 %184, %185
  br i1 %186, label %187, label %198

187:                                              ; preds = %179
  %188 = getelementptr inbounds %struct.cca_info, %struct.cca_info* %15, i32 0, i32 1
  %189 = load i8, i8* %188, align 4
  %190 = sext i8 %189 to i32
  %191 = icmp eq i32 %190, 50
  br i1 %191, label %192, label %198

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.cca_info, %struct.cca_info* %15, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* %7, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %192
  br label %223

198:                                              ; preds = %192, %187, %179
  %199 = getelementptr inbounds %struct.cca_info, %struct.cca_info* %15, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* %11, align 4
  %202 = icmp sge i32 %200, %201
  br i1 %202, label %203, label %218

203:                                              ; preds = %198
  %204 = getelementptr inbounds %struct.cca_info, %struct.cca_info* %15, i32 0, i32 3
  %205 = load i8, i8* %204, align 8
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 50
  br i1 %207, label %208, label %218

208:                                              ; preds = %203
  %209 = getelementptr inbounds %struct.cca_info, %struct.cca_info* %15, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* %7, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %218

213:                                              ; preds = %208
  %214 = load i32, i32* %18, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %213
  %217 = load i32, i32* %16, align 4
  store i32 %217, i32* %18, align 4
  br label %218

218:                                              ; preds = %216, %213, %208, %203, %198
  br label %219

219:                                              ; preds = %218, %160
  br label %220

220:                                              ; preds = %219, %159
  %221 = load i32, i32* %16, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %16, align 4
  br label %138

223:                                              ; preds = %197, %138
  %224 = load i32, i32* %16, align 4
  %225 = load i32, i32* @MAX_ZDEV_ENTRIES_EXT, align 4
  %226 = icmp sge i32 %224, %225
  br i1 %226, label %227, label %245

227:                                              ; preds = %223
  %228 = load i32, i32* %18, align 4
  %229 = icmp sge i32 %228, 0
  br i1 %229, label %230, label %245

230:                                              ; preds = %227
  %231 = load %struct.zcrypt_device_status_ext*, %struct.zcrypt_device_status_ext** %12, align 8
  %232 = load i32, i32* %18, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.zcrypt_device_status_ext, %struct.zcrypt_device_status_ext* %231, i64 %233
  %235 = getelementptr inbounds %struct.zcrypt_device_status_ext, %struct.zcrypt_device_status_ext* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @AP_QID_CARD(i32 %236)
  store i32 %237, i32* %13, align 4
  %238 = load %struct.zcrypt_device_status_ext*, %struct.zcrypt_device_status_ext** %12, align 8
  %239 = load i32, i32* %18, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.zcrypt_device_status_ext, %struct.zcrypt_device_status_ext* %238, i64 %240
  %242 = getelementptr inbounds %struct.zcrypt_device_status_ext, %struct.zcrypt_device_status_ext* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @AP_QID_QUEUE(i32 %243)
  store i32 %244, i32* %14, align 4
  br label %245

245:                                              ; preds = %230, %227, %223
  br label %246

246:                                              ; preds = %245, %133
  %247 = load i32, i32* %16, align 4
  %248 = load i32, i32* @MAX_ZDEV_ENTRIES_EXT, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %253, label %250

250:                                              ; preds = %246
  %251 = load i32, i32* %18, align 4
  %252 = icmp sge i32 %251, 0
  br i1 %252, label %253, label %271

253:                                              ; preds = %250, %246
  %254 = load i32*, i32** %8, align 8
  %255 = icmp ne i32* %254, null
  br i1 %255, label %256, label %259

256:                                              ; preds = %253
  %257 = load i32, i32* %13, align 4
  %258 = load i32*, i32** %8, align 8
  store i32 %257, i32* %258, align 4
  br label %259

259:                                              ; preds = %256, %253
  %260 = load i32*, i32** %9, align 8
  %261 = icmp ne i32* %260, null
  br i1 %261, label %262, label %265

262:                                              ; preds = %259
  %263 = load i32, i32* %14, align 4
  %264 = load i32*, i32** %9, align 8
  store i32 %263, i32* %264, align 4
  br label %265

265:                                              ; preds = %262, %259
  %266 = load i32, i32* %16, align 4
  %267 = load i32, i32* @MAX_ZDEV_ENTRIES_EXT, align 4
  %268 = icmp slt i32 %266, %267
  %269 = zext i1 %268 to i64
  %270 = select i1 %268, i32 0, i32 1
  store i32 %270, i32* %17, align 4
  br label %274

271:                                              ; preds = %250
  %272 = load i32, i32* @ENODEV, align 4
  %273 = sub nsw i32 0, %272
  store i32 %273, i32* %17, align 4
  br label %274

274:                                              ; preds = %271, %265
  %275 = load %struct.zcrypt_device_status_ext*, %struct.zcrypt_device_status_ext** %12, align 8
  %276 = call i32 @kfree(%struct.zcrypt_device_status_ext* %275)
  %277 = load i32, i32* %17, align 4
  store i32 %277, i32* %6, align 4
  br label %278

278:                                              ; preds = %274, %33, %24
  %279 = load i32, i32* %6, align 4
  ret i32 %279
}

declare dso_local %struct.zcrypt_device_status_ext* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @zcrypt_device_status_mask_ext(%struct.zcrypt_device_status_ext*) #1

declare dso_local i32 @AP_QID_CARD(i32) #1

declare dso_local i32 @AP_QID_QUEUE(i32) #1

declare dso_local i64 @cca_info_cache_fetch(i32, i32, %struct.cca_info*) #1

declare dso_local i64 @fetch_cca_info(i32, i32, %struct.cca_info*) #1

declare dso_local i32 @cca_info_cache_update(i32, i32, %struct.cca_info*) #1

declare dso_local i32 @cca_info_cache_scrub(i32, i32) #1

declare dso_local i32 @kfree(%struct.zcrypt_device_status_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
