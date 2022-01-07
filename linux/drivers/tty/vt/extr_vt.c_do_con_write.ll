; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_do_con_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_do_con_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.vc_data* }
%struct.vc_data = type { i32, i32, i64, i32, i32, i32, i8, i64, i32, i32, i64, i64, i64, i32, i64, i64 }
%struct.vt_notifier_param = type { i32, %struct.vc_data* }

@.str = private unnamed_addr constant [33 x i8] c"vt: argh, driver_data is NULL !\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"con_write: tty %d not allocated\0A\00", align 1
@ESnormal = common dso_local global i64 0, align 8
@do_con_write.utf8_length_changes = internal constant [6 x i32] [i32 127, i32 2047, i32 65535, i32 2097151, i32 67108863, i32 2147483647], align 16
@vt_notifier_list = common dso_local global i32 0, align 4
@VT_PREWRITE = common dso_local global i32 0, align 4
@NOTIFY_STOP = common dso_local global i64 0, align 8
@CTRL_ALWAYS = common dso_local global i32 0, align 4
@CTRL_ACTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @do_con_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_con_write(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.vc_data*, align 8
  %18 = alloca i8, align 1
  %19 = alloca %struct.vt_notifier_param, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %26 = call i64 (...) @in_interrupt()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %4, align 4
  br label %631

30:                                               ; preds = %3
  %31 = call i32 (...) @might_sleep()
  %32 = call i32 (...) @console_lock()
  %33 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %34 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %33, i32 0, i32 1
  %35 = load %struct.vc_data*, %struct.vc_data** %34, align 8
  store %struct.vc_data* %35, %struct.vc_data** %17, align 8
  %36 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %37 = icmp eq %struct.vc_data* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 (...) @console_unlock()
  store i32 0, i32* %4, align 4
  br label %631

41:                                               ; preds = %30
  %42 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %43 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @vc_cons_allocated(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %14, align 4
  %50 = add i32 %49, 1
  %51 = call i32 @pr_warn_once(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = call i32 (...) @console_unlock()
  store i32 0, i32* %4, align 4
  br label %631

53:                                               ; preds = %41
  %54 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %55 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %23, align 4
  %57 = load i32, i32* %23, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 511, i32 255
  store i32 %60, i32* %24, align 4
  %61 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %62 = call i64 @con_is_fg(%struct.vc_data* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %66 = call i32 @hide_cursor(%struct.vc_data* %65)
  br label %67

67:                                               ; preds = %64, %53
  %68 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %69 = getelementptr inbounds %struct.vt_notifier_param, %struct.vt_notifier_param* %19, i32 0, i32 1
  store %struct.vc_data* %68, %struct.vc_data** %69, align 8
  br label %70

70:                                               ; preds = %610, %609, %358, %275, %244, %137, %67
  %71 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %72 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br label %78

78:                                               ; preds = %75, %70
  %79 = phi i1 [ false, %70 ], [ %77, %75 ]
  br i1 %79, label %80, label %619

80:                                               ; preds = %78
  %81 = load i8*, i8** %6, align 8
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  store i32 %83, i32* %25, align 4
  %84 = load i32, i32* %25, align 4
  store i32 %84, i32* %8, align 4
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %6, align 8
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %7, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 1, i32* %22, align 4
  %91 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %92 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @ESnormal, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %80
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %10, align 4
  br label %268

98:                                               ; preds = %80
  %99 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %100 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %99, i32 0, i32 15
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %263

103:                                              ; preds = %98
  %104 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %105 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %104, i32 0, i32 14
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %263, label %108

108:                                              ; preds = %103
  br label %109

109:                                              ; preds = %607, %108
  %110 = load i32, i32* %8, align 4
  %111 = and i32 %110, 192
  %112 = icmp eq i32 %111, 128
  br i1 %112, label %113, label %166

113:                                              ; preds = %109
  %114 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %115 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %162

118:                                              ; preds = %113
  %119 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %120 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = shl i32 %121, 6
  %123 = load i32, i32* %8, align 4
  %124 = and i32 %123, 63
  %125 = or i32 %122, %124
  %126 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %127 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 4
  %128 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %129 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 8
  %132 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %133 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %133, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %118
  br label %70

138:                                              ; preds = %118
  %139 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %140 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %144 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = sub nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [6 x i32], [6 x i32]* @do_con_write.utf8_length_changes, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = icmp sle i32 %142, %149
  br i1 %150, label %160, label %151

151:                                              ; preds = %138
  %152 = load i32, i32* %8, align 4
  %153 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %154 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [6 x i32], [6 x i32]* @do_con_write.utf8_length_changes, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = icmp sgt i32 %152, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %151, %138
  store i32 65533, i32* %8, align 4
  br label %161

161:                                              ; preds = %160, %151
  br label %165

162:                                              ; preds = %113
  %163 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %164 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %163, i32 0, i32 3
  store i32 0, i32* %164, align 8
  store i32 65533, i32* %8, align 4
  br label %165

165:                                              ; preds = %162, %161
  br label %248

166:                                              ; preds = %109
  %167 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %168 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  store i32 1, i32* %20, align 4
  %172 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %173 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %172, i32 0, i32 3
  store i32 0, i32* %173, align 8
  store i32 65533, i32* %8, align 4
  br label %247

174:                                              ; preds = %166
  %175 = load i32, i32* %8, align 4
  %176 = icmp sgt i32 %175, 127
  br i1 %176, label %177, label %246

177:                                              ; preds = %174
  %178 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %179 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %178, i32 0, i32 5
  store i32 0, i32* %179, align 8
  %180 = load i32, i32* %8, align 4
  %181 = and i32 %180, 224
  %182 = icmp eq i32 %181, 192
  br i1 %182, label %183, label %190

183:                                              ; preds = %177
  %184 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %185 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %184, i32 0, i32 3
  store i32 1, i32* %185, align 8
  %186 = load i32, i32* %8, align 4
  %187 = and i32 %186, 31
  %188 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %189 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %188, i32 0, i32 4
  store i32 %187, i32* %189, align 4
  br label %239

190:                                              ; preds = %177
  %191 = load i32, i32* %8, align 4
  %192 = and i32 %191, 240
  %193 = icmp eq i32 %192, 224
  br i1 %193, label %194, label %201

194:                                              ; preds = %190
  %195 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %196 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %195, i32 0, i32 3
  store i32 2, i32* %196, align 8
  %197 = load i32, i32* %8, align 4
  %198 = and i32 %197, 15
  %199 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %200 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %199, i32 0, i32 4
  store i32 %198, i32* %200, align 4
  br label %238

201:                                              ; preds = %190
  %202 = load i32, i32* %8, align 4
  %203 = and i32 %202, 248
  %204 = icmp eq i32 %203, 240
  br i1 %204, label %205, label %212

205:                                              ; preds = %201
  %206 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %207 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %206, i32 0, i32 3
  store i32 3, i32* %207, align 8
  %208 = load i32, i32* %8, align 4
  %209 = and i32 %208, 7
  %210 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %211 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %210, i32 0, i32 4
  store i32 %209, i32* %211, align 4
  br label %237

212:                                              ; preds = %201
  %213 = load i32, i32* %8, align 4
  %214 = and i32 %213, 252
  %215 = icmp eq i32 %214, 248
  br i1 %215, label %216, label %223

216:                                              ; preds = %212
  %217 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %218 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %217, i32 0, i32 3
  store i32 4, i32* %218, align 8
  %219 = load i32, i32* %8, align 4
  %220 = and i32 %219, 3
  %221 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %222 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %221, i32 0, i32 4
  store i32 %220, i32* %222, align 4
  br label %236

223:                                              ; preds = %212
  %224 = load i32, i32* %8, align 4
  %225 = and i32 %224, 254
  %226 = icmp eq i32 %225, 252
  br i1 %226, label %227, label %234

227:                                              ; preds = %223
  %228 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %229 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %228, i32 0, i32 3
  store i32 5, i32* %229, align 8
  %230 = load i32, i32* %8, align 4
  %231 = and i32 %230, 1
  %232 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %233 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %232, i32 0, i32 4
  store i32 %231, i32* %233, align 4
  br label %235

234:                                              ; preds = %223
  store i32 65533, i32* %8, align 4
  br label %235

235:                                              ; preds = %234, %227
  br label %236

236:                                              ; preds = %235, %216
  br label %237

237:                                              ; preds = %236, %205
  br label %238

238:                                              ; preds = %237, %194
  br label %239

239:                                              ; preds = %238, %183
  %240 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %241 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %239
  br label %70

245:                                              ; preds = %239
  br label %246

246:                                              ; preds = %245, %174
  br label %247

247:                                              ; preds = %246, %171
  br label %248

248:                                              ; preds = %247, %165
  %249 = load i32, i32* %8, align 4
  %250 = icmp sge i32 %249, 55296
  br i1 %250, label %251, label %254

251:                                              ; preds = %248
  %252 = load i32, i32* %8, align 4
  %253 = icmp sle i32 %252, 57343
  br i1 %253, label %260, label %254

254:                                              ; preds = %251, %248
  %255 = load i32, i32* %8, align 4
  %256 = icmp eq i32 %255, 65534
  br i1 %256, label %260, label %257

257:                                              ; preds = %254
  %258 = load i32, i32* %8, align 4
  %259 = icmp eq i32 %258, 65535
  br i1 %259, label %260, label %261

260:                                              ; preds = %257, %254, %251
  store i32 65533, i32* %8, align 4
  br label %261

261:                                              ; preds = %260, %257
  %262 = load i32, i32* %8, align 4
  store i32 %262, i32* %10, align 4
  br label %267

263:                                              ; preds = %103, %98
  %264 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %265 = load i32, i32* %8, align 4
  %266 = call i32 @vc_translate(%struct.vc_data* %264, i32 %265)
  store i32 %266, i32* %10, align 4
  br label %267

267:                                              ; preds = %263, %261
  br label %268

268:                                              ; preds = %267, %96
  %269 = load i32, i32* %10, align 4
  %270 = getelementptr inbounds %struct.vt_notifier_param, %struct.vt_notifier_param* %19, i32 0, i32 0
  store i32 %269, i32* %270, align 8
  %271 = load i32, i32* @VT_PREWRITE, align 4
  %272 = call i64 @atomic_notifier_call_chain(i32* @vt_notifier_list, i32 %271, %struct.vt_notifier_param* %19)
  %273 = load i64, i64* @NOTIFY_STOP, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %268
  br label %70

276:                                              ; preds = %268
  %277 = load i32, i32* %10, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %315

279:                                              ; preds = %276
  %280 = load i32, i32* %8, align 4
  %281 = icmp sge i32 %280, 32
  br i1 %281, label %304, label %282

282:                                              ; preds = %279
  %283 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %284 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %283, i32 0, i32 14
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %282
  %288 = load i32, i32* @CTRL_ALWAYS, align 4
  %289 = load i32, i32* %8, align 4
  %290 = ashr i32 %288, %289
  %291 = and i32 %290, 1
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %315, label %304

293:                                              ; preds = %282
  %294 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %295 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %294, i32 0, i32 15
  %296 = load i64, i64* %295, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %315, label %298

298:                                              ; preds = %293
  %299 = load i32, i32* @CTRL_ACTION, align 4
  %300 = load i32, i32* %8, align 4
  %301 = ashr i32 %299, %300
  %302 = and i32 %301, 1
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %315, label %304

304:                                              ; preds = %298, %287, %279
  %305 = load i32, i32* %8, align 4
  %306 = icmp ne i32 %305, 127
  br i1 %306, label %312, label %307

307:                                              ; preds = %304
  %308 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %309 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %308, i32 0, i32 14
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %315

312:                                              ; preds = %307, %304
  %313 = load i32, i32* %8, align 4
  %314 = icmp ne i32 %313, 155
  br label %315

315:                                              ; preds = %312, %307, %298, %293, %287, %276
  %316 = phi i1 [ false, %307 ], [ false, %298 ], [ false, %293 ], [ false, %287 ], [ false, %276 ], [ %314, %312 ]
  %317 = zext i1 %316 to i32
  store i32 %317, i32* %11, align 4
  %318 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %319 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %318, i32 0, i32 2
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* @ESnormal, align 8
  %322 = icmp eq i64 %320, %321
  br i1 %322, label %323, label %610

323:                                              ; preds = %315
  %324 = load i32, i32* %11, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %610

326:                                              ; preds = %323
  %327 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %328 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %327, i32 0, i32 15
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %342

331:                                              ; preds = %326
  %332 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %333 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %332, i32 0, i32 14
  %334 = load i64, i64* %333, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %342, label %336

336:                                              ; preds = %331
  %337 = load i32, i32* %8, align 4
  %338 = call i64 @is_double_width(i32 %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %336
  store i32 2, i32* %22, align 4
  br label %341

341:                                              ; preds = %340, %336
  br label %342

342:                                              ; preds = %341, %331, %326
  %343 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %344 = load i32, i32* %10, align 4
  %345 = trunc i32 %344 to i8
  %346 = call i32 @conv_uni_to_pc(%struct.vc_data* %343, i8 signext %345)
  store i32 %346, i32* %10, align 4
  %347 = load i32, i32* %10, align 4
  %348 = load i32, i32* %24, align 4
  %349 = xor i32 %348, -1
  %350 = and i32 %347, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %394

352:                                              ; preds = %342
  %353 = load i32, i32* %10, align 4
  %354 = icmp eq i32 %353, -1
  br i1 %354, label %358, label %355

355:                                              ; preds = %352
  %356 = load i32, i32* %10, align 4
  %357 = icmp eq i32 %356, -2
  br i1 %357, label %358, label %359

358:                                              ; preds = %355, %352
  br label %70

359:                                              ; preds = %355
  %360 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %361 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %360, i32 0, i32 15
  %362 = load i64, i64* %361, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %372

364:                                              ; preds = %359
  %365 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %366 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %365, i32 0, i32 14
  %367 = load i64, i64* %366, align 8
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %372, label %369

369:                                              ; preds = %364
  %370 = load i32, i32* %8, align 4
  %371 = icmp slt i32 %370, 128
  br i1 %371, label %372, label %380

372:                                              ; preds = %369, %364, %359
  %373 = load i32, i32* %8, align 4
  %374 = load i32, i32* %24, align 4
  %375 = xor i32 %374, -1
  %376 = and i32 %373, %375
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %380, label %378

378:                                              ; preds = %372
  %379 = load i32, i32* %8, align 4
  store i32 %379, i32* %10, align 4
  br label %393

380:                                              ; preds = %372, %369
  %381 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %382 = call i32 @conv_uni_to_pc(%struct.vc_data* %381, i8 signext -3)
  store i32 %382, i32* %10, align 4
  %383 = load i32, i32* %10, align 4
  %384 = icmp slt i32 %383, 0
  br i1 %384, label %385, label %392

385:                                              ; preds = %380
  store i32 1, i32* %21, align 4
  %386 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %387 = call i32 @conv_uni_to_pc(%struct.vc_data* %386, i8 signext 63)
  store i32 %387, i32* %10, align 4
  %388 = load i32, i32* %10, align 4
  %389 = icmp slt i32 %388, 0
  br i1 %389, label %390, label %391

390:                                              ; preds = %385
  store i32 63, i32* %10, align 4
  br label %391

391:                                              ; preds = %390, %385
  br label %392

392:                                              ; preds = %391, %380
  br label %393

393:                                              ; preds = %392, %378
  br label %394

394:                                              ; preds = %393, %342
  %395 = load i32, i32* %21, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %401, label %397

397:                                              ; preds = %394
  %398 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %399 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %398, i32 0, i32 6
  %400 = load i8, i8* %399, align 4
  store i8 %400, i8* %18, align 1
  br label %466

401:                                              ; preds = %394
  %402 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %403 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %402, i32 0, i32 13
  %404 = load i32, i32* %403, align 8
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %413, label %406

406:                                              ; preds = %401
  %407 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %408 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %407, i32 0, i32 6
  %409 = load i8, i8* %408, align 4
  %410 = zext i8 %409 to i32
  %411 = xor i32 %410, 8
  %412 = trunc i32 %411 to i8
  store i8 %412, i8* %18, align 1
  br label %461

413:                                              ; preds = %401
  %414 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %415 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 4
  %417 = icmp eq i32 %416, 256
  br i1 %417, label %418, label %439

418:                                              ; preds = %413
  %419 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %420 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %419, i32 0, i32 6
  %421 = load i8, i8* %420, align 4
  %422 = zext i8 %421 to i32
  %423 = and i32 %422, 17
  %424 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %425 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %424, i32 0, i32 6
  %426 = load i8, i8* %425, align 4
  %427 = zext i8 %426 to i32
  %428 = and i32 %427, 224
  %429 = ashr i32 %428, 4
  %430 = or i32 %423, %429
  %431 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %432 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %431, i32 0, i32 6
  %433 = load i8, i8* %432, align 4
  %434 = zext i8 %433 to i32
  %435 = and i32 %434, 14
  %436 = shl i32 %435, 4
  %437 = or i32 %430, %436
  %438 = trunc i32 %437 to i8
  store i8 %438, i8* %18, align 1
  br label %460

439:                                              ; preds = %413
  %440 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %441 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %440, i32 0, i32 6
  %442 = load i8, i8* %441, align 4
  %443 = zext i8 %442 to i32
  %444 = and i32 %443, 136
  %445 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %446 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %445, i32 0, i32 6
  %447 = load i8, i8* %446, align 4
  %448 = zext i8 %447 to i32
  %449 = and i32 %448, 112
  %450 = ashr i32 %449, 4
  %451 = or i32 %444, %450
  %452 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %453 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %452, i32 0, i32 6
  %454 = load i8, i8* %453, align 4
  %455 = zext i8 %454 to i32
  %456 = and i32 %455, 7
  %457 = shl i32 %456, 4
  %458 = or i32 %451, %457
  %459 = trunc i32 %458 to i8
  store i8 %459, i8* %18, align 1
  br label %460

460:                                              ; preds = %439, %418
  br label %461

461:                                              ; preds = %460, %406
  %462 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %463 = load i64, i64* %15, align 8
  %464 = load i64, i64* %16, align 8
  %465 = call i32 @con_flush(%struct.vc_data* %462, i64 %463, i64 %464, i32* %13)
  br label %466

466:                                              ; preds = %461, %397
  %467 = load i32, i32* %8, align 4
  store i32 %467, i32* %9, align 4
  br label %468

468:                                              ; preds = %466, %592
  %469 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %470 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %469, i32 0, i32 11
  %471 = load i64, i64* %470, align 8
  %472 = icmp ne i64 %471, 0
  br i1 %472, label %478, label %473

473:                                              ; preds = %468
  %474 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %475 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %474, i32 0, i32 12
  %476 = load i64, i64* %475, align 8
  %477 = icmp ne i64 %476, 0
  br i1 %477, label %478, label %483

478:                                              ; preds = %473, %468
  %479 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %480 = load i64, i64* %15, align 8
  %481 = load i64, i64* %16, align 8
  %482 = call i32 @con_flush(%struct.vc_data* %479, i64 %480, i64 %481, i32* %13)
  br label %483

483:                                              ; preds = %478, %473
  %484 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %485 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %484, i32 0, i32 11
  %486 = load i64, i64* %485, align 8
  %487 = icmp ne i64 %486, 0
  br i1 %487, label %488, label %493

488:                                              ; preds = %483
  %489 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %490 = call i32 @cr(%struct.vc_data* %489)
  %491 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %492 = call i32 @lf(%struct.vc_data* %491)
  br label %493

493:                                              ; preds = %488, %483
  %494 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %495 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %494, i32 0, i32 12
  %496 = load i64, i64* %495, align 8
  %497 = icmp ne i64 %496, 0
  br i1 %497, label %498, label %501

498:                                              ; preds = %493
  %499 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %500 = call i32 @insert_char(%struct.vc_data* %499, i32 1)
  br label %501

501:                                              ; preds = %498, %493
  %502 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %503 = load i32, i32* %9, align 4
  %504 = call i32 @vc_uniscr_putc(%struct.vc_data* %502, i32 %503)
  %505 = load i32, i32* %23, align 4
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %526

507:                                              ; preds = %501
  %508 = load i8, i8* %18, align 1
  %509 = zext i8 %508 to i32
  %510 = shl i32 %509, 8
  %511 = load i32, i32* %23, align 4
  %512 = xor i32 %511, -1
  %513 = and i32 %510, %512
  %514 = load i32, i32* %10, align 4
  %515 = and i32 %514, 256
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %519

517:                                              ; preds = %507
  %518 = load i32, i32* %23, align 4
  br label %520

519:                                              ; preds = %507
  br label %520

520:                                              ; preds = %519, %517
  %521 = phi i32 [ %518, %517 ], [ 0, %519 ]
  %522 = add nsw i32 %513, %521
  %523 = load i32, i32* %10, align 4
  %524 = and i32 %523, 255
  %525 = add nsw i32 %522, %524
  br label %532

526:                                              ; preds = %501
  %527 = load i8, i8* %18, align 1
  %528 = zext i8 %527 to i32
  %529 = shl i32 %528, 8
  %530 = load i32, i32* %10, align 4
  %531 = add nsw i32 %529, %530
  br label %532

532:                                              ; preds = %526, %520
  %533 = phi i32 [ %525, %520 ], [ %531, %526 ]
  %534 = trunc i32 %533 to i8
  %535 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %536 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %535, i32 0, i32 7
  %537 = load i64, i64* %536, align 8
  %538 = inttoptr i64 %537 to i32*
  %539 = call i32 @scr_writew(i8 zeroext %534, i32* %538)
  %540 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %541 = call i64 @con_should_update(%struct.vc_data* %540)
  %542 = icmp ne i64 %541, 0
  br i1 %542, label %543, label %553

543:                                              ; preds = %532
  %544 = load i32, i32* %13, align 4
  %545 = icmp slt i32 %544, 0
  br i1 %545, label %546, label %553

546:                                              ; preds = %543
  %547 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %548 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %547, i32 0, i32 8
  %549 = load i32, i32* %548, align 8
  store i32 %549, i32* %13, align 4
  %550 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %551 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %550, i32 0, i32 7
  %552 = load i64, i64* %551, align 8
  store i64 %552, i64* %15, align 8
  br label %553

553:                                              ; preds = %546, %543, %532
  %554 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %555 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %554, i32 0, i32 8
  %556 = load i32, i32* %555, align 8
  %557 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %558 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %557, i32 0, i32 9
  %559 = load i32, i32* %558, align 4
  %560 = sub nsw i32 %559, 1
  %561 = icmp eq i32 %556, %560
  br i1 %561, label %562, label %572

562:                                              ; preds = %553
  %563 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %564 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %563, i32 0, i32 10
  %565 = load i64, i64* %564, align 8
  %566 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %567 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %566, i32 0, i32 11
  store i64 %565, i64* %567, align 8
  %568 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %569 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %568, i32 0, i32 7
  %570 = load i64, i64* %569, align 8
  %571 = add i64 %570, 2
  store i64 %571, i64* %16, align 8
  br label %581

572:                                              ; preds = %553
  %573 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %574 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %573, i32 0, i32 8
  %575 = load i32, i32* %574, align 8
  %576 = add nsw i32 %575, 1
  store i32 %576, i32* %574, align 8
  %577 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %578 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %577, i32 0, i32 7
  %579 = load i64, i64* %578, align 8
  %580 = add i64 %579, 2
  store i64 %580, i64* %578, align 8
  store i64 %580, i64* %16, align 8
  br label %581

581:                                              ; preds = %572, %562
  %582 = load i32, i32* %22, align 4
  %583 = add nsw i32 %582, -1
  store i32 %583, i32* %22, align 4
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %586, label %585

585:                                              ; preds = %581
  br label %593

586:                                              ; preds = %581
  %587 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %588 = call i32 @conv_uni_to_pc(%struct.vc_data* %587, i8 signext 32)
  store i32 %588, i32* %10, align 4
  %589 = load i32, i32* %10, align 4
  %590 = icmp slt i32 %589, 0
  br i1 %590, label %591, label %592

591:                                              ; preds = %586
  store i32 32, i32* %10, align 4
  br label %592

592:                                              ; preds = %591, %586
  store i32 32, i32* %9, align 4
  br label %468

593:                                              ; preds = %585
  %594 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %595 = load i32, i32* %8, align 4
  %596 = call i32 @notify_write(%struct.vc_data* %594, i32 %595)
  %597 = load i32, i32* %21, align 4
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %599, label %604

599:                                              ; preds = %593
  %600 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %601 = load i64, i64* %15, align 8
  %602 = load i64, i64* %16, align 8
  %603 = call i32 @con_flush(%struct.vc_data* %600, i64 %601, i64 %602, i32* %13)
  br label %604

604:                                              ; preds = %599, %593
  %605 = load i32, i32* %20, align 4
  %606 = icmp ne i32 %605, 0
  br i1 %606, label %607, label %609

607:                                              ; preds = %604
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 1, i32* %22, align 4
  %608 = load i32, i32* %25, align 4
  store i32 %608, i32* %8, align 4
  br label %109

609:                                              ; preds = %604
  br label %70

610:                                              ; preds = %323, %315
  %611 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %612 = load i64, i64* %15, align 8
  %613 = load i64, i64* %16, align 8
  %614 = call i32 @con_flush(%struct.vc_data* %611, i64 %612, i64 %613, i32* %13)
  %615 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %616 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %617 = load i32, i32* %25, align 4
  %618 = call i32 @do_con_trol(%struct.tty_struct* %615, %struct.vc_data* %616, i32 %617)
  br label %70

619:                                              ; preds = %78
  %620 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %621 = load i64, i64* %15, align 8
  %622 = load i64, i64* %16, align 8
  %623 = call i32 @con_flush(%struct.vc_data* %620, i64 %621, i64 %622, i32* %13)
  %624 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %625 = call i32 @vc_uniscr_debug_check(%struct.vc_data* %624)
  %626 = call i32 (...) @console_conditional_schedule()
  %627 = load %struct.vc_data*, %struct.vc_data** %17, align 8
  %628 = call i32 @notify_update(%struct.vc_data* %627)
  %629 = call i32 (...) @console_unlock()
  %630 = load i32, i32* %12, align 4
  store i32 %630, i32* %4, align 4
  br label %631

631:                                              ; preds = %619, %48, %38, %28
  %632 = load i32, i32* %4, align 4
  ret i32 %632
}

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @console_lock(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @console_unlock(...) #1

declare dso_local i32 @vc_cons_allocated(i32) #1

declare dso_local i32 @pr_warn_once(i8*, i32) #1

declare dso_local i64 @con_is_fg(%struct.vc_data*) #1

declare dso_local i32 @hide_cursor(%struct.vc_data*) #1

declare dso_local i32 @vc_translate(%struct.vc_data*, i32) #1

declare dso_local i64 @atomic_notifier_call_chain(i32*, i32, %struct.vt_notifier_param*) #1

declare dso_local i64 @is_double_width(i32) #1

declare dso_local i32 @conv_uni_to_pc(%struct.vc_data*, i8 signext) #1

declare dso_local i32 @con_flush(%struct.vc_data*, i64, i64, i32*) #1

declare dso_local i32 @cr(%struct.vc_data*) #1

declare dso_local i32 @lf(%struct.vc_data*) #1

declare dso_local i32 @insert_char(%struct.vc_data*, i32) #1

declare dso_local i32 @vc_uniscr_putc(%struct.vc_data*, i32) #1

declare dso_local i32 @scr_writew(i8 zeroext, i32*) #1

declare dso_local i64 @con_should_update(%struct.vc_data*) #1

declare dso_local i32 @notify_write(%struct.vc_data*, i32) #1

declare dso_local i32 @do_con_trol(%struct.tty_struct*, %struct.vc_data*, i32) #1

declare dso_local i32 @vc_uniscr_debug_check(%struct.vc_data*) #1

declare dso_local i32 @console_conditional_schedule(...) #1

declare dso_local i32 @notify_update(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
