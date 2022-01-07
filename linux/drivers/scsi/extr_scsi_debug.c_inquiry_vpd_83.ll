; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_inquiry_vpd_83.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_inquiry_vpd_83.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sdebug_inq_vendor_id = common dso_local global i8* null, align 8
@sdebug_inq_product_id = common dso_local global i8* null, align 8
@sdebug_uuid_ctl = common dso_local global i64 0, align 8
@naa3_comp_b = common dso_local global i64 0, align 8
@naa3_comp_a = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"naa.32222220\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%08X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i8*, i32, i8*)* @inquiry_vpd_83 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inquiry_vpd_83(i8* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, i8* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [32 x i8], align 16
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %18 = load i32, i32* %10, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %16, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 2, i8* %21, align 1
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8 1, i8* %23, align 1
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 2
  store i8 0, i8* %25, align 1
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 4
  %28 = load i8*, i8** @sdebug_inq_vendor_id, align 8
  %29 = call i32 @memcpy(i8* %27, i8* %28, i32 8)
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 12
  %32 = load i8*, i8** @sdebug_inq_product_id, align 8
  %33 = call i32 @memcpy(i8* %31, i8* %32, i32 16)
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 28
  %36 = load i8*, i8** %12, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @memcpy(i8* %35, i8* %36, i32 %37)
  %39 = load i32, i32* %13, align 4
  %40 = add nsw i32 24, %39
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 3
  store i8 %42, i8* %44, align 1
  %45 = load i32, i32* %15, align 4
  %46 = add nsw i32 %45, 4
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %164

49:                                               ; preds = %7
  %50 = load i64, i64* @sdebug_uuid_ctl, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %91

52:                                               ; preds = %49
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %15, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  store i8 1, i8* %57, align 1
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %15, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  store i8 10, i8* %62, align 1
  %63 = load i8*, i8** %8, align 8
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %15, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  store i8 0, i8* %67, align 1
  %68 = load i8*, i8** %8, align 8
  %69 = load i32, i32* %15, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %15, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  store i8 18, i8* %72, align 1
  %73 = load i8*, i8** %8, align 8
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %15, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  store i8 16, i8* %77, align 1
  %78 = load i8*, i8** %8, align 8
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %15, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  store i8 0, i8* %82, align 1
  %83 = load i8*, i8** %8, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8*, i8** %14, align 8
  %88 = call i32 @memcpy(i8* %86, i8* %87, i32 16)
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, 16
  store i32 %90, i32* %15, align 4
  br label %123

91:                                               ; preds = %49
  %92 = load i8*, i8** %8, align 8
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %15, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  store i8 1, i8* %96, align 1
  %97 = load i8*, i8** %8, align 8
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %15, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  store i8 3, i8* %101, align 1
  %102 = load i8*, i8** %8, align 8
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %15, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  store i8 0, i8* %106, align 1
  %107 = load i8*, i8** %8, align 8
  %108 = load i32, i32* %15, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %15, align 4
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i8, i8* %107, i64 %110
  store i8 8, i8* %111, align 1
  %112 = load i64, i64* @naa3_comp_b, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %112, %114
  %116 = load i8*, i8** %8, align 8
  %117 = load i32, i32* %15, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = call i32 @put_unaligned_be64(i64 %115, i8* %119)
  %121 = load i32, i32* %15, align 4
  %122 = add nsw i32 %121, 8
  store i32 %122, i32* %15, align 4
  br label %123

