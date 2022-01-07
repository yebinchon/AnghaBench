; ModuleID = '/home/carl/AnghaBench/linux/fs/affs/extr_bitmap.c_affs_alloc_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/affs/extr_bitmap.c_affs_alloc_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.affs_sb_info = type { i64, i64, i64, i32, i64, i32, %struct.buffer_head*, %struct.affs_bm_info* }
%struct.buffer_head = type { i64 }
%struct.affs_bm_info = type { i32, i64 }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c"balloc(inode=%lu,goal=%u): \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"affs_balloc\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"invalid goal %d\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"affs_read_block\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Cannot read bitmap block %u\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @affs_alloc_block(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.affs_sb_info*, align 8
  %8 = alloca %struct.affs_bm_info*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 1
  %21 = load %struct.super_block*, %struct.super_block** %20, align 8
  store %struct.super_block* %21, %struct.super_block** %6, align 8
  %22 = load %struct.super_block*, %struct.super_block** %6, align 8
  %23 = call %struct.affs_sb_info* @AFFS_SB(%struct.super_block* %22)
  store %struct.affs_sb_info* %23, %struct.affs_sb_info** %7, align 8
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %27)
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %2
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  %40 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, i64* %43, align 8
  %46 = load %struct.inode*, %struct.inode** %4, align 8
  %47 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %3, align 8
  br label %315

52:                                               ; preds = %2
  %53 = load i64, i64* %5, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.affs_sb_info*, %struct.affs_sb_info** %7, align 8
  %58 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %56, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %55, %52
  %62 = load i64, i64* %5, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.super_block*, %struct.super_block** %6, align 8
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @affs_warning(%struct.super_block* %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %66)
  br label %68

68:                                               ; preds = %64, %61
  %69 = load %struct.affs_sb_info*, %struct.affs_sb_info** %7, align 8
  %70 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %5, align 8
  br label %72

72:                                               ; preds = %68, %55
  %73 = load i64, i64* %5, align 8
  %74 = load %struct.affs_sb_info*, %struct.affs_sb_info** %7, align 8
  %75 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %73, %76
  store i64 %77, i64* %12, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load %struct.affs_sb_info*, %struct.affs_sb_info** %7, align 8
  %80 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = sdiv i64 %78, %81
  store i64 %82, i64* %13, align 8
  %83 = load %struct.affs_sb_info*, %struct.affs_sb_info** %7, align 8
  %84 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %83, i32 0, i32 7
  %85 = load %struct.affs_bm_info*, %struct.affs_bm_info** %84, align 8
  %86 = load i64, i64* %13, align 8
  %87 = getelementptr inbounds %struct.affs_bm_info, %struct.affs_bm_info* %85, i64 %86
  store %struct.affs_bm_info* %87, %struct.affs_bm_info** %8, align 8
  %88 = load %struct.affs_sb_info*, %struct.affs_sb_info** %7, align 8
  %89 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %88, i32 0, i32 5
  %90 = call i32 @mutex_lock(i32* %89)
  %91 = load %struct.affs_bm_info*, %struct.affs_bm_info** %8, align 8
  %92 = getelementptr inbounds %struct.affs_bm_info, %struct.affs_bm_info* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %72
  br label %134

96:                                               ; preds = %72
  br label %97

97:                                               ; preds = %206, %96
  %98 = load %struct.affs_sb_info*, %struct.affs_sb_info** %7, align 8
  %99 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %18, align 4
  br label %101

101:                                              ; preds = %122, %97
  %102 = load i32, i32* %18, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %18, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %310

106:                                              ; preds = %101
  %107 = load i64, i64* %13, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %13, align 8
  %109 = load %struct.affs_bm_info*, %struct.affs_bm_info** %8, align 8
  %110 = getelementptr inbounds %struct.affs_bm_info, %struct.affs_bm_info* %109, i32 1
  store %struct.affs_bm_info* %110, %struct.affs_bm_info** %8, align 8
  %111 = load i64, i64* %13, align 8
  %112 = load %struct.affs_sb_info*, %struct.affs_sb_info** %7, align 8
  %113 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = icmp slt i64 %111, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %106
  br label %122

118:                                              ; preds = %106
  store i64 0, i64* %13, align 8
  %119 = load %struct.affs_sb_info*, %struct.affs_sb_info** %7, align 8
  %120 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %119, i32 0, i32 7
  %121 = load %struct.affs_bm_info*, %struct.affs_bm_info** %120, align 8
  store %struct.affs_bm_info* %121, %struct.affs_bm_info** %8, align 8
  br label %122

122:                                              ; preds = %118, %117
  %123 = load %struct.affs_bm_info*, %struct.affs_bm_info** %8, align 8
  %124 = getelementptr inbounds %struct.affs_bm_info, %struct.affs_bm_info* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  %127 = xor i1 %126, true
  br i1 %127, label %101, label %128

128:                                              ; preds = %122
  %129 = load i64, i64* %13, align 8
  %130 = load %struct.affs_sb_info*, %struct.affs_sb_info** %7, align 8
  %131 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = mul nsw i64 %129, %132
  store i64 %133, i64* %12, align 8
  br label %134

