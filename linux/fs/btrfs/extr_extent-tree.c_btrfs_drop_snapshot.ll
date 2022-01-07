; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent-tree.c_btrfs_drop_snapshot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent-tree.c_btrfs_drop_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32, i32, i32, %struct.TYPE_9__, %struct.btrfs_root_item, %struct.btrfs_fs_info* }
%struct.TYPE_9__ = type { i32 }
%struct.btrfs_root_item = type { i32, i32 }
%struct.btrfs_fs_info = type { %struct.btrfs_root* }
%struct.btrfs_block_rsv = type { i32 }
%struct.btrfs_path = type { i32, i64*, %struct.TYPE_10__**, i8** }
%struct.TYPE_10__ = type { i32 }
%struct.btrfs_trans_handle = type { %struct.btrfs_block_rsv* }
%struct.walk_control = type { i32*, i32, i32, i64, i32, i64, i32, i32, i64, i64, i32*, i32 }
%struct.btrfs_key = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Drop subvolume %llu\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@BTRFS_ROOT_DELETING = common dso_local global i32 0, align 4
@BTRFS_WRITE_LOCK_BLOCKING = common dso_local global i8* null, align 8
@BTRFS_ROOT_DEAD_TREE = common dso_local global i32 0, align 4
@DROP_REFERENCE = common dso_local global i64 0, align 8
@BTRFS_MAX_LEVEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"drop snapshot early exit\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@BTRFS_TREE_RELOC_OBJECTID = common dso_local global i32 0, align 4
@BTRFS_ROOT_IN_RADIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_drop_snapshot(%struct.btrfs_root* %0, %struct.btrfs_block_rsv* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca %struct.btrfs_block_rsv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_fs_info*, align 8
  %10 = alloca %struct.btrfs_path*, align 8
  %11 = alloca %struct.btrfs_trans_handle*, align 8
  %12 = alloca %struct.btrfs_root*, align 8
  %13 = alloca %struct.btrfs_root_item*, align 8
  %14 = alloca %struct.walk_control*, align 8
  %15 = alloca %struct.btrfs_key, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %5, align 8
  store %struct.btrfs_block_rsv* %1, %struct.btrfs_block_rsv** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %21 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %20, i32 0, i32 5
  %22 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %21, align 8
  store %struct.btrfs_fs_info* %22, %struct.btrfs_fs_info** %9, align 8
  %23 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %24 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %23, i32 0, i32 0
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %24, align 8
  store %struct.btrfs_root* %25, %struct.btrfs_root** %12, align 8
  %26 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %27 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %26, i32 0, i32 4
  store %struct.btrfs_root_item* %27, %struct.btrfs_root_item** %13, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %19, align 4
  %28 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %30 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (%struct.btrfs_fs_info*, i8*, ...) @btrfs_debug(%struct.btrfs_fs_info* %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %34, %struct.btrfs_path** %10, align 8
  %35 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %36 = icmp ne %struct.btrfs_path* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %4
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %16, align 4
  br label %496

40:                                               ; preds = %4
  %41 = load i32, i32* @GFP_NOFS, align 4
  %42 = call %struct.walk_control* @kzalloc(i32 80, i32 %41)
  store %struct.walk_control* %42, %struct.walk_control** %14, align 8
  %43 = load %struct.walk_control*, %struct.walk_control** %14, align 8
  %44 = icmp ne %struct.walk_control* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %47 = call i32 @btrfs_free_path(%struct.btrfs_path* %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %16, align 4
  br label %496

50:                                               ; preds = %40
  %51 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %52 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %51, i32 0)
  store %struct.btrfs_trans_handle* %52, %struct.btrfs_trans_handle** %11, align 8
  %53 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %54 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %58 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %57)
  store i32 %58, i32* %16, align 4
  br label %491

59:                                               ; preds = %50
  %60 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %61 = call i32 @btrfs_run_delayed_items(%struct.btrfs_trans_handle* %60)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %488

65:                                               ; preds = %59
  %66 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %6, align 8
  %67 = icmp ne %struct.btrfs_block_rsv* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %6, align 8
  %70 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %71 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %70, i32 0, i32 0
  store %struct.btrfs_block_rsv* %69, %struct.btrfs_block_rsv** %71, align 8
  br label %72

72:                                               ; preds = %68, %65
  %73 = load i32, i32* @BTRFS_ROOT_DELETING, align 4
  %74 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %75 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %74, i32 0, i32 2
  %76 = call i32 @set_bit(i32 %73, i32* %75)
  %77 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %13, align 8
  %78 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %77, i32 0, i32 1
  %79 = call i64 @btrfs_disk_key_objectid(i32* %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %118

81:                                               ; preds = %72
  %82 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %83 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @btrfs_header_level(i32 %84)
  store i32 %85, i32* %18, align 4
  %86 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %87 = call %struct.TYPE_10__* @btrfs_lock_root_node(%struct.btrfs_root* %86)
  %88 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %89 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %88, i32 0, i32 2
  %90 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %89, align 8
  %91 = load i32, i32* %18, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %90, i64 %92
  store %struct.TYPE_10__* %87, %struct.TYPE_10__** %93, align 8
  %94 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %95 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %94, i32 0, i32 2
  %96 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %95, align 8
  %97 = load i32, i32* %18, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %96, i64 %98
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = call i32 @btrfs_set_lock_blocking_write(%struct.TYPE_10__* %100)
  %102 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %103 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %102, i32 0, i32 1
  %104 = load i64*, i64** %103, align 8
  %105 = load i32, i32* %18, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  store i64 0, i64* %107, align 8
  %108 = load i8*, i8** @BTRFS_WRITE_LOCK_BLOCKING, align 8
  %109 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %110 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %109, i32 0, i32 3
  %111 = load i8**, i8*** %110, align 8
  %112 = load i32, i32* %18, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  store i8* %108, i8** %114, align 8
  %115 = load %struct.walk_control*, %struct.walk_control** %14, align 8
  %116 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %115, i32 0, i32 11
  %117 = call i32 @memset(i32* %116, i32 0, i32 4)
  br label %253

118:                                              ; preds = %72
  %119 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %13, align 8
  %120 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %119, i32 0, i32 1
  %121 = call i32 @btrfs_disk_key_to_cpu(%struct.btrfs_key* %15, i32* %120)
  %122 = load %struct.walk_control*, %struct.walk_control** %14, align 8
  %123 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %122, i32 0, i32 11
  %124 = call i32 @memcpy(i32* %123, %struct.btrfs_key* %15, i32 4)
  %125 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %13, align 8
  %126 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %18, align 4
  %128 = load i32, i32* %18, align 4
  %129 = icmp eq i32 %128, 0
  %130 = zext i1 %129 to i32
  %131 = call i32 @BUG_ON(i32 %130)
  %132 = load i32, i32* %18, align 4
  %133 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %134 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %136 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %137 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %135, %struct.btrfs_key* %15, %struct.btrfs_path* %136, i32 0, i32 0)
  store i32 %137, i32* %17, align 4
  %138 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %139 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %138, i32 0, i32 0
  store i32 0, i32* %139, align 8
  %140 = load i32, i32* %17, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %118
  %143 = load i32, i32* %17, align 4
  store i32 %143, i32* %16, align 4
  br label %488

144:                                              ; preds = %118
  %145 = load i32, i32* %17, align 4
  %146 = icmp sgt i32 %145, 0
  %147 = zext i1 %146 to i32
  %148 = call i32 @WARN_ON(i32 %147)
  %149 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %150 = call i32 @btrfs_unlock_up_safe(%struct.btrfs_path* %149, i32 0)
  %151 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %152 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @btrfs_header_level(i32 %153)
  store i32 %154, i32* %18, align 4
  br label %155

155:                                              ; preds = %144, %225
  %156 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %157 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %156, i32 0, i32 2
  %158 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %157, align 8
  %159 = load i32, i32* %18, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %158, i64 %160
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = call i32 @btrfs_tree_lock(%struct.TYPE_10__* %162)
  %164 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %165 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %164, i32 0, i32 2
  %166 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %165, align 8
  %167 = load i32, i32* %18, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %166, i64 %168
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %169, align 8
  %171 = call i32 @btrfs_set_lock_blocking_write(%struct.TYPE_10__* %170)
  %172 = load i8*, i8** @BTRFS_WRITE_LOCK_BLOCKING, align 8
  %173 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %174 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %173, i32 0, i32 3
  %175 = load i8**, i8*** %174, align 8
  %176 = load i32, i32* %18, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8*, i8** %175, i64 %177
  store i8* %172, i8** %178, align 8
  %179 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %180 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %181 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %182 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %181, i32 0, i32 2
  %183 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %182, align 8
  %184 = load i32, i32* %18, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %183, i64 %185
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %18, align 4
  %191 = load %struct.walk_control*, %struct.walk_control** %14, align 8
  %192 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %18, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load %struct.walk_control*, %struct.walk_control** %14, align 8
  %198 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %197, i32 0, i32 10
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %18, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = call i32 @btrfs_lookup_extent_info(%struct.btrfs_trans_handle* %179, %struct.btrfs_fs_info* %180, i32 %189, i32 %190, i32 1, i32* %196, i32* %202)
  store i32 %203, i32* %17, align 4
  %204 = load i32, i32* %17, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %155
  %207 = load i32, i32* %17, align 4
  store i32 %207, i32* %16, align 4
  br label %488

208:                                              ; preds = %155
  %209 = load %struct.walk_control*, %struct.walk_control** %14, align 8
  %210 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %18, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %215, 0
  %217 = zext i1 %216 to i32
  %218 = call i32 @BUG_ON(i32 %217)
  %219 = load i32, i32* %18, align 4
  %220 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %13, align 8
  %221 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = icmp eq i32 %219, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %208
  br label %252

225:                                              ; preds = %208
  %226 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %227 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %226, i32 0, i32 2
  %228 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %227, align 8
  %229 = load i32, i32* %18, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %228, i64 %230
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %231, align 8
  %233 = call i32 @btrfs_tree_unlock(%struct.TYPE_10__* %232)
  %234 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %235 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %234, i32 0, i32 3
  %236 = load i8**, i8*** %235, align 8
  %237 = load i32, i32* %18, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8*, i8** %236, i64 %238
  store i8* null, i8** %239, align 8
  %240 = load %struct.walk_control*, %struct.walk_control** %14, align 8
  %241 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %18, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 1
  %248 = zext i1 %247 to i32
  %249 = call i32 @WARN_ON(i32 %248)
  %250 = load i32, i32* %18, align 4
  %251 = add nsw i32 %250, -1
  store i32 %251, i32* %18, align 4
  br label %155

252:                                              ; preds = %224
  br label %253

253:                                              ; preds = %252, %81
  %254 = load i32, i32* @BTRFS_ROOT_DEAD_TREE, align 4
  %255 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %256 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %255, i32 0, i32 2
  %257 = call i64 @test_bit(i32 %254, i32* %256)
  %258 = load %struct.walk_control*, %struct.walk_control** %14, align 8
  %259 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %258, i32 0, i32 9
  store i64 %257, i64* %259, align 8
  %260 = load i32, i32* %18, align 4
  %261 = load %struct.walk_control*, %struct.walk_control** %14, align 8
  %262 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %261, i32 0, i32 1
  store i32 %260, i32* %262, align 8
  %263 = load %struct.walk_control*, %struct.walk_control** %14, align 8
  %264 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %263, i32 0, i32 2
  store i32 -1, i32* %264, align 4
  %265 = load i64, i64* @DROP_REFERENCE, align 8
  %266 = load %struct.walk_control*, %struct.walk_control** %14, align 8
  %267 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %266, i32 0, i32 3
  store i64 %265, i64* %267, align 8
  %268 = load i32, i32* %7, align 4
  %269 = load %struct.walk_control*, %struct.walk_control** %14, align 8
  %270 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %269, i32 0, i32 4
  store i32 %268, i32* %270, align 8
  %271 = load %struct.walk_control*, %struct.walk_control** %14, align 8
  %272 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %271, i32 0, i32 8
  store i64 0, i64* %272, align 8
  %273 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %274 = call i32 @BTRFS_NODEPTRS_PER_BLOCK(%struct.btrfs_fs_info* %273)
  %275 = load %struct.walk_control*, %struct.walk_control** %14, align 8
  %276 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %275, i32 0, i32 7
  store i32 %274, i32* %276, align 4
  br label %277

277:                                              ; preds = %253, %414
  %278 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %279 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %280 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %281 = load %struct.walk_control*, %struct.walk_control** %14, align 8
  %282 = call i32 @walk_down_tree(%struct.btrfs_trans_handle* %278, %struct.btrfs_root* %279, %struct.btrfs_path* %280, %struct.walk_control* %281)
  store i32 %282, i32* %17, align 4
  %283 = load i32, i32* %17, align 4
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %277
  %286 = load i32, i32* %17, align 4
  store i32 %286, i32* %16, align 4
  br label %415

287:                                              ; preds = %277
  %288 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %289 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %290 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %291 = load %struct.walk_control*, %struct.walk_control** %14, align 8
  %292 = load i32, i32* @BTRFS_MAX_LEVEL, align 4
  %293 = call i32 @walk_up_tree(%struct.btrfs_trans_handle* %288, %struct.btrfs_root* %289, %struct.btrfs_path* %290, %struct.walk_control* %291, i32 %292)
  store i32 %293, i32* %17, align 4
  %294 = load i32, i32* %17, align 4
  %295 = icmp slt i32 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %287
  %297 = load i32, i32* %17, align 4
  store i32 %297, i32* %16, align 4
  br label %415

298:                                              ; preds = %287
  %299 = load i32, i32* %17, align 4
  %300 = icmp sgt i32 %299, 0
  br i1 %300, label %301, label %309

301:                                              ; preds = %298
  %302 = load %struct.walk_control*, %struct.walk_control** %14, align 8
  %303 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %302, i32 0, i32 3
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @DROP_REFERENCE, align 8
  %306 = icmp ne i64 %304, %305
  %307 = zext i1 %306 to i32
  %308 = call i32 @BUG_ON(i32 %307)
  br label %415

309:                                              ; preds = %298
  %310 = load %struct.walk_control*, %struct.walk_control** %14, align 8
  %311 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %310, i32 0, i32 3
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @DROP_REFERENCE, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %341

315:                                              ; preds = %309
  %316 = load %struct.walk_control*, %struct.walk_control** %14, align 8
  %317 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 8
  %319 = sext i32 %318 to i64
  %320 = load %struct.walk_control*, %struct.walk_control** %14, align 8
  %321 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %320, i32 0, i32 5
  store i64 %319, i64* %321, align 8
  %322 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %323 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %322, i32 0, i32 2
  %324 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %323, align 8
  %325 = load %struct.walk_control*, %struct.walk_control** %14, align 8
  %326 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %325, i32 0, i32 5
  %327 = load i64, i64* %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %324, i64 %327
  %329 = load %struct.TYPE_10__*, %struct.TYPE_10__** %328, align 8
  %330 = load %struct.walk_control*, %struct.walk_control** %14, align 8
  %331 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %330, i32 0, i32 6
  %332 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %333 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %332, i32 0, i32 1
  %334 = load i64*, i64** %333, align 8
  %335 = load %struct.walk_control*, %struct.walk_control** %14, align 8
  %336 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %335, i32 0, i32 5
  %337 = load i64, i64* %336, align 8
  %338 = getelementptr inbounds i64, i64* %334, i64 %337
  %339 = load i64, i64* %338, align 8
  %340 = call i32 @btrfs_node_key_to_cpu(%struct.TYPE_10__* %329, i32* %331, i64 %339)
  br label %341

341:                                              ; preds = %315, %309
  %342 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %13, align 8
  %343 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %342, i32 0, i32 1
  %344 = load %struct.walk_control*, %struct.walk_control** %14, align 8
  %345 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %344, i32 0, i32 6
  %346 = call i32 @btrfs_cpu_key_to_disk(i32* %343, i32* %345)
  %347 = load %struct.walk_control*, %struct.walk_control** %14, align 8
  %348 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %347, i32 0, i32 5
  %349 = load i64, i64* %348, align 8
  %350 = trunc i64 %349 to i32
  %351 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %13, align 8
  %352 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %351, i32 0, i32 0
  store i32 %350, i32* %352, align 4
  %353 = load %struct.walk_control*, %struct.walk_control** %14, align 8
  %354 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 8
  %356 = icmp eq i32 %355, 0
  %357 = zext i1 %356 to i32
  %358 = call i32 @BUG_ON(i32 %357)
  %359 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %360 = call i64 @btrfs_should_end_transaction(%struct.btrfs_trans_handle* %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %369, label %362

362:                                              ; preds = %341
  %363 = load i32, i32* %8, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %414, label %365

365:                                              ; preds = %362
  %366 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %367 = call i64 @btrfs_need_cleaner_sleep(%struct.btrfs_fs_info* %366)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %414

369:                                              ; preds = %365, %341
  %370 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %371 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %372 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %373 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %372, i32 0, i32 3
  %374 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %13, align 8
  %375 = call i32 @btrfs_update_root(%struct.btrfs_trans_handle* %370, %struct.btrfs_root* %371, %struct.TYPE_9__* %373, %struct.btrfs_root_item* %374)
  store i32 %375, i32* %17, align 4
  %376 = load i32, i32* %17, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %383

378:                                              ; preds = %369
  %379 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %380 = load i32, i32* %17, align 4
  %381 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %379, i32 %380)
  %382 = load i32, i32* %17, align 4
  store i32 %382, i32* %16, align 4
  br label %488

383:                                              ; preds = %369
  %384 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %385 = call i32 @btrfs_end_transaction_throttle(%struct.btrfs_trans_handle* %384)
  %386 = load i32, i32* %8, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %397, label %388

388:                                              ; preds = %383
  %389 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %390 = call i64 @btrfs_need_cleaner_sleep(%struct.btrfs_fs_info* %389)
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %397

392:                                              ; preds = %388
  %393 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %394 = call i32 (%struct.btrfs_fs_info*, i8*, ...) @btrfs_debug(%struct.btrfs_fs_info* %393, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %395 = load i32, i32* @EAGAIN, align 4
  %396 = sub nsw i32 0, %395
  store i32 %396, i32* %16, align 4
  br label %491

397:                                              ; preds = %388, %383
  %398 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %399 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %398, i32 0)
  store %struct.btrfs_trans_handle* %399, %struct.btrfs_trans_handle** %11, align 8
  %400 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %401 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %400)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %406