123:                                              ; preds = %91, %52
  %124 = load i8*, i8** %8, align 8
  %125 = load i32, i32* %15, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %15, align 4
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  store i8 97, i8* %128, align 1
  %129 = load i8*, i8** %8, align 8
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %15, align 4
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  store i8 -108, i8* %133, align 1
  %134 = load i8*, i8** %8, align 8
  %135 = load i32, i32* %15, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %15, align 4
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %134, i64 %137
  store i8 0, i8* %138, align 1
  %139 = load i8*, i8** %8, align 8
  %140 = load i32, i32* %15, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %15, align 4
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i8, i8* %139, i64 %142
  store i8 4, i8* %143, align 1
  %144 = load i8*, i8** %8, align 8
  %145 = load i32, i32* %15, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %15, align 4
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i8, i8* %144, i64 %147
  store i8 0, i8* %148, align 1
  %149 = load i8*, i8** %8, align 8
  %150 = load i32, i32* %15, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %15, align 4
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i8, i8* %149, i64 %152
  store i8 0, i8* %153, align 1
  %154 = load i8*, i8** %8, align 8
  %155 = load i32, i32* %15, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %15, align 4
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i8, i8* %154, i64 %157
  store i8 0, i8* %158, align 1
  %159 = load i8*, i8** %8, align 8
  %160 = load i32, i32* %15, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %15, align 4
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i8, i8* %159, i64 %162
  store i8 1, i8* %163, align 1
  br label %164

