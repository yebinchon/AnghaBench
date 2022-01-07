; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_scrolldelta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_scrolldelta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_5__, %struct.fbcon_ops* }
%struct.TYPE_5__ = type { i32 }
%struct.fbcon_ops = type { i32 (%struct.fb_info.0*)*, %struct.TYPE_6__ }
%struct.fb_info.0 = type opaque
%struct.TYPE_6__ = type { i32, i64 }
%struct.fbcon_display = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.vc_data* }
%struct.vc_data = type { i64, i64, i32, i64, i64, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@registered_fb = common dso_local global %struct.fb_info** null, align 8
@con2fb_map = common dso_local global i64* null, align 8
@fg_console = common dso_local global i64 0, align 8
@fb_display = common dso_local global %struct.fbcon_display* null, align 8
@softback_top = common dso_local global i64 0, align 8
@KD_TEXT = common dso_local global i64 0, align 8
@logo_shown = common dso_local global i64 0, align 8
@vc_cons = common dso_local global %struct.TYPE_8__* null, align 8
@logo_lines = common dso_local global i32 0, align 4
@softback_in = common dso_local global i64 0, align 8
@softback_buf = common dso_local global i64 0, align 8
@softback_end = common dso_local global i64 0, align 8
@softback_curr = common dso_local global i64 0, align 8
@FBCON_LOGO_CANSHOW = common dso_local global i64 0, align 8
@CM_ERASE = common dso_local global i32 0, align 4
@CM_SOFTBACK = common dso_local global i32 0, align 4
@CM_DRAW = common dso_local global i32 0, align 4
@scrollback_phys_max = common dso_local global i32 0, align 4
@scrollback_current = common dso_local global i32 0, align 4
@scrollback_max = common dso_local global i32 0, align 4
@FB_VMODE_YWRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @fbcon_scrolldelta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbcon_scrolldelta(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.fbcon_ops*, align 8
  %7 = alloca %struct.fbcon_display*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vc_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %16 = load i64*, i64** @con2fb_map, align 8
  %17 = load i64, i64* @fg_console, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %15, i64 %19
  %21 = load %struct.fb_info*, %struct.fb_info** %20, align 8
  store %struct.fb_info* %21, %struct.fb_info** %5, align 8
  %22 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 1
  %24 = load %struct.fbcon_ops*, %struct.fbcon_ops** %23, align 8
  store %struct.fbcon_ops* %24, %struct.fbcon_ops** %6, align 8
  %25 = load %struct.fbcon_display*, %struct.fbcon_display** @fb_display, align 8
  %26 = load i64, i64* @fg_console, align 8
  %27 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %25, i64 %26
  store %struct.fbcon_display* %27, %struct.fbcon_display** %7, align 8
  %28 = load i64, i64* @softback_top, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %159

30:                                               ; preds = %2
  %31 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %32 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @fg_console, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %267

37:                                               ; preds = %30
  %38 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %39 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @KD_TEXT, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %37
  br label %267

47:                                               ; preds = %43
  %48 = load i64, i64* @logo_shown, align 8
  %49 = icmp uge i64 %48, 0
  br i1 %49, label %50, label %144

50:                                               ; preds = %47
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vc_cons, align 8
  %52 = load i64, i64* @logo_shown, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.vc_data*, %struct.vc_data** %54, align 8
  store %struct.vc_data* %55, %struct.vc_data** %11, align 8
  %56 = load %struct.vc_data*, %struct.vc_data** %11, align 8
  %57 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @logo_lines, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %50
  %62 = load %struct.vc_data*, %struct.vc_data** %11, align 8
  %63 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.vc_data*, %struct.vc_data** %11, align 8
  %66 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load %struct.vc_data*, %struct.vc_data** %11, align 8
  %71 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %70, i32 0, i32 2
  store i32 0, i32* %71, align 8
  br label %72

72:                                               ; preds = %69, %61, %50
  %73 = load i64, i64* @logo_shown, align 8
  %74 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %75 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %78, label %142

78:                                               ; preds = %72
  %79 = load i64, i64* @softback_in, align 8
  store i64 %79, i64* %12, align 8
  %80 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %81 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @logo_lines, align 4
  %84 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %85 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %83, %86
  %88 = add nsw i32 %82, %87
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %90

90:                                               ; preds = %127, %78
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @logo_lines, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %130

94:                                               ; preds = %90
  %95 = load i64, i64* %12, align 8
  %96 = load i64, i64* @softback_top, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %130

99:                                               ; preds = %94
  %100 = load i64, i64* %12, align 8
  %101 = load i64, i64* @softback_buf, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i64, i64* @softback_end, align 8
  store i64 %104, i64* %12, align 8
  br label %105

105:                                              ; preds = %103, %99
  %106 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %107 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %12, align 8
  %111 = sub i64 %110, %109
  store i64 %111, i64* %12, align 8
  %112 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %113 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = load i64, i64* %13, align 8
  %117 = sub i64 %116, %115
  store i64 %117, i64* %13, align 8
  %118 = load i64, i64* %13, align 8
  %119 = inttoptr i64 %118 to i32*
  %120 = load i64, i64* %12, align 8
  %121 = inttoptr i64 %120 to i32*
  %122 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %123 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = call i32 @scr_memcpyw(i32* %119, i32* %121, i64 %125)
  br label %127

127:                                              ; preds = %105
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %14, align 4
  br label %90

130:                                              ; preds = %98, %90
  %131 = load i64, i64* %12, align 8
  store i64 %131, i64* @softback_curr, align 8
  store i64 %131, i64* @softback_in, align 8
  %132 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %133 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %134 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @logo_lines, align 4
  %137 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %138 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %137, i32 0, i32 7
  %139 = load i32, i32* %138, align 8
  %140 = mul nsw i32 %136, %139
  %141 = call i32 @update_region(%struct.vc_data* %132, i32 %135, i32 %140)
  br label %142

142:                                              ; preds = %130, %72
  %143 = load i64, i64* @FBCON_LOGO_CANSHOW, align 8
  store i64 %143, i64* @logo_shown, align 8
  br label %144

144:                                              ; preds = %142, %47
  %145 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %146 = load i32, i32* @CM_ERASE, align 4
  %147 = load i32, i32* @CM_SOFTBACK, align 4
  %148 = or i32 %146, %147
  %149 = call i32 @fbcon_cursor(%struct.vc_data* %145, i32 %148)
  %150 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %151 = load %struct.fbcon_display*, %struct.fbcon_display** %7, align 8
  %152 = load i32, i32* %4, align 4
  %153 = call i32 @fbcon_redraw_softback(%struct.vc_data* %150, %struct.fbcon_display* %151, i32 %152)
  %154 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %155 = load i32, i32* @CM_DRAW, align 4
  %156 = load i32, i32* @CM_SOFTBACK, align 4
  %157 = or i32 %155, %156
  %158 = call i32 @fbcon_cursor(%struct.vc_data* %154, i32 %157)
  br label %267

159:                                              ; preds = %2
  %160 = load i32, i32* @scrollback_phys_max, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %159
  br label %267

163:                                              ; preds = %159
  %164 = load i32, i32* @scrollback_current, align 4
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @scrollback_current, align 4
  %167 = sub nsw i32 %166, %165
  store i32 %167, i32* @scrollback_current, align 4
  %168 = load i32, i32* @scrollback_current, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %163
  store i32 0, i32* @scrollback_current, align 4
  br label %178

171:                                              ; preds = %163
  %172 = load i32, i32* @scrollback_current, align 4
  %173 = load i32, i32* @scrollback_max, align 4
  %174 = icmp sgt i32 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %171
  %176 = load i32, i32* @scrollback_max, align 4
  store i32 %176, i32* @scrollback_current, align 4
  br label %177

177:                                              ; preds = %175, %171
  br label %178

178:                                              ; preds = %177, %170
  %179 = load i32, i32* @scrollback_current, align 4
  %180 = load i32, i32* %10, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  br label %267

183:                                              ; preds = %178
  %184 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %185 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %186 = call i64 @fbcon_is_inactive(%struct.vc_data* %184, %struct.fb_info* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  br label %267

189:                                              ; preds = %183
  %190 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %191 = load i32, i32* @CM_ERASE, align 4
  %192 = call i32 @fbcon_cursor(%struct.vc_data* %190, i32 %191)
  %193 = load %struct.fbcon_display*, %struct.fbcon_display** %7, align 8
  %194 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @scrollback_current, align 4
  %197 = sub nsw i32 %195, %196
  store i32 %197, i32* %8, align 4
  %198 = load %struct.fbcon_display*, %struct.fbcon_display** %7, align 8
  %199 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  store i32 %200, i32* %9, align 4
  %201 = load %struct.fbcon_display*, %struct.fbcon_display** %7, align 8
  %202 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  switch i32 %203, label %226 [
    i32 128, label %204
    i32 130, label %211
    i32 129, label %211
  ]

204:                                              ; preds = %189
  %205 = load i32, i32* @FB_VMODE_YWRAP, align 4
  %206 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %207 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = or i32 %209, %205
  store i32 %210, i32* %208, align 8
  br label %226

211:                                              ; preds = %189, %189
  %212 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %213 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %212, i32 0, i32 4
  %214 = load i64, i64* %213, align 8
  %215 = load i32, i32* %9, align 4
  %216 = sext i32 %215 to i64
  %217 = sub nsw i64 %216, %214
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %9, align 4
  %219 = load i32, i32* @FB_VMODE_YWRAP, align 4
  %220 = xor i32 %219, -1
  %221 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %222 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = and i32 %224, %220
  store i32 %225, i32* %223, align 8
  br label %226

226:                                              ; preds = %189, %211, %204
  %227 = load i32, i32* %8, align 4
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %226
  %230 = load i32, i32* %9, align 4
  %231 = load i32, i32* %8, align 4
  %232 = add nsw i32 %231, %230
  store i32 %232, i32* %8, align 4
  br label %242

233:                                              ; preds = %226
  %234 = load i32, i32* %8, align 4
  %235 = load i32, i32* %9, align 4
  %236 = icmp sge i32 %234, %235
  br i1 %236, label %237, label %241

237:                                              ; preds = %233
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* %8, align 4
  %240 = sub nsw i32 %239, %238
  store i32 %240, i32* %8, align 4
  br label %241

241:                                              ; preds = %237, %233
  br label %242

242:                                              ; preds = %241, %229
  %243 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %244 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 1
  store i64 0, i64* %245, align 8
  %246 = load i32, i32* %8, align 4
  %247 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %248 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %247, i32 0, i32 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = mul nsw i32 %246, %250
  %252 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %253 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 0
  store i32 %251, i32* %254, align 8
  %255 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %256 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %255, i32 0, i32 0
  %257 = load i32 (%struct.fb_info.0*)*, i32 (%struct.fb_info.0*)** %256, align 8
  %258 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %259 = bitcast %struct.fb_info* %258 to %struct.fb_info.0*
  %260 = call i32 %257(%struct.fb_info.0* %259)
  %261 = load i32, i32* @scrollback_current, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %267, label %263

263:                                              ; preds = %242
  %264 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %265 = load i32, i32* @CM_DRAW, align 4
  %266 = call i32 @fbcon_cursor(%struct.vc_data* %264, i32 %265)
  br label %267

267:                                              ; preds = %36, %46, %144, %162, %182, %188, %263, %242
  ret void
}

declare dso_local i32 @scr_memcpyw(i32*, i32*, i64) #1

declare dso_local i32 @update_region(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @fbcon_cursor(%struct.vc_data*, i32) #1

declare dso_local i32 @fbcon_redraw_softback(%struct.vc_data*, %struct.fbcon_display*, i32) #1

declare dso_local i64 @fbcon_is_inactive(%struct.vc_data*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
