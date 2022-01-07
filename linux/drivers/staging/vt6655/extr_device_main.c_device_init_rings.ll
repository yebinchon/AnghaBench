; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_device_init_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_device_init_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { %struct.TYPE_4__, i64, i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i64, i64, i64, i64, %struct.TYPE_3__*, i64, i8*, i8* }
%struct.TYPE_4__ = type { i32, i32, i32* }
%struct.TYPE_3__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"allocate desc dma memory failed\0A\00", align 1
@PKT_BUF_SZ = common dso_local global i32 0, align 4
@CB_BEACON_BUF_SIZE = common dso_local global i32 0, align 4
@CB_MAX_BUF_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"allocate buf dma memory failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_private*)* @device_init_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_init_rings(%struct.vnt_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnt_private*, align 8
  %4 = alloca i8*, align 8
  store %struct.vnt_private* %0, %struct.vnt_private** %3, align 8
  %5 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %6 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %5, i32 0, i32 14
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %10 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %16 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = add i64 %14, %20
  %22 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %23 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = add i64 %21, %29
  %31 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %32 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = add i64 %30, %38
  %40 = trunc i64 %39 to i32
  %41 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %42 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %41, i32 0, i32 13
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  %44 = call i8* @dma_alloc_coherent(i32* %8, i32 %40, i64* %42, i32 %43)
  store i8* %44, i8** %4, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %1
  %48 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %49 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %48, i32 0, i32 14
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %304

53:                                               ; preds = %1
  %54 = load i8*, i8** %4, align 8
  %55 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %56 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %55, i32 0, i32 17
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %59 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 4
  %64 = getelementptr i8, i8* %57, i64 %63
  %65 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %66 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %65, i32 0, i32 16
  store i8* %64, i8** %66, align 8
  %67 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %68 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %67, i32 0, i32 13
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %71 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %70, i32 0, i32 15
  store i64 %69, i64* %71, align 8
  %72 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %73 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %72, i32 0, i32 15
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %76 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 4
  %81 = add i64 %74, %80
  %82 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %83 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %82, i32 0, i32 12
  store i64 %81, i64* %83, align 8
  %84 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %85 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %84, i32 0, i32 14
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %89 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @PKT_BUF_SZ, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %97 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @PKT_BUF_SZ, align 4
  %103 = mul nsw i32 %101, %102
  %104 = add nsw i32 %95, %103
  %105 = load i32, i32* @CB_BEACON_BUF_SIZE, align 4
  %106 = add nsw i32 %104, %105
  %107 = load i32, i32* @CB_MAX_BUF_SIZE, align 4
  %108 = add nsw i32 %106, %107
  %109 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %110 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %109, i32 0, i32 3
  %111 = load i32, i32* @GFP_ATOMIC, align 4
  %112 = call i8* @dma_alloc_coherent(i32* %87, i32 %108, i64* %110, i32 %111)
  %113 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %114 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %113, i32 0, i32 7
  store i8* %112, i8** %114, align 8
  %115 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %116 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %115, i32 0, i32 7
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %166, label %119

119:                                              ; preds = %53
  %120 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %121 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %120, i32 0, i32 14
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = call i32 @dev_err(i32* %123, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %125 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %126 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %125, i32 0, i32 14
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %130 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = mul i64 %133, 4
  %135 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %136 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = mul i64 %139, 4
  %141 = add i64 %134, %140
  %142 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %143 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = mul i64 %148, 4
  %150 = add i64 %141, %149
  %151 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %152 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 1
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = mul i64 %157, 4
  %159 = add i64 %150, %158
  %160 = trunc i64 %159 to i32
  %161 = load i8*, i8** %4, align 8
  %162 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %163 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %162, i32 0, i32 13
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @dma_free_coherent(i32* %128, i32 %160, i8* %161, i64 %164)
  store i32 0, i32* %2, align 4
  br label %304

166:                                              ; preds = %53
  %167 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %168 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %167, i32 0, i32 12
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %171 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = mul i64 %174, 4
  %176 = add i64 %169, %175
  %177 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %178 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %177, i32 0, i32 10
  store i64 %176, i64* %178, align 8
  %179 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %180 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %179, i32 0, i32 10
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %183 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = sext i32 %187 to i64
  %189 = mul i64 %188, 4
  %190 = add i64 %181, %189
  %191 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %192 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %191, i32 0, i32 11
  store i64 %190, i64* %192, align 8
  %193 = load i8*, i8** %4, align 8
  %194 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %195 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = sext i32 %197 to i64
  %199 = mul i64 %198, 4
  %200 = getelementptr i8, i8* %193, i64 %199
  %201 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %202 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = sext i32 %204 to i64
  %206 = mul i64 %205, 4
  %207 = getelementptr i8, i8* %200, i64 %206
  %208 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %209 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %208, i32 0, i32 9
  store i8* %207, i8** %209, align 8
  %210 = load i8*, i8** %4, align 8
  %211 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %212 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = sext i32 %214 to i64
  %216 = mul i64 %215, 4
  %217 = getelementptr i8, i8* %210, i64 %216
  %218 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %219 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = mul i64 %222, 4
  %224 = getelementptr i8, i8* %217, i64 %223
  %225 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %226 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 2
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = mul i64 %231, 4
  %233 = getelementptr i8, i8* %224, i64 %232
  %234 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %235 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %234, i32 0, i32 8
  store i8* %233, i8** %235, align 8
  %236 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %237 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %236, i32 0, i32 7
  %238 = load i8*, i8** %237, align 8
  %239 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %240 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 2
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @PKT_BUF_SZ, align 4
  %246 = mul nsw i32 %244, %245
  %247 = sext i32 %246 to i64
  %248 = getelementptr i8, i8* %238, i64 %247
  %249 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %250 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %249, i32 0, i32 6
  store i8* %248, i8** %250, align 8
  %251 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %252 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %251, i32 0, i32 6
  %253 = load i8*, i8** %252, align 8
  %254 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %255 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 2
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 1
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @PKT_BUF_SZ, align 4
  %261 = mul nsw i32 %259, %260
  %262 = sext i32 %261 to i64
  %263 = getelementptr i8, i8* %253, i64 %262
  %264 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %265 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %264, i32 0, i32 4
  store i8* %263, i8** %265, align 8
  %266 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %267 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %266, i32 0, i32 4
  %268 = load i8*, i8** %267, align 8
  %269 = load i32, i32* @CB_BEACON_BUF_SIZE, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr i8, i8* %268, i64 %270
  %272 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %273 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %272, i32 0, i32 5
  store i8* %271, i8** %273, align 8
  %274 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %275 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %274, i32 0, i32 3
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %278 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 2
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 0
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @PKT_BUF_SZ, align 4
  %284 = mul nsw i32 %282, %283
  %285 = sext i32 %284 to i64
  %286 = add nsw i64 %276, %285
  %287 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %288 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %287, i32 0, i32 1
  store i64 %286, i64* %288, align 8
  %289 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %290 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %289, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %293 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 2
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 1
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @PKT_BUF_SZ, align 4
  %299 = mul nsw i32 %297, %298
  %300 = sext i32 %299 to i64
  %301 = add nsw i64 %291, %300
  %302 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %303 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %302, i32 0, i32 2
  store i64 %301, i64* %303, align 8
  store i32 1, i32* %2, align 4
  br label %304

304:                                              ; preds = %166, %119, %47
  %305 = load i32, i32* %2, align 4
  ret i32 %305
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