134:                                              ; preds = %128, %95
  %135 = load %struct.affs_sb_info*, %struct.affs_sb_info** %7, align 8
  %136 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %135, i32 0, i32 6
  %137 = load %struct.buffer_head*, %struct.buffer_head** %136, align 8
  store %struct.buffer_head* %137, %struct.buffer_head** %9, align 8
  %138 = load %struct.affs_sb_info*, %struct.affs_sb_info** %7, align 8
  %139 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %13, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %161

143:                                              ; preds = %134
  %144 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %145 = call i32 @affs_brelse(%struct.buffer_head* %144)
  %146 = load %struct.super_block*, %struct.super_block** %6, align 8
  %147 = load %struct.affs_bm_info*, %struct.affs_bm_info** %8, align 8
  %148 = getelementptr inbounds %struct.affs_bm_info, %struct.affs_bm_info* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call %struct.buffer_head* @affs_bread(%struct.super_block* %146, i32 %149)
  store %struct.buffer_head* %150, %struct.buffer_head** %9, align 8
  %151 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %152 = icmp ne %struct.buffer_head* %151, null
  br i1 %152, label %154, label %153

153:                                              ; preds = %143
  br label %300

154:                                              ; preds = %143
  %155 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %156 = load %struct.affs_sb_info*, %struct.affs_sb_info** %7, align 8
  %157 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %156, i32 0, i32 6
  store %struct.buffer_head* %155, %struct.buffer_head** %157, align 8
  %158 = load i64, i64* %13, align 8
  %159 = load %struct.affs_sb_info*, %struct.affs_sb_info** %7, align 8
  %160 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %159, i32 0, i32 4
  store i64 %158, i64* %160, align 8
  br label %161

161:                                              ; preds = %154, %134
  %162 = load i64, i64* %12, align 8
  %163 = load %struct.affs_sb_info*, %struct.affs_sb_info** %7, align 8
  %164 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = srem i64 %162, %165
  store i64 %166, i64* %14, align 8
  %167 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %168 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = inttoptr i64 %169 to i64*
  %171 = load i64, i64* %14, align 8
  %172 = sdiv i64 %171, 32
  %173 = getelementptr inbounds i64, i64* %170, i64 %172
  %174 = getelementptr inbounds i64, i64* %173, i64 1
  store i64* %174, i64** %10, align 8
  %175 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %176 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = inttoptr i64 %177 to i32*
  %179 = load %struct.super_block*, %struct.super_block** %6, align 8
  %180 = getelementptr inbounds %struct.super_block, %struct.super_block* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %178, i64 %182
  %184 = bitcast i32* %183 to i64*
  store i64* %184, i64** %11, align 8
  %185 = load i64, i64* %14, align 8
  %186 = and i64 %185, 31
  %187 = shl i64 -1, %186
  store i64 %187, i64* %15, align 8
  %188 = load i64, i64* %12, align 8
  %189 = and i64 %188, -32
  store i64 %189, i64* %12, align 8
  %190 = load i64*, i64** %10, align 8
  %191 = load i64, i64* %190, align 8
  %192 = call i64 @be32_to_cpu(i64 %191)
  store i64 %192, i64* %17, align 8
  %193 = load i64, i64* %17, align 8
  %194 = load i64, i64* %15, align 8
  %195 = and i64 %193, %194
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %161
  br label %217

198:                                              ; preds = %161
  br label %199

199:                                              ; preds = %208, %198
  %200 = load i64, i64* %12, align 8
  %201 = add nsw i64 %200, 32
  store i64 %201, i64* %12, align 8
  %202 = load i64*, i64** %10, align 8
  %203 = getelementptr inbounds i64, i64* %202, i32 1
  store i64* %203, i64** %10, align 8
  %204 = load i64*, i64** %11, align 8
  %205 = icmp uge i64* %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %199
  br label %97

207:                                              ; preds = %199
  br label %208

208:                                              ; preds = %207
  %209 = load i64*, i64** %10, align 8
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  %212 = xor i1 %211, true
  br i1 %212, label %199, label %213

213:                                              ; preds = %208
  %214 = load i64*, i64** %10, align 8
  %215 = load i64, i64* %214, align 8
  %216 = call i64 @be32_to_cpu(i64 %215)
  store i64 %216, i64* %17, align 8
  store i64 -1, i64* %15, align 8
  br label %217

217:                                              ; preds = %213, %197
  %218 = load i64, i64* %17, align 8
  %219 = load i64, i64* %15, align 8
  %220 = and i64 %218, %219
  %221 = call i32 @ffs(i64 %220)
  %222 = sub nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  store i64 %223, i64* %14, align 8
  %224 = load i64, i64* %14, align 8
  %225 = load %struct.affs_sb_info*, %struct.affs_sb_info** %7, align 8
  %226 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = add nsw i64 %224, %227
  %229 = load i64, i64* %12, align 8
  %230 = add nsw i64 %229, %228
  store i64 %230, i64* %12, align 8
  %231 = load i64, i64* %14, align 8
  %232 = and i64 %231, 31
  %233 = trunc i64 %232 to i32
  %234 = shl i32 1, %233
  %235 = sext i32 %234 to i64
  store i64 %235, i64* %15, align 8
  store i64 %235, i64* %16, align 8
  %236 = load i64, i64* %12, align 8
  %237 = trunc i64 %236 to i32
  %238 = load %struct.inode*, %struct.inode** %4, align 8
  %239 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %238)
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 0
  store i32 %237, i32* %240, align 8
  br label %241

