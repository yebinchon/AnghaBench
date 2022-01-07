; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_cache.c___FAT_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_cache.c___FAT_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fs_info_t = type { i64, i64 }
%struct.bd_info_t = type { i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.bd_info_t, %struct.fs_info_t }

@FAT12 = common dso_local global i64 0, align 8
@FAT16 = common dso_local global i64 0, align 8
@FAT32 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, i32)* @__FAT_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__FAT_write(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.fs_info_t*, align 8
  %13 = alloca %struct.bd_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store %struct.fs_info_t* %16, %struct.fs_info_t** %12, align 8
  %17 = load %struct.super_block*, %struct.super_block** %5, align 8
  %18 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.bd_info_t* %19, %struct.bd_info_t** %13, align 8
  %20 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %21 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FAT12, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %163

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 4095
  store i32 %27, i32* %7, align 4
  %28 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %29 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = ashr i32 %32, 1
  %34 = add nsw i32 %31, %33
  %35 = load %struct.bd_info_t*, %struct.bd_info_t** %13, align 8
  %36 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %34, %37
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %30, %39
  store i64 %40, i64* %9, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = ashr i32 %42, 1
  %44 = add nsw i32 %41, %43
  %45 = load %struct.bd_info_t*, %struct.bd_info_t** %13, align 8
  %46 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %44, %47
  store i32 %48, i32* %8, align 4
  %49 = load %struct.super_block*, %struct.super_block** %5, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i32* @FAT_getblk(%struct.super_block* %49, i64 %50)
  store i32* %51, i32** %10, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %25
  store i32 -1, i32* %4, align 4
  br label %286

55:                                               ; preds = %25
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, 1
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %110

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = shl i32 %60, 4
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.bd_info_t*, %struct.bd_info_t** %13, align 8
  %64 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 1
  %67 = icmp eq i32 %62, %66
  br i1 %67, label %68, label %96

68:                                               ; preds = %59
  %69 = load i32, i32* %7, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 15
  %76 = or i32 %69, %75
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %76, i32* %80, align 4
  %81 = load %struct.super_block*, %struct.super_block** %5, align 8
  %82 = load i64, i64* %9, align 8
  %83 = call i32 @FAT_modify(%struct.super_block* %81, i64 %82)
  %84 = load %struct.super_block*, %struct.super_block** %5, align 8
  %85 = load i64, i64* %9, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %9, align 8
  %87 = call i32* @FAT_getblk(%struct.super_block* %84, i64 %86)
  store i32* %87, i32** %10, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %68
  store i32 -1, i32* %4, align 4
  br label %286

91:                                               ; preds = %68
  %92 = load i32, i32* %7, align 4
  %93 = ashr i32 %92, 8
  %94 = load i32*, i32** %10, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %93, i32* %95, align 4
  br label %109

96:                                               ; preds = %59
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32* %100, i32** %11, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = call i32 @GET16(i32* %101)
  %103 = and i32 %102, 15
  %104 = load i32, i32* %7, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %7, align 4
  %106 = load i32*, i32** %11, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @SET16(i32* %106, i32 %107)
  br label %109

109:                                              ; preds = %96, %91
  br label %162

110:                                              ; preds = %55
  %111 = load i32, i32* %7, align 4
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %111, i32* %115, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.bd_info_t*, %struct.bd_info_t** %13, align 8
  %118 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %119, 1
  %121 = icmp eq i32 %116, %120
  br i1 %121, label %122, label %148

122:                                              ; preds = %110
  %123 = load i32, i32* %7, align 4
  %124 = load i32*, i32** %10, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %123, i32* %127, align 4
  %128 = load %struct.super_block*, %struct.super_block** %5, align 8
  %129 = load i64, i64* %9, align 8
  %130 = call i32 @FAT_modify(%struct.super_block* %128, i64 %129)
  %131 = load %struct.super_block*, %struct.super_block** %5, align 8
  %132 = load i64, i64* %9, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %9, align 8
  %134 = call i32* @FAT_getblk(%struct.super_block* %131, i64 %133)
  store i32* %134, i32** %10, align 8
  %135 = load i32*, i32** %10, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %122
  store i32 -1, i32* %4, align 4
  br label %286

138:                                              ; preds = %122
  %139 = load i32*, i32** %10, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, 240
  %143 = load i32, i32* %7, align 4
  %144 = ashr i32 %143, 8
  %145 = or i32 %142, %144
  %146 = load i32*, i32** %10, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  store i32 %145, i32* %147, align 4
  br label %161

148:                                              ; preds = %110
  %149 = load i32*, i32** %10, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32* %152, i32** %11, align 8
  %153 = load i32*, i32** %11, align 8
  %154 = call i32 @GET16(i32* %153)
  %155 = and i32 %154, 61440
  %156 = load i32, i32* %7, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %7, align 4
  %158 = load i32*, i32** %11, align 8
  %159 = load i32, i32* %7, align 4
  %160 = call i32 @SET16(i32* %158, i32 %159)
  br label %161

161:                                              ; preds = %148, %138
  br label %162

162:                                              ; preds = %161, %109
  br label %282

163:                                              ; preds = %3
  %164 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %165 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @FAT16, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %203

169:                                              ; preds = %163
  %170 = load i32, i32* %7, align 4
  %171 = and i32 %170, 65535
  store i32 %171, i32* %7, align 4
  %172 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %173 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* %6, align 4
  %176 = load %struct.bd_info_t*, %struct.bd_info_t** %13, align 8
  %177 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = sub nsw i32 %178, 1
  %180 = ashr i32 %175, %179
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %174, %181
  store i64 %182, i64* %9, align 8
  %183 = load i32, i32* %6, align 4
  %184 = shl i32 %183, 1
  %185 = load %struct.bd_info_t*, %struct.bd_info_t** %13, align 8
  %186 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = and i32 %184, %187
  store i32 %188, i32* %8, align 4
  %189 = load %struct.super_block*, %struct.super_block** %5, align 8
  %190 = load i64, i64* %9, align 8
  %191 = call i32* @FAT_getblk(%struct.super_block* %189, i64 %190)
  store i32* %191, i32** %10, align 8
  %192 = load i32*, i32** %10, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %195, label %194

194:                                              ; preds = %169
  store i32 -1, i32* %4, align 4
  br label %286

195:                                              ; preds = %169
  %196 = load i32*, i32** %10, align 8
  %197 = load i32, i32* %8, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  store i32* %199, i32** %11, align 8
  %200 = load i32*, i32** %11, align 8
  %201 = load i32, i32* %7, align 4
  %202 = call i32 @SET16_A(i32* %200, i32 %201)
  br label %281

203:                                              ; preds = %163
  %204 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %205 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @FAT32, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %248

209:                                              ; preds = %203
  %210 = load i32, i32* %7, align 4
  %211 = and i32 %210, 268435455
  store i32 %211, i32* %7, align 4
  %212 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %213 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load i32, i32* %6, align 4
  %216 = load %struct.bd_info_t*, %struct.bd_info_t** %13, align 8
  %217 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = sub nsw i32 %218, 2
  %220 = ashr i32 %215, %219
  %221 = sext i32 %220 to i64
  %222 = add nsw i64 %214, %221
  store i64 %222, i64* %9, align 8
  %223 = load i32, i32* %6, align 4
  %224 = shl i32 %223, 2
  %225 = load %struct.bd_info_t*, %struct.bd_info_t** %13, align 8
  %226 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = and i32 %224, %227
  store i32 %228, i32* %8, align 4
  %229 = load %struct.super_block*, %struct.super_block** %5, align 8
  %230 = load i64, i64* %9, align 8
  %231 = call i32* @FAT_getblk(%struct.super_block* %229, i64 %230)
  store i32* %231, i32** %10, align 8
  %232 = load i32*, i32** %10, align 8
  %233 = icmp ne i32* %232, null
  br i1 %233, label %235, label %234

234:                                              ; preds = %209
  store i32 -1, i32* %4, align 4
  br label %286

235:                                              ; preds = %209
  %236 = load i32*, i32** %10, align 8
  %237 = load i32, i32* %8, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  store i32* %239, i32** %11, align 8
  %240 = load i32*, i32** %11, align 8
  %241 = call i32 @GET32_A(i32* %240)
  %242 = and i32 %241, -268435456
  %243 = load i32, i32* %7, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %7, align 4
  %245 = load i32*, i32** %11, align 8
  %246 = load i32, i32* %7, align 4
  %247 = call i32 @SET32_A(i32* %245, i32 %246)
  br label %280

248:                                              ; preds = %203
  %249 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %250 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = load i32, i32* %6, align 4
  %253 = load %struct.bd_info_t*, %struct.bd_info_t** %13, align 8
  %254 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = sub nsw i32 %255, 2
  %257 = ashr i32 %252, %256
  %258 = sext i32 %257 to i64
  %259 = add nsw i64 %251, %258
  store i64 %259, i64* %9, align 8
  %260 = load i32, i32* %6, align 4
  %261 = shl i32 %260, 2
  %262 = load %struct.bd_info_t*, %struct.bd_info_t** %13, align 8
  %263 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = and i32 %261, %264
  store i32 %265, i32* %8, align 4
  %266 = load %struct.super_block*, %struct.super_block** %5, align 8
  %267 = load i64, i64* %9, align 8
  %268 = call i32* @FAT_getblk(%struct.super_block* %266, i64 %267)
  store i32* %268, i32** %10, align 8
  %269 = load i32*, i32** %10, align 8
  %270 = icmp ne i32* %269, null
  br i1 %270, label %272, label %271

271:                                              ; preds = %248
  store i32 -1, i32* %4, align 4
  br label %286

272:                                              ; preds = %248
  %273 = load i32*, i32** %10, align 8
  %274 = load i32, i32* %8, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  store i32* %276, i32** %11, align 8
  %277 = load i32*, i32** %11, align 8
  %278 = load i32, i32* %7, align 4
  %279 = call i32 @SET32_A(i32* %277, i32 %278)
  br label %280

280:                                              ; preds = %272, %235
  br label %281

281:                                              ; preds = %280, %195
  br label %282

282:                                              ; preds = %281, %162
  %283 = load %struct.super_block*, %struct.super_block** %5, align 8
  %284 = load i64, i64* %9, align 8
  %285 = call i32 @FAT_modify(%struct.super_block* %283, i64 %284)
  store i32 0, i32* %4, align 4
  br label %286

286:                                              ; preds = %282, %271, %234, %194, %137, %90, %54
  %287 = load i32, i32* %4, align 4
  ret i32 %287
}

declare dso_local %struct.TYPE_2__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i32* @FAT_getblk(%struct.super_block*, i64) #1

declare dso_local i32 @FAT_modify(%struct.super_block*, i64) #1

declare dso_local i32 @GET16(i32*) #1

declare dso_local i32 @SET16(i32*, i32) #1

declare dso_local i32 @SET16_A(i32*, i32) #1

declare dso_local i32 @GET32_A(i32*) #1

declare dso_local i32 @SET32_A(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
