; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2fw.c_mkimage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2fw.c_mkimage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.imgchunk = type { i64, i64, i64 }

@ns3data = common dso_local global i32 0, align 4
@s3data = common dso_local global %struct.TYPE_3__* null, align 8
@ns3crc = common dso_local global i32 0, align 4
@s3crc = common dso_local global %struct.TYPE_4__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"chunk[%d]: addr=0x%06x len=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"s3rec(a=0x%06x,l=%d), no chunk match, exiting.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imgchunk*, i32*)* @mkimage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkimage(%struct.imgchunk* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.imgchunk*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.imgchunk* %0, %struct.imgchunk** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %13, align 8
  %16 = load i32*, i32** %5, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %141, %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @ns3data, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %144

21:                                               ; preds = %17
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s3data, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %21
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s3data, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.imgchunk*, %struct.imgchunk** %4, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %37, i64 %39
  %41 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, %36
  store i64 %43, i64* %41, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s3data, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = add nsw i64 %50, %49
  store i64 %51, i64* %10, align 8
  br label %140

52:                                               ; preds = %21
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %53, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %56, align 4
  %58 = sub i32 %57, 1
  store i32 %58, i32* %9, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s3data, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.imgchunk*, %struct.imgchunk** %4, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %65, i64 %67
  %69 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %68, i32 0, i32 1
  store i64 %64, i64* %69, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s3data, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.imgchunk*, %struct.imgchunk** %4, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %76, i64 %78
  %80 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %79, i32 0, i32 0
  store i64 %75, i64* %80, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s3data, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s3data, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %86, %92
  store i64 %93, i64* %10, align 8
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %136, %52
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @ns3crc, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %139

98:                                               ; preds = %94
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s3crc, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %135

106:                                              ; preds = %98
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s3crc, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.imgchunk*, %struct.imgchunk** %4, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %113, i64 %115
  %117 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %112, %118
  br i1 %119, label %120, label %135

120:                                              ; preds = %106
  %121 = load %struct.imgchunk*, %struct.imgchunk** %4, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %121, i64 %123
  %125 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = sub nsw i64 %126, 2
  store i64 %127, i64* %125, align 8
  %128 = load %struct.imgchunk*, %struct.imgchunk** %4, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %128, i64 %130
  %132 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, 2
  store i64 %134, i64* %132, align 8
  br label %135

135:                                              ; preds = %120, %106, %98
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %8, align 4
  br label %94

139:                                              ; preds = %94
  br label %140

140:                                              ; preds = %139, %30
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %7, align 4
  br label %17

144:                                              ; preds = %17
  store i32 0, i32* %7, align 4
  br label %145

145:                                              ; preds = %187, %144
  %146 = load i32, i32* %7, align 4
  %147 = load i32*, i32** %5, align 8
  %148 = load i32, i32* %147, align 4
  %149 = icmp ult i32 %146, %148
  br i1 %149, label %150, label %190

150:                                              ; preds = %145
  %151 = load %struct.imgchunk*, %struct.imgchunk** %4, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %151, i64 %153
  %155 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* @GFP_KERNEL, align 4
  %158 = call i64 @kzalloc(i64 %156, i32 %157)
  %159 = load %struct.imgchunk*, %struct.imgchunk** %4, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %159, i64 %161
  %163 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %162, i32 0, i32 2
  store i64 %158, i64* %163, align 8
  %164 = load %struct.imgchunk*, %struct.imgchunk** %4, align 8
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %164, i64 %166
  %168 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %150
  store i32 1, i32* %3, align 4
  br label %288

172:                                              ; preds = %150
  %173 = load i32, i32* %7, align 4
  %174 = load %struct.imgchunk*, %struct.imgchunk** %4, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %174, i64 %176
  %178 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.imgchunk*, %struct.imgchunk** %4, align 8
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %180, i64 %182
  %184 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %173, i64 %179, i64 %185)
  br label %187

187:                                              ; preds = %172
  %188 = load i32, i32* %7, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %7, align 4
  br label %145

190:                                              ; preds = %145
  store i32 0, i32* %7, align 4
  br label %191

191:                                              ; preds = %283, %190
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* @ns3data, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %286

195:                                              ; preds = %191
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s3data, align 8
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  store i64 %201, i64* %11, align 8
  %202 = load i64, i64* %11, align 8
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s3data, align 8
  %204 = load i32, i32* %7, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = add nsw i64 %202, %208
  %210 = sub nsw i64 %209, 1
  store i64 %210, i64* %12, align 8
  store i32 0, i32* %8, align 4
  br label %211

211:                                              ; preds = %241, %195
  %212 = load i32, i32* %8, align 4
  %213 = load i32*, i32** %5, align 8
  %214 = load i32, i32* %213, align 4
  %215 = icmp ult i32 %212, %214
  br i1 %215, label %216, label %244

216:                                              ; preds = %211
  %217 = load %struct.imgchunk*, %struct.imgchunk** %4, align 8
  %218 = load i32, i32* %8, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %217, i64 %219
  %221 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  store i64 %222, i64* %13, align 8
  %223 = load i64, i64* %13, align 8
  %224 = load %struct.imgchunk*, %struct.imgchunk** %4, align 8
  %225 = load i32, i32* %8, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %224, i64 %226
  %228 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = add nsw i64 %223, %229
  %231 = sub nsw i64 %230, 1
  store i64 %231, i64* %14, align 8
  %232 = load i64, i64* %11, align 8
  %233 = load i64, i64* %13, align 8
  %234 = icmp sge i64 %232, %233
  br i1 %234, label %235, label %240

235:                                              ; preds = %216
  %236 = load i64, i64* %12, align 8
  %237 = load i64, i64* %14, align 8
  %238 = icmp sle i64 %236, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %235
  br label %244

240:                                              ; preds = %235, %216
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %8, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %8, align 4
  br label %211

244:                                              ; preds = %239, %211
  %245 = load i32, i32* %8, align 4
  %246 = load i32*, i32** %5, align 8
  %247 = load i32, i32* %246, align 4
  %248 = icmp uge i32 %245, %247
  br i1 %248, label %249, label %258

249:                                              ; preds = %244
  %250 = load i64, i64* %11, align 8
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s3data, align 8
  %252 = load i32, i32* %7, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %250, i64 %256)
  store i32 1, i32* %3, align 4
  br label %288

258:                                              ; preds = %244
  %259 = load i64, i64* %11, align 8
  %260 = load i64, i64* %13, align 8
  %261 = sub nsw i64 %259, %260
  store i64 %261, i64* %15, align 8
  %262 = load %struct.imgchunk*, %struct.imgchunk** %4, align 8
  %263 = load i32, i32* %8, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %262, i64 %264
  %266 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* %15, align 8
  %269 = add nsw i64 %267, %268
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s3data, align 8
  %271 = load i32, i32* %7, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s3data, align 8
  %277 = load i32, i32* %7, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = call i32 @memcpy(i64 %269, i32 %275, i64 %281)
  br label %283

283:                                              ; preds = %258
  %284 = load i32, i32* %7, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %7, align 4
  br label %191

286:                                              ; preds = %191
  %287 = load i32, i32* %6, align 4
  store i32 %287, i32* %3, align 4
  br label %288

288:                                              ; preds = %286, %249, %171
  %289 = load i32, i32* %3, align 4
  ret i32 %289
}

declare dso_local i64 @kzalloc(i64, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, i64) #1

declare dso_local i32 @pr_err(i8*, i64, i64) #1

declare dso_local i32 @memcpy(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