403:                                              ; preds = %397
  %404 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %405 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %404)
  store i32 %405, i32* %16, align 4
  br label %491

406:                                              ; preds = %397
  %407 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %6, align 8
  %408 = icmp ne %struct.btrfs_block_rsv* %407, null
  br i1 %408, label %409, label %413

409:                                              ; preds = %406
  %410 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %6, align 8
  %411 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %412 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %411, i32 0, i32 0
  store %struct.btrfs_block_rsv* %410, %struct.btrfs_block_rsv** %412, align 8
  br label %413

413:                                              ; preds = %409, %406
  br label %414

414:                                              ; preds = %413, %365, %362
  br label %277

415:                                              ; preds = %301, %296, %285
  %416 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %417 = call i32 @btrfs_release_path(%struct.btrfs_path* %416)
  %418 = load i32, i32* %16, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %421

420:                                              ; preds = %415
  br label %488

421:                                              ; preds = %415
  %422 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %423 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %424 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %423, i32 0, i32 3
  %425 = call i32 @btrfs_del_root(%struct.btrfs_trans_handle* %422, %struct.TYPE_9__* %424)
  store i32 %425, i32* %17, align 4
  %426 = load i32, i32* %17, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %433

428:                                              ; preds = %421
  %429 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %430 = load i32, i32* %17, align 4
  %431 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %429, i32 %430)
  %432 = load i32, i32* %17, align 4
  store i32 %432, i32* %16, align 4
  br label %488