241:                                              ; preds = %251, %217
  %242 = load i64, i64* %16, align 8
  %243 = shl i64 %242, 1
  store i64 %243, i64* %16, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %260

245:                                              ; preds = %241
  %246 = load i64, i64* %17, align 8
  %247 = load i64, i64* %16, align 8
  %248 = and i64 %246, %247
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %245
  br label %260

251:                                              ; preds = %245
  %252 = load %struct.inode*, %struct.inode** %4, align 8
  %253 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %252)
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = add nsw i64 %255, 1
  store i64 %256, i64* %254, align 8
  %257 = load i64, i64* %16, align 8
  %258 = load i64, i64* %15, align 8
  %259 = or i64 %258, %257
  store i64 %259, i64* %15, align 8
  br label %241

260:                                              ; preds = %250, %241
  %261 = load %struct.inode*, %struct.inode** %4, align 8
  %262 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %261)
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = add nsw i64 %264, 1
  %266 = load %struct.affs_bm_info*, %struct.affs_bm_info** %8, align 8
  %267 = getelementptr inbounds %struct.affs_bm_info, %struct.affs_bm_info* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = sub nsw i64 %268, %265
  store i64 %269, i64* %267, align 8
  %270 = load i64, i64* %17, align 8
  %271 = load i64, i64* %15, align 8
  %272 = xor i64 %271, -1
  %273 = and i64 %270, %272
  %274 = call i64 @cpu_to_be32(i64 %273)
  %275 = load i64*, i64** %10, align 8
  store i64 %274, i64* %275, align 8
  %276 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %277 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = inttoptr i64 %278 to i64*
  %280 = load i64, i64* %279, align 8
  %281 = call i64 @be32_to_cpu(i64 %280)
  store i64 %281, i64* %17, align 8
  %282 = load i64, i64* %17, align 8
  %283 = load i64, i64* %15, align 8
  %284 = add nsw i64 %282, %283
  %285 = call i64 @cpu_to_be32(i64 %284)
  %286 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %287 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = inttoptr i64 %288 to i64*
  store i64 %285, i64* %289, align 8
  %290 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %291 = call i32 @mark_buffer_dirty(%struct.buffer_head* %290)
  %292 = load %struct.super_block*, %struct.super_block** %6, align 8
  %293 = call i32 @affs_mark_sb_dirty(%struct.super_block* %292)
  %294 = load %struct.affs_sb_info*, %struct.affs_sb_info** %7, align 8
  %295 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %294, i32 0, i32 5
  %296 = call i32 @mutex_unlock(i32* %295)
  %297 = load i64, i64* %12, align 8
  %298 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %297)
  %299 = load i64, i64* %12, align 8
  store i64 %299, i64* %3, align 8
  br label %315

300:                                              ; preds = %153
  %301 = load %struct.super_block*, %struct.super_block** %6, align 8
  %302 = load %struct.affs_bm_info*, %struct.affs_bm_info** %8, align 8
  %303 = getelementptr inbounds %struct.affs_bm_info, %struct.affs_bm_info* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @affs_error(%struct.super_block* %301, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %304)
  %306 = load %struct.affs_sb_info*, %struct.affs_sb_info** %7, align 8
  %307 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %306, i32 0, i32 6
  store %struct.buffer_head* null, %struct.buffer_head** %307, align 8
  %308 = load %struct.affs_sb_info*, %struct.affs_sb_info** %7, align 8
  %309 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %308, i32 0, i32 4
  store i64 -1, i64* %309, align 8
  br label %310

310:                                              ; preds = %300, %105
  %311 = load %struct.affs_sb_info*, %struct.affs_sb_info** %7, align 8
  %312 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %311, i32 0, i32 5
  %313 = call i32 @mutex_unlock(i32* %312)
  %314 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %315

315:                                              ; preds = %310, %260, %34
  %316 = load i64, i64* %3, align 8
  ret i64 %316
}

declare dso_local %struct.affs_sb_info* @AFFS_SB(%struct.super_block*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.TYPE_2__* @AFFS_I(%struct.inode*) #1

declare dso_local i32 @affs_warning(%struct.super_block*, i8*, i8*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @affs_brelse(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @affs_bread(%struct.super_block*, i32) #1

declare dso_local i64 @be32_to_cpu(i64) #1

declare dso_local i32 @ffs(i64) #1

declare dso_local i64 @cpu_to_be32(i64) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @affs_mark_sb_dirty(%struct.super_block*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @affs_error(%struct.super_block*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
