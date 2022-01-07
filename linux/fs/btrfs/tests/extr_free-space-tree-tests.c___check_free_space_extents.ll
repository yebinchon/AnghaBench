; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_free-space-tree-tests.c___check_free_space_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_free-space-tree-tests.c___check_free_space_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_fs_info = type { i64 }
%struct.btrfs_block_group_cache = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.btrfs_path = type { i64*, i32* }
%struct.free_space_extent = type { i64, i64 }
%struct.btrfs_free_space_info = type { i32 }
%struct.btrfs_key = type { i64, i64, i64 }

@.str = private unnamed_addr constant [31 x i8] c"could not find free space info\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"extent count is wrong\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BTRFS_FREE_SPACE_USING_BITMAPS = common dso_local global i32 0, align 4
@BTRFS_FREE_SPACE_BITMAP_KEY = common dso_local global i64 0, align 8
@BTRFS_FREE_SPACE_EXTENT_KEY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"free space tree is invalid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_fs_info*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, %struct.free_space_extent*, i32)* @__check_free_space_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__check_free_space_extents(%struct.btrfs_trans_handle* %0, %struct.btrfs_fs_info* %1, %struct.btrfs_block_group_cache* %2, %struct.btrfs_path* %3, %struct.free_space_extent* %4, i32 %5) #0 {
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_fs_info*, align 8
  %9 = alloca %struct.btrfs_block_group_cache*, align 8
  %10 = alloca %struct.btrfs_path*, align 8
  %11 = alloca %struct.free_space_extent*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.btrfs_free_space_info*, align 8
  %14 = alloca %struct.btrfs_key, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store %struct.btrfs_fs_info* %1, %struct.btrfs_fs_info** %8, align 8
  store %struct.btrfs_block_group_cache* %2, %struct.btrfs_block_group_cache** %9, align 8
  store %struct.btrfs_path* %3, %struct.btrfs_path** %10, align 8
  store %struct.free_space_extent* %4, %struct.free_space_extent** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i64 0, i64* %17, align 8
  %24 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %25 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %26 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %27 = call %struct.btrfs_free_space_info* @search_free_space_info(%struct.btrfs_trans_handle* %24, %struct.btrfs_block_group_cache* %25, %struct.btrfs_path* %26, i32 0)
  store %struct.btrfs_free_space_info* %27, %struct.btrfs_free_space_info** %13, align 8
  %28 = load %struct.btrfs_free_space_info*, %struct.btrfs_free_space_info** %13, align 8
  %29 = call i64 @IS_ERR(%struct.btrfs_free_space_info* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %6
  %32 = call i32 @test_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.btrfs_free_space_info*, %struct.btrfs_free_space_info** %13, align 8
  %34 = call i32 @PTR_ERR(%struct.btrfs_free_space_info* %33)
  store i32 %34, i32* %23, align 4
  br label %294

35:                                               ; preds = %6
  %36 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %37 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.btrfs_free_space_info*, %struct.btrfs_free_space_info** %13, align 8
  %42 = call i32 @btrfs_free_space_flags(i32 %40, %struct.btrfs_free_space_info* %41)
  store i32 %42, i32* %20, align 4
  %43 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %44 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.btrfs_free_space_info*, %struct.btrfs_free_space_info** %13, align 8
  %49 = call i32 @btrfs_free_space_extent_count(i32 %47, %struct.btrfs_free_space_info* %48)
  store i32 %49, i32* %21, align 4
  %50 = load i32, i32* %21, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %35
  %54 = call i32 @test_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %23, align 4
  br label %294

57:                                               ; preds = %35
  %58 = load i32, i32* %20, align 4
  %59 = load i32, i32* @BTRFS_FREE_SPACE_USING_BITMAPS, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %221

62:                                               ; preds = %57
  %63 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %64 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %298

70:                                               ; preds = %62
  %71 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %72 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %76 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %74, %78
  store i64 %79, i64* %19, align 8
  store i32 0, i32* %22, align 4
  br label %80

80:                                               ; preds = %183, %70
  %81 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %82 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %84, align 8
  %87 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %88 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @btrfs_header_nritems(i32 %91)
  %93 = zext i32 %92 to i64
  %94 = icmp slt i64 %86, %93
  br i1 %94, label %95, label %184

95:                                               ; preds = %80
  %96 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %97 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %102 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 0
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 @btrfs_item_key_to_cpu(i32 %100, %struct.btrfs_key* %14, i32 %106)
  %108 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %14, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @BTRFS_FREE_SPACE_BITMAP_KEY, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %95
  br label %298

113:                                              ; preds = %95
  %114 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %14, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %18, align 8
  br label %116

116:                                              ; preds = %176, %113
  %117 = load i64, i64* %18, align 8
  %118 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %14, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %14, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %119, %121
  %123 = icmp slt i64 %117, %122
  br i1 %123, label %124, label %183

124:                                              ; preds = %116
  %125 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %9, align 8
  %126 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %127 = load i64, i64* %18, align 8
  %128 = call i32 @free_space_test_bit(%struct.btrfs_block_group_cache* %125, %struct.btrfs_path* %126, i64 %127)
  store i32 %128, i32* %16, align 4
  %129 = load i32, i32* %15, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %124
  %132 = load i32, i32* %16, align 4
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i64, i64* %18, align 8
  store i64 %135, i64* %17, align 8
  br label %176

136:                                              ; preds = %131, %124
  %137 = load i32, i32* %15, align 4
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %175

139:                                              ; preds = %136
  %140 = load i32, i32* %16, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %175

142:                                              ; preds = %139
  %143 = load i32, i32* %22, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp uge i32 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  br label %298

147:                                              ; preds = %142
  %148 = load i32, i32* %22, align 4
  %149 = load i32, i32* %12, align 4
  %150 = icmp uge i32 %148, %149
  br i1 %150, label %171, label %151

151:                                              ; preds = %147
  %152 = load i64, i64* %17, align 8
  %153 = load %struct.free_space_extent*, %struct.free_space_extent** %11, align 8
  %154 = load i32, i32* %22, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.free_space_extent, %struct.free_space_extent* %153, i64 %155
  %157 = getelementptr inbounds %struct.free_space_extent, %struct.free_space_extent* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %152, %158
  br i1 %159, label %171, label %160

160:                                              ; preds = %151
  %161 = load i64, i64* %18, align 8
  %162 = load i64, i64* %17, align 8
  %163 = sub nsw i64 %161, %162
  %164 = load %struct.free_space_extent*, %struct.free_space_extent** %11, align 8
  %165 = load i32, i32* %22, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.free_space_extent, %struct.free_space_extent* %164, i64 %166
  %168 = getelementptr inbounds %struct.free_space_extent, %struct.free_space_extent* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %163, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %160, %151, %147
  br label %298

172:                                              ; preds = %160
  %173 = load i32, i32* %22, align 4
  %174 = add i32 %173, 1
  store i32 %174, i32* %22, align 4
  br label %175

175:                                              ; preds = %172, %139, %136
  br label %176

176:                                              ; preds = %175, %134
  %177 = load i32, i32* %16, align 4
  store i32 %177, i32* %15, align 4
  %178 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %179 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* %18, align 8
  %182 = add nsw i64 %181, %180
  store i64 %182, i64* %18, align 8
  br label %116

183:                                              ; preds = %116
  br label %80

184:                                              ; preds = %80
  %185 = load i32, i32* %15, align 4
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %187, label %215

187:                                              ; preds = %184
  %188 = load i32, i32* %22, align 4
  %189 = load i32, i32* %12, align 4
  %190 = icmp uge i32 %188, %189
  br i1 %190, label %211, label %191

191:                                              ; preds = %187
  %192 = load i64, i64* %17, align 8
  %193 = load %struct.free_space_extent*, %struct.free_space_extent** %11, align 8
  %194 = load i32, i32* %22, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.free_space_extent, %struct.free_space_extent* %193, i64 %195
  %197 = getelementptr inbounds %struct.free_space_extent, %struct.free_space_extent* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %192, %198
  br i1 %199, label %211, label %200

200:                                              ; preds = %191
  %201 = load i64, i64* %19, align 8
  %202 = load i64, i64* %17, align 8
  %203 = sub nsw i64 %201, %202
  %204 = load %struct.free_space_extent*, %struct.free_space_extent** %11, align 8
  %205 = load i32, i32* %22, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds %struct.free_space_extent, %struct.free_space_extent* %204, i64 %206
  %208 = getelementptr inbounds %struct.free_space_extent, %struct.free_space_extent* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %203, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %200, %191, %187
  br label %298

212:                                              ; preds = %200
  %213 = load i32, i32* %22, align 4
  %214 = add i32 %213, 1
  store i32 %214, i32* %22, align 4
  br label %215

215:                                              ; preds = %212, %184
  %216 = load i32, i32* %22, align 4
  %217 = load i32, i32* %12, align 4
  %218 = icmp ne i32 %216, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  br label %298

220:                                              ; preds = %215
  br label %293

221:                                              ; preds = %57
  %222 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %223 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @btrfs_header_nritems(i32 %226)
  %228 = load i32, i32* %12, align 4
  %229 = add i32 %228, 1
  %230 = icmp ne i32 %227, %229
  br i1 %230, label %238, label %231

231:                                              ; preds = %221
  %232 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %233 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %232, i32 0, i32 0
  %234 = load i64*, i64** %233, align 8
  %235 = getelementptr inbounds i64, i64* %234, i64 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %231, %221
  br label %298

239:                                              ; preds = %231
  store i32 0, i32* %22, align 4
  br label %240

240:                                              ; preds = %289, %239
  %241 = load i32, i32* %22, align 4
  %242 = load i32, i32* %12, align 4
  %243 = icmp ult i32 %241, %242
  br i1 %243, label %244, label %292

244:                                              ; preds = %240
  %245 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %246 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %245, i32 0, i32 0
  %247 = load i64*, i64** %246, align 8
  %248 = getelementptr inbounds i64, i64* %247, i64 0
  %249 = load i64, i64* %248, align 8
  %250 = add nsw i64 %249, 1
  store i64 %250, i64* %248, align 8
  %251 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %252 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %257 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %256, i32 0, i32 0
  %258 = load i64*, i64** %257, align 8
  %259 = getelementptr inbounds i64, i64* %258, i64 0
  %260 = load i64, i64* %259, align 8
  %261 = trunc i64 %260 to i32
  %262 = call i32 @btrfs_item_key_to_cpu(i32 %255, %struct.btrfs_key* %14, i32 %261)
  %263 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %14, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @BTRFS_FREE_SPACE_EXTENT_KEY, align 8
  %266 = icmp ne i64 %264, %265
  br i1 %266, label %287, label %267

267:                                              ; preds = %244
  %268 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %14, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.free_space_extent*, %struct.free_space_extent** %11, align 8
  %271 = load i32, i32* %22, align 4
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds %struct.free_space_extent, %struct.free_space_extent* %270, i64 %272
  %274 = getelementptr inbounds %struct.free_space_extent, %struct.free_space_extent* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %269, %275
  br i1 %276, label %287, label %277

277:                                              ; preds = %267
  %278 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %14, i32 0, i32 2
  %279 = load i64, i64* %278, align 8
  %280 = load %struct.free_space_extent*, %struct.free_space_extent** %11, align 8
  %281 = load i32, i32* %22, align 4
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds %struct.free_space_extent, %struct.free_space_extent* %280, i64 %282
  %284 = getelementptr inbounds %struct.free_space_extent, %struct.free_space_extent* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %279, %285
  br i1 %286, label %287, label %288

287:                                              ; preds = %277, %267, %244
  br label %298

288:                                              ; preds = %277
  br label %289

289:                                              ; preds = %288
  %290 = load i32, i32* %22, align 4
  %291 = add i32 %290, 1
  store i32 %291, i32* %22, align 4
  br label %240

292:                                              ; preds = %240
  br label %293

293:                                              ; preds = %292, %220
  store i32 0, i32* %23, align 4
  br label %294

294:                                              ; preds = %298, %293, %53, %31
  %295 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %296 = call i32 @btrfs_release_path(%struct.btrfs_path* %295)
  %297 = load i32, i32* %23, align 4
  ret i32 %297

298:                                              ; preds = %287, %238, %219, %211, %171, %146, %112, %69
  %299 = call i32 @test_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %300 = load i32, i32* @EINVAL, align 4
  %301 = sub nsw i32 0, %300
  store i32 %301, i32* %23, align 4
  br label %294
}

declare dso_local %struct.btrfs_free_space_info* @search_free_space_info(%struct.btrfs_trans_handle*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_free_space_info*) #1

declare dso_local i32 @test_err(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_free_space_info*) #1

declare dso_local i32 @btrfs_free_space_flags(i32, %struct.btrfs_free_space_info*) #1

declare dso_local i32 @btrfs_free_space_extent_count(i32, %struct.btrfs_free_space_info*) #1

declare dso_local i32 @btrfs_header_nritems(i32) #1

declare dso_local i32 @btrfs_item_key_to_cpu(i32, %struct.btrfs_key*, i32) #1

declare dso_local i32 @free_space_test_bit(%struct.btrfs_block_group_cache*, %struct.btrfs_path*, i64) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
