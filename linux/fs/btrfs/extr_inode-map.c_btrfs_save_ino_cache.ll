; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode-map.c_btrfs_save_ino_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode-map.c_btrfs_save_ino_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i64, i32, i32, %struct.TYPE_5__, %struct.btrfs_free_space_ctl*, %struct.btrfs_fs_info* }
%struct.TYPE_5__ = type { i64 }
%struct.btrfs_free_space_ctl = type { i32, i32, i32 }
%struct.btrfs_fs_info = type { %struct.btrfs_block_rsv }
%struct.btrfs_block_rsv = type { i32 }
%struct.btrfs_trans_handle = type { i32, %struct.btrfs_block_rsv*, i32 }
%struct.btrfs_path = type { i32 }
%struct.inode = type { i32 }
%struct.extent_changeset = type { i32 }
%struct.TYPE_6__ = type { i64 }

@BTRFS_FS_TREE_OBJECTID = common dso_local global i64 0, align 8
@BTRFS_FIRST_FREE_OBJECTID = common dso_local global i64 0, align 8
@BTRFS_LAST_FREE_OBJECTID = common dso_local global i64 0, align 8
@INODE_MAP_CACHE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_RESERVE_NO_FLUSH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ino_cache\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@BTRFS_CACHE_FINISHED = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_save_ino_cache(%struct.btrfs_root* %0, %struct.btrfs_trans_handle* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca %struct.btrfs_free_space_ctl*, align 8
  %8 = alloca %struct.btrfs_path*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.btrfs_block_rsv*, align 8
  %11 = alloca %struct.extent_changeset*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %4, align 8
  store %struct.btrfs_trans_handle* %1, %struct.btrfs_trans_handle** %5, align 8
  %17 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %18 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %17, i32 0, i32 5
  %19 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %18, align 8
  store %struct.btrfs_fs_info* %19, %struct.btrfs_fs_info** %6, align 8
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %21 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %20, i32 0, i32 4
  %22 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %21, align 8
  store %struct.btrfs_free_space_ctl* %22, %struct.btrfs_free_space_ctl** %7, align 8
  store %struct.extent_changeset* null, %struct.extent_changeset** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %23 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %24 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @BTRFS_FS_TREE_OBJECTID, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %2
  %30 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %31 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @BTRFS_FIRST_FREE_OBJECTID, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %38 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BTRFS_LAST_FREE_OBJECTID, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36, %29
  store i32 0, i32* %3, align 4
  br label %277

44:                                               ; preds = %36, %2
  %45 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %46 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %45, i32 0, i32 2
  %47 = call i64 @btrfs_root_refs(i32* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %277

50:                                               ; preds = %44
  %51 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %52 = load i32, i32* @INODE_MAP_CACHE, align 4
  %53 = call i32 @btrfs_test_opt(%struct.btrfs_fs_info* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %277

56:                                               ; preds = %50
  %57 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %57, %struct.btrfs_path** %8, align 8
  %58 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %59 = icmp ne %struct.btrfs_path* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %277

63:                                               ; preds = %56
  %64 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %65 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %64, i32 0, i32 1
  %66 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %65, align 8
  store %struct.btrfs_block_rsv* %66, %struct.btrfs_block_rsv** %10, align 8
  %67 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %68 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %67, i32 0, i32 0
  %69 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %70 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %69, i32 0, i32 1
  store %struct.btrfs_block_rsv* %68, %struct.btrfs_block_rsv** %70, align 8
  %71 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %72 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %12, align 4
  %74 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %75 = call i32 @btrfs_calc_insert_metadata_size(%struct.btrfs_fs_info* %74, i32 10)
  %76 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %77 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %79 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %80 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %79, i32 0, i32 1
  %81 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %80, align 8
  %82 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %83 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @BTRFS_RESERVE_NO_FLUSH, align 4
  %86 = call i32 @btrfs_block_rsv_add(%struct.btrfs_root* %78, %struct.btrfs_block_rsv* %81, i32 %84, i32 %85)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %63
  br label %265

90:                                               ; preds = %63
  %91 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %92 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %93 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %96 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @trace_btrfs_space_reservation(%struct.btrfs_fs_info* %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %97, i32 1)
  br label %99

99:                                               ; preds = %132, %90
  %100 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %101 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %102 = call %struct.inode* @lookup_free_ino_inode(%struct.btrfs_root* %100, %struct.btrfs_path* %101)
  store %struct.inode* %102, %struct.inode** %9, align 8
  %103 = load %struct.inode*, %struct.inode** %9, align 8
  %104 = call i64 @IS_ERR(%struct.inode* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %99
  %107 = load %struct.inode*, %struct.inode** %9, align 8
  %108 = call i32 @PTR_ERR(%struct.inode* %107)
  %109 = load i32, i32* @ENOENT, align 4
  %110 = sub nsw i32 0, %109
  %111 = icmp ne i32 %108, %110
  br i1 %111, label %115, label %112

112:                                              ; preds = %106
  %113 = load i32, i32* %16, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112, %106
  %116 = load %struct.inode*, %struct.inode** %9, align 8
  %117 = call i32 @PTR_ERR(%struct.inode* %116)
  store i32 %117, i32* %14, align 4
  br label %248

118:                                              ; preds = %112, %99
  %119 = load %struct.inode*, %struct.inode** %9, align 8
  %120 = call i64 @IS_ERR(%struct.inode* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %133

122:                                              ; preds = %118
  %123 = load i32, i32* %16, align 4
  %124 = call i32 @BUG_ON(i32 %123)
  store i32 1, i32* %16, align 4
  %125 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %126 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %127 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %128 = call i32 @create_free_ino_inode(%struct.btrfs_root* %125, %struct.btrfs_trans_handle* %126, %struct.btrfs_path* %127)
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  br label %248

132:                                              ; preds = %122
  br label %99

133:                                              ; preds = %118
  %134 = load %struct.inode*, %struct.inode** %9, align 8
  %135 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %134)
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  store i64 0, i64* %136, align 8
  %137 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %138 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %139 = load %struct.inode*, %struct.inode** %9, align 8
  %140 = call i32 @btrfs_update_inode(%struct.btrfs_trans_handle* %137, %struct.btrfs_root* %138, %struct.inode* %139)
  store i32 %140, i32* %14, align 4
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %133
  %144 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %145 = load i32, i32* %14, align 4
  %146 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %144, i32 %145)
  br label %245

147:                                              ; preds = %133
  %148 = load %struct.inode*, %struct.inode** %9, align 8
  %149 = call i64 @i_size_read(%struct.inode* %148)
  %150 = icmp sgt i64 %149, 0
  br i1 %150, label %151, label %168

151:                                              ; preds = %147
  %152 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %153 = load %struct.inode*, %struct.inode** %9, align 8
  %154 = call i32 @btrfs_truncate_free_space_cache(%struct.btrfs_trans_handle* %152, i32* null, %struct.inode* %153)
  store i32 %154, i32* %14, align 4
  %155 = load i32, i32* %14, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %151
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* @ENOSPC, align 4
  %160 = sub nsw i32 0, %159
  %161 = icmp ne i32 %158, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %164 = load i32, i32* %14, align 4
  %165 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %163, i32 %164)
  br label %166

166:                                              ; preds = %162, %157
  br label %245

167:                                              ; preds = %151
  br label %168

168:                                              ; preds = %167, %147
  %169 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %170 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %169, i32 0, i32 1
  %171 = call i32 @spin_lock(i32* %170)
  %172 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %173 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @BTRFS_CACHE_FINISHED, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %168
  store i32 -1, i32* %14, align 4
  %178 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %179 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %178, i32 0, i32 1
  %180 = call i32 @spin_unlock(i32* %179)
  br label %245

181:                                              ; preds = %168
  %182 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %183 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %182, i32 0, i32 1
  %184 = call i32 @spin_unlock(i32* %183)
  %185 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %7, align 8
  %186 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %185, i32 0, i32 2
  %187 = call i32 @spin_lock(i32* %186)
  %188 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %7, align 8
  %189 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = sext i32 %190 to i64
  %192 = mul i64 4, %191
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %15, align 4
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* @PAGE_SIZE, align 4
  %196 = call i32 @ALIGN(i32 %194, i32 %195)
  store i32 %196, i32* %15, align 4
  %197 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %7, align 8
  %198 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @PAGE_SIZE, align 4
  %201 = mul nsw i32 %199, %200
  %202 = load i32, i32* %15, align 4
  %203 = add nsw i32 %202, %201
  store i32 %203, i32* %15, align 4
  %204 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %7, align 8
  %205 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %204, i32 0, i32 2
  %206 = call i32 @spin_unlock(i32* %205)
  %207 = load i32, i32* @PAGE_SIZE, align 4
  %208 = mul nsw i32 8, %207
  %209 = load i32, i32* %15, align 4
  %210 = add nsw i32 %209, %208
  store i32 %210, i32* %15, align 4
  %211 = load %struct.inode*, %struct.inode** %9, align 8
  %212 = load i32, i32* %15, align 4
  %213 = call i32 @btrfs_delalloc_reserve_space(%struct.inode* %211, %struct.extent_changeset** %11, i32 0, i32 %212)
  store i32 %213, i32* %14, align 4
  %214 = load i32, i32* %14, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %181
  br label %245

217:                                              ; preds = %181
  %218 = load %struct.inode*, %struct.inode** %9, align 8
  %219 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %220 = load i32, i32* %15, align 4
  %221 = load i32, i32* %15, align 4
  %222 = load i32, i32* %15, align 4
  %223 = call i32 @btrfs_prealloc_file_range_trans(%struct.inode* %218, %struct.btrfs_trans_handle* %219, i32 0, i32 0, i32 %220, i32 %221, i32 %222, i32* %13)
  store i32 %223, i32* %14, align 4
  %224 = load i32, i32* %14, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %217
  %227 = load %struct.inode*, %struct.inode** %9, align 8
  %228 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %227)
  %229 = load i32, i32* %15, align 4
  %230 = call i32 @btrfs_delalloc_release_extents(%struct.TYPE_6__* %228, i32 %229)
  %231 = load %struct.inode*, %struct.inode** %9, align 8
  %232 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %231)
  %233 = load i32, i32* %15, align 4
  %234 = call i32 @btrfs_delalloc_release_metadata(%struct.TYPE_6__* %232, i32 %233, i32 1)
  br label %245

