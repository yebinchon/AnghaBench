; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_del_items.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_del_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { %struct.extent_buffer*, %struct.btrfs_fs_info* }
%struct.extent_buffer = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.btrfs_item = type { i32 }
%struct.btrfs_map_token = type { i32 }
%struct.btrfs_disk_key = type { i32 }

@BTRFS_LEAF_DATA_OFFSET = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_del_items(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_path* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca %struct.btrfs_path*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.btrfs_fs_info*, align 8
  %12 = alloca %struct.extent_buffer*, align 8
  %13 = alloca %struct.btrfs_item*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.btrfs_map_token, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.btrfs_disk_key, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %6, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %7, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %26 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %25, i32 0, i32 1
  %27 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %26, align 8
  store %struct.btrfs_fs_info* %27, %struct.btrfs_fs_info** %11, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %28 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %29 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %28, i32 0, i32 1
  %30 = load %struct.extent_buffer**, %struct.extent_buffer*** %29, align 8
  %31 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %30, i64 0
  %32 = load %struct.extent_buffer*, %struct.extent_buffer** %31, align 8
  store %struct.extent_buffer* %32, %struct.extent_buffer** %12, align 8
  %33 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %34, %35
  %37 = sub nsw i32 %36, 1
  %38 = call i32 @btrfs_item_offset_nr(%struct.extent_buffer* %33, i32 %37)
  store i32 %38, i32* %14, align 4
  store i32 0, i32* %18, align 4
  br label %39

39:                                               ; preds = %53, %5
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %18, align 4
  %47 = add nsw i32 %45, %46
  %48 = call i64 @btrfs_item_size_nr(%struct.extent_buffer* %44, i32 %47)
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %15, align 4
  br label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %18, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %18, align 4
  br label %39

56:                                               ; preds = %39
  %57 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %58 = call i64 @btrfs_header_nritems(%struct.extent_buffer* %57)
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %19, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* %19, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %122

65:                                               ; preds = %56
  %66 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %67 = call i32 @leaf_data_end(%struct.extent_buffer* %66)
  store i32 %67, i32* %20, align 4
  %68 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %69 = load i32, i32* @BTRFS_LEAF_DATA_OFFSET, align 4
  %70 = load i32, i32* %20, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* %15, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32, i32* @BTRFS_LEAF_DATA_OFFSET, align 4
  %75 = load i32, i32* %20, align 4
  %76 = add nsw i32 %74, %75
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %20, align 4
  %79 = sub nsw i32 %77, %78
  %80 = call i32 @memmove_extent_buffer(%struct.extent_buffer* %68, i32 %73, i32 %76, i32 %79)
  %81 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %82 = call i32 @btrfs_init_map_token(%struct.btrfs_map_token* %21, %struct.extent_buffer* %81)
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %83, %84
  store i32 %85, i32* %18, align 4
  br label %86

86:                                               ; preds = %102, %65
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %19, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %86
  %91 = load i32, i32* %18, align 4
  %92 = call %struct.btrfs_item* @btrfs_item_nr(i32 %91)
  store %struct.btrfs_item* %92, %struct.btrfs_item** %13, align 8
  %93 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %94 = load %struct.btrfs_item*, %struct.btrfs_item** %13, align 8
  %95 = call i32 @btrfs_token_item_offset(%struct.extent_buffer* %93, %struct.btrfs_item* %94, %struct.btrfs_map_token* %21)
  store i32 %95, i32* %22, align 4
  %96 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %97 = load %struct.btrfs_item*, %struct.btrfs_item** %13, align 8
  %98 = load i32, i32* %22, align 4
  %99 = load i32, i32* %15, align 4
  %100 = add nsw i32 %98, %99
  %101 = call i32 @btrfs_set_token_item_offset(%struct.extent_buffer* %96, %struct.btrfs_item* %97, i32 %100, %struct.btrfs_map_token* %21)
  br label %102

102:                                              ; preds = %90
  %103 = load i32, i32* %18, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %18, align 4
  br label %86

105:                                              ; preds = %86
  %106 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @btrfs_item_nr_offset(i32 %107)
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %109, %110
  %112 = call i32 @btrfs_item_nr_offset(i32 %111)
  %113 = load i32, i32* %19, align 4
  %114 = load i32, i32* %9, align 4
  %115 = sub nsw i32 %113, %114
  %116 = load i32, i32* %10, align 4
  %117 = sub nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = mul i64 4, %118
  %120 = trunc i64 %119 to i32
  %121 = call i32 @memmove_extent_buffer(%struct.extent_buffer* %106, i32 %108, i32 %112, i32 %120)
  br label %122

122:                                              ; preds = %105, %56
  %123 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* %10, align 4
  %126 = sub nsw i32 %124, %125
  %127 = call i32 @btrfs_set_header_nritems(%struct.extent_buffer* %123, i32 %126)
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %19, align 4
  %130 = sub nsw i32 %129, %128
  store i32 %130, i32* %19, align 4
  %131 = load i32, i32* %19, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %153

133:                                              ; preds = %122
  %134 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %135 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %136 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %135, i32 0, i32 0
  %137 = load %struct.extent_buffer*, %struct.extent_buffer** %136, align 8
  %138 = icmp eq %struct.extent_buffer* %134, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %141 = call i32 @btrfs_set_header_level(%struct.extent_buffer* %140, i32 0)
  br label %152

142:                                              ; preds = %133
  %143 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %144 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %143)
  %145 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %146 = call i32 @btrfs_clean_tree_block(%struct.extent_buffer* %145)
  %147 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %148 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %149 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %150 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %151 = call i32 @btrfs_del_leaf(%struct.btrfs_trans_handle* %147, %struct.btrfs_root* %148, %struct.btrfs_path* %149, %struct.extent_buffer* %150)
  br label %152

