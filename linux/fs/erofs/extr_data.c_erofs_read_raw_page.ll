; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_data.c_erofs_read_raw_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_data.c_erofs_read_raw_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.page = type { i32 }
%struct.erofs_map_blocks = type { i32, i64, i64, i32, i32 }

@EROFS_GET_BLOCKS_RAW = common dso_local global i32 0, align 4
@EROFS_MAP_MAPPED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EROFS_MAP_META = common dso_local global i32 0, align 4
@BIO_MAX_PAGES = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@erofs_readendio = common dso_local global i32 0, align 4
@LOG_SECTORS_PER_BLOCK = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (%struct.bio*, %struct.address_space*, %struct.page*, i64*, i32, i32)* @erofs_read_raw_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @erofs_read_raw_page(%struct.bio* %0, %struct.address_space* %1, %struct.page* %2, i64* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.super_block*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.erofs_map_blocks, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.page*, align 8
  store %struct.bio* %0, %struct.bio** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store %struct.page* %2, %struct.page** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %24 = load %struct.address_space*, %struct.address_space** %9, align 8
  %25 = getelementptr inbounds %struct.address_space, %struct.address_space* %24, i32 0, i32 0
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %14, align 8
  %27 = load %struct.inode*, %struct.inode** %14, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load %struct.super_block*, %struct.super_block** %28, align 8
  store %struct.super_block* %29, %struct.super_block** %15, align 8
  %30 = load %struct.page*, %struct.page** %10, align 8
  %31 = getelementptr inbounds %struct.page, %struct.page* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %16, align 8
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @DBG_BUGON(i32 %37)
  %39 = load %struct.page*, %struct.page** %10, align 8
  %40 = call i64 @PageUptodate(%struct.page* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %6
  store i32 0, i32* %17, align 4
  br label %237

43:                                               ; preds = %6
  %44 = load %struct.bio*, %struct.bio** %8, align 8
  %45 = icmp ne %struct.bio* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load i64*, i64** %11, align 8
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  %50 = load i64, i64* %16, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %211, %52
  %54 = load %struct.bio*, %struct.bio** %8, align 8
  %55 = call i32 @submit_bio(%struct.bio* %54)
  store %struct.bio* null, %struct.bio** %8, align 8
  br label %56

56:                                               ; preds = %53, %46, %43
  %57 = load %struct.bio*, %struct.bio** %8, align 8
  %58 = icmp ne %struct.bio* %57, null
  br i1 %58, label %203, label %59

59:                                               ; preds = %56
  %60 = bitcast %struct.erofs_map_blocks* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %60, i8 0, i64 32, i1 false)
  %61 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %18, i32 0, i32 4
  %62 = load i64, i64* %16, align 8
  %63 = call i32 @blknr_to_addr(i64 %62)
  store i32 %63, i32* %61, align 4
  %64 = load %struct.inode*, %struct.inode** %14, align 8
  %65 = load i32, i32* @EROFS_GET_BLOCKS_RAW, align 4
  %66 = call i32 @erofs_map_blocks(%struct.inode* %64, %struct.erofs_map_blocks* %18, i32 %65)
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %228

70:                                               ; preds = %59
  %71 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %18, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @EROFS_MAP_MAPPED, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load %struct.page*, %struct.page** %10, align 8
  %78 = load i32, i32* @PAGE_SIZE, align 4
  %79 = call i32 @zero_user_segment(%struct.page* %77, i32 0, i32 %78)
  %80 = load %struct.page*, %struct.page** %10, align 8
  %81 = call i32 @SetPageUptodate(%struct.page* %80)
  br label %237

82:                                               ; preds = %70
  %83 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %18, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %18, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %84, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @DBG_BUGON(i32 %88)
  %90 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %18, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @erofs_blknr(i32 %91)
  store i64 %92, i64* %19, align 8
  %93 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %18, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @erofs_blkoff(i32 %94)
  store i32 %95, i32* %20, align 4
  %96 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %18, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @EROFS_MAP_META, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %157

101:                                              ; preds = %82
  %102 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %18, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* @PAGE_SIZE, align 4
  %105 = sext i32 %104 to i64
  %106 = icmp sgt i64 %103, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @DBG_BUGON(i32 %107)
  %109 = load %struct.inode*, %struct.inode** %14, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 0
  %111 = load %struct.super_block*, %struct.super_block** %110, align 8
  %112 = load i64, i64* %19, align 8
  %113 = call %struct.page* @erofs_get_meta_page(%struct.super_block* %111, i64 %112)
  store %struct.page* %113, %struct.page** %23, align 8
  %114 = load %struct.page*, %struct.page** %23, align 8
  %115 = call i64 @IS_ERR(%struct.page* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %101
  %118 = load %struct.page*, %struct.page** %23, align 8
  %119 = call i32 @PTR_ERR(%struct.page* %118)
  store i32 %119, i32* %17, align 4
  br label %228

120:                                              ; preds = %101
  %121 = load %struct.page*, %struct.page** %23, align 8
  %122 = call i8* @kmap_atomic(%struct.page* %121)
  store i8* %122, i8** %21, align 8
  %123 = load %struct.page*, %struct.page** %10, align 8
  %124 = call i8* @kmap_atomic(%struct.page* %123)
  store i8* %124, i8** %22, align 8
  %125 = load i8*, i8** %22, align 8
  %126 = load i8*, i8** %21, align 8
  %127 = load i32, i32* %20, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr i8, i8* %126, i64 %128
  %130 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %18, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = call i32 @memcpy(i8* %125, i8* %129, i32 %132)
  %134 = load i8*, i8** %22, align 8
  %135 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %18, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr i8, i8* %134, i64 %136
  %138 = load i32, i32* @PAGE_SIZE, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %18, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = sub nsw i64 %139, %141
  %143 = inttoptr i64 %142 to i8*
  %144 = call i32 @memset(i8* %137, i32 0, i8* %143)
  %145 = load i8*, i8** %22, align 8
  %146 = call i32 @kunmap_atomic(i8* %145)
  %147 = load i8*, i8** %21, align 8
  %148 = call i32 @kunmap_atomic(i8* %147)
  %149 = load %struct.page*, %struct.page** %10, align 8
  %150 = call i32 @flush_dcache_page(%struct.page* %149)
  %151 = load %struct.page*, %struct.page** %10, align 8
  %152 = call i32 @SetPageUptodate(%struct.page* %151)
  %153 = load %struct.page*, %struct.page** %23, align 8
  %154 = call i32 @unlock_page(%struct.page* %153)
  %155 = load %struct.page*, %struct.page** %23, align 8
  %156 = call i32 @put_page(%struct.page* %155)
  br label %237

157:                                              ; preds = %82
  %158 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %18, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @erofs_blkoff(i32 %159)
  %161 = call i32 @DBG_BUGON(i32 %160)
  %162 = load i32, i32* %12, align 4
  %163 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %18, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = inttoptr i64 %164 to i8*
  %166 = load i32, i32* @PAGE_SIZE, align 4
  %167 = call i32 @DIV_ROUND_UP(i8* %165, i32 %166)
  %168 = icmp ugt i32 %162, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %157
  %170 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %18, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = inttoptr i64 %171 to i8*
  %173 = load i32, i32* @PAGE_SIZE, align 4
  %174 = call i32 @DIV_ROUND_UP(i8* %172, i32 %173)
  store i32 %174, i32* %12, align 4
  br label %175

175:                                              ; preds = %169, %157
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* @BIO_MAX_PAGES, align 4
  %178 = icmp ugt i32 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = load i32, i32* @BIO_MAX_PAGES, align 4
  store i32 %180, i32* %12, align 4
  br label %181

181:                                              ; preds = %179, %175
  %182 = load i32, i32* @GFP_NOIO, align 4
  %183 = load i32, i32* %12, align 4
  %184 = call %struct.bio* @bio_alloc(i32 %182, i32 %183)
  store %struct.bio* %184, %struct.bio** %8, align 8
  %185 = load i32, i32* @erofs_readendio, align 4
  %186 = load %struct.bio*, %struct.bio** %8, align 8
  %187 = getelementptr inbounds %struct.bio, %struct.bio* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 4
  %188 = load %struct.bio*, %struct.bio** %8, align 8
  %189 = load %struct.super_block*, %struct.super_block** %15, align 8
  %190 = getelementptr inbounds %struct.super_block, %struct.super_block* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @bio_set_dev(%struct.bio* %188, i32 %191)
  %193 = load i64, i64* %19, align 8
  %194 = trunc i64 %193 to i32
  %195 = load i32, i32* @LOG_SECTORS_PER_BLOCK, align 4
  %196 = shl i32 %194, %195
  %197 = load %struct.bio*, %struct.bio** %8, align 8
  %198 = getelementptr inbounds %struct.bio, %struct.bio* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  store i32 %196, i32* %199, align 4
  %200 = load i32, i32* @REQ_OP_READ, align 4
  %201 = load %struct.bio*, %struct.bio** %8, align 8
  %202 = getelementptr inbounds %struct.bio, %struct.bio* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 4
  br label %203

203:                                              ; preds = %181, %56
  %204 = load %struct.bio*, %struct.bio** %8, align 8
  %205 = load %struct.page*, %struct.page** %10, align 8
  %206 = load i32, i32* @PAGE_SIZE, align 4
  %207 = call i32 @bio_add_page(%struct.bio* %204, %struct.page* %205, i32 %206, i32 0)
  store i32 %207, i32* %17, align 4
  %208 = load i32, i32* %17, align 4
  %209 = load i32, i32* @PAGE_SIZE, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %203
  br label %53

212:                                              ; preds = %203
  %213 = load i64, i64* %16, align 8
  %214 = load i64*, i64** %11, align 8
  store i64 %213, i64* %214, align 8
  %215 = load %struct.bio*, %struct.bio** %8, align 8
  %216 = getelementptr inbounds %struct.bio, %struct.bio* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.bio*, %struct.bio** %8, align 8
  %220 = getelementptr inbounds %struct.bio, %struct.bio* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @PAGE_SIZE, align 4
  %223 = mul nsw i32 %221, %222
  %224 = icmp sge i32 %218, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %212
  store i32 0, i32* %17, align 4
  br label %243

226:                                              ; preds = %212
  %227 = load %struct.bio*, %struct.bio** %8, align 8
  store %struct.bio* %227, %struct.bio** %7, align 8
  br label %255

228:                                              ; preds = %117, %69
  %229 = load i32, i32* %13, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %236, label %231

231:                                              ; preds = %228
  %232 = load %struct.page*, %struct.page** %10, align 8
  %233 = call i32 @SetPageError(%struct.page* %232)
  %234 = load %struct.page*, %struct.page** %10, align 8
  %235 = call i32 @ClearPageUptodate(%struct.page* %234)
  br label %236

236:                                              ; preds = %231, %228
  br label %237

237:                                              ; preds = %236, %120, %76, %42
  %238 = load %struct.page*, %struct.page** %10, align 8
  %239 = call i32 @unlock_page(%struct.page* %238)
  %240 = load %struct.bio*, %struct.bio** %8, align 8
  %241 = icmp ne %struct.bio* %240, null
  br i1 %241, label %242, label %246

242:                                              ; preds = %237
  br label %243

243:                                              ; preds = %242, %225
  %244 = load %struct.bio*, %struct.bio** %8, align 8
  %245 = call i32 @submit_bio(%struct.bio* %244)
  br label %246

246:                                              ; preds = %243, %237
  %247 = load i32, i32* %17, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %246
  %250 = load i32, i32* %17, align 4
  %251 = call %struct.bio* @ERR_PTR(i32 %250)
  br label %253

252:                                              ; preds = %246
  br label %253

253:                                              ; preds = %252, %249
  %254 = phi %struct.bio* [ %251, %249 ], [ null, %252 ]
  store %struct.bio* %254, %struct.bio** %7, align 8
  br label %255

255:                                              ; preds = %253, %226
  %256 = load %struct.bio*, %struct.bio** %7, align 8
  ret %struct.bio* %256
}

declare dso_local i32 @DBG_BUGON(i32) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @submit_bio(%struct.bio*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @blknr_to_addr(i64) #1

declare dso_local i32 @erofs_map_blocks(%struct.inode*, %struct.erofs_map_blocks*, i32) #1

declare dso_local i32 @zero_user_segment(%struct.page*, i32, i32) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i64 @erofs_blknr(i32) #1

declare dso_local i32 @erofs_blkoff(i32) #1

declare dso_local %struct.page* @erofs_get_meta_page(%struct.super_block*, i64) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i8*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @DIV_ROUND_UP(i8*, i32) #1

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @bio_add_page(%struct.bio*, %struct.page*, i32, i32) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local %struct.bio* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