235:                                              ; preds = %217
  %236 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %237 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %238 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %239 = load %struct.inode*, %struct.inode** %9, align 8
  %240 = call i32 @btrfs_write_out_ino_cache(%struct.btrfs_root* %236, %struct.btrfs_trans_handle* %237, %struct.btrfs_path* %238, %struct.inode* %239)
  store i32 %240, i32* %14, align 4
  %241 = load %struct.inode*, %struct.inode** %9, align 8
  %242 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %241)
  %243 = load i32, i32* %15, align 4
  %244 = call i32 @btrfs_delalloc_release_extents(%struct.TYPE_6__* %242, i32 %243)
  br label %245

245:                                              ; preds = %235, %226, %216, %177, %166, %143
  %246 = load %struct.inode*, %struct.inode** %9, align 8
  %247 = call i32 @iput(%struct.inode* %246)
  br label %248

248:                                              ; preds = %245, %131, %115
  %249 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %250 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %251 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %254 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @trace_btrfs_space_reservation(%struct.btrfs_fs_info* %249, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %252, i32 %255, i32 0)
  %257 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %258 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %259 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %258, i32 0, i32 1
  %260 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %259, align 8
  %261 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %262 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @btrfs_block_rsv_release(%struct.btrfs_fs_info* %257, %struct.btrfs_block_rsv* %260, i32 %263)
  br label %265

