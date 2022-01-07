; ModuleID = '/home/carl/AnghaBench/linux/fs/affs/extr_bitmap.c_affs_init_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/affs/extr_bitmap.c_affs_init_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32 }
%struct.affs_bm_info = type { i8*, i8* }
%struct.buffer_head = type { i64 }
%struct.affs_sb_info = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.affs_bm_info*, i32*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@SB_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Bitmap invalid - mounting %s read only\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Bitmap allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Cannot read bitmap\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Bitmap %u invalid - mounting %s read only.\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"read bitmap block %d: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Cannot read bitmap extension\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"last word: %d %d %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @affs_init_bitmap(%struct.super_block* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.affs_bm_info*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.affs_sb_info*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %8, align 8
  store i32 0, i32* %16, align 4
  %20 = load %struct.super_block*, %struct.super_block** %4, align 8
  %21 = call %struct.affs_sb_info* @AFFS_SB(%struct.super_block* %20)
  store %struct.affs_sb_info* %21, %struct.affs_sb_info** %17, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SB_RDONLY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %320

28:                                               ; preds = %2
  %29 = load %struct.super_block*, %struct.super_block** %4, align 8
  %30 = load %struct.affs_sb_info*, %struct.affs_sb_info** %17, align 8
  %31 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %30, i32 0, i32 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = call %struct.TYPE_3__* @AFFS_ROOT_TAIL(%struct.super_block* %29, %struct.TYPE_4__* %32)
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %28
  %38 = load %struct.super_block*, %struct.super_block** %4, align 8
  %39 = getelementptr inbounds %struct.super_block, %struct.super_block* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pr_notice(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @SB_RDONLY, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  store i32 0, i32* %3, align 4
  br label %320

46:                                               ; preds = %28
  %47 = load %struct.affs_sb_info*, %struct.affs_sb_info** %17, align 8
  %48 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %47, i32 0, i32 7
  store i32 -1, i32* %48, align 8
  %49 = load %struct.affs_sb_info*, %struct.affs_sb_info** %17, align 8
  %50 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %49, i32 0, i32 6
  store i32* null, i32** %50, align 8
  %51 = load %struct.super_block*, %struct.super_block** %4, align 8
  %52 = getelementptr inbounds %struct.super_block, %struct.super_block* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %53, 8
  %55 = sub nsw i32 %54, 32
  %56 = load %struct.affs_sb_info*, %struct.affs_sb_info** %17, align 8
  %57 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.affs_sb_info*, %struct.affs_sb_info** %17, align 8
  %59 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.affs_sb_info*, %struct.affs_sb_info** %17, align 8
  %62 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %60, %63
  %65 = load %struct.affs_sb_info*, %struct.affs_sb_info** %17, align 8
  %66 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %64, %67
  %69 = sub nsw i32 %68, 1
  %70 = load %struct.affs_sb_info*, %struct.affs_sb_info** %17, align 8
  %71 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sdiv i32 %69, %72
  %74 = load %struct.affs_sb_info*, %struct.affs_sb_info** %17, align 8
  %75 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.affs_sb_info*, %struct.affs_sb_info** %17, align 8
  %77 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 16
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call %struct.affs_bm_info* @kzalloc(i32 %82, i32 %83)
  %85 = load %struct.affs_sb_info*, %struct.affs_sb_info** %17, align 8
  %86 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %85, i32 0, i32 5
  store %struct.affs_bm_info* %84, %struct.affs_bm_info** %86, align 8
  store %struct.affs_bm_info* %84, %struct.affs_bm_info** %6, align 8
  %87 = load %struct.affs_sb_info*, %struct.affs_sb_info** %17, align 8
  %88 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %87, i32 0, i32 5
  %89 = load %struct.affs_bm_info*, %struct.affs_bm_info** %88, align 8
  %90 = icmp ne %struct.affs_bm_info* %89, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %46
  %92 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %320

95:                                               ; preds = %46
  %96 = load %struct.affs_sb_info*, %struct.affs_sb_info** %17, align 8
  %97 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %96, i32 0, i32 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i64*
  store i64* %101, i64** %9, align 8
  %102 = load %struct.super_block*, %struct.super_block** %4, align 8
  %103 = getelementptr inbounds %struct.super_block, %struct.super_block* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sdiv i32 %104, 4
  %106 = sub nsw i32 %105, 49
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 25
  store i32 %108, i32* %12, align 4
  %109 = load %struct.affs_sb_info*, %struct.affs_sb_info** %17, align 8
  %110 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %15, align 4
  br label %112

112:                                              ; preds = %211, %95
  %113 = load i32, i32* %15, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %216

115:                                              ; preds = %112
  %116 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %117 = call i32 @affs_brelse(%struct.buffer_head* %116)
  %118 = load i64*, i64** %9, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = call i8* @be32_to_cpu(i64 %122)
  %124 = load %struct.affs_bm_info*, %struct.affs_bm_info** %6, align 8
  %125 = getelementptr inbounds %struct.affs_bm_info, %struct.affs_bm_info* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  %126 = load %struct.super_block*, %struct.super_block** %4, align 8
  %127 = load %struct.affs_bm_info*, %struct.affs_bm_info** %6, align 8
  %128 = getelementptr inbounds %struct.affs_bm_info, %struct.affs_bm_info* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call %struct.buffer_head* @affs_bread(%struct.super_block* %126, i8* %129)
  store %struct.buffer_head* %130, %struct.buffer_head** %8, align 8
  %131 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %132 = icmp ne %struct.buffer_head* %131, null
  br i1 %132, label %137, label %133

133:                                              ; preds = %115
  %134 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %135 = load i32, i32* @EIO, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %16, align 4
  br label %314

137:                                              ; preds = %115
  %138 = load %struct.super_block*, %struct.super_block** %4, align 8
  %139 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %140 = call i32 @affs_checksum_block(%struct.super_block* %138, %struct.buffer_head* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %137
  %143 = load %struct.affs_bm_info*, %struct.affs_bm_info** %6, align 8
  %144 = getelementptr inbounds %struct.affs_bm_info, %struct.affs_bm_info* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.super_block*, %struct.super_block** %4, align 8
  %147 = getelementptr inbounds %struct.super_block, %struct.super_block* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %145, i32 %148)
  %150 = load i32, i32* @SB_RDONLY, align 4
  %151 = load i32*, i32** %5, align 8
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %150
  store i32 %153, i32* %151, align 4
  br label %314

154:                                              ; preds = %137
  %155 = load i32, i32* %11, align 4
  %156 = load %struct.affs_bm_info*, %struct.affs_bm_info** %6, align 8
  %157 = getelementptr inbounds %struct.affs_bm_info, %struct.affs_bm_info* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = ptrtoint i8* %158 to i32
  %160 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %155, i32 %159)
  %161 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %162 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, 4
  %165 = load %struct.super_block*, %struct.super_block** %4, align 8
  %166 = getelementptr inbounds %struct.super_block, %struct.super_block* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = sub nsw i32 %167, 4
  %169 = call i8* @memweight(i64 %164, i32 %168)
  %170 = load %struct.affs_bm_info*, %struct.affs_bm_info** %6, align 8
  %171 = getelementptr inbounds %struct.affs_bm_info, %struct.affs_bm_info* %170, i32 0, i32 1
  store i8* %169, i8** %171, align 8
  %172 = load i32, i32* %11, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %11, align 4
  %174 = load i32, i32* %12, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %179, label %176

176:                                              ; preds = %154
  %177 = load i32, i32* %15, align 4
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %179, label %180

179:                                              ; preds = %176, %154
  br label %211

180:                                              ; preds = %176
  %181 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %182 = icmp ne %struct.buffer_head* %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %185 = call i32 @affs_brelse(%struct.buffer_head* %184)
  br label %186

186:                                              ; preds = %183, %180
  %187 = load %struct.super_block*, %struct.super_block** %4, align 8
  %188 = load i64*, i64** %9, align 8
  %189 = load i32, i32* %11, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %188, i64 %190
  %192 = load i64, i64* %191, align 8
  %193 = call i8* @be32_to_cpu(i64 %192)
  %194 = call %struct.buffer_head* @affs_bread(%struct.super_block* %187, i8* %193)
  store %struct.buffer_head* %194, %struct.buffer_head** %7, align 8
  %195 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %196 = icmp ne %struct.buffer_head* %195, null
  br i1 %196, label %201, label %197

197:                                              ; preds = %186
  %198 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %199 = load i32, i32* @EIO, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %16, align 4
  br label %314

201:                                              ; preds = %186
  %202 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %203 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = inttoptr i64 %204 to i64*
  store i64* %205, i64** %9, align 8
  store i32 0, i32* %11, align 4
  %206 = load %struct.super_block*, %struct.super_block** %4, align 8
  %207 = getelementptr inbounds %struct.super_block, %struct.super_block* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = sdiv i32 %208, 4
  %210 = sub nsw i32 %209, 1
  store i32 %210, i32* %12, align 4
  br label %211

211:                                              ; preds = %201, %179
  %212 = load %struct.affs_bm_info*, %struct.affs_bm_info** %6, align 8
  %213 = getelementptr inbounds %struct.affs_bm_info, %struct.affs_bm_info* %212, i32 1
  store %struct.affs_bm_info* %213, %struct.affs_bm_info** %6, align 8
  %214 = load i32, i32* %15, align 4
  %215 = add nsw i32 %214, -1
  store i32 %215, i32* %15, align 4
  br label %112

216:                                              ; preds = %112
  %217 = load %struct.affs_sb_info*, %struct.affs_sb_info** %17, align 8
  %218 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.affs_sb_info*, %struct.affs_sb_info** %17, align 8
  %221 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = sub nsw i32 %219, %222
  %224 = load %struct.affs_sb_info*, %struct.affs_sb_info** %17, align 8
  %225 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = srem i32 %223, %226
  store i32 %227, i32* %13, align 4
  %228 = load i32, i32* %13, align 4
  %229 = and i32 %228, 31
  %230 = shl i32 -1, %229
  %231 = xor i32 %230, -1
  store i32 %231, i32* %14, align 4
  %232 = load i32, i32* %13, align 4
  %233 = load i32, i32* %13, align 4
  %234 = sdiv i32 %233, 32
  %235 = add nsw i32 %234, 1
  %236 = load i32, i32* %14, align 4
  %237 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %232, i32 %235, i32 %236)
  %238 = load i32, i32* %13, align 4
  %239 = sdiv i32 %238, 32
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %13, align 4
  %241 = load i32, i32* %14, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %266

