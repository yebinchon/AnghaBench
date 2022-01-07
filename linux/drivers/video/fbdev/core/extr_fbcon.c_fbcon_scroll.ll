; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_scroll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_scroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.fbcon_display = type { i32, i32, i32 }
%struct.vc_data = type { i64, i32, i32, i32, i32, i32 }

@registered_fb = common dso_local global %struct.fb_info** null, align 8
@con2fb_map = common dso_local global i64* null, align 8
@fb_display = common dso_local global %struct.fbcon_display* null, align 8
@FBINFO_PARTIAL_PAN_OK = common dso_local global i32 0, align 4
@CM_ERASE = common dso_local global i32 0, align 4
@softback_top = common dso_local global i32 0, align 4
@logo_shown = common dso_local global i32 0, align 4
@FBINFO_READS_FAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, i32, i32, i32, i32)* @fbcon_scroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbcon_scroll(%struct.vc_data* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vc_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fb_info*, align 8
  %13 = alloca %struct.fbcon_display*, align 8
  %14 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %16 = load i64*, i64** @con2fb_map, align 8
  %17 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %18 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i64, i64* %16, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %15, i64 %21
  %23 = load %struct.fb_info*, %struct.fb_info** %22, align 8
  store %struct.fb_info* %23, %struct.fb_info** %12, align 8
  %24 = load %struct.fbcon_display*, %struct.fbcon_display** @fb_display, align 8
  %25 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %26 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %24, i64 %27
  store %struct.fbcon_display* %28, %struct.fbcon_display** %13, align 8
  %29 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @FBINFO_PARTIAL_PAN_OK, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %14, align 4
  %34 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %35 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %36 = call i64 @fbcon_is_inactive(%struct.vc_data* %34, %struct.fb_info* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %843

39:                                               ; preds = %5
  %40 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %41 = load i32, i32* @CM_ERASE, align 4
  %42 = call i32 @fbcon_cursor(%struct.vc_data* %40, i32 %41)
  %43 = load i32, i32* %10, align 4
  switch i32 %43, label %842 [
    i32 128, label %44
    i32 129, label %452
  ]

44:                                               ; preds = %39
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %47 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ugt i32 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %52 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %50, %44
  %55 = load i32, i32* @softback_top, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @fbcon_softback_note(%struct.vc_data* %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %57, %54
  %63 = load i32, i32* @logo_shown, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %405

66:                                               ; preds = %62
  %67 = load %struct.fbcon_display*, %struct.fbcon_display** %13, align 8
  %68 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %451 [
    i32 134, label %70
    i32 130, label %113
    i32 132, label %196
    i32 133, label %292
    i32 131, label %404
  ]

70:                                               ; preds = %66
  %71 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %72 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %73 = load %struct.fbcon_display*, %struct.fbcon_display** %13, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %8, align 4
  %77 = sub i32 %75, %76
  %78 = load i32, i32* %11, align 4
  %79 = sub i32 %77, %78
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @fbcon_redraw_blit(%struct.vc_data* %71, %struct.fb_info* %72, %struct.fbcon_display* %73, i32 %74, i32 %79, i32 %80)
  %82 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %11, align 4
  %85 = sub i32 %83, %84
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %88 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @fbcon_clear(%struct.vc_data* %82, i32 %85, i32 0, i32 %86, i32 %89)
  %91 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %92 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %95 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %11, align 4
  %99 = sub i32 %97, %98
  %100 = mul i32 %96, %99
  %101 = add i32 %93, %100
  %102 = zext i32 %101 to i64
  %103 = inttoptr i64 %102 to i16*
  %104 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %105 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %108 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = mul i32 %109, %110
  %112 = call i32 @scr_memsetw(i16* %103, i32 %106, i32 %111)
  store i32 1, i32* %6, align 4
  br label %843

113:                                              ; preds = %66
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %8, align 4
  %116 = sub i32 %114, %115
  %117 = load i32, i32* %11, align 4
  %118 = sub i32 %116, %117
  %119 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %120 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = mul i32 3, %121
  %123 = lshr i32 %122, 2
  %124 = icmp ugt i32 %118, %123
  br i1 %124, label %125, label %162

125:                                              ; preds = %113
  %126 = load i32, i32* %8, align 4
  %127 = icmp ugt i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %125
  %129 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %133 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @fbcon_bmove(%struct.vc_data* %129, i32 0, i32 0, i32 %130, i32 0, i32 %131, i32 %134)
  br label %136

136:                                              ; preds = %128, %125
  %137 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @ywrap_up(%struct.vc_data* %137, i32 %138)
  %140 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %141 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sub i32 %142, %143
  %145 = icmp ugt i32 %144, 0
  br i1 %145, label %146, label %161

146:                                              ; preds = %136
  %147 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* %11, align 4
  %150 = sub i32 %148, %149
  %151 = load i32, i32* %9, align 4
  %152 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %153 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sub i32 %154, %155
  %157 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %158 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @fbcon_bmove(%struct.vc_data* %147, i32 %150, i32 0, i32 %151, i32 0, i32 %156, i32 %159)
  br label %161

161:                                              ; preds = %146, %136
  br label %186

162:                                              ; preds = %113
  %163 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %164 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @FBINFO_READS_FAST, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %184

169:                                              ; preds = %162
  %170 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %11, align 4
  %173 = add i32 %171, %172
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %8, align 4
  %177 = sub i32 %175, %176
  %178 = load i32, i32* %11, align 4
  %179 = sub i32 %177, %178
  %180 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %181 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @fbcon_bmove(%struct.vc_data* %170, i32 %173, i32 0, i32 %174, i32 0, i32 %179, i32 %182)
  br label %185

184:                                              ; preds = %162
  br label %405

185:                                              ; preds = %169
  br label %186

186:                                              ; preds = %185, %161
  %187 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* %11, align 4
  %190 = sub i32 %188, %189
  %191 = load i32, i32* %11, align 4
  %192 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %193 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @fbcon_clear(%struct.vc_data* %187, i32 %190, i32 0, i32 %191, i32 %194)
  br label %451

196:                                              ; preds = %66
  %197 = load %struct.fbcon_display*, %struct.fbcon_display** %13, align 8
  %198 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %11, align 4
  %201 = add i32 %199, %200
  %202 = load %struct.fbcon_display*, %struct.fbcon_display** %13, align 8
  %203 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %206 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = sub i32 %204, %207
  %209 = mul i32 2, %208
  %210 = icmp ule i32 %201, %209
  br i1 %210, label %211, label %269

211:                                              ; preds = %196
  %212 = load i32, i32* %14, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %222, label %214

214:                                              ; preds = %211
  %215 = load i32, i32* %9, align 4
  %216 = load i32, i32* %8, align 4
  %217 = sub i32 %215, %216
  %218 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %219 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = icmp eq i32 %217, %220
  br i1 %221, label %237, label %222

222:                                              ; preds = %214, %211
  %223 = load i32, i32* %14, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %269

225:                                              ; preds = %222
  %226 = load i32, i32* %9, align 4
  %227 = load i32, i32* %8, align 4
  %228 = sub i32 %226, %227
  %229 = load i32, i32* %11, align 4
  %230 = sub i32 %228, %229
  %231 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %232 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = mul i32 3, %233
  %235 = lshr i32 %234, 2
  %236 = icmp ugt i32 %230, %235
  br i1 %236, label %237, label %269

237:                                              ; preds = %225, %214
  %238 = load i32, i32* %8, align 4
  %239 = icmp ugt i32 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %237
  %241 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %242 = load %struct.fbcon_display*, %struct.fbcon_display** %13, align 8
  %243 = load i32, i32* %8, align 4
  %244 = load i32, i32* %11, align 4
  %245 = call i32 @fbcon_redraw_move(%struct.vc_data* %241, %struct.fbcon_display* %242, i32 0, i32 %243, i32 %244)
  br label %246

246:                                              ; preds = %240, %237
  %247 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %248 = load i32, i32* %8, align 4
  %249 = load i32, i32* %11, align 4
  %250 = call i32 @ypan_up_redraw(%struct.vc_data* %247, i32 %248, i32 %249)
  %251 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %252 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* %9, align 4
  %255 = sub i32 %253, %254
  %256 = icmp ugt i32 %255, 0
  br i1 %256, label %257, label %268

257:                                              ; preds = %246
  %258 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %259 = load %struct.fbcon_display*, %struct.fbcon_display** %13, align 8
  %260 = load i32, i32* %9, align 4
  %261 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %262 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* %9, align 4
  %265 = sub i32 %263, %264
  %266 = load i32, i32* %9, align 4
  %267 = call i32 @fbcon_redraw_move(%struct.vc_data* %258, %struct.fbcon_display* %259, i32 %260, i32 %265, i32 %266)
  br label %268

268:                                              ; preds = %257, %246
  br label %282

269:                                              ; preds = %225, %222, %196
  %270 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %271 = load %struct.fbcon_display*, %struct.fbcon_display** %13, align 8
  %272 = load i32, i32* %8, align 4
  %273 = load i32, i32* %11, align 4
  %274 = add i32 %272, %273
  %275 = load i32, i32* %9, align 4
  %276 = load i32, i32* %8, align 4
  %277 = sub i32 %275, %276
  %278 = load i32, i32* %11, align 4
  %279 = sub i32 %277, %278
  %280 = load i32, i32* %8, align 4
  %281 = call i32 @fbcon_redraw_move(%struct.vc_data* %270, %struct.fbcon_display* %271, i32 %274, i32 %279, i32 %280)
  br label %282

282:                                              ; preds = %269, %268
  %283 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %284 = load i32, i32* %9, align 4
  %285 = load i32, i32* %11, align 4
  %286 = sub i32 %284, %285
  %287 = load i32, i32* %11, align 4
  %288 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %289 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @fbcon_clear(%struct.vc_data* %283, i32 %286, i32 0, i32 %287, i32 %290)
  br label %451

292:                                              ; preds = %66
  %293 = load %struct.fbcon_display*, %struct.fbcon_display** %13, align 8
  %294 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* %11, align 4
  %297 = add i32 %295, %296
  %298 = load %struct.fbcon_display*, %struct.fbcon_display** %13, align 8
  %299 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %302 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = sub i32 %300, %303
  %305 = mul i32 2, %304
  %306 = icmp ule i32 %297, %305
  br i1 %306, label %307, label %370

307:                                              ; preds = %292
  %308 = load i32, i32* %14, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %318, label %310

310:                                              ; preds = %307
  %311 = load i32, i32* %9, align 4
  %312 = load i32, i32* %8, align 4
  %313 = sub i32 %311, %312
  %314 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %315 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 8
  %317 = icmp eq i32 %313, %316
  br i1 %317, label %333, label %318

318:                                              ; preds = %310, %307
  %319 = load i32, i32* %14, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %370

321:                                              ; preds = %318
  %322 = load i32, i32* %9, align 4
  %323 = load i32, i32* %8, align 4
  %324 = sub i32 %322, %323
  %325 = load i32, i32* %11, align 4
  %326 = sub i32 %324, %325
  %327 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %328 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 8
  %330 = mul i32 3, %329
  %331 = lshr i32 %330, 2
  %332 = icmp ugt i32 %326, %331
  br i1 %332, label %333, label %370

333:                                              ; preds = %321, %310
  %334 = load i32, i32* %8, align 4
  %335 = icmp ugt i32 %334, 0
  br i1 %335, label %336, label %344

336:                                              ; preds = %333
  %337 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %338 = load i32, i32* %11, align 4
  %339 = load i32, i32* %8, align 4
  %340 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %341 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 4
  %343 = call i32 @fbcon_bmove(%struct.vc_data* %337, i32 0, i32 0, i32 %338, i32 0, i32 %339, i32 %342)
  br label %344

344:                                              ; preds = %336, %333
  %345 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %346 = load i32, i32* %11, align 4
  %347 = call i32 @ypan_up(%struct.vc_data* %345, i32 %346)
  %348 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %349 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 8
  %351 = load i32, i32* %9, align 4
  %352 = sub i32 %350, %351
  %353 = icmp ugt i32 %352, 0
  br i1 %353, label %354, label %369

354:                                              ; preds = %344
  %355 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %356 = load i32, i32* %9, align 4
  %357 = load i32, i32* %11, align 4
  %358 = sub i32 %356, %357
  %359 = load i32, i32* %9, align 4
  %360 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %361 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 8
  %363 = load i32, i32* %9, align 4
  %364 = sub i32 %362, %363
  %365 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %366 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @fbcon_bmove(%struct.vc_data* %355, i32 %358, i32 0, i32 %359, i32 0, i32 %364, i32 %367)
  br label %369

369:                                              ; preds = %354, %344
  br label %394

370:                                              ; preds = %321, %318, %292
  %371 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %372 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = load i32, i32* @FBINFO_READS_FAST, align 4
  %375 = and i32 %373, %374
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %392

377:                                              ; preds = %370
  %378 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %379 = load i32, i32* %8, align 4
  %380 = load i32, i32* %11, align 4
  %381 = add i32 %379, %380
  %382 = load i32, i32* %8, align 4
  %383 = load i32, i32* %9, align 4
  %384 = load i32, i32* %8, align 4
  %385 = sub i32 %383, %384
  %386 = load i32, i32* %11, align 4
  %387 = sub i32 %385, %386
  %388 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %389 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %388, i32 0, i32 2
  %390 = load i32, i32* %389, align 4
  %391 = call i32 @fbcon_bmove(%struct.vc_data* %378, i32 %381, i32 0, i32 %382, i32 0, i32 %387, i32 %390)
  br label %393

392:                                              ; preds = %370
  br label %405

393:                                              ; preds = %377
  br label %394

394:                                              ; preds = %393, %369
  %395 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %396 = load i32, i32* %9, align 4
  %397 = load i32, i32* %11, align 4
  %398 = sub i32 %396, %397
  %399 = load i32, i32* %11, align 4
  %400 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %401 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %400, i32 0, i32 2
  %402 = load i32, i32* %401, align 4
  %403 = call i32 @fbcon_clear(%struct.vc_data* %395, i32 %398, i32 0, i32 %399, i32 %402)
  br label %451

404:                                              ; preds = %66
  br label %405

405:                                              ; preds = %404, %392, %184, %65
  %406 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %407 = load %struct.fbcon_display*, %struct.fbcon_display** %13, align 8
  %408 = load i32, i32* %8, align 4
  %409 = load i32, i32* %9, align 4
  %410 = load i32, i32* %8, align 4
  %411 = sub i32 %409, %410
  %412 = load i32, i32* %11, align 4
  %413 = sub i32 %411, %412
  %414 = load i32, i32* %11, align 4
  %415 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %416 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 4
  %418 = mul i32 %414, %417
  %419 = call i32 @fbcon_redraw(%struct.vc_data* %406, %struct.fbcon_display* %407, i32 %408, i32 %413, i32 %418)
  %420 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %421 = load i32, i32* %9, align 4
  %422 = load i32, i32* %11, align 4
  %423 = sub i32 %421, %422
  %424 = load i32, i32* %11, align 4
  %425 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %426 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %425, i32 0, i32 2
  %427 = load i32, i32* %426, align 4
  %428 = call i32 @fbcon_clear(%struct.vc_data* %420, i32 %423, i32 0, i32 %424, i32 %427)
  %429 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %430 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %429, i32 0, i32 5
  %431 = load i32, i32* %430, align 8
  %432 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %433 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %432, i32 0, i32 3
  %434 = load i32, i32* %433, align 8
  %435 = load i32, i32* %9, align 4
  %436 = load i32, i32* %11, align 4
  %437 = sub i32 %435, %436
  %438 = mul i32 %434, %437
  %439 = add i32 %431, %438
  %440 = zext i32 %439 to i64
  %441 = inttoptr i64 %440 to i16*
  %442 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %443 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %442, i32 0, i32 4
  %444 = load i32, i32* %443, align 4
  %445 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %446 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %445, i32 0, i32 3
  %447 = load i32, i32* %446, align 8
  %448 = load i32, i32* %11, align 4
  %449 = mul i32 %447, %448
  %450 = call i32 @scr_memsetw(i16* %441, i32 %444, i32 %449)
  store i32 1, i32* %6, align 4
  br label %843

451:                                              ; preds = %66, %394, %282, %186
  br label %842

452:                                              ; preds = %39
  %453 = load i32, i32* %11, align 4
  %454 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %455 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %454, i32 0, i32 1
  %456 = load i32, i32* %455, align 8
  %457 = icmp ugt i32 %453, %456
  br i1 %457, label %458, label %462

458:                                              ; preds = %452
  %459 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %460 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 8
  store i32 %461, i32* %11, align 4
  br label %462

462:                                              ; preds = %458, %452
  %463 = load i32, i32* @logo_shown, align 4
  %464 = icmp sge i32 %463, 0
  br i1 %464, label %465, label %466

465:                                              ; preds = %462
  br label %797

466:                                              ; preds = %462
  %467 = load %struct.fbcon_display*, %struct.fbcon_display** %13, align 8
  %468 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %467, i32 0, i32 2
  %469 = load i32, i32* %468, align 4
  switch i32 %469, label %841 [
    i32 134, label %470
    i32 130, label %511
    i32 133, label %592
    i32 132, label %701
    i32 131, label %796
  ]

470:                                              ; preds = %466
  %471 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %472 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %473 = load %struct.fbcon_display*, %struct.fbcon_display** %13, align 8
  %474 = load i32, i32* %9, align 4
  %475 = sub i32 %474, 1
  %476 = load i32, i32* %9, align 4
  %477 = load i32, i32* %8, align 4
  %478 = sub i32 %476, %477
  %479 = load i32, i32* %11, align 4
  %480 = sub i32 %478, %479
  %481 = load i32, i32* %11, align 4
  %482 = sub i32 0, %481
  %483 = call i32 @fbcon_redraw_blit(%struct.vc_data* %471, %struct.fb_info* %472, %struct.fbcon_display* %473, i32 %475, i32 %480, i32 %482)
  %484 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %485 = load i32, i32* %8, align 4
  %486 = load i32, i32* %11, align 4
  %487 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %488 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %487, i32 0, i32 2
  %489 = load i32, i32* %488, align 4
  %490 = call i32 @fbcon_clear(%struct.vc_data* %484, i32 %485, i32 0, i32 %486, i32 %489)
  %491 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %492 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %491, i32 0, i32 5
  %493 = load i32, i32* %492, align 8
  %494 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %495 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %494, i32 0, i32 3
  %496 = load i32, i32* %495, align 8
  %497 = load i32, i32* %8, align 4
  %498 = mul i32 %496, %497
  %499 = add i32 %493, %498
  %500 = zext i32 %499 to i64
  %501 = inttoptr i64 %500 to i16*
  %502 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %503 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %502, i32 0, i32 4
  %504 = load i32, i32* %503, align 4
  %505 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %506 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %505, i32 0, i32 3
  %507 = load i32, i32* %506, align 8
  %508 = load i32, i32* %11, align 4
  %509 = mul i32 %507, %508
  %510 = call i32 @scr_memsetw(i16* %501, i32 %504, i32 %509)
  store i32 1, i32* %6, align 4
  br label %843

511:                                              ; preds = %466
  %512 = load i32, i32* %9, align 4
  %513 = load i32, i32* %8, align 4
  %514 = sub i32 %512, %513
  %515 = load i32, i32* %11, align 4
  %516 = sub i32 %514, %515
  %517 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %518 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %517, i32 0, i32 1
  %519 = load i32, i32* %518, align 8
  %520 = mul i32 3, %519
  %521 = lshr i32 %520, 2
  %522 = icmp ugt i32 %516, %521
  br i1 %522, label %523, label %560

523:                                              ; preds = %511
  %524 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %525 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %524, i32 0, i32 1
  %526 = load i32, i32* %525, align 8
  %527 = load i32, i32* %9, align 4
  %528 = sub i32 %526, %527
  %529 = icmp ugt i32 %528, 0
  br i1 %529, label %530, label %545

530:                                              ; preds = %523
  %531 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %532 = load i32, i32* %9, align 4
  %533 = load i32, i32* %9, align 4
  %534 = load i32, i32* %11, align 4
  %535 = sub i32 %533, %534
  %536 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %537 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %536, i32 0, i32 1
  %538 = load i32, i32* %537, align 8
  %539 = load i32, i32* %9, align 4
  %540 = sub i32 %538, %539
  %541 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %542 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %541, i32 0, i32 2
  %543 = load i32, i32* %542, align 4
  %544 = call i32 @fbcon_bmove(%struct.vc_data* %531, i32 %532, i32 0, i32 %535, i32 0, i32 %540, i32 %543)
  br label %545

545:                                              ; preds = %530, %523
  %546 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %547 = load i32, i32* %11, align 4
  %548 = call i32 @ywrap_down(%struct.vc_data* %546, i32 %547)
  %549 = load i32, i32* %8, align 4
  %550 = icmp ugt i32 %549, 0
  br i1 %550, label %551, label %559

551:                                              ; preds = %545
  %552 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %553 = load i32, i32* %11, align 4
  %554 = load i32, i32* %8, align 4
  %555 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %556 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %555, i32 0, i32 2
  %557 = load i32, i32* %556, align 4
  %558 = call i32 @fbcon_bmove(%struct.vc_data* %552, i32 %553, i32 0, i32 0, i32 0, i32 %554, i32 %557)
  br label %559

559:                                              ; preds = %551, %545
  br label %584

560:                                              ; preds = %511
  %561 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %562 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %561, i32 0, i32 0
  %563 = load i32, i32* %562, align 4
  %564 = load i32, i32* @FBINFO_READS_FAST, align 4
  %565 = and i32 %563, %564
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %567, label %582

567:                                              ; preds = %560
  %568 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %569 = load i32, i32* %8, align 4
  %570 = load i32, i32* %8, align 4
  %571 = load i32, i32* %11, align 4
  %572 = add i32 %570, %571
  %573 = load i32, i32* %9, align 4
  %574 = load i32, i32* %8, align 4
  %575 = sub i32 %573, %574
  %576 = load i32, i32* %11, align 4
  %577 = sub i32 %575, %576
  %578 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %579 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %578, i32 0, i32 2
  %580 = load i32, i32* %579, align 4
  %581 = call i32 @fbcon_bmove(%struct.vc_data* %568, i32 %569, i32 0, i32 %572, i32 0, i32 %577, i32 %580)
  br label %583

582:                                              ; preds = %560
  br label %797

583:                                              ; preds = %567
  br label %584

584:                                              ; preds = %583, %559
  %585 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %586 = load i32, i32* %8, align 4
  %587 = load i32, i32* %11, align 4
  %588 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %589 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %588, i32 0, i32 2
  %590 = load i32, i32* %589, align 4
  %591 = call i32 @fbcon_clear(%struct.vc_data* %585, i32 %586, i32 0, i32 %587, i32 %590)
  br label %841

592:                                              ; preds = %466
  %593 = load i32, i32* %11, align 4
  %594 = load %struct.fbcon_display*, %struct.fbcon_display** %13, align 8
  %595 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %594, i32 0, i32 1
  %596 = load i32, i32* %595, align 4
  %597 = sub i32 %593, %596
  %598 = load %struct.fbcon_display*, %struct.fbcon_display** %13, align 8
  %599 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %598, i32 0, i32 0
  %600 = load i32, i32* %599, align 4
  %601 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %602 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %601, i32 0, i32 1
  %603 = load i32, i32* %602, align 8
  %604 = sub i32 %600, %603
  %605 = icmp ule i32 %597, %604
  br i1 %605, label %606, label %669

606:                                              ; preds = %592
  %607 = load i32, i32* %14, align 4
  %608 = icmp ne i32 %607, 0
  br i1 %608, label %617, label %609

609:                                              ; preds = %606
  %610 = load i32, i32* %9, align 4
  %611 = load i32, i32* %8, align 4
  %612 = sub i32 %610, %611
  %613 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %614 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %613, i32 0, i32 1
  %615 = load i32, i32* %614, align 8
  %616 = icmp eq i32 %612, %615
  br i1 %616, label %632, label %617

617:                                              ; preds = %609, %606
  %618 = load i32, i32* %14, align 4
  %619 = icmp ne i32 %618, 0
  br i1 %619, label %620, label %669

620:                                              ; preds = %617
  %621 = load i32, i32* %9, align 4
  %622 = load i32, i32* %8, align 4
  %623 = sub i32 %621, %622
  %624 = load i32, i32* %11, align 4
  %625 = sub i32 %623, %624
  %626 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %627 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %626, i32 0, i32 1
  %628 = load i32, i32* %627, align 8
  %629 = mul i32 3, %628
  %630 = lshr i32 %629, 2
  %631 = icmp ugt i32 %625, %630
  br i1 %631, label %632, label %669

632:                                              ; preds = %620, %609
  %633 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %634 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %633, i32 0, i32 1
  %635 = load i32, i32* %634, align 8
  %636 = load i32, i32* %9, align 4
  %637 = sub i32 %635, %636
  %638 = icmp ugt i32 %637, 0
  br i1 %638, label %639, label %654

639:                                              ; preds = %632
  %640 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %641 = load i32, i32* %9, align 4
  %642 = load i32, i32* %9, align 4
  %643 = load i32, i32* %11, align 4
  %644 = sub i32 %642, %643
  %645 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %646 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %645, i32 0, i32 1
  %647 = load i32, i32* %646, align 8
  %648 = load i32, i32* %9, align 4
  %649 = sub i32 %647, %648
  %650 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %651 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %650, i32 0, i32 2
  %652 = load i32, i32* %651, align 4
  %653 = call i32 @fbcon_bmove(%struct.vc_data* %640, i32 %641, i32 0, i32 %644, i32 0, i32 %649, i32 %652)
  br label %654

654:                                              ; preds = %639, %632
  %655 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %656 = load i32, i32* %11, align 4
  %657 = call i32 @ypan_down(%struct.vc_data* %655, i32 %656)
  %658 = load i32, i32* %8, align 4
  %659 = icmp ugt i32 %658, 0
  br i1 %659, label %660, label %668

660:                                              ; preds = %654
  %661 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %662 = load i32, i32* %11, align 4
  %663 = load i32, i32* %8, align 4
  %664 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %665 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %664, i32 0, i32 2
  %666 = load i32, i32* %665, align 4
  %667 = call i32 @fbcon_bmove(%struct.vc_data* %661, i32 %662, i32 0, i32 0, i32 0, i32 %663, i32 %666)
  br label %668

668:                                              ; preds = %660, %654
  br label %693

669:                                              ; preds = %620, %617, %592
  %670 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %671 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %670, i32 0, i32 0
  %672 = load i32, i32* %671, align 4
  %673 = load i32, i32* @FBINFO_READS_FAST, align 4
  %674 = and i32 %672, %673
  %675 = icmp ne i32 %674, 0
  br i1 %675, label %676, label %691

676:                                              ; preds = %669
  %677 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %678 = load i32, i32* %8, align 4
  %679 = load i32, i32* %8, align 4
  %680 = load i32, i32* %11, align 4
  %681 = add i32 %679, %680
  %682 = load i32, i32* %9, align 4
  %683 = load i32, i32* %8, align 4
  %684 = sub i32 %682, %683
  %685 = load i32, i32* %11, align 4
  %686 = sub i32 %684, %685
  %687 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %688 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %687, i32 0, i32 2
  %689 = load i32, i32* %688, align 4
  %690 = call i32 @fbcon_bmove(%struct.vc_data* %677, i32 %678, i32 0, i32 %681, i32 0, i32 %686, i32 %689)
  br label %692

691:                                              ; preds = %669
  br label %797

692:                                              ; preds = %676
  br label %693

693:                                              ; preds = %692, %668
  %694 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %695 = load i32, i32* %8, align 4
  %696 = load i32, i32* %11, align 4
  %697 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %698 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %697, i32 0, i32 2
  %699 = load i32, i32* %698, align 4
  %700 = call i32 @fbcon_clear(%struct.vc_data* %694, i32 %695, i32 0, i32 %696, i32 %699)
  br label %841

701:                                              ; preds = %466
  %702 = load i32, i32* %11, align 4
  %703 = load %struct.fbcon_display*, %struct.fbcon_display** %13, align 8
  %704 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %703, i32 0, i32 1
  %705 = load i32, i32* %704, align 4
  %706 = sub i32 %702, %705
  %707 = load %struct.fbcon_display*, %struct.fbcon_display** %13, align 8
  %708 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %707, i32 0, i32 0
  %709 = load i32, i32* %708, align 4
  %710 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %711 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %710, i32 0, i32 1
  %712 = load i32, i32* %711, align 8
  %713 = sub i32 %709, %712
  %714 = icmp ule i32 %706, %713
  br i1 %714, label %715, label %775

715:                                              ; preds = %701
  %716 = load i32, i32* %14, align 4
  %717 = icmp ne i32 %716, 0
  br i1 %717, label %726, label %718

718:                                              ; preds = %715
  %719 = load i32, i32* %9, align 4
  %720 = load i32, i32* %8, align 4
  %721 = sub i32 %719, %720
  %722 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %723 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %722, i32 0, i32 1
  %724 = load i32, i32* %723, align 8
  %725 = icmp eq i32 %721, %724
  br i1 %725, label %741, label %726

726:                                              ; preds = %718, %715
  %727 = load i32, i32* %14, align 4
  %728 = icmp ne i32 %727, 0
  br i1 %728, label %729, label %775

729:                                              ; preds = %726
  %730 = load i32, i32* %9, align 4
  %731 = load i32, i32* %8, align 4
  %732 = sub i32 %730, %731
  %733 = load i32, i32* %11, align 4
  %734 = sub i32 %732, %733
  %735 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %736 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %735, i32 0, i32 1
  %737 = load i32, i32* %736, align 8
  %738 = mul i32 3, %737
  %739 = lshr i32 %738, 2
  %740 = icmp ugt i32 %734, %739
  br i1 %740, label %741, label %775

741:                                              ; preds = %729, %718
  %742 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %743 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %742, i32 0, i32 1
  %744 = load i32, i32* %743, align 8
  %745 = load i32, i32* %9, align 4
  %746 = sub i32 %744, %745
  %747 = icmp ugt i32 %746, 0
  br i1 %747, label %748, label %761

748:                                              ; preds = %741
  %749 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %750 = load %struct.fbcon_display*, %struct.fbcon_display** %13, align 8
  %751 = load i32, i32* %9, align 4
  %752 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %753 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %752, i32 0, i32 1
  %754 = load i32, i32* %753, align 8
  %755 = load i32, i32* %9, align 4
  %756 = sub i32 %754, %755
  %757 = load i32, i32* %9, align 4
  %758 = load i32, i32* %11, align 4
  %759 = sub i32 %757, %758
  %760 = call i32 @fbcon_redraw_move(%struct.vc_data* %749, %struct.fbcon_display* %750, i32 %751, i32 %756, i32 %759)
  br label %761

761:                                              ; preds = %748, %741
  %762 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %763 = load i32, i32* %8, align 4
  %764 = load i32, i32* %11, align 4
  %765 = call i32 @ypan_down_redraw(%struct.vc_data* %762, i32 %763, i32 %764)
  %766 = load i32, i32* %8, align 4
  %767 = icmp ugt i32 %766, 0
  br i1 %767, label %768, label %774

768:                                              ; preds = %761
  %769 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %770 = load %struct.fbcon_display*, %struct.fbcon_display** %13, align 8
  %771 = load i32, i32* %11, align 4
  %772 = load i32, i32* %8, align 4
  %773 = call i32 @fbcon_redraw_move(%struct.vc_data* %769, %struct.fbcon_display* %770, i32 %771, i32 %772, i32 0)
  br label %774

774:                                              ; preds = %768, %761
  br label %788

775:                                              ; preds = %729, %726, %701
  %776 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %777 = load %struct.fbcon_display*, %struct.fbcon_display** %13, align 8
  %778 = load i32, i32* %8, align 4
  %779 = load i32, i32* %9, align 4
  %780 = load i32, i32* %8, align 4
  %781 = sub i32 %779, %780
  %782 = load i32, i32* %11, align 4
  %783 = sub i32 %781, %782
  %784 = load i32, i32* %8, align 4
  %785 = load i32, i32* %11, align 4
  %786 = add i32 %784, %785
  %787 = call i32 @fbcon_redraw_move(%struct.vc_data* %776, %struct.fbcon_display* %777, i32 %778, i32 %783, i32 %786)
  br label %788

788:                                              ; preds = %775, %774
  %789 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %790 = load i32, i32* %8, align 4
  %791 = load i32, i32* %11, align 4
  %792 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %793 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %792, i32 0, i32 2
  %794 = load i32, i32* %793, align 4
  %795 = call i32 @fbcon_clear(%struct.vc_data* %789, i32 %790, i32 0, i32 %791, i32 %794)
  br label %841

796:                                              ; preds = %466
  br label %797

797:                                              ; preds = %796, %691, %582, %465
  %798 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %799 = load %struct.fbcon_display*, %struct.fbcon_display** %13, align 8
  %800 = load i32, i32* %9, align 4
  %801 = sub i32 %800, 1
  %802 = load i32, i32* %9, align 4
  %803 = load i32, i32* %8, align 4
  %804 = sub i32 %802, %803
  %805 = load i32, i32* %11, align 4
  %806 = sub i32 %804, %805
  %807 = load i32, i32* %11, align 4
  %808 = sub i32 0, %807
  %809 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %810 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %809, i32 0, i32 2
  %811 = load i32, i32* %810, align 4
  %812 = mul i32 %808, %811
  %813 = call i32 @fbcon_redraw(%struct.vc_data* %798, %struct.fbcon_display* %799, i32 %801, i32 %806, i32 %812)
  %814 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %815 = load i32, i32* %8, align 4
  %816 = load i32, i32* %11, align 4
  %817 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %818 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %817, i32 0, i32 2
  %819 = load i32, i32* %818, align 4
  %820 = call i32 @fbcon_clear(%struct.vc_data* %814, i32 %815, i32 0, i32 %816, i32 %819)
  %821 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %822 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %821, i32 0, i32 5
  %823 = load i32, i32* %822, align 8
  %824 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %825 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %824, i32 0, i32 3
  %826 = load i32, i32* %825, align 8
  %827 = load i32, i32* %8, align 4
  %828 = mul i32 %826, %827
  %829 = add i32 %823, %828
  %830 = zext i32 %829 to i64
  %831 = inttoptr i64 %830 to i16*
  %832 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %833 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %832, i32 0, i32 4
  %834 = load i32, i32* %833, align 4
  %835 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %836 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %835, i32 0, i32 3
  %837 = load i32, i32* %836, align 8
  %838 = load i32, i32* %11, align 4
  %839 = mul i32 %837, %838
  %840 = call i32 @scr_memsetw(i16* %831, i32 %834, i32 %839)
  store i32 1, i32* %6, align 4
  br label %843

841:                                              ; preds = %466, %788, %693, %584
  br label %842

842:                                              ; preds = %841, %39, %451
  store i32 0, i32* %6, align 4
  br label %843

843:                                              ; preds = %842, %797, %470, %405, %70, %38
  %844 = load i32, i32* %6, align 4
  ret i32 %844
}

declare dso_local i64 @fbcon_is_inactive(%struct.vc_data*, %struct.fb_info*) #1

declare dso_local i32 @fbcon_cursor(%struct.vc_data*, i32) #1

declare dso_local i32 @fbcon_softback_note(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @fbcon_redraw_blit(%struct.vc_data*, %struct.fb_info*, %struct.fbcon_display*, i32, i32, i32) #1

declare dso_local i32 @fbcon_clear(%struct.vc_data*, i32, i32, i32, i32) #1

declare dso_local i32 @scr_memsetw(i16*, i32, i32) #1

declare dso_local i32 @fbcon_bmove(%struct.vc_data*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ywrap_up(%struct.vc_data*, i32) #1

declare dso_local i32 @fbcon_redraw_move(%struct.vc_data*, %struct.fbcon_display*, i32, i32, i32) #1

declare dso_local i32 @ypan_up_redraw(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @ypan_up(%struct.vc_data*, i32) #1

declare dso_local i32 @fbcon_redraw(%struct.vc_data*, %struct.fbcon_display*, i32, i32, i32) #1

declare dso_local i32 @ywrap_down(%struct.vc_data*, i32) #1

declare dso_local i32 @ypan_down(%struct.vc_data*, i32) #1

declare dso_local i32 @ypan_down_redraw(%struct.vc_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
