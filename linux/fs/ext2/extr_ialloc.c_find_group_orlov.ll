; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_ialloc.c_find_group_orlov.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_ialloc.c_find_group_orlov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.ext2_sb_info = type { i32, i32*, i32, i32, i32, %struct.ext2_super_block* }
%struct.ext2_super_block = type { i32 }
%struct.ext2_group_desc = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EXT2_TOPDIR_FL = common dso_local global i32 0, align 4
@BLOCK_COST = common dso_local global i32 0, align 4
@INODE_COST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.inode*)* @find_group_orlov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_group_orlov(%struct.super_block* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext2_sb_info*, align 8
  %8 = alloca %struct.ext2_super_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.ext2_group_desc*, align 8
  %24 = alloca %struct.ext2_group_desc*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = call %struct.TYPE_2__* @EXT2_I(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  %31 = load %struct.super_block*, %struct.super_block** %4, align 8
  %32 = call %struct.ext2_sb_info* @EXT2_SB(%struct.super_block* %31)
  store %struct.ext2_sb_info* %32, %struct.ext2_sb_info** %7, align 8
  %33 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %7, align 8
  %34 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %33, i32 0, i32 5
  %35 = load %struct.ext2_super_block*, %struct.ext2_super_block** %34, align 8
  store %struct.ext2_super_block* %35, %struct.ext2_super_block** %8, align 8
  %36 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %7, align 8
  %37 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %9, align 4
  %39 = load %struct.super_block*, %struct.super_block** %4, align 8
  %40 = call i32 @EXT2_INODES_PER_GROUP(%struct.super_block* %39)
  store i32 %40, i32* %10, align 4
  store i32 -1, i32* %21, align 4
  %41 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %7, align 8
  %42 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %41, i32 0, i32 4
  %43 = call i32 @percpu_counter_read_positive(i32* %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %9, align 4
  %46 = sdiv i32 %44, %45
  store i32 %46, i32* %12, align 4
  %47 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %7, align 8
  %48 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %47, i32 0, i32 3
  %49 = call i32 @percpu_counter_read_positive(i32* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %9, align 4
  %52 = sdiv i32 %50, %51
  store i32 %52, i32* %14, align 4
  %53 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %7, align 8
  %54 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %53, i32 0, i32 2
  %55 = call i32 @percpu_counter_read_positive(i32* %54)
  store i32 %55, i32* %16, align 4
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = load %struct.super_block*, %struct.super_block** %4, align 8
  %58 = getelementptr inbounds %struct.super_block, %struct.super_block* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.inode* @d_inode(i32 %59)
  %61 = icmp eq %struct.inode* %56, %60
  br i1 %61, label %70, label %62

62:                                               ; preds = %2
  %63 = load %struct.inode*, %struct.inode** %5, align 8
  %64 = call %struct.TYPE_2__* @EXT2_I(%struct.inode* %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @EXT2_TOPDIR_FL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %138

70:                                               ; preds = %62, %2
  store %struct.ext2_group_desc* null, %struct.ext2_group_desc** %24, align 8
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %25, align 4
  store i32 -1, i32* %26, align 4
  %72 = call i32 (...) @prandom_u32()
  store i32 %72, i32* %21, align 4
  %73 = load i32, i32* %21, align 4
  %74 = load i32, i32* %9, align 4
  %75 = urem i32 %73, %74
  store i32 %75, i32* %6, align 4
  store i32 0, i32* %22, align 4
  br label %76

76:                                               ; preds = %128, %70
  %77 = load i32, i32* %22, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %131

80:                                               ; preds = %76
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %22, align 4
  %83 = add nsw i32 %81, %82
  %84 = load i32, i32* %9, align 4
  %85 = srem i32 %83, %84
  store i32 %85, i32* %21, align 4
  %86 = load %struct.super_block*, %struct.super_block** %4, align 8
  %87 = load i32, i32* %21, align 4
  %88 = call %struct.ext2_group_desc* @ext2_get_group_desc(%struct.super_block* %86, i32 %87, i32* null)
  store %struct.ext2_group_desc* %88, %struct.ext2_group_desc** %23, align 8
  %89 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %23, align 8
  %90 = icmp ne %struct.ext2_group_desc* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %80
  %92 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %23, align 8
  %93 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %91, %80
  br label %128

97:                                               ; preds = %91
  %98 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %23, align 8
  %99 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le16_to_cpu(i32 %100)
  %102 = load i32, i32* %25, align 4
  %103 = icmp sge i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  br label %128

105:                                              ; preds = %97
  %106 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %23, align 8
  %107 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @le16_to_cpu(i32 %108)
  %110 = load i32, i32* %12, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %128

113:                                              ; preds = %105
  %114 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %23, align 8
  %115 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @le16_to_cpu(i32 %116)
  %118 = load i32, i32* %14, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  br label %128

121:                                              ; preds = %113
  %122 = load i32, i32* %21, align 4
  store i32 %122, i32* %26, align 4
  %123 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %23, align 8
  %124 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @le16_to_cpu(i32 %125)
  store i32 %126, i32* %25, align 4
  %127 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %23, align 8
  store %struct.ext2_group_desc* %127, %struct.ext2_group_desc** %24, align 8
  br label %128

128:                                              ; preds = %121, %120, %112, %104, %96
  %129 = load i32, i32* %22, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %22, align 4
  br label %76

131:                                              ; preds = %76
  %132 = load i32, i32* %26, align 4
  %133 = icmp sge i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %24, align 8
  store %struct.ext2_group_desc* %135, %struct.ext2_group_desc** %23, align 8
  %136 = load i32, i32* %26, align 4
  store i32 %136, i32* %21, align 4
  br label %290

137:                                              ; preds = %131
  br label %251

138:                                              ; preds = %62
  %139 = load i32, i32* %16, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  store i32 1, i32* %16, align 4
  br label %142

142:                                              ; preds = %141, %138
  %143 = load %struct.ext2_super_block*, %struct.ext2_super_block** %8, align 8
  %144 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @le32_to_cpu(i32 %145)
  %147 = load i32, i32* %13, align 4
  %148 = sub nsw i32 %146, %147
  %149 = load i32, i32* %16, align 4
  %150 = sdiv i32 %148, %149
  store i32 %150, i32* %15, align 4
  %151 = load i32, i32* %16, align 4
  %152 = load i32, i32* %9, align 4
  %153 = sdiv i32 %151, %152
  %154 = load i32, i32* %10, align 4
  %155 = sdiv i32 %154, 16
  %156 = add nsw i32 %153, %155
  store i32 %156, i32* %18, align 4
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %10, align 4
  %159 = sdiv i32 %158, 4
  %160 = sub nsw i32 %157, %159
  store i32 %160, i32* %20, align 4
  %161 = load i32, i32* %14, align 4
  %162 = load %struct.super_block*, %struct.super_block** %4, align 8
  %163 = call i32 @EXT2_BLOCKS_PER_GROUP(%struct.super_block* %162)
  %164 = sdiv i32 %163, 4
  %165 = sub nsw i32 %161, %164
  store i32 %165, i32* %19, align 4
  %166 = load %struct.super_block*, %struct.super_block** %4, align 8
  %167 = call i32 @EXT2_BLOCKS_PER_GROUP(%struct.super_block* %166)
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* @BLOCK_COST, align 4
  %170 = call i32 @max(i32 %168, i32 %169)
  %171 = sdiv i32 %167, %170
  store i32 %171, i32* %17, align 4
  %172 = load i32, i32* %17, align 4
  %173 = load i32, i32* @INODE_COST, align 4
  %174 = mul nsw i32 %172, %173
  %175 = load i32, i32* %10, align 4
  %176 = icmp sgt i32 %174, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %142
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* @INODE_COST, align 4
  %180 = sdiv i32 %178, %179
  store i32 %180, i32* %17, align 4
  br label %181

181:                                              ; preds = %177, %142
  %182 = load i32, i32* %17, align 4
  %183 = icmp sgt i32 %182, 255
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  store i32 255, i32* %17, align 4
  br label %185

185:                                              ; preds = %184, %181
  %186 = load i32, i32* %17, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  store i32 1, i32* %17, align 4
  br label %189

189:                                              ; preds = %188, %185
  store i32 0, i32* %22, align 4
  br label %190

190:                                              ; preds = %247, %189
  %191 = load i32, i32* %22, align 4
  %192 = load i32, i32* %9, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %250

194:                                              ; preds = %190
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* %22, align 4
  %197 = add nsw i32 %195, %196
  %198 = load i32, i32* %9, align 4
  %199 = srem i32 %197, %198
  store i32 %199, i32* %21, align 4
  %200 = load %struct.super_block*, %struct.super_block** %4, align 8
  %201 = load i32, i32* %21, align 4
  %202 = call %struct.ext2_group_desc* @ext2_get_group_desc(%struct.super_block* %200, i32 %201, i32* null)
  store %struct.ext2_group_desc* %202, %struct.ext2_group_desc** %23, align 8
  %203 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %23, align 8
  %204 = icmp ne %struct.ext2_group_desc* %203, null
  br i1 %204, label %205, label %210

205:                                              ; preds = %194
  %206 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %23, align 8
  %207 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %205, %194
  br label %247

211:                                              ; preds = %205
  %212 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %7, align 8
  %213 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %21, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %17, align 4
  %220 = icmp sge i32 %218, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %211
  br label %247

222:                                              ; preds = %211
  %223 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %23, align 8
  %224 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @le16_to_cpu(i32 %225)
  %227 = load i32, i32* %18, align 4
  %228 = icmp sge i32 %226, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %222
  br label %247

230:                                              ; preds = %222
  %231 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %23, align 8
  %232 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @le16_to_cpu(i32 %233)
  %235 = load i32, i32* %20, align 4
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %230
  br label %247

238:                                              ; preds = %230
  %239 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %23, align 8
  %240 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @le16_to_cpu(i32 %241)
  %243 = load i32, i32* %19, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %238
  br label %247

246:                                              ; preds = %238
  br label %290

247:                                              ; preds = %245, %237, %229, %221, %210
  %248 = load i32, i32* %22, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %22, align 4
  br label %190

250:                                              ; preds = %190
  br label %251

251:                                              ; preds = %288, %250, %137
  store i32 0, i32* %22, align 4
  br label %252

252:                                              ; preds = %282, %251
  %253 = load i32, i32* %22, align 4
  %254 = load i32, i32* %9, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %285

256:                                              ; preds = %252
  %257 = load i32, i32* %6, align 4
  %258 = load i32, i32* %22, align 4
  %259 = add nsw i32 %257, %258
  %260 = load i32, i32* %9, align 4
  %261 = srem i32 %259, %260
  store i32 %261, i32* %21, align 4
  %262 = load %struct.super_block*, %struct.super_block** %4, align 8
  %263 = load i32, i32* %21, align 4
  %264 = call %struct.ext2_group_desc* @ext2_get_group_desc(%struct.super_block* %262, i32 %263, i32* null)
  store %struct.ext2_group_desc* %264, %struct.ext2_group_desc** %23, align 8
  %265 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %23, align 8
  %266 = icmp ne %struct.ext2_group_desc* %265, null
  br i1 %266, label %267, label %272

267:                                              ; preds = %256
  %268 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %23, align 8
  %269 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %267, %256
  br label %282

273:                                              ; preds = %267
  %274 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %23, align 8
  %275 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @le16_to_cpu(i32 %276)
  %278 = load i32, i32* %12, align 4
  %279 = icmp sge i32 %277, %278
  br i1 %279, label %280, label %281

280:                                              ; preds = %273
  br label %290

281:                                              ; preds = %273
  br label %282

282:                                              ; preds = %281, %272
  %283 = load i32, i32* %22, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %22, align 4
  br label %252

285:                                              ; preds = %252
  %286 = load i32, i32* %12, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %285
  store i32 0, i32* %12, align 4
  br label %251

289:                                              ; preds = %285
  store i32 -1, i32* %3, align 4
  br label %292

290:                                              ; preds = %280, %246, %134
  %291 = load i32, i32* %21, align 4
  store i32 %291, i32* %3, align 4
  br label %292

292:                                              ; preds = %290, %289
  %293 = load i32, i32* %3, align 4
  ret i32 %293
}

declare dso_local %struct.TYPE_2__* @EXT2_I(%struct.inode*) #1

declare dso_local %struct.ext2_sb_info* @EXT2_SB(%struct.super_block*) #1

declare dso_local i32 @EXT2_INODES_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @percpu_counter_read_positive(i32*) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @prandom_u32(...) #1

declare dso_local %struct.ext2_group_desc* @ext2_get_group_desc(%struct.super_block*, i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @EXT2_BLOCKS_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