433:                                              ; preds = %421
  %434 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %435 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %434, i32 0, i32 3
  %436 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  %438 = load i32, i32* @BTRFS_TREE_RELOC_OBJECTID, align 4
  %439 = icmp ne i32 %437, %438
  br i1 %439, label %440, label %466

440:                                              ; preds = %433
  %441 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %442 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %443 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %442, i32 0, i32 3
  %444 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %445 = call i32 @btrfs_find_root(%struct.btrfs_root* %441, %struct.TYPE_9__* %443, %struct.btrfs_path* %444, i32* null, i32* null)
  store i32 %445, i32* %17, align 4
  %446 = load i32, i32* %17, align 4
  %447 = icmp slt i32 %446, 0
  br i1 %447, label %448, label %453

448:                                              ; preds = %440
  %449 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %450 = load i32, i32* %17, align 4
  %451 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %449, i32 %450)
  %452 = load i32, i32* %17, align 4
  store i32 %452, i32* %16, align 4
  br label %488

453:                                              ; preds = %440
  %454 = load i32, i32* %17, align 4
  %455 = icmp sgt i32 %454, 0
  br i1 %455, label %456, label %464

456:                                              ; preds = %453
  %457 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %458 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %459 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %460 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %459, i32 0, i32 3
  %461 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 4
  %463 = call i32 @btrfs_del_orphan_item(%struct.btrfs_trans_handle* %457, %struct.btrfs_root* %458, i32 %462)
  br label %464