152:                                              ; preds = %142, %139
  br label %256

153:                                              ; preds = %122
  %154 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %155 = load i32, i32* %19, align 4
  %156 = call i32 @leaf_space_used(%struct.extent_buffer* %154, i32 0, i32 %155)
  store i32 %156, i32* %23, align 4
  %157 = load i32, i32* %9, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %153
  %160 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %161 = call i32 @btrfs_item_key(%struct.extent_buffer* %160, %struct.btrfs_disk_key* %24, i32 0)
  %162 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %163 = call i32 @fixup_low_keys(%struct.btrfs_path* %162, %struct.btrfs_disk_key* %24, i32 1)
  br label %164

164:                                              ; preds = %159, %153
  %165 = load i32, i32* %23, align 4
  %166 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %167 = call i32 @BTRFS_LEAF_DATA_SIZE(%struct.btrfs_fs_info* %166)
  %168 = sdiv i32 %167, 3
  %169 = icmp slt i32 %165, %168
  br i1 %169, label %170, label %252

170:                                              ; preds = %164
  %171 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %172 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %9, align 4
  %176 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %177 = call i32 @extent_buffer_get(%struct.extent_buffer* %176)
  %178 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %179 = call i32 @btrfs_set_path_blocking(%struct.btrfs_path* %178)
  %180 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %181 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %182 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %183 = call i32 @push_leaf_left(%struct.btrfs_trans_handle* %180, %struct.btrfs_root* %181, %struct.btrfs_path* %182, i32 1, i32 1, i32 1, i32 -1)
  store i32 %183, i32* %17, align 4
  %184 = load i32, i32* %17, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %170
  %187 = load i32, i32* %17, align 4
  %188 = load i32, i32* @ENOSPC, align 4
  %189 = sub nsw i32 0, %188
  %190 = icmp ne i32 %187, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = load i32, i32* %17, align 4
  store i32 %192, i32* %16, align 4
  br label %193

193:                                              ; preds = %191, %186, %170
  %194 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %195 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %194, i32 0, i32 1
  %196 = load %struct.extent_buffer**, %struct.extent_buffer*** %195, align 8
  %197 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %196, i64 0
  %198 = load %struct.extent_buffer*, %struct.extent_buffer** %197, align 8
  %199 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %200 = icmp eq %struct.extent_buffer* %198, %199
  br i1 %200, label %201, label %220