243:                                              ; preds = %216
  %244 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %245 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = inttoptr i64 %246 to i64*
  %248 = load i32, i32* %13, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i64, i64* %247, i64 %249
  %251 = load i64, i64* %250, align 8
  %252 = call i8* @be32_to_cpu(i64 %251)
  %253 = ptrtoint i8* %252 to i32
  store i32 %253, i32* %18, align 4
  %254 = load i32, i32* %18, align 4
  %255 = load i32, i32* %14, align 4
  %256 = and i32 %254, %255
  store i32 %256, i32* %19, align 4
  %257 = load i32, i32* %19, align 4
  %258 = call i64 @cpu_to_be32(i32 %257)
  %259 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %260 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = inttoptr i64 %261 to i64*
  %263 = load i32, i32* %13, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i64, i64* %262, i64 %264
  store i64 %258, i64* %265, align 8
  br label %266

266:                                              ; preds = %243, %216
  br label %267

267:                                              ; preds = %275, %266
  %268 = load i32, i32* %13, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %13, align 4
  %270 = load %struct.super_block*, %struct.super_block** %4, align 8
  %271 = getelementptr inbounds %struct.super_block, %struct.super_block* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = sdiv i32 %272, 4
  %274 = icmp slt i32 %269, %273
  br i1 %274, label %275, label %283