464:                                              ; preds = %456, %453
  br label %465

465:                                              ; preds = %464
  br label %466

466:                                              ; preds = %465, %433
  %467 = load i32, i32* @BTRFS_ROOT_IN_RADIX, align 4
  %468 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %469 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %468, i32 0, i32 2
  %470 = call i64 @test_bit(i32 %467, i32* %469)
  %471 = icmp ne i64 %470, 0
  br i1 %471, label %472, label %476

472:                                              ; preds = %466
  %473 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %474 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %475 = call i32 @btrfs_add_dropped_root(%struct.btrfs_trans_handle* %473, %struct.btrfs_root* %474)
  br label %487

476:                                              ; preds = %466
  %477 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %478 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %477, i32 0, i32 1
  %479 = load i32, i32* %478, align 4
  %480 = call i32 @free_extent_buffer(i32 %479)
  %481 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %482 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %481, i32 0, i32 0
  %483 = load i32, i32* %482, align 8
  %484 = call i32 @free_extent_buffer(i32 %483)
  %485 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %486 = call i32 @btrfs_put_fs_root(%struct.btrfs_root* %485)
  br label %487

487:                                              ; preds = %476, %472
  store i32 1, i32* %19, align 4
  br label %488

488:                                              ; preds = %487, %448, %428, %420, %378, %206, %142, %64
  %489 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %11, align 8
  %490 = call i32 @btrfs_end_transaction_throttle(%struct.btrfs_trans_handle* %489)
  br label %491

