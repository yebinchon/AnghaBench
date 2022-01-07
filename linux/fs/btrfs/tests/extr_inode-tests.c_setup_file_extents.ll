; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_inode-tests.c_setup_file_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_inode-tests.c_setup_file_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }

@SZ_1M = common dso_local global i32 0, align 4
@BTRFS_FILE_EXTENT_REG = common dso_local global i32 0, align 4
@BTRFS_FILE_EXTENT_INLINE = common dso_local global i32 0, align 4
@BTRFS_FILE_EXTENT_PREALLOC = common dso_local global i32 0, align 4
@BTRFS_COMPRESS_ZLIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_root*, i32)* @setup_file_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_file_extents(%struct.btrfs_root* %0, i32 %1) #0 {
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @SZ_1M, align 4
  store i32 %8, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @BTRFS_FILE_EXTENT_REG, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @insert_extent(%struct.btrfs_root* %9, i32 %10, i32 5, i32 5, i32 0, i32 0, i32 0, i32 %11, i32 0, i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %16, 5
  store i32 %17, i32* %7, align 4
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @BTRFS_FILE_EXTENT_INLINE, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @insert_extent(%struct.btrfs_root* %18, i32 %19, i32 1, i32 1, i32 0, i32 0, i32 0, i32 %20, i32 0, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %7, align 4
  %26 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @BTRFS_FILE_EXTENT_REG, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @insert_extent(%struct.btrfs_root* %26, i32 %27, i32 4, i32 4, i32 0, i32 0, i32 0, i32 %28, i32 0, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 4
  store i32 %34, i32* %7, align 4
  %35 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %4, align 4
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* %4, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @BTRFS_FILE_EXTENT_REG, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @insert_extent(%struct.btrfs_root* %35, i32 %36, i32 %38, i32 %40, i32 0, i32 %41, i32 %42, i32 %43, i32 0, i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %4, align 4
  %52 = sub nsw i32 %51, 1
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = mul nsw i32 4, %58
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %4, align 4
  %62 = mul nsw i32 4, %61
  %63 = load i32, i32* @BTRFS_FILE_EXTENT_REG, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @insert_extent(%struct.btrfs_root* %55, i32 %56, i32 %57, i32 %59, i32 0, i32 %60, i32 %62, i32 %63, i32 0, i32 %64)
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @BTRFS_FILE_EXTENT_REG, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @insert_extent(%struct.btrfs_root* %71, i32 %72, i32 %73, i32 %74, i32 0, i32 0, i32 0, i32 %75, i32 0, i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %7, align 4
  %83 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %4, align 4
  %86 = mul nsw i32 2, %85
  %87 = load i32, i32* %4, align 4
  %88 = mul nsw i32 4, %87
  %89 = load i32, i32* %4, align 4
  %90 = mul nsw i32 2, %89
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %4, align 4
  %93 = mul nsw i32 4, %92
  %94 = load i32, i32* @BTRFS_FILE_EXTENT_REG, align 4
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @insert_extent(%struct.btrfs_root* %83, i32 %84, i32 %86, i32 %88, i32 %90, i32 %91, i32 %93, i32 %94, i32 0, i32 %95)
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %4, align 4
  %100 = mul nsw i32 2, %99
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %4, align 4
  %104 = mul nsw i32 4, %103
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %6, align 4
  %107 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @BTRFS_FILE_EXTENT_PREALLOC, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @insert_extent(%struct.btrfs_root* %107, i32 %108, i32 %109, i32 %110, i32 0, i32 %111, i32 %112, i32 %113, i32 0, i32 %114)
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %4, align 4
  %122 = mul nsw i32 2, %121
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %6, align 4
  %125 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = mul nsw i32 4, %128
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %4, align 4
  %132 = mul nsw i32 4, %131
  %133 = load i32, i32* @BTRFS_FILE_EXTENT_PREALLOC, align 4
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @insert_extent(%struct.btrfs_root* %125, i32 %126, i32 %127, i32 %129, i32 0, i32 %130, i32 %132, i32 %133, i32 0, i32 %134)
  %136 = load i32, i32* %5, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %7, align 4
  %141 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* %4, align 4
  %145 = mul nsw i32 4, %144
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* %4, align 4
  %149 = mul nsw i32 4, %148
  %150 = load i32, i32* @BTRFS_FILE_EXTENT_REG, align 4
  %151 = load i32, i32* %5, align 4
  %152 = call i32 @insert_extent(%struct.btrfs_root* %141, i32 %142, i32 %143, i32 %145, i32 %146, i32 %147, i32 %149, i32 %150, i32 0, i32 %151)
  %153 = load i32, i32* %5, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %5, align 4
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %7, align 4
  %158 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %4, align 4
  %161 = mul nsw i32 2, %160
  %162 = load i32, i32* %4, align 4
  %163 = mul nsw i32 4, %162
  %164 = load i32, i32* %4, align 4
  %165 = mul nsw i32 2, %164
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* %4, align 4
  %168 = mul nsw i32 4, %167
  %169 = load i32, i32* @BTRFS_FILE_EXTENT_PREALLOC, align 4
  %170 = load i32, i32* %5, align 4
  %171 = call i32 @insert_extent(%struct.btrfs_root* %158, i32 %159, i32 %161, i32 %163, i32 %165, i32 %166, i32 %168, i32 %169, i32 0, i32 %170)
  %172 = load i32, i32* %5, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %5, align 4
  %174 = load i32, i32* %4, align 4
  %175 = mul nsw i32 2, %174
  %176 = load i32, i32* %7, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* %7, align 4
  %178 = load i32, i32* %4, align 4
  %179 = mul nsw i32 4, %178
  %180 = load i32, i32* %6, align 4
  %181 = add nsw i32 %180, %179
  store i32 %181, i32* %6, align 4
  %182 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* %4, align 4
  %185 = mul nsw i32 2, %184
  %186 = load i32, i32* %4, align 4
  %187 = mul nsw i32 2, %186
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* %4, align 4
  %190 = load i32, i32* @BTRFS_FILE_EXTENT_REG, align 4
  %191 = load i32, i32* @BTRFS_COMPRESS_ZLIB, align 4
  %192 = load i32, i32* %5, align 4
  %193 = call i32 @insert_extent(%struct.btrfs_root* %182, i32 %183, i32 %185, i32 %187, i32 0, i32 %188, i32 %189, i32 %190, i32 %191, i32 %192)
  %194 = load i32, i32* %5, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %5, align 4
  %196 = load i32, i32* %4, align 4
  %197 = mul nsw i32 2, %196
  %198 = load i32, i32* %7, align 4
  %199 = add nsw i32 %198, %197
  store i32 %199, i32* %7, align 4
  %200 = load i32, i32* %4, align 4
  %201 = mul nsw i32 2, %200
  %202 = load i32, i32* %6, align 4
  %203 = add nsw i32 %202, %201
  store i32 %203, i32* %6, align 4
  %204 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* %4, align 4
  %207 = load i32, i32* %4, align 4
  %208 = mul nsw i32 4, %207
  %209 = load i32, i32* %6, align 4
  %210 = load i32, i32* %4, align 4
  %211 = load i32, i32* @BTRFS_FILE_EXTENT_REG, align 4
  %212 = load i32, i32* @BTRFS_COMPRESS_ZLIB, align 4
  %213 = load i32, i32* %5, align 4
  %214 = call i32 @insert_extent(%struct.btrfs_root* %204, i32 %205, i32 %206, i32 %208, i32 0, i32 %209, i32 %210, i32 %211, i32 %212, i32 %213)
  %215 = load i32, i32* %5, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %5, align 4
  %217 = load i32, i32* %4, align 4
  %218 = load i32, i32* %7, align 4
  %219 = add nsw i32 %218, %217
  store i32 %219, i32* %7, align 4
  %220 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %221 = load i32, i32* %7, align 4
  %222 = load i32, i32* %4, align 4
  %223 = load i32, i32* %4, align 4
  %224 = load i32, i32* %6, align 4
  %225 = load i32, i32* %4, align 4
  %226 = add nsw i32 %224, %225
  %227 = load i32, i32* %4, align 4
  %228 = load i32, i32* @BTRFS_FILE_EXTENT_REG, align 4
  %229 = load i32, i32* %5, align 4
  %230 = call i32 @insert_extent(%struct.btrfs_root* %220, i32 %221, i32 %222, i32 %223, i32 0, i32 %226, i32 %227, i32 %228, i32 0, i32 %229)
  %231 = load i32, i32* %5, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %5, align 4
  %233 = load i32, i32* %4, align 4
  %234 = load i32, i32* %7, align 4
  %235 = add nsw i32 %234, %233
  store i32 %235, i32* %7, align 4
  %236 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %237 = load i32, i32* %7, align 4
  %238 = load i32, i32* %4, align 4
  %239 = mul nsw i32 2, %238
  %240 = load i32, i32* %4, align 4
  %241 = mul nsw i32 4, %240
  %242 = load i32, i32* %4, align 4
  %243 = mul nsw i32 2, %242
  %244 = load i32, i32* %6, align 4
  %245 = load i32, i32* %4, align 4
  %246 = load i32, i32* @BTRFS_FILE_EXTENT_REG, align 4
  %247 = load i32, i32* @BTRFS_COMPRESS_ZLIB, align 4
  %248 = load i32, i32* %5, align 4
  %249 = call i32 @insert_extent(%struct.btrfs_root* %236, i32 %237, i32 %239, i32 %241, i32 %243, i32 %244, i32 %245, i32 %246, i32 %247, i32 %248)
  %250 = load i32, i32* %5, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %5, align 4
  %252 = load i32, i32* %4, align 4
  %253 = mul nsw i32 2, %252
  %254 = load i32, i32* %7, align 4
  %255 = add nsw i32 %254, %253
  store i32 %255, i32* %7, align 4
  %256 = load i32, i32* %4, align 4
  %257 = mul nsw i32 2, %256
  %258 = load i32, i32* %6, align 4
  %259 = add nsw i32 %258, %257
  store i32 %259, i32* %6, align 4
  %260 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %261 = load i32, i32* %7, align 4
  %262 = load i32, i32* %4, align 4
  %263 = load i32, i32* %4, align 4
  %264 = load i32, i32* %6, align 4
  %265 = load i32, i32* %4, align 4
  %266 = load i32, i32* @BTRFS_FILE_EXTENT_REG, align 4
  %267 = load i32, i32* %5, align 4
  %268 = call i32 @insert_extent(%struct.btrfs_root* %260, i32 %261, i32 %262, i32 %263, i32 0, i32 %264, i32 %265, i32 %266, i32 0, i32 %267)
  %269 = load i32, i32* %5, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %5, align 4
  %271 = load i32, i32* %4, align 4
  %272 = mul nsw i32 4, %271
  %273 = load i32, i32* %7, align 4
  %274 = add nsw i32 %273, %272
  store i32 %274, i32* %7, align 4
  %275 = load i32, i32* %4, align 4
  %276 = load i32, i32* %6, align 4
  %277 = add nsw i32 %276, %275
  store i32 %277, i32* %6, align 4
  %278 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %279 = load i32, i32* %7, align 4
  %280 = load i32, i32* %4, align 4
  %281 = load i32, i32* %4, align 4
  %282 = load i32, i32* %6, align 4
  %283 = load i32, i32* %4, align 4
  %284 = load i32, i32* @BTRFS_FILE_EXTENT_REG, align 4
  %285 = load i32, i32* %5, align 4
  %286 = call i32 @insert_extent(%struct.btrfs_root* %278, i32 %279, i32 %280, i32 %281, i32 0, i32 %282, i32 %283, i32 %284, i32 0, i32 %285)
  ret void
}

declare dso_local i32 @insert_extent(%struct.btrfs_root*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
