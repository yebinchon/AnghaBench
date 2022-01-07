; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_compression.c_btrfs_submit_compressed_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_compression.c_btrfs_submit_compressed_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32*, i32 }
%struct.page = type { i32* }
%struct.btrfs_fs_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.block_device* }
%struct.block_device = type { i32 }
%struct.bio = type { i32, i8*, i8*, %struct.compressed_bio*, %struct.TYPE_5__ }
%struct.compressed_bio = type { i64, i64, i64, i64, i32, i32*, %struct.page**, i64, %struct.inode*, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@BTRFS_INODE_NODATASUM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@BLK_STS_RESOURCE = common dso_local global i8* null, align 8
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@end_compressed_bio_write = common dso_local global i8* null, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@BTRFS_WQ_ENDIO_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"bytes left %lu compress len %lu nr %lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @btrfs_submit_compressed_write(%struct.inode* %0, i64 %1, i64 %2, i64 %3, i64 %4, %struct.page** %5, i64 %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.page**, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.btrfs_fs_info*, align 8
  %19 = alloca %struct.bio*, align 8
  %20 = alloca %struct.compressed_bio*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.page*, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.block_device*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store %struct.page** %5, %struct.page*** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %29 = load %struct.inode*, %struct.inode** %10, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %31)
  store %struct.btrfs_fs_info* %32, %struct.btrfs_fs_info** %18, align 8
  store %struct.bio* null, %struct.bio** %19, align 8
  store i32 0, i32* %22, align 4
  %33 = load i64, i64* %13, align 8
  store i64 %33, i64* %24, align 8
  %34 = load %struct.inode*, %struct.inode** %10, align 8
  %35 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %34)
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BTRFS_INODE_NODATASUM, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %27, align 4
  %40 = load i64, i64* %11, align 8
  %41 = call i32 @PAGE_ALIGNED(i64 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @WARN_ON(i32 %44)
  %46 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %18, align 8
  %47 = load i64, i64* %14, align 8
  %48 = call i32 @compressed_bio_size(%struct.btrfs_fs_info* %46, i64 %47)
  %49 = load i32, i32* @GFP_NOFS, align 4
  %50 = call %struct.compressed_bio* @kmalloc(i32 %48, i32 %49)
  store %struct.compressed_bio* %50, %struct.compressed_bio** %20, align 8
  %51 = load %struct.compressed_bio*, %struct.compressed_bio** %20, align 8
  %52 = icmp ne %struct.compressed_bio* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %8
  %54 = load i8*, i8** @BLK_STS_RESOURCE, align 8
  store i8* %54, i8** %9, align 8
  br label %255

55:                                               ; preds = %8
  %56 = load %struct.compressed_bio*, %struct.compressed_bio** %20, align 8
  %57 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %56, i32 0, i32 4
  %58 = call i32 @refcount_set(i32* %57, i32 0)
  %59 = load %struct.compressed_bio*, %struct.compressed_bio** %20, align 8
  %60 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %59, i32 0, i32 9
  store i64 0, i64* %60, align 8
  %61 = load %struct.inode*, %struct.inode** %10, align 8
  %62 = load %struct.compressed_bio*, %struct.compressed_bio** %20, align 8
  %63 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %62, i32 0, i32 8
  store %struct.inode* %61, %struct.inode** %63, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load %struct.compressed_bio*, %struct.compressed_bio** %20, align 8
  %66 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load %struct.compressed_bio*, %struct.compressed_bio** %20, align 8
  %69 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load %struct.compressed_bio*, %struct.compressed_bio** %20, align 8
  %71 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %70, i32 0, i32 7
  store i64 0, i64* %71, align 8
  %72 = load %struct.page**, %struct.page*** %15, align 8
  %73 = load %struct.compressed_bio*, %struct.compressed_bio** %20, align 8
  %74 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %73, i32 0, i32 6
  store %struct.page** %72, %struct.page*** %74, align 8
  %75 = load i64, i64* %14, align 8
  %76 = load %struct.compressed_bio*, %struct.compressed_bio** %20, align 8
  %77 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  %78 = load %struct.compressed_bio*, %struct.compressed_bio** %20, align 8
  %79 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %78, i32 0, i32 5
  store i32* null, i32** %79, align 8
  %80 = load i64, i64* %16, align 8
  %81 = load %struct.compressed_bio*, %struct.compressed_bio** %20, align 8
  %82 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %81, i32 0, i32 3
  store i64 %80, i64* %82, align 8
  %83 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %18, align 8
  %84 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.block_device*, %struct.block_device** %86, align 8
  store %struct.block_device* %87, %struct.block_device** %25, align 8
  %88 = load i64, i64* %24, align 8
  %89 = call %struct.bio* @btrfs_bio_alloc(i64 %88)
  store %struct.bio* %89, %struct.bio** %19, align 8
  %90 = load %struct.bio*, %struct.bio** %19, align 8
  %91 = load %struct.block_device*, %struct.block_device** %25, align 8
  %92 = call i32 @bio_set_dev(%struct.bio* %90, %struct.block_device* %91)
  %93 = load i32, i32* @REQ_OP_WRITE, align 4
  %94 = load i32, i32* %17, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.bio*, %struct.bio** %19, align 8
  %97 = getelementptr inbounds %struct.bio, %struct.bio* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.compressed_bio*, %struct.compressed_bio** %20, align 8
  %99 = load %struct.bio*, %struct.bio** %19, align 8
  %100 = getelementptr inbounds %struct.bio, %struct.bio* %99, i32 0, i32 3
  store %struct.compressed_bio* %98, %struct.compressed_bio** %100, align 8
  %101 = load i8*, i8** @end_compressed_bio_write, align 8
  %102 = load %struct.bio*, %struct.bio** %19, align 8
  %103 = getelementptr inbounds %struct.bio, %struct.bio* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  %104 = load %struct.compressed_bio*, %struct.compressed_bio** %20, align 8
  %105 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %104, i32 0, i32 4
  %106 = call i32 @refcount_set(i32* %105, i32 1)
  %107 = load i64, i64* %14, align 8
  store i64 %107, i64* %21, align 8
  store i32 0, i32* %22, align 4
  br label %108

108:                                              ; preds = %223, %55
  %109 = load i32, i32* %22, align 4
  %110 = sext i32 %109 to i64
  %111 = load %struct.compressed_bio*, %struct.compressed_bio** %20, align 8
  %112 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ult i64 %110, %113
  br i1 %114, label %115, label %226

115:                                              ; preds = %108
  store i32 0, i32* %28, align 4
  %116 = load %struct.page**, %struct.page*** %15, align 8
  %117 = load i32, i32* %22, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.page*, %struct.page** %116, i64 %118
  %120 = load %struct.page*, %struct.page** %119, align 8
  store %struct.page* %120, %struct.page** %23, align 8
  %121 = load %struct.inode*, %struct.inode** %10, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.page*, %struct.page** %23, align 8
  %125 = getelementptr inbounds %struct.page, %struct.page* %124, i32 0, i32 0
  store i32* %123, i32** %125, align 8
  %126 = load %struct.bio*, %struct.bio** %19, align 8
  %127 = getelementptr inbounds %struct.bio, %struct.bio* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %115
  %132 = load %struct.page*, %struct.page** %23, align 8
  %133 = load i64, i64* @PAGE_SIZE, align 8
  %134 = load %struct.bio*, %struct.bio** %19, align 8
  %135 = call i32 @btrfs_bio_fits_in_stripe(%struct.page* %132, i64 %133, %struct.bio* %134, i32 0)
  store i32 %135, i32* %28, align 4
  br label %136

136:                                              ; preds = %131, %115
  %137 = load %struct.page*, %struct.page** %23, align 8
  %138 = getelementptr inbounds %struct.page, %struct.page* %137, i32 0, i32 0
  store i32* null, i32** %138, align 8
  %139 = load i32, i32* %28, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %148, label %141

141:                                              ; preds = %136
  %142 = load %struct.bio*, %struct.bio** %19, align 8
  %143 = load %struct.page*, %struct.page** %23, align 8
  %144 = load i64, i64* @PAGE_SIZE, align 8
  %145 = call i64 @bio_add_page(%struct.bio* %142, %struct.page* %143, i64 %144, i32 0)
  %146 = load i64, i64* @PAGE_SIZE, align 8
  %147 = icmp ult i64 %145, %146
  br i1 %147, label %148, label %200

148:                                              ; preds = %141, %136
  %149 = load %struct.compressed_bio*, %struct.compressed_bio** %20, align 8
  %150 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %149, i32 0, i32 4
  %151 = call i32 @refcount_inc(i32* %150)
  %152 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %18, align 8
  %153 = load %struct.bio*, %struct.bio** %19, align 8
  %154 = load i32, i32* @BTRFS_WQ_ENDIO_DATA, align 4
  %155 = call i8* @btrfs_bio_wq_end_io(%struct.btrfs_fs_info* %152, %struct.bio* %153, i32 %154)
  store i8* %155, i8** %26, align 8
  %156 = load i8*, i8** %26, align 8
  %157 = call i32 @BUG_ON(i8* %156)
  %158 = load i32, i32* %27, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %167, label %160

160:                                              ; preds = %148
  %161 = load %struct.inode*, %struct.inode** %10, align 8
  %162 = load %struct.bio*, %struct.bio** %19, align 8
  %163 = load i64, i64* %11, align 8
  %164 = call i8* @btrfs_csum_one_bio(%struct.inode* %161, %struct.bio* %162, i64 %163, i32 1)
  store i8* %164, i8** %26, align 8
  %165 = load i8*, i8** %26, align 8
  %166 = call i32 @BUG_ON(i8* %165)
  br label %167

167:                                              ; preds = %160, %148
  %168 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %18, align 8
  %169 = load %struct.bio*, %struct.bio** %19, align 8
  %170 = call i8* @btrfs_map_bio(%struct.btrfs_fs_info* %168, %struct.bio* %169, i32 0, i32 1)
  store i8* %170, i8** %26, align 8
  %171 = load i8*, i8** %26, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %179

173:                                              ; preds = %167
  %174 = load i8*, i8** %26, align 8
  %175 = load %struct.bio*, %struct.bio** %19, align 8
  %176 = getelementptr inbounds %struct.bio, %struct.bio* %175, i32 0, i32 1
  store i8* %174, i8** %176, align 8
  %177 = load %struct.bio*, %struct.bio** %19, align 8
  %178 = call i32 @bio_endio(%struct.bio* %177)
  br label %179

179:                                              ; preds = %173, %167
  %180 = load i64, i64* %24, align 8
  %181 = call %struct.bio* @btrfs_bio_alloc(i64 %180)
  store %struct.bio* %181, %struct.bio** %19, align 8
  %182 = load %struct.bio*, %struct.bio** %19, align 8
  %183 = load %struct.block_device*, %struct.block_device** %25, align 8
  %184 = call i32 @bio_set_dev(%struct.bio* %182, %struct.block_device* %183)
  %185 = load i32, i32* @REQ_OP_WRITE, align 4
  %186 = load i32, i32* %17, align 4
  %187 = or i32 %185, %186
  %188 = load %struct.bio*, %struct.bio** %19, align 8
  %189 = getelementptr inbounds %struct.bio, %struct.bio* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  %190 = load %struct.compressed_bio*, %struct.compressed_bio** %20, align 8
  %191 = load %struct.bio*, %struct.bio** %19, align 8
  %192 = getelementptr inbounds %struct.bio, %struct.bio* %191, i32 0, i32 3
  store %struct.compressed_bio* %190, %struct.compressed_bio** %192, align 8
  %193 = load i8*, i8** @end_compressed_bio_write, align 8
  %194 = load %struct.bio*, %struct.bio** %19, align 8
  %195 = getelementptr inbounds %struct.bio, %struct.bio* %194, i32 0, i32 2
  store i8* %193, i8** %195, align 8
  %196 = load %struct.bio*, %struct.bio** %19, align 8
  %197 = load %struct.page*, %struct.page** %23, align 8
  %198 = load i64, i64* @PAGE_SIZE, align 8
  %199 = call i64 @bio_add_page(%struct.bio* %196, %struct.page* %197, i64 %198, i32 0)
  br label %200

200:                                              ; preds = %179, %141
  %201 = load i64, i64* %21, align 8
  %202 = load i64, i64* @PAGE_SIZE, align 8
  %203 = icmp ult i64 %201, %202
  br i1 %203, label %204, label %215

204:                                              ; preds = %200
  %205 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %18, align 8
  %206 = load i64, i64* %21, align 8
  %207 = load %struct.compressed_bio*, %struct.compressed_bio** %20, align 8
  %208 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.compressed_bio*, %struct.compressed_bio** %20, align 8
  %211 = getelementptr inbounds %struct.compressed_bio, %struct.compressed_bio* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = trunc i64 %212 to i32
  %214 = call i32 @btrfs_info(%struct.btrfs_fs_info* %205, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %206, i64 %209, i32 %213)
  br label %215

215:                                              ; preds = %204, %200
  %216 = load i64, i64* @PAGE_SIZE, align 8
  %217 = load i64, i64* %21, align 8
  %218 = sub i64 %217, %216
  store i64 %218, i64* %21, align 8
  %219 = load i64, i64* @PAGE_SIZE, align 8
  %220 = load i64, i64* %24, align 8
  %221 = add i64 %220, %219
  store i64 %221, i64* %24, align 8
  %222 = call i32 (...) @cond_resched()
  br label %223

223:                                              ; preds = %215
  %224 = load i32, i32* %22, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %22, align 4
  br label %108

226:                                              ; preds = %108
  %227 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %18, align 8
  %228 = load %struct.bio*, %struct.bio** %19, align 8
  %229 = load i32, i32* @BTRFS_WQ_ENDIO_DATA, align 4
  %230 = call i8* @btrfs_bio_wq_end_io(%struct.btrfs_fs_info* %227, %struct.bio* %228, i32 %229)
  store i8* %230, i8** %26, align 8
  %231 = load i8*, i8** %26, align 8
  %232 = call i32 @BUG_ON(i8* %231)
  %233 = load i32, i32* %27, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %242, label %235

235:                                              ; preds = %226
  %236 = load %struct.inode*, %struct.inode** %10, align 8
  %237 = load %struct.bio*, %struct.bio** %19, align 8
  %238 = load i64, i64* %11, align 8
  %239 = call i8* @btrfs_csum_one_bio(%struct.inode* %236, %struct.bio* %237, i64 %238, i32 1)
  store i8* %239, i8** %26, align 8
  %240 = load i8*, i8** %26, align 8
  %241 = call i32 @BUG_ON(i8* %240)
  br label %242

242:                                              ; preds = %235, %226
  %243 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %18, align 8
  %244 = load %struct.bio*, %struct.bio** %19, align 8
  %245 = call i8* @btrfs_map_bio(%struct.btrfs_fs_info* %243, %struct.bio* %244, i32 0, i32 1)
  store i8* %245, i8** %26, align 8
  %246 = load i8*, i8** %26, align 8
  %247 = icmp ne i8* %246, null
  br i1 %247, label %248, label %254

248:                                              ; preds = %242
  %249 = load i8*, i8** %26, align 8
  %250 = load %struct.bio*, %struct.bio** %19, align 8
  %251 = getelementptr inbounds %struct.bio, %struct.bio* %250, i32 0, i32 1
  store i8* %249, i8** %251, align 8
  %252 = load %struct.bio*, %struct.bio** %19, align 8
  %253 = call i32 @bio_endio(%struct.bio* %252)
  br label %254

254:                                              ; preds = %248, %242
  store i8* null, i8** %9, align 8
  br label %255

255:                                              ; preds = %254, %53
  %256 = load i8*, i8** %9, align 8
  ret i8* %256
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local %struct.TYPE_6__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @PAGE_ALIGNED(i64) #1

declare dso_local %struct.compressed_bio* @kmalloc(i32, i32) #1

declare dso_local i32 @compressed_bio_size(%struct.btrfs_fs_info*, i64) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local %struct.bio* @btrfs_bio_alloc(i64) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, %struct.block_device*) #1

declare dso_local i32 @btrfs_bio_fits_in_stripe(%struct.page*, i64, %struct.bio*, i32) #1

declare dso_local i64 @bio_add_page(%struct.bio*, %struct.page*, i64, i32) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i8* @btrfs_bio_wq_end_io(%struct.btrfs_fs_info*, %struct.bio*, i32) #1

declare dso_local i32 @BUG_ON(i8*) #1

declare dso_local i8* @btrfs_csum_one_bio(%struct.inode*, %struct.bio*, i64, i32) #1

declare dso_local i8* @btrfs_map_bio(%struct.btrfs_fs_info*, %struct.bio*, i32, i32) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

declare dso_local i32 @btrfs_info(%struct.btrfs_fs_info*, i8*, i64, i64, i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