491:                                              ; preds = %488, %403, %392, %56
  %492 = load %struct.walk_control*, %struct.walk_control** %14, align 8
  %493 = call i32 @kfree(%struct.walk_control* %492)
  %494 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %495 = call i32 @btrfs_free_path(%struct.btrfs_path* %494)
  br label %496

496:                                              ; preds = %491, %45, %37
  %497 = load i32, i32* %8, align 4
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %505, label %499

499:                                              ; preds = %496
  %500 = load i32, i32* %19, align 4
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %505, label %502

502:                                              ; preds = %499
  %503 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %504 = call i32 @btrfs_add_dead_root(%struct.btrfs_root* %503)
  br label %505

505:                                              ; preds = %502, %499, %496
  %506 = load i32, i32* %16, align 4
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %517

508:                                              ; preds = %505
  %509 = load i32, i32* %16, align 4
  %510 = load i32, i32* @EAGAIN, align 4
  %511 = sub nsw i32 0, %510
  %512 = icmp ne i32 %509, %511
  br i1 %512, label %513, label %517

513:                                              ; preds = %508
  %514 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %515 = load i32, i32* %16, align 4
  %516 = call i32 @btrfs_handle_fs_error(%struct.btrfs_fs_info* %514, i32 %515, i32* null)
  br label %517

