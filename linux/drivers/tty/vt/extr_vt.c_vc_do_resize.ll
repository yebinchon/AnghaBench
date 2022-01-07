; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_vc_do_resize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_vc_do_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, i32, i32, i32, i64, i32, i16*, i32, i32, i32, i32, i64, i32 }
%struct.tty_struct = type { i32 }
%struct.uni_screen = type opaque
%struct.winsize = type { i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@VC_RESIZE_MAXCOL = common dso_local global i32 0, align 4
@VC_RESIZE_MAXROW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_USER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sel_cons = common dso_local global %struct.vc_data* null, align 8
@VT_EVENT_RESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.vc_data*, i32, i32)* @vc_do_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc_do_resize(%struct.tty_struct* %0, %struct.vc_data* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.vc_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i16*, align 8
  %26 = alloca %struct.uni_screen*, align 8
  %27 = alloca %struct.winsize, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %6, align 8
  store %struct.vc_data* %1, %struct.vc_data** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %15, align 8
  store %struct.uni_screen* null, %struct.uni_screen** %26, align 8
  %28 = call i32 (...) @WARN_CONSOLE_UNLOCKED()
  %29 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %30 = icmp ne %struct.vc_data* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* @ENXIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %352

34:                                               ; preds = %4
  %35 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %36 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %24, align 4
  %38 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %39 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @VC_RESIZE_MAXCOL, align 4
  %42 = icmp ugt i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @VC_RESIZE_MAXROW, align 4
  %46 = icmp ugt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43, %34
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %352

50:                                               ; preds = %43
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  br label %59

55:                                               ; preds = %50
  %56 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %57 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  br label %59

59:                                               ; preds = %55, %53
  %60 = phi i32 [ %54, %53 ], [ %58, %55 ]
  store i32 %60, i32* %20, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* %9, align 4
  br label %69

65:                                               ; preds = %59
  %66 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %67 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  br label %69

69:                                               ; preds = %65, %63
  %70 = phi i32 [ %64, %63 ], [ %68, %65 ]
  store i32 %70, i32* %21, align 4
  %71 = load i32, i32* %20, align 4
  %72 = shl i32 %71, 1
  store i32 %72, i32* %22, align 4
  %73 = load i32, i32* %22, align 4
  %74 = load i32, i32* %21, align 4
  %75 = mul i32 %73, %74
  store i32 %75, i32* %23, align 4
  %76 = load i32, i32* %20, align 4
  %77 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %78 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %76, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %69
  %82 = load i32, i32* %21, align 4
  %83 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %84 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %82, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  store i32 0, i32* %5, align 4
  br label %352

88:                                               ; preds = %81, %69
  %89 = load i32, i32* %23, align 4
  %90 = icmp ugt i32 %89, 4194304
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %352

94:                                               ; preds = %88
  %95 = load i32, i32* %23, align 4
  %96 = load i32, i32* @GFP_USER, align 4
  %97 = call i16* @kzalloc(i32 %95, i32 %96)
  store i16* %97, i16** %25, align 8
  %98 = load i16*, i16** %25, align 8
  %99 = icmp ne i16* %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %94
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %352

103:                                              ; preds = %94
  %104 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %105 = call i64 @get_vc_uniscr(%struct.vc_data* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %103
  %108 = load i32, i32* %20, align 4
  %109 = load i32, i32* %21, align 4
  %110 = call i16* @vc_uniscr_alloc(i32 %108, i32 %109)
  %111 = bitcast i16* %110 to %struct.uni_screen*
  store %struct.uni_screen* %111, %struct.uni_screen** %26, align 8
  %112 = load %struct.uni_screen*, %struct.uni_screen** %26, align 8
  %113 = icmp ne %struct.uni_screen* %112, null
  br i1 %113, label %119, label %114

114:                                              ; preds = %107
  %115 = load i16*, i16** %25, align 8
  %116 = call i32 @kfree(i16* %115)
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %5, align 4
  br label %352

119:                                              ; preds = %107
  br label %120

120:                                              ; preds = %119, %103
  %121 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %122 = load %struct.vc_data*, %struct.vc_data** @sel_cons, align 8
  %123 = icmp eq %struct.vc_data* %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = call i32 (...) @clear_selection()
  br label %126

126:                                              ; preds = %124, %120
  %127 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %128 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %17, align 4
  %130 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %131 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %18, align 4
  %133 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %134 = load i32, i32* %20, align 4
  %135 = load i32, i32* %21, align 4
  %136 = load i32, i32* %24, align 4
  %137 = call i64 @resize_screen(%struct.vc_data* %133, i32 %134, i32 %135, i32 %136)
  store i64 %137, i64* %15, align 8
  %138 = load i64, i64* %15, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %126
  %141 = load i16*, i16** %25, align 8
  %142 = call i32 @kfree(i16* %141)
  %143 = load %struct.uni_screen*, %struct.uni_screen** %26, align 8
  %144 = bitcast %struct.uni_screen* %143 to i16*
  %145 = call i32 @kfree(i16* %144)
  %146 = load i64, i64* %15, align 8
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %5, align 4
  br label %352

148:                                              ; preds = %126
  %149 = load i32, i32* %21, align 4
  %150 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %151 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* %20, align 4
  %153 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %154 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* %22, align 4
  %156 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %157 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* %23, align 4
  %159 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %160 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %159, i32 0, i32 4
  store i32 %158, i32* %160, align 8
  %161 = load i32, i32* %18, align 4
  %162 = load i32, i32* %22, align 4
  %163 = call i32 @min(i32 %161, i32 %162)
  %164 = zext i32 %163 to i64
  store i64 %164, i64* %13, align 8
  %165 = load i32, i32* %22, align 4
  %166 = zext i32 %165 to i64
  %167 = load i64, i64* %13, align 8
  %168 = sub i64 %166, %167
  store i64 %168, i64* %14, align 8
  %169 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %170 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %169, i32 0, i32 5
  %171 = load i64, i64* %170, align 8
  store i64 %171, i64* %10, align 8
  %172 = load i16*, i16** %25, align 8
  %173 = ptrtoint i16* %172 to i64
  store i64 %173, i64* %11, align 8
  %174 = load i64, i64* %11, align 8
  %175 = load i32, i32* %23, align 4
  %176 = zext i32 %175 to i64
  %177 = add i64 %174, %176
  store i64 %177, i64* %12, align 8
  %178 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %179 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %178, i32 0, i32 6
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %21, align 4
  %182 = icmp ugt i32 %180, %181
  br i1 %182, label %183, label %209

183:                                              ; preds = %148
  %184 = load i32, i32* %17, align 4
  %185 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %186 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 8
  %188 = sub i32 %184, %187
  %189 = load i32, i32* %21, align 4
  %190 = icmp ult i32 %188, %189
  br i1 %190, label %191, label %195

191:                                              ; preds = %183
  %192 = load i32, i32* %17, align 4
  %193 = load i32, i32* %21, align 4
  %194 = sub i32 %192, %193
  store i32 %194, i32* %19, align 4
  br label %202

195:                                              ; preds = %183
  %196 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %197 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %21, align 4
  %200 = udiv i32 %199, 2
  %201 = sub i32 %198, %200
  store i32 %201, i32* %19, align 4
  br label %202

202:                                              ; preds = %195, %191
  %203 = load i32, i32* %19, align 4
  %204 = load i32, i32* %18, align 4
  %205 = mul i32 %203, %204
  %206 = zext i32 %205 to i64
  %207 = load i64, i64* %10, align 8
  %208 = add i64 %207, %206
  store i64 %208, i64* %10, align 8
  br label %210

209:                                              ; preds = %148
  store i32 0, i32* %19, align 4
  br label %210

210:                                              ; preds = %209, %202
  %211 = load i64, i64* %10, align 8
  %212 = load i32, i32* %18, align 4
  %213 = load i32, i32* %17, align 4
  %214 = load i32, i32* %21, align 4
  %215 = call i32 @min(i32 %213, i32 %214)
  %216 = mul i32 %212, %215
  %217 = zext i32 %216 to i64
  %218 = add i64 %211, %217
  store i64 %218, i64* %16, align 8
  %219 = load %struct.uni_screen*, %struct.uni_screen** %26, align 8
  %220 = bitcast %struct.uni_screen* %219 to i16*
  %221 = load i32, i32* %20, align 4
  %222 = load i32, i32* %21, align 4
  %223 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %224 = call i64 @get_vc_uniscr(%struct.vc_data* %223)
  %225 = load i64, i64* %13, align 8
  %226 = udiv i64 %225, 2
  %227 = load i32, i32* %19, align 4
  %228 = load i32, i32* %17, align 4
  %229 = load i32, i32* %21, align 4
  %230 = call i32 @min(i32 %228, i32 %229)
  %231 = call i32 @vc_uniscr_copy_area(i16* %220, i32 %221, i32 %222, i64 %224, i64 %226, i32 %227, i32 %230)
  %232 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %233 = load %struct.uni_screen*, %struct.uni_screen** %26, align 8
  %234 = bitcast %struct.uni_screen* %233 to i16*
  %235 = call i32 @vc_uniscr_set(%struct.vc_data* %232, i16* %234)
  %236 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %237 = call i32 @update_attr(%struct.vc_data* %236)
  br label %238

238:                                              ; preds = %261, %210
  %239 = load i64, i64* %10, align 8
  %240 = load i64, i64* %16, align 8
  %241 = icmp ult i64 %239, %240
  br i1 %241, label %242, label %270

242:                                              ; preds = %238
  %243 = load i64, i64* %11, align 8
  %244 = inttoptr i64 %243 to i16*
  %245 = load i64, i64* %10, align 8
  %246 = inttoptr i64 %245 to i16*
  %247 = load i64, i64* %13, align 8
  %248 = call i32 @scr_memcpyw(i16* %244, i16* %246, i64 %247)
  %249 = load i64, i64* %14, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %261

251:                                              ; preds = %242
  %252 = load i64, i64* %11, align 8
  %253 = load i64, i64* %13, align 8
  %254 = add i64 %252, %253
  %255 = inttoptr i64 %254 to i8*
  %256 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %257 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %256, i32 0, i32 13
  %258 = load i32, i32* %257, align 8
  %259 = load i64, i64* %14, align 8
  %260 = call i32 @scr_memsetw(i8* %255, i32 %258, i64 %259)
  br label %261

261:                                              ; preds = %251, %242
  %262 = load i32, i32* %18, align 4
  %263 = zext i32 %262 to i64
  %264 = load i64, i64* %10, align 8
  %265 = add i64 %264, %263
  store i64 %265, i64* %10, align 8
  %266 = load i32, i32* %22, align 4
  %267 = zext i32 %266 to i64
  %268 = load i64, i64* %11, align 8
  %269 = add i64 %268, %267
  store i64 %269, i64* %11, align 8
  br label %238

270:                                              ; preds = %238
  %271 = load i64, i64* %12, align 8
  %272 = load i64, i64* %11, align 8
  %273 = icmp ugt i64 %271, %272
  br i1 %273, label %274, label %284

274:                                              ; preds = %270
  %275 = load i64, i64* %11, align 8
  %276 = inttoptr i64 %275 to i8*
  %277 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %278 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %277, i32 0, i32 13
  %279 = load i32, i32* %278, align 8
  %280 = load i64, i64* %12, align 8
  %281 = load i64, i64* %11, align 8
  %282 = sub i64 %280, %281
  %283 = call i32 @scr_memsetw(i8* %276, i32 %279, i64 %282)
  br label %284

284:                                              ; preds = %274, %270
  %285 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %286 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %285, i32 0, i32 7
  %287 = load i16*, i16** %286, align 8
  %288 = call i32 @kfree(i16* %287)
  %289 = load i16*, i16** %25, align 8
  %290 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %291 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %290, i32 0, i32 7
  store i16* %289, i16** %291, align 8
  %292 = load i32, i32* %23, align 4
  %293 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %294 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %293, i32 0, i32 4
  store i32 %292, i32* %294, align 8
  %295 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %296 = call i32 @set_origin(%struct.vc_data* %295)
  %297 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %298 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %297, i32 0, i32 12
  store i64 0, i64* %298, align 8
  %299 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %300 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %303 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %302, i32 0, i32 8
  store i32 %301, i32* %303, align 8
  %304 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %305 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %306 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %305, i32 0, i32 11
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %309 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %308, i32 0, i32 6
  %310 = load i32, i32* %309, align 8
  %311 = call i32 @gotoxy(%struct.vc_data* %304, i32 %307, i32 %310)
  %312 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %313 = call i32 @save_cur(%struct.vc_data* %312)
  %314 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %315 = icmp ne %struct.tty_struct* %314, null
  br i1 %315, label %316, label %332

316:                                              ; preds = %284
  %317 = call i32 @memset(%struct.winsize* %27, i32 0, i32 12)
  %318 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %319 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = getelementptr inbounds %struct.winsize, %struct.winsize* %27, i32 0, i32 0
  store i32 %320, i32* %321, align 4
  %322 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %323 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = getelementptr inbounds %struct.winsize, %struct.winsize* %27, i32 0, i32 1
  store i32 %324, i32* %325, align 4
  %326 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %327 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %326, i32 0, i32 10
  %328 = load i32, i32* %327, align 8
  %329 = getelementptr inbounds %struct.winsize, %struct.winsize* %27, i32 0, i32 2
  store i32 %328, i32* %329, align 4
  %330 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %331 = call i32 @tty_do_resize(%struct.tty_struct* %330, %struct.winsize* %27)
  br label %332

332:                                              ; preds = %316, %284
  %333 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %334 = call i64 @con_is_visible(%struct.vc_data* %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %339

336:                                              ; preds = %332
  %337 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %338 = call i32 @update_screen(%struct.vc_data* %337)
  br label %339

339:                                              ; preds = %336, %332
  %340 = load i32, i32* @VT_EVENT_RESIZE, align 4
  %341 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %342 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %341, i32 0, i32 9
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %345 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %344, i32 0, i32 9
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @vt_event_post(i32 %340, i32 %343, i32 %346)
  %348 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %349 = call i32 @notify_update(%struct.vc_data* %348)
  %350 = load i64, i64* %15, align 8
  %351 = trunc i64 %350 to i32
  store i32 %351, i32* %5, align 4
  br label %352

352:                                              ; preds = %339, %140, %114, %100, %91, %87, %47, %31
  %353 = load i32, i32* %5, align 4
  ret i32 %353
}

declare dso_local i32 @WARN_CONSOLE_UNLOCKED(...) #1

declare dso_local i16* @kzalloc(i32, i32) #1

declare dso_local i64 @get_vc_uniscr(%struct.vc_data*) #1

declare dso_local i16* @vc_uniscr_alloc(i32, i32) #1

declare dso_local i32 @kfree(i16*) #1

declare dso_local i32 @clear_selection(...) #1

declare dso_local i64 @resize_screen(%struct.vc_data*, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @vc_uniscr_copy_area(i16*, i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @vc_uniscr_set(%struct.vc_data*, i16*) #1

declare dso_local i32 @update_attr(%struct.vc_data*) #1

declare dso_local i32 @scr_memcpyw(i16*, i16*, i64) #1

declare dso_local i32 @scr_memsetw(i8*, i32, i64) #1

declare dso_local i32 @set_origin(%struct.vc_data*) #1

declare dso_local i32 @gotoxy(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @save_cur(%struct.vc_data*) #1

declare dso_local i32 @memset(%struct.winsize*, i32, i32) #1

declare dso_local i32 @tty_do_resize(%struct.tty_struct*, %struct.winsize*) #1

declare dso_local i64 @con_is_visible(%struct.vc_data*) #1

declare dso_local i32 @update_screen(%struct.vc_data*) #1

declare dso_local i32 @vt_event_post(i32, i32, i32) #1

declare dso_local i32 @notify_update(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
