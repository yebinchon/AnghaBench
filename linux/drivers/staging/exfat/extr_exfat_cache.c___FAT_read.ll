; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_cache.c___FAT_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_cache.c___FAT_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fs_info_t = type { i64, i64 }
%struct.bd_info_t = type { i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.bd_info_t, %struct.fs_info_t }

@FAT12 = common dso_local global i64 0, align 8
@FAT16 = common dso_local global i64 0, align 8
@FAT32 = common dso_local global i64 0, align 8
@EXFAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, i32*)* @__FAT_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__FAT_read(%struct.super_block* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.fs_info_t*, align 8
  %14 = alloca %struct.bd_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store %struct.fs_info_t* %17, %struct.fs_info_t** %13, align 8
  %18 = load %struct.super_block*, %struct.super_block** %5, align 8
  %19 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.bd_info_t* %20, %struct.bd_info_t** %14, align 8
  %21 = load %struct.fs_info_t*, %struct.fs_info_t** %13, align 8
  %22 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FAT12, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %117

26:                                               ; preds = %3
  %27 = load %struct.fs_info_t*, %struct.fs_info_t** %13, align 8
  %28 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = ashr i32 %31, 1
  %33 = add nsw i32 %30, %32
  %34 = load %struct.bd_info_t*, %struct.bd_info_t** %14, align 8
  %35 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %33, %36
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %29, %38
  store i64 %39, i64* %10, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = ashr i32 %41, 1
  %43 = add nsw i32 %40, %42
  %44 = load %struct.bd_info_t*, %struct.bd_info_t** %14, align 8
  %45 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %43, %46
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.bd_info_t*, %struct.bd_info_t** %14, align 8
  %50 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 1
  %53 = icmp eq i32 %48, %52
  br i1 %53, label %54, label %83

54:                                               ; preds = %26
  %55 = load %struct.super_block*, %struct.super_block** %5, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i64* @FAT_getblk(%struct.super_block* %55, i64 %56)
  store i64* %57, i64** %11, align 8
  %58 = load i64*, i64** %11, align 8
  %59 = icmp ne i64* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  store i32 -1, i32* %4, align 4
  br label %268

61:                                               ; preds = %54
  %62 = load i64*, i64** %11, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %9, align 4
  %68 = load %struct.super_block*, %struct.super_block** %5, align 8
  %69 = load i64, i64* %10, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %10, align 8
  %71 = call i64* @FAT_getblk(%struct.super_block* %68, i64 %70)
  store i64* %71, i64** %11, align 8
  %72 = load i64*, i64** %11, align 8
  %73 = icmp ne i64* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %61
  store i32 -1, i32* %4, align 4
  br label %268

75:                                               ; preds = %61
  %76 = load i64*, i64** %11, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = shl i32 %79, 8
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %9, align 4
  br label %97

83:                                               ; preds = %26
  %84 = load %struct.super_block*, %struct.super_block** %5, align 8
  %85 = load i64, i64* %10, align 8
  %86 = call i64* @FAT_getblk(%struct.super_block* %84, i64 %85)
  store i64* %86, i64** %11, align 8
  %87 = load i64*, i64** %11, align 8
  %88 = icmp ne i64* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %83
  store i32 -1, i32* %4, align 4
  br label %268

90:                                               ; preds = %83
  %91 = load i64*, i64** %11, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  store i64* %94, i64** %12, align 8
  %95 = load i64*, i64** %12, align 8
  %96 = call i32 @GET16(i64* %95)
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %90, %75
  %98 = load i32, i32* %6, align 4
  %99 = and i32 %98, 1
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i32, i32* %9, align 4
  %103 = ashr i32 %102, 4
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %101, %97
  %105 = load i32, i32* %9, align 4
  %106 = and i32 %105, 4095
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @CLUSTER_16(i32 4088)
  %109 = icmp sge i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = call i32 @CLUSTER_32(i32 -1)
  %112 = load i32*, i32** %7, align 8
  store i32 %111, i32* %112, align 4
  store i32 0, i32* %4, align 4
  br label %268

113:                                              ; preds = %104
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @CLUSTER_32(i32 %114)
  %116 = load i32*, i32** %7, align 8
  store i32 %115, i32* %116, align 4
  store i32 0, i32* %4, align 4
  br label %268

117:                                              ; preds = %3
  %118 = load %struct.fs_info_t*, %struct.fs_info_t** %13, align 8
  %119 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @FAT16, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %166

123:                                              ; preds = %117
  %124 = load %struct.fs_info_t*, %struct.fs_info_t** %13, align 8
  %125 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.bd_info_t*, %struct.bd_info_t** %14, align 8
  %129 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %130, 1
  %132 = ashr i32 %127, %131
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %126, %133
  store i64 %134, i64* %10, align 8
  %135 = load i32, i32* %6, align 4
  %136 = shl i32 %135, 1
  %137 = load %struct.bd_info_t*, %struct.bd_info_t** %14, align 8
  %138 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %136, %139
  store i32 %140, i32* %8, align 4
  %141 = load %struct.super_block*, %struct.super_block** %5, align 8
  %142 = load i64, i64* %10, align 8
  %143 = call i64* @FAT_getblk(%struct.super_block* %141, i64 %142)
  store i64* %143, i64** %11, align 8
  %144 = load i64*, i64** %11, align 8
  %145 = icmp ne i64* %144, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %123
  store i32 -1, i32* %4, align 4
  br label %268

147:                                              ; preds = %123
  %148 = load i64*, i64** %11, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %148, i64 %150
  store i64* %151, i64** %12, align 8
  %152 = load i64*, i64** %12, align 8
  %153 = call i32 @GET16_A(i64* %152)
  store i32 %153, i32* %9, align 4
  %154 = load i32, i32* %9, align 4
  %155 = and i32 %154, 65535
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = call i32 @CLUSTER_16(i32 65528)
  %158 = icmp sge i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %147
  %160 = call i32 @CLUSTER_32(i32 -1)
  %161 = load i32*, i32** %7, align 8
  store i32 %160, i32* %161, align 4
  store i32 0, i32* %4, align 4
  br label %268

162:                                              ; preds = %147
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @CLUSTER_32(i32 %163)
  %165 = load i32*, i32** %7, align 8
  store i32 %164, i32* %165, align 4
  store i32 0, i32* %4, align 4
  br label %268

166:                                              ; preds = %117
  %167 = load %struct.fs_info_t*, %struct.fs_info_t** %13, align 8
  %168 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @FAT32, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %215

172:                                              ; preds = %166
  %173 = load %struct.fs_info_t*, %struct.fs_info_t** %13, align 8
  %174 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i32, i32* %6, align 4
  %177 = load %struct.bd_info_t*, %struct.bd_info_t** %14, align 8
  %178 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = sub nsw i32 %179, 2
  %181 = ashr i32 %176, %180
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %175, %182
  store i64 %183, i64* %10, align 8
  %184 = load i32, i32* %6, align 4
  %185 = shl i32 %184, 2
  %186 = load %struct.bd_info_t*, %struct.bd_info_t** %14, align 8
  %187 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = and i32 %185, %188
  store i32 %189, i32* %8, align 4
  %190 = load %struct.super_block*, %struct.super_block** %5, align 8
  %191 = load i64, i64* %10, align 8
  %192 = call i64* @FAT_getblk(%struct.super_block* %190, i64 %191)
  store i64* %192, i64** %11, align 8
  %193 = load i64*, i64** %11, align 8
  %194 = icmp ne i64* %193, null
  br i1 %194, label %196, label %195

195:                                              ; preds = %172
  store i32 -1, i32* %4, align 4
  br label %268

196:                                              ; preds = %172
  %197 = load i64*, i64** %11, align 8
  %198 = load i32, i32* %8, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64, i64* %197, i64 %199
  store i64* %200, i64** %12, align 8
  %201 = load i64*, i64** %12, align 8
  %202 = call i32 @GET32_A(i64* %201)
  store i32 %202, i32* %9, align 4
  %203 = load i32, i32* %9, align 4
  %204 = and i32 %203, 268435455
  store i32 %204, i32* %9, align 4
  %205 = load i32, i32* %9, align 4
  %206 = call i32 @CLUSTER_32(i32 268435448)
  %207 = icmp sge i32 %205, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %196
  %209 = call i32 @CLUSTER_32(i32 -1)
  %210 = load i32*, i32** %7, align 8
  store i32 %209, i32* %210, align 4
  store i32 0, i32* %4, align 4
  br label %268

211:                                              ; preds = %196
  %212 = load i32, i32* %9, align 4
  %213 = call i32 @CLUSTER_32(i32 %212)
  %214 = load i32*, i32** %7, align 8
  store i32 %213, i32* %214, align 4
  store i32 0, i32* %4, align 4
  br label %268

215:                                              ; preds = %166
  %216 = load %struct.fs_info_t*, %struct.fs_info_t** %13, align 8
  %217 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @EXFAT, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %262

221:                                              ; preds = %215
  %222 = load %struct.fs_info_t*, %struct.fs_info_t** %13, align 8
  %223 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = load i32, i32* %6, align 4
  %226 = load %struct.bd_info_t*, %struct.bd_info_t** %14, align 8
  %227 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = sub nsw i32 %228, 2
  %230 = ashr i32 %225, %229
  %231 = sext i32 %230 to i64
  %232 = add nsw i64 %224, %231
  store i64 %232, i64* %10, align 8
  %233 = load i32, i32* %6, align 4
  %234 = shl i32 %233, 2
  %235 = load %struct.bd_info_t*, %struct.bd_info_t** %14, align 8
  %236 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = and i32 %234, %237
  store i32 %238, i32* %8, align 4
  %239 = load %struct.super_block*, %struct.super_block** %5, align 8
  %240 = load i64, i64* %10, align 8
  %241 = call i64* @FAT_getblk(%struct.super_block* %239, i64 %240)
  store i64* %241, i64** %11, align 8
  %242 = load i64*, i64** %11, align 8
  %243 = icmp ne i64* %242, null
  br i1 %243, label %245, label %244

244:                                              ; preds = %221
  store i32 -1, i32* %4, align 4
  br label %268

245:                                              ; preds = %221
  %246 = load i64*, i64** %11, align 8
  %247 = load i32, i32* %8, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i64, i64* %246, i64 %248
  store i64* %249, i64** %12, align 8
  %250 = load i64*, i64** %12, align 8
  %251 = call i32 @GET32_A(i64* %250)
  store i32 %251, i32* %9, align 4
  %252 = load i32, i32* %9, align 4
  %253 = call i32 @CLUSTER_32(i32 -8)
  %254 = icmp sge i32 %252, %253
  br i1 %254, label %255, label %258

255:                                              ; preds = %245
  %256 = call i32 @CLUSTER_32(i32 -1)
  %257 = load i32*, i32** %7, align 8
  store i32 %256, i32* %257, align 4
  store i32 0, i32* %4, align 4
  br label %268

258:                                              ; preds = %245
  %259 = load i32, i32* %9, align 4
  %260 = call i32 @CLUSTER_32(i32 %259)
  %261 = load i32*, i32** %7, align 8
  store i32 %260, i32* %261, align 4
  store i32 0, i32* %4, align 4
  br label %268

262:                                              ; preds = %215
  br label %263

263:                                              ; preds = %262
  br label %264

264:                                              ; preds = %263
  br label %265

265:                                              ; preds = %264
  %266 = call i32 @CLUSTER_32(i32 -1)
  %267 = load i32*, i32** %7, align 8
  store i32 %266, i32* %267, align 4
  store i32 0, i32* %4, align 4
  br label %268

268:                                              ; preds = %265, %258, %255, %244, %211, %208, %195, %162, %159, %146, %113, %110, %89, %74, %60
  %269 = load i32, i32* %4, align 4
  ret i32 %269
}

declare dso_local %struct.TYPE_2__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i64* @FAT_getblk(%struct.super_block*, i64) #1

declare dso_local i32 @GET16(i64*) #1

declare dso_local i32 @CLUSTER_16(i32) #1

declare dso_local i32 @CLUSTER_32(i32) #1

declare dso_local i32 @GET16_A(i64*) #1

declare dso_local i32 @GET32_A(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