517:                                              ; preds = %513, %508, %505
  %518 = load i32, i32* %16, align 4
  ret i32 %518
}

declare dso_local i32 @btrfs_debug(%struct.btrfs_fs_info*, i8*, ...) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local %struct.walk_control* @kzalloc(i32, i32) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_run_delayed_items(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @btrfs_disk_key_objectid(i32*) #1

declare dso_local i32 @btrfs_header_level(i32) #1

declare dso_local %struct.TYPE_10__* @btrfs_lock_root_node(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_set_lock_blocking_write(%struct.TYPE_10__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @btrfs_disk_key_to_cpu(%struct.btrfs_key*, i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @btrfs_unlock_up_safe(%struct.btrfs_path*, i32) #1

declare dso_local i32 @btrfs_tree_lock(%struct.TYPE_10__*) #1

declare dso_local i32 @btrfs_lookup_extent_info(%struct.btrfs_trans_handle*, %struct.btrfs_fs_info*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @btrfs_tree_unlock(%struct.TYPE_10__*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @BTRFS_NODEPTRS_PER_BLOCK(%struct.btrfs_fs_info*) #1

declare dso_local i32 @walk_down_tree(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.walk_control*) #1

declare dso_local i32 @walk_up_tree(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.walk_control*, i32) #1

declare dso_local i32 @btrfs_node_key_to_cpu(%struct.TYPE_10__*, i32*, i64) #1

declare dso_local i32 @btrfs_cpu_key_to_disk(i32*, i32*) #1

declare dso_local i64 @btrfs_should_end_transaction(%struct.btrfs_trans_handle*) #1

declare dso_local i64 @btrfs_need_cleaner_sleep(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_update_root(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.TYPE_9__*, %struct.btrfs_root_item*) #1

declare dso_local i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle*, i32) #1

declare dso_local i32 @btrfs_end_transaction_throttle(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_del_root(%struct.btrfs_trans_handle*, %struct.TYPE_9__*) #1

declare dso_local i32 @btrfs_find_root(%struct.btrfs_root*, %struct.TYPE_9__*, %struct.btrfs_path*, i32*, i32*) #1

declare dso_local i32 @btrfs_del_orphan_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32) #1

declare dso_local i32 @btrfs_add_dropped_root(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

declare dso_local i32 @free_extent_buffer(i32) #1

declare dso_local i32 @btrfs_put_fs_root(%struct.btrfs_root*) #1

declare dso_local i32 @kfree(%struct.walk_control*) #1

declare dso_local i32 @btrfs_add_dead_root(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_handle_fs_error(%struct.btrfs_fs_info*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