201:                                              ; preds = %193
  %202 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %203 = call i64 @btrfs_header_nritems(%struct.extent_buffer* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %220

205:                                              ; preds = %201
  %206 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %207 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %208 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %209 = call i32 @push_leaf_right(%struct.btrfs_trans_handle* %206, %struct.btrfs_root* %207, %struct.btrfs_path* %208, i32 1, i32 1, i32 1, i32 0)
  store i32 %209, i32* %17, align 4
  %210 = load i32, i32* %17, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %205
  %213 = load i32, i32* %17, align 4
  %214 = load i32, i32* @ENOSPC, align 4
  %215 = sub nsw i32 0, %214
  %216 = icmp ne i32 %213, %215
  br i1 %216, label %217, label %219

217:                                              ; preds = %212
  %218 = load i32, i32* %17, align 4
  store i32 %218, i32* %16, align 4
  br label %219

219:                                              ; preds = %217, %212, %205
  br label %220

220:                                              ; preds = %219, %201, %193
  %221 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %222 = call i64 @btrfs_header_nritems(%struct.extent_buffer* %221)
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %237

224:                                              ; preds = %220
  %225 = load i32, i32* %9, align 4
  %226 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %227 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 1
  store i32 %225, i32* %229, align 4
  %230 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %231 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %232 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %233 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %234 = call i32 @btrfs_del_leaf(%struct.btrfs_trans_handle* %230, %struct.btrfs_root* %231, %struct.btrfs_path* %232, %struct.extent_buffer* %233)
  %235 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %236 = call i32 @free_extent_buffer(%struct.extent_buffer* %235)
  store i32 0, i32* %16, align 4
  br label %251

237:                                              ; preds = %220
  %238 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %239 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %238, i32 0, i32 1
  %240 = load %struct.extent_buffer**, %struct.extent_buffer*** %239, align 8
  %241 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %240, i64 0
  %242 = load %struct.extent_buffer*, %struct.extent_buffer** %241, align 8
  %243 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %244 = icmp eq %struct.extent_buffer* %242, %243
  br i1 %244, label %245, label %248

245:                                              ; preds = %237
  %246 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %247 = call i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer* %246)
  br label %248

248:                                              ; preds = %245, %237
  %249 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %250 = call i32 @free_extent_buffer(%struct.extent_buffer* %249)
  br label %251

251:                                              ; preds = %248, %224
  br label %255

252:                                              ; preds = %164
  %253 = load %struct.extent_buffer*, %struct.extent_buffer** %12, align 8
  %254 = call i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer* %253)
  br label %255

255:                                              ; preds = %252, %251
  br label %256

256:                                              ; preds = %255, %152
  %257 = load i32, i32* %16, align 4
  ret i32 %257
}

declare dso_local i32 @btrfs_item_offset_nr(%struct.extent_buffer*, i32) #1

declare dso_local i64 @btrfs_item_size_nr(%struct.extent_buffer*, i32) #1

declare dso_local i64 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @leaf_data_end(%struct.extent_buffer*) #1

declare dso_local i32 @memmove_extent_buffer(%struct.extent_buffer*, i32, i32, i32) #1

declare dso_local i32 @btrfs_init_map_token(%struct.btrfs_map_token*, %struct.extent_buffer*) #1

declare dso_local %struct.btrfs_item* @btrfs_item_nr(i32) #1

declare dso_local i32 @btrfs_token_item_offset(%struct.extent_buffer*, %struct.btrfs_item*, %struct.btrfs_map_token*) #1

declare dso_local i32 @btrfs_set_token_item_offset(%struct.extent_buffer*, %struct.btrfs_item*, i32, %struct.btrfs_map_token*) #1

declare dso_local i32 @btrfs_item_nr_offset(i32) #1

declare dso_local i32 @btrfs_set_header_nritems(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_set_header_level(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_set_path_blocking(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_clean_tree_block(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_del_leaf(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.extent_buffer*) #1

declare dso_local i32 @leaf_space_used(%struct.extent_buffer*, i32, i32) #1

declare dso_local i32 @btrfs_item_key(%struct.extent_buffer*, %struct.btrfs_disk_key*, i32) #1

declare dso_local i32 @fixup_low_keys(%struct.btrfs_path*, %struct.btrfs_disk_key*, i32) #1

declare dso_local i32 @BTRFS_LEAF_DATA_SIZE(%struct.btrfs_fs_info*) #1

declare dso_local i32 @extent_buffer_get(%struct.extent_buffer*) #1

declare dso_local i32 @push_leaf_left(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i32, i32, i32, i32) #1

declare dso_local i32 @push_leaf_right(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i32, i32, i32, i32) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