265:                                              ; preds = %248, %89
  %266 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %10, align 8
  %267 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %268 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %267, i32 0, i32 1
  store %struct.btrfs_block_rsv* %266, %struct.btrfs_block_rsv** %268, align 8
  %269 = load i32, i32* %12, align 4
  %270 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %271 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %270, i32 0, i32 0
  store i32 %269, i32* %271, align 8
  %272 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %273 = call i32 @btrfs_free_path(%struct.btrfs_path* %272)
  %274 = load %struct.extent_changeset*, %struct.extent_changeset** %11, align 8
  %275 = call i32 @extent_changeset_free(%struct.extent_changeset* %274)
  %276 = load i32, i32* %14, align 4
  store i32 %276, i32* %3, align 4
  br label %277

277:                                              ; preds = %265, %60, %55, %49, %43
  %278 = load i32, i32* %3, align 4
  ret i32 %278
}

declare dso_local i64 @btrfs_root_refs(i32*) #1

declare dso_local i32 @btrfs_test_opt(%struct.btrfs_fs_info*, i32) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_calc_insert_metadata_size(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @btrfs_block_rsv_add(%struct.btrfs_root*, %struct.btrfs_block_rsv*, i32, i32) #1

declare dso_local i32 @trace_btrfs_space_reservation(%struct.btrfs_fs_info*, i8*, i32, i32, i32) #1

declare dso_local %struct.inode* @lookup_free_ino_inode(%struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @create_free_ino_inode(%struct.btrfs_root*, %struct.btrfs_trans_handle*, %struct.btrfs_path*) #1

declare dso_local %struct.TYPE_6__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_update_inode(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*) #1

declare dso_local i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle*, i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @btrfs_truncate_free_space_cache(%struct.btrfs_trans_handle*, i32*, %struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @btrfs_delalloc_reserve_space(%struct.inode*, %struct.extent_changeset**, i32, i32) #1

declare dso_local i32 @btrfs_prealloc_file_range_trans(%struct.inode*, %struct.btrfs_trans_handle*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @btrfs_delalloc_release_extents(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @btrfs_delalloc_release_metadata(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @btrfs_write_out_ino_cache(%struct.btrfs_root*, %struct.btrfs_trans_handle*, %struct.btrfs_path*, %struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @btrfs_block_rsv_release(%struct.btrfs_fs_info*, %struct.btrfs_block_rsv*, i32) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

declare dso_local i32 @extent_changeset_free(%struct.extent_changeset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
