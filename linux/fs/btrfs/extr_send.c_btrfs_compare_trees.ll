; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_btrfs_compare_trees.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_btrfs_compare_trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32, i32 }
%struct.btrfs_path = type { i32, i32, i32*, i8** }
%struct.btrfs_key = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ADVANCE_ONLY_NEXT = common dso_local global i32 0, align 4
@ADVANCE = common dso_local global i32 0, align 4
@BTRFS_COMPARE_TREE_DELETED = common dso_local global i32 0, align 4
@BTRFS_COMPARE_TREE_NEW = common dso_local global i32 0, align 4
@BTRFS_COMPARE_TREE_CHANGED = common dso_local global i32 0, align 4
@BTRFS_COMPARE_TREE_SAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, %struct.btrfs_root*, i32 (%struct.btrfs_path*, %struct.btrfs_path*, %struct.btrfs_key*, i32, i8*)*, i8*)* @btrfs_compare_trees to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_compare_trees(%struct.btrfs_root* %0, %struct.btrfs_root* %1, i32 (%struct.btrfs_path*, %struct.btrfs_path*, %struct.btrfs_key*, i32, i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca i32 (%struct.btrfs_path*, %struct.btrfs_path*, %struct.btrfs_key*, i32, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.btrfs_fs_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_path*, align 8
  %13 = alloca %struct.btrfs_path*, align 8
  %14 = alloca %struct.btrfs_key, align 4
  %15 = alloca %struct.btrfs_key, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %5, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %6, align 8
  store i32 (%struct.btrfs_path*, %struct.btrfs_path*, %struct.btrfs_key*, i32, i8*)* %2, i32 (%struct.btrfs_path*, %struct.btrfs_path*, %struct.btrfs_key*, i32, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %30 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %31 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %30, i32 0, i32 1
  %32 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %31, align 8
  store %struct.btrfs_fs_info* %32, %struct.btrfs_fs_info** %9, align 8
  store %struct.btrfs_path* null, %struct.btrfs_path** %12, align 8
  store %struct.btrfs_path* null, %struct.btrfs_path** %13, align 8
  store i8* null, i8** %16, align 8
  %33 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %33, %struct.btrfs_path** %12, align 8
  %34 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %35 = icmp ne %struct.btrfs_path* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %4
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %10, align 4
  br label %474

39:                                               ; preds = %4
  %40 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %40, %struct.btrfs_path** %13, align 8
  %41 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %42 = icmp ne %struct.btrfs_path* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %10, align 4
  br label %474

46:                                               ; preds = %39
  %47 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %48 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @kvmalloc(i32 %49, i32 %50)
  store i8* %51, i8** %16, align 8
  %52 = load i8*, i8** %16, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %10, align 4
  br label %474

57:                                               ; preds = %46
  %58 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %59 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %61 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %63 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %65 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  %66 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %67 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %66, i32 0, i32 0
  %68 = call i32 @down_read(i32* %67)
  %69 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %70 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @btrfs_header_level(i32 %71)
  store i32 %72, i32* %19, align 4
  %73 = load i32, i32* %19, align 4
  store i32 %73, i32* %17, align 4
  %74 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %75 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i8* @btrfs_clone_extent_buffer(i32 %76)
  %78 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %79 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %78, i32 0, i32 3
  %80 = load i8**, i8*** %79, align 8
  %81 = load i32, i32* %19, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  store i8* %77, i8** %83, align 8
  %84 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %85 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %84, i32 0, i32 3
  %86 = load i8**, i8*** %85, align 8
  %87 = load i32, i32* %19, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %98, label %92

92:                                               ; preds = %57
  %93 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %94 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %93, i32 0, i32 0
  %95 = call i32 @up_read(i32* %94)
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %10, align 4
  br label %474

98:                                               ; preds = %57
  %99 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %100 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @btrfs_header_level(i32 %101)
  store i32 %102, i32* %20, align 4
  %103 = load i32, i32* %20, align 4
  store i32 %103, i32* %18, align 4
  %104 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %105 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i8* @btrfs_clone_extent_buffer(i32 %106)
  %108 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %109 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %108, i32 0, i32 3
  %110 = load i8**, i8*** %109, align 8
  %111 = load i32, i32* %20, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  store i8* %107, i8** %113, align 8
  %114 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %115 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %114, i32 0, i32 3
  %116 = load i8**, i8*** %115, align 8
  %117 = load i32, i32* %20, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %128, label %122

122:                                              ; preds = %98
  %123 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %124 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %123, i32 0, i32 0
  %125 = call i32 @up_read(i32* %124)
  %126 = load i32, i32* @ENOMEM, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %10, align 4
  br label %474

128:                                              ; preds = %98
  %129 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %130 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %129, i32 0, i32 0
  %131 = call i32 @up_read(i32* %130)
  %132 = load i32, i32* %19, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %128
  %135 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %136 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %135, i32 0, i32 3
  %137 = load i8**, i8*** %136, align 8
  %138 = load i32, i32* %19, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %143 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %19, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @btrfs_item_key_to_cpu(i8* %141, %struct.btrfs_key* %14, i32 %148)
  br label %166

150:                                              ; preds = %128
  %151 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %152 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %151, i32 0, i32 3
  %153 = load i8**, i8*** %152, align 8
  %154 = load i32, i32* %19, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %153, i64 %155
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %159 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %19, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @btrfs_node_key_to_cpu(i8* %157, %struct.btrfs_key* %14, i32 %164)
  br label %166

166:                                              ; preds = %150, %134
  %167 = load i32, i32* %20, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %185

169:                                              ; preds = %166
  %170 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %171 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %170, i32 0, i32 3
  %172 = load i8**, i8*** %171, align 8
  %173 = load i32, i32* %20, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %172, i64 %174
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %178 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %20, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @btrfs_item_key_to_cpu(i8* %176, %struct.btrfs_key* %15, i32 %183)
  br label %201

185:                                              ; preds = %166
  %186 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %187 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %186, i32 0, i32 3
  %188 = load i8**, i8*** %187, align 8
  %189 = load i32, i32* %20, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8*, i8** %188, i64 %190
  %192 = load i8*, i8** %191, align 8
  %193 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %194 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %20, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @btrfs_node_key_to_cpu(i8* %192, %struct.btrfs_key* %15, i32 %199)
  br label %201

201:                                              ; preds = %185, %169
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %23, align 4
  br label %202

202:                                              ; preds = %201, %275, %294, %473
  %203 = call i32 (...) @cond_resched()
  %204 = load i32, i32* %23, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %227

206:                                              ; preds = %202
  %207 = load i32, i32* %21, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %227, label %209

209:                                              ; preds = %206
  %210 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %211 = load i32, i32* %17, align 4
  %212 = load i32, i32* %23, align 4
  %213 = load i32, i32* @ADVANCE_ONLY_NEXT, align 4
  %214 = icmp ne i32 %212, %213
  %215 = zext i1 %214 to i32
  %216 = call i32 @tree_advance(%struct.btrfs_path* %210, i32* %19, i32 %211, i32 %215, %struct.btrfs_key* %14)
  store i32 %216, i32* %10, align 4
  %217 = load i32, i32* %10, align 4
  %218 = icmp eq i32 %217, -1
  br i1 %218, label %219, label %221

219:                                              ; preds = %209
  %220 = load i32, i32* @ADVANCE, align 4
  store i32 %220, i32* %21, align 4
  br label %226

221:                                              ; preds = %209
  %222 = load i32, i32* %10, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %221
  br label %474

225:                                              ; preds = %221
  br label %226

226:                                              ; preds = %225, %219
  store i32 0, i32* %23, align 4
  br label %227

227:                                              ; preds = %226, %206, %202
  %228 = load i32, i32* %24, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %251

230:                                              ; preds = %227
  %231 = load i32, i32* %22, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %251, label %233

233:                                              ; preds = %230
  %234 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %235 = load i32, i32* %18, align 4
  %236 = load i32, i32* %24, align 4
  %237 = load i32, i32* @ADVANCE_ONLY_NEXT, align 4
  %238 = icmp ne i32 %236, %237
  %239 = zext i1 %238 to i32
  %240 = call i32 @tree_advance(%struct.btrfs_path* %234, i32* %20, i32 %235, i32 %239, %struct.btrfs_key* %15)
  store i32 %240, i32* %10, align 4
  %241 = load i32, i32* %10, align 4
  %242 = icmp eq i32 %241, -1
  br i1 %242, label %243, label %245

243:                                              ; preds = %233
  %244 = load i32, i32* @ADVANCE, align 4
  store i32 %244, i32* %22, align 4
  br label %250

245:                                              ; preds = %233
  %246 = load i32, i32* %10, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %245
  br label %474

249:                                              ; preds = %245
  br label %250

250:                                              ; preds = %249, %243
  store i32 0, i32* %24, align 4
  br label %251

251:                                              ; preds = %250, %230, %227
  %252 = load i32, i32* %21, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %251
  %255 = load i32, i32* %22, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %254
  store i32 0, i32* %10, align 4
  br label %474

258:                                              ; preds = %254, %251
  %259 = load i32, i32* %21, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %277

261:                                              ; preds = %258
  %262 = load i32, i32* %20, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %275

264:                                              ; preds = %261
  %265 = load i32 (%struct.btrfs_path*, %struct.btrfs_path*, %struct.btrfs_key*, i32, i8*)*, i32 (%struct.btrfs_path*, %struct.btrfs_path*, %struct.btrfs_key*, i32, i8*)** %7, align 8
  %266 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %267 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %268 = load i32, i32* @BTRFS_COMPARE_TREE_DELETED, align 4
  %269 = load i8*, i8** %8, align 8
  %270 = call i32 %265(%struct.btrfs_path* %266, %struct.btrfs_path* %267, %struct.btrfs_key* %15, i32 %268, i8* %269)
  store i32 %270, i32* %10, align 4
  %271 = load i32, i32* %10, align 4
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %264
  br label %474

274:                                              ; preds = %264
  br label %275

275:                                              ; preds = %274, %261
  %276 = load i32, i32* @ADVANCE, align 4
  store i32 %276, i32* %24, align 4
  br label %202

277:                                              ; preds = %258
  %278 = load i32, i32* %22, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %296

280:                                              ; preds = %277
  %281 = load i32, i32* %19, align 4
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %294

283:                                              ; preds = %280
  %284 = load i32 (%struct.btrfs_path*, %struct.btrfs_path*, %struct.btrfs_key*, i32, i8*)*, i32 (%struct.btrfs_path*, %struct.btrfs_path*, %struct.btrfs_key*, i32, i8*)** %7, align 8
  %285 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %286 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %287 = load i32, i32* @BTRFS_COMPARE_TREE_NEW, align 4
  %288 = load i8*, i8** %8, align 8
  %289 = call i32 %284(%struct.btrfs_path* %285, %struct.btrfs_path* %286, %struct.btrfs_key* %14, i32 %287, i8* %288)
  store i32 %289, i32* %10, align 4
  %290 = load i32, i32* %10, align 4
  %291 = icmp slt i32 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %283
  br label %474

293:                                              ; preds = %283
  br label %294

294:                                              ; preds = %293, %280
  %295 = load i32, i32* @ADVANCE, align 4
  store i32 %295, i32* %23, align 4
  br label %202

296:                                              ; preds = %277
  br label %297

297:                                              ; preds = %296
  br label %298

298:                                              ; preds = %297
  %299 = load i32, i32* %19, align 4
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %371

301:                                              ; preds = %298
  %302 = load i32, i32* %20, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %371

304:                                              ; preds = %301
  %305 = call i32 @btrfs_comp_cpu_keys(%struct.btrfs_key* %14, %struct.btrfs_key* %15)
  store i32 %305, i32* %11, align 4
  %306 = load i32, i32* %11, align 4
  %307 = icmp slt i32 %306, 0
  br i1 %307, label %308, label %320

308:                                              ; preds = %304
  %309 = load i32 (%struct.btrfs_path*, %struct.btrfs_path*, %struct.btrfs_key*, i32, i8*)*, i32 (%struct.btrfs_path*, %struct.btrfs_path*, %struct.btrfs_key*, i32, i8*)** %7, align 8
  %310 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %311 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %312 = load i32, i32* @BTRFS_COMPARE_TREE_NEW, align 4
  %313 = load i8*, i8** %8, align 8
  %314 = call i32 %309(%struct.btrfs_path* %310, %struct.btrfs_path* %311, %struct.btrfs_key* %14, i32 %312, i8* %313)
  store i32 %314, i32* %10, align 4
  %315 = load i32, i32* %10, align 4
  %316 = icmp slt i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %308
  br label %474

318:                                              ; preds = %308
  %319 = load i32, i32* @ADVANCE, align 4
  store i32 %319, i32* %23, align 4
  br label %370

320:                                              ; preds = %304
  %321 = load i32, i32* %11, align 4
  %322 = icmp sgt i32 %321, 0
  br i1 %322, label %323, label %335

323:                                              ; preds = %320
  %324 = load i32 (%struct.btrfs_path*, %struct.btrfs_path*, %struct.btrfs_key*, i32, i8*)*, i32 (%struct.btrfs_path*, %struct.btrfs_path*, %struct.btrfs_key*, i32, i8*)** %7, align 8
  %325 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %326 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %327 = load i32, i32* @BTRFS_COMPARE_TREE_DELETED, align 4
  %328 = load i8*, i8** %8, align 8
  %329 = call i32 %324(%struct.btrfs_path* %325, %struct.btrfs_path* %326, %struct.btrfs_key* %15, i32 %327, i8* %328)
  store i32 %329, i32* %10, align 4
  %330 = load i32, i32* %10, align 4
  %331 = icmp slt i32 %330, 0
  br i1 %331, label %332, label %333

332:                                              ; preds = %323
  br label %474

333:                                              ; preds = %323
  %334 = load i32, i32* @ADVANCE, align 4
  store i32 %334, i32* %24, align 4
  br label %369

335:                                              ; preds = %320
  %336 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %337 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %336, i32 0, i32 3
  %338 = load i8**, i8*** %337, align 8
  %339 = getelementptr inbounds i8*, i8** %338, i64 0
  %340 = load i8*, i8** %339, align 8
  %341 = call i32 @extent_buffer_uptodate(i8* %340)
  %342 = icmp ne i32 %341, 0
  %343 = xor i1 %342, true
  %344 = zext i1 %343 to i32
  %345 = call i32 @WARN_ON(i32 %344)
  %346 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %347 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %348 = load i8*, i8** %16, align 8
  %349 = call i32 @tree_compare_item(%struct.btrfs_path* %346, %struct.btrfs_path* %347, i8* %348)
  store i32 %349, i32* %10, align 4
  %350 = load i32, i32* %10, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %354

352:                                              ; preds = %335
  %353 = load i32, i32* @BTRFS_COMPARE_TREE_CHANGED, align 4
  store i32 %353, i32* %29, align 4
  br label %356

354:                                              ; preds = %335
  %355 = load i32, i32* @BTRFS_COMPARE_TREE_SAME, align 4
  store i32 %355, i32* %29, align 4
  br label %356

356:                                              ; preds = %354, %352
  %357 = load i32 (%struct.btrfs_path*, %struct.btrfs_path*, %struct.btrfs_key*, i32, i8*)*, i32 (%struct.btrfs_path*, %struct.btrfs_path*, %struct.btrfs_key*, i32, i8*)** %7, align 8
  %358 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %359 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %360 = load i32, i32* %29, align 4
  %361 = load i8*, i8** %8, align 8
  %362 = call i32 %357(%struct.btrfs_path* %358, %struct.btrfs_path* %359, %struct.btrfs_key* %14, i32 %360, i8* %361)
  store i32 %362, i32* %10, align 4
  %363 = load i32, i32* %10, align 4
  %364 = icmp slt i32 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %356
  br label %474

366:                                              ; preds = %356
  %367 = load i32, i32* @ADVANCE, align 4
  store i32 %367, i32* %23, align 4
  %368 = load i32, i32* @ADVANCE, align 4
  store i32 %368, i32* %24, align 4
  br label %369

369:                                              ; preds = %366, %333
  br label %370

370:                                              ; preds = %369, %318
  br label %473

371:                                              ; preds = %301, %298
  %372 = load i32, i32* %19, align 4
  %373 = load i32, i32* %20, align 4
  %374 = icmp eq i32 %372, %373
  br i1 %374, label %375, label %463

375:                                              ; preds = %371
  %376 = call i32 @btrfs_comp_cpu_keys(%struct.btrfs_key* %14, %struct.btrfs_key* %15)
  store i32 %376, i32* %11, align 4
  %377 = load i32, i32* %11, align 4
  %378 = icmp slt i32 %377, 0
  br i1 %378, label %379, label %381

379:                                              ; preds = %375
  %380 = load i32, i32* @ADVANCE, align 4
  store i32 %380, i32* %23, align 4
  br label %462

381:                                              ; preds = %375
  %382 = load i32, i32* %11, align 4
  %383 = icmp sgt i32 %382, 0
  br i1 %383, label %384, label %386

384:                                              ; preds = %381
  %385 = load i32, i32* @ADVANCE, align 4
  store i32 %385, i32* %24, align 4
  br label %461

386:                                              ; preds = %381
  %387 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %388 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %387, i32 0, i32 3
  %389 = load i8**, i8*** %388, align 8
  %390 = load i32, i32* %19, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i8*, i8** %389, i64 %391
  %393 = load i8*, i8** %392, align 8
  %394 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %395 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %394, i32 0, i32 2
  %396 = load i32*, i32** %395, align 8
  %397 = load i32, i32* %19, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i32, i32* %396, i64 %398
  %400 = load i32, i32* %399, align 4
  %401 = call i64 @btrfs_node_blockptr(i8* %393, i32 %400)
  store i64 %401, i64* %25, align 8
  %402 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %403 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %402, i32 0, i32 3
  %404 = load i8**, i8*** %403, align 8
  %405 = load i32, i32* %20, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i8*, i8** %404, i64 %406
  %408 = load i8*, i8** %407, align 8
  %409 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %410 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %409, i32 0, i32 2
  %411 = load i32*, i32** %410, align 8
  %412 = load i32, i32* %20, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i32, i32* %411, i64 %413
  %415 = load i32, i32* %414, align 4
  %416 = call i64 @btrfs_node_blockptr(i8* %408, i32 %415)
  store i64 %416, i64* %26, align 8
  %417 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %418 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %417, i32 0, i32 3
  %419 = load i8**, i8*** %418, align 8
  %420 = load i32, i32* %19, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i8*, i8** %419, i64 %421
  %423 = load i8*, i8** %422, align 8
  %424 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %425 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %424, i32 0, i32 2
  %426 = load i32*, i32** %425, align 8
  %427 = load i32, i32* %19, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32, i32* %426, i64 %428
  %430 = load i32, i32* %429, align 4
  %431 = call i64 @btrfs_node_ptr_generation(i8* %423, i32 %430)
  store i64 %431, i64* %27, align 8
  %432 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %433 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %432, i32 0, i32 3
  %434 = load i8**, i8*** %433, align 8
  %435 = load i32, i32* %20, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i8*, i8** %434, i64 %436
  %438 = load i8*, i8** %437, align 8
  %439 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %440 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %439, i32 0, i32 2
  %441 = load i32*, i32** %440, align 8
  %442 = load i32, i32* %20, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32, i32* %441, i64 %443
  %445 = load i32, i32* %444, align 4
  %446 = call i64 @btrfs_node_ptr_generation(i8* %438, i32 %445)
  store i64 %446, i64* %28, align 8
  %447 = load i64, i64* %25, align 8
  %448 = load i64, i64* %26, align 8
  %449 = icmp eq i64 %447, %448
  br i1 %449, label %450, label %457

450:                                              ; preds = %386
  %451 = load i64, i64* %27, align 8
  %452 = load i64, i64* %28, align 8
  %453 = icmp eq i64 %451, %452
  br i1 %453, label %454, label %457

454:                                              ; preds = %450
  %455 = load i32, i32* @ADVANCE_ONLY_NEXT, align 4
  store i32 %455, i32* %23, align 4
  %456 = load i32, i32* @ADVANCE_ONLY_NEXT, align 4
  store i32 %456, i32* %24, align 4
  br label %460

457:                                              ; preds = %450, %386
  %458 = load i32, i32* @ADVANCE, align 4
  store i32 %458, i32* %23, align 4
  %459 = load i32, i32* @ADVANCE, align 4
  store i32 %459, i32* %24, align 4
  br label %460

460:                                              ; preds = %457, %454
  br label %461

461:                                              ; preds = %460, %384
  br label %462

462:                                              ; preds = %461, %379
  br label %472

463:                                              ; preds = %371
  %464 = load i32, i32* %19, align 4
  %465 = load i32, i32* %20, align 4
  %466 = icmp slt i32 %464, %465
  br i1 %466, label %467, label %469

467:                                              ; preds = %463
  %468 = load i32, i32* @ADVANCE, align 4
  store i32 %468, i32* %24, align 4
  br label %471

469:                                              ; preds = %463
  %470 = load i32, i32* @ADVANCE, align 4
  store i32 %470, i32* %23, align 4
  br label %471

471:                                              ; preds = %469, %467
  br label %472

472:                                              ; preds = %471, %462
  br label %473

473:                                              ; preds = %472, %370
  br label %202

474:                                              ; preds = %365, %332, %317, %292, %273, %257, %248, %224, %122, %92, %54, %43, %36
  %475 = load %struct.btrfs_path*, %struct.btrfs_path** %12, align 8
  %476 = call i32 @btrfs_free_path(%struct.btrfs_path* %475)
  %477 = load %struct.btrfs_path*, %struct.btrfs_path** %13, align 8
  %478 = call i32 @btrfs_free_path(%struct.btrfs_path* %477)
  %479 = load i8*, i8** %16, align 8
  %480 = call i32 @kvfree(i8* %479)
  %481 = load i32, i32* %10, align 4
  ret i32 %481
}

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i8* @kvmalloc(i32, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @btrfs_header_level(i32) #1

declare dso_local i8* @btrfs_clone_extent_buffer(i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @btrfs_item_key_to_cpu(i8*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_node_key_to_cpu(i8*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @tree_advance(%struct.btrfs_path*, i32*, i32, i32, %struct.btrfs_key*) #1

declare dso_local i32 @btrfs_comp_cpu_keys(%struct.btrfs_key*, %struct.btrfs_key*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @extent_buffer_uptodate(i8*) #1

declare dso_local i32 @tree_compare_item(%struct.btrfs_path*, %struct.btrfs_path*, i8*) #1

declare dso_local i64 @btrfs_node_blockptr(i8*, i32) #1

declare dso_local i64 @btrfs_node_ptr_generation(i8*, i32) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