164:                                              ; preds = %123, %7
  %165 = load i8*, i8** %8, align 8
  %166 = load i32, i32* %15, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %15, align 4
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i8, i8* %165, i64 %168
  store i8 97, i8* %169, align 1
  %170 = load i8*, i8** %8, align 8
  %171 = load i32, i32* %15, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %15, align 4
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i8, i8* %170, i64 %173
  store i8 -109, i8* %174, align 1
  %175 = load i8*, i8** %8, align 8
  %176 = load i32, i32* %15, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %15, align 4
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i8, i8* %175, i64 %178
  store i8 0, i8* %179, align 1
  %180 = load i8*, i8** %8, align 8
  %181 = load i32, i32* %15, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %15, align 4
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i8, i8* %180, i64 %183
  store i8 8, i8* %184, align 1
  %185 = load i64, i64* @naa3_comp_a, align 8
  %186 = load i32, i32* %16, align 4
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %185, %187
  %189 = load i8*, i8** %8, align 8
  %190 = load i32, i32* %15, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %189, i64 %191
  %193 = call i32 @put_unaligned_be64(i64 %188, i8* %192)
  %194 = load i32, i32* %15, align 4
  %195 = add nsw i32 %194, 8
  store i32 %195, i32* %15, align 4
  %196 = load i8*, i8** %8, align 8
  %197 = load i32, i32* %15, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %15, align 4
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i8, i8* %196, i64 %199
  store i8 97, i8* %200, align 1
  %201 = load i8*, i8** %8, align 8
  %202 = load i32, i32* %15, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %15, align 4
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds i8, i8* %201, i64 %204
  store i8 -107, i8* %205, align 1
  %206 = load i8*, i8** %8, align 8
  %207 = load i32, i32* %15, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %15, align 4
  %209 = sext i32 %207 to i64
  %210 = getelementptr inbounds i8, i8* %206, i64 %209
  store i8 0, i8* %210, align 1
  %211 = load i8*, i8** %8, align 8
  %212 = load i32, i32* %15, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %15, align 4
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i8, i8* %211, i64 %214
  store i8 4, i8* %215, align 1
  %216 = load i8*, i8** %8, align 8
  %217 = load i32, i32* %15, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %15, align 4
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds i8, i8* %216, i64 %219
  store i8 0, i8* %220, align 1
  %221 = load i8*, i8** %8, align 8
  %222 = load i32, i32* %15, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %15, align 4
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds i8, i8* %221, i64 %224
  store i8 0, i8* %225, align 1
  %226 = load i32, i32* %9, align 4
  %227 = load i8*, i8** %8, align 8
  %228 = load i32, i32* %15, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8, i8* %227, i64 %229
  %231 = call i32 @put_unaligned_be16(i32 %226, i8* %230)
  %232 = load i32, i32* %15, align 4
  %233 = add nsw i32 %232, 2
  store i32 %233, i32* %15, align 4
  %234 = load i8*, i8** %8, align 8
  %235 = load i32, i32* %15, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %15, align 4
  %237 = sext i32 %235 to i64
  %238 = getelementptr inbounds i8, i8* %234, i64 %237
  store i8 97, i8* %238, align 1
  %239 = load i8*, i8** %8, align 8
  %240 = load i32, i32* %15, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %15, align 4
  %242 = sext i32 %240 to i64
  %243 = getelementptr inbounds i8, i8* %239, i64 %242
  store i8 -93, i8* %243, align 1
  %244 = load i8*, i8** %8, align 8
  %245 = load i32, i32* %15, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %15, align 4
  %247 = sext i32 %245 to i64
  %248 = getelementptr inbounds i8, i8* %244, i64 %247
  store i8 0, i8* %248, align 1
  %249 = load i8*, i8** %8, align 8
  %250 = load i32, i32* %15, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %15, align 4
  %252 = sext i32 %250 to i64
  %253 = getelementptr inbounds i8, i8* %249, i64 %252
  store i8 8, i8* %253, align 1
  %254 = load i64, i64* @naa3_comp_a, align 8
  %255 = load i32, i32* %10, align 4
  %256 = sext i32 %255 to i64
  %257 = add nsw i64 %254, %256
  %258 = load i8*, i8** %8, align 8
  %259 = load i32, i32* %15, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %258, i64 %260
  %262 = call i32 @put_unaligned_be64(i64 %257, i8* %261)
  %263 = load i32, i32* %15, align 4
  %264 = add nsw i32 %263, 8
  store i32 %264, i32* %15, align 4
  %265 = load i8*, i8** %8, align 8
  %266 = load i32, i32* %15, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %15, align 4
  %268 = sext i32 %266 to i64
  %269 = getelementptr inbounds i8, i8* %265, i64 %268
  store i8 99, i8* %269, align 1
  %270 = load i8*, i8** %8, align 8
  %271 = load i32, i32* %15, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %15, align 4
  %273 = sext i32 %271 to i64
  %274 = getelementptr inbounds i8, i8* %270, i64 %273
  store i8 -88, i8* %274, align 1
  %275 = load i8*, i8** %8, align 8
  %276 = load i32, i32* %15, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %15, align 4
  %278 = sext i32 %276 to i64
  %279 = getelementptr inbounds i8, i8* %275, i64 %278
  store i8 0, i8* %279, align 1
  %280 = load i8*, i8** %8, align 8
  %281 = load i32, i32* %15, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %15, align 4
  %283 = sext i32 %281 to i64
  %284 = getelementptr inbounds i8, i8* %280, i64 %283
  store i8 24, i8* %284, align 1
  %285 = load i8*, i8** %8, align 8
  %286 = load i32, i32* %15, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8, i8* %285, i64 %287
  %289 = call i32 @memcpy(i8* %288, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 12)
  %290 = load i32, i32* %15, align 4
  %291 = add nsw i32 %290, 12
  store i32 %291, i32* %15, align 4
  %292 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %293 = load i32, i32* %10, align 4
  %294 = call i32 @snprintf(i8* %292, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %293)
  %295 = load i8*, i8** %8, align 8
  %296 = load i32, i32* %15, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i8, i8* %295, i64 %297
  %299 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %300 = call i32 @memcpy(i8* %298, i8* %299, i32 8)
  %301 = load i32, i32* %15, align 4
  %302 = add nsw i32 %301, 8
  store i32 %302, i32* %15, align 4
  %303 = load i8*, i8** %8, align 8
  %304 = load i32, i32* %15, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i8, i8* %303, i64 %305
  %307 = call i32 @memset(i8* %306, i32 0, i32 4)
  %308 = load i32, i32* %15, align 4
  %309 = add nsw i32 %308, 4
  store i32 %309, i32* %15, align 4
  %310 = load i32, i32* %15, align 4
  ret i32 %310
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @put_unaligned_be64(i64, i8*) #1

declare dso_local i32 @put_unaligned_be16(i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