275:                                              ; preds = %267
  %276 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %277 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = inttoptr i64 %278 to i64*
  %280 = load i32, i32* %13, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i64, i64* %279, i64 %281
  store i64 0, i64* %282, align 8
  br label %267

283:                                              ; preds = %267
  %284 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %285 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = inttoptr i64 %286 to i64*
  %288 = getelementptr inbounds i64, i64* %287, i64 0
  store i64 0, i64* %288, align 8
  %289 = load %struct.super_block*, %struct.super_block** %4, align 8
  %290 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %291 = call i32 @affs_checksum_block(%struct.super_block* %289, %struct.buffer_head* %290)
  %292 = sub nsw i32 0, %291
  %293 = call i64 @cpu_to_be32(i32 %292)
  %294 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %295 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = inttoptr i64 %296 to i64*
  %298 = getelementptr inbounds i64, i64* %297, i64 0
  store i64 %293, i64* %298, align 8
  %299 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %300 = call i32 @mark_buffer_dirty(%struct.buffer_head* %299)
  %301 = load %struct.affs_bm_info*, %struct.affs_bm_info** %6, align 8
  %302 = getelementptr inbounds %struct.affs_bm_info, %struct.affs_bm_info* %301, i32 -1
  store %struct.affs_bm_info* %302, %struct.affs_bm_info** %6, align 8
  %303 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %304 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = add nsw i64 %305, 4
  %307 = load %struct.super_block*, %struct.super_block** %4, align 8
  %308 = getelementptr inbounds %struct.super_block, %struct.super_block* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = sub nsw i32 %309, 4
  %311 = call i8* @memweight(i64 %306, i32 %310)
  %312 = load %struct.affs_bm_info*, %struct.affs_bm_info** %6, align 8
  %313 = getelementptr inbounds %struct.affs_bm_info, %struct.affs_bm_info* %312, i32 0, i32 1
  store i8* %311, i8** %313, align 8
  br label %314

314:                                              ; preds = %283, %197, %142, %133
  %315 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %316 = call i32 @affs_brelse(%struct.buffer_head* %315)
  %317 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %318 = call i32 @affs_brelse(%struct.buffer_head* %317)
  %319 = load i32, i32* %16, align 4
  store i32 %319, i32* %3, align 4
  br label %320

320:                                              ; preds = %314, %91, %37, %27
  %321 = load i32, i32* %3, align 4
  ret i32 %321
}

declare dso_local %struct.affs_sb_info* @AFFS_SB(%struct.super_block*) #1

declare dso_local %struct.TYPE_3__* @AFFS_ROOT_TAIL(%struct.super_block*, %struct.TYPE_4__*) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local %struct.affs_bm_info* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @affs_brelse(%struct.buffer_head*) #1

declare dso_local i8* @be32_to_cpu(i64) #1

declare dso_local %struct.buffer_head* @affs_bread(%struct.super_block*, i8*) #1

declare dso_local i32 @affs_checksum_block(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @pr_warn(i8*, i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i8* @memweight(i64, i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
