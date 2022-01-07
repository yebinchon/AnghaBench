; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_btrfs_recover_log_trees.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_btrfs_recover_log_trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.btrfs_root*, i32, i32, i32, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32, i32 }
%struct.btrfs_path = type { i64*, i32* }
%struct.btrfs_trans_handle = type { %struct.btrfs_trans_handle*, i32, i32, i32, %struct.btrfs_fs_info* }
%struct.btrfs_key = type { i64, i64, i8* }
%struct.walk_control = type { i64, i32, %struct.btrfs_trans_handle*, i32, %struct.btrfs_trans_handle* }

@LOG_WALK_PIN_ONLY = common dso_local global i64 0, align 8
@process_one_buffer = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_FS_LOG_RECOVERING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Failed to pin buffers while recovering log root tree.\00", align 1
@BTRFS_TREE_LOG_OBJECTID = common dso_local global i64 0, align 8
@BTRFS_ROOT_ITEM_KEY = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Couldn't find tree log root.\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Couldn't read tree log root.\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Couldn't read target root for tree log recovery.\00", align 1
@LOG_WALK_REPLAY_ALL = common dso_local global i64 0, align 8
@replay_one_buffer = common dso_local global i32 0, align 4
@LOG_WALK_REPLAY_INODES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_recover_log_trees(%struct.btrfs_root* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_path*, align 8
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.btrfs_key, align 8
  %8 = alloca %struct.btrfs_key, align 8
  %9 = alloca %struct.btrfs_key, align 8
  %10 = alloca %struct.btrfs_root*, align 8
  %11 = alloca %struct.btrfs_fs_info*, align 8
  %12 = alloca %struct.walk_control, align 8
  %13 = alloca %struct.btrfs_root*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %3, align 8
  %14 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %15 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %14, i32 0, i32 4
  %16 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %15, align 8
  store %struct.btrfs_fs_info* %16, %struct.btrfs_fs_info** %11, align 8
  %17 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 0
  %18 = load i64, i64* @LOG_WALK_PIN_ONLY, align 8
  store i64 %18, i64* %17, align 8
  %19 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 1
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 2
  store %struct.btrfs_trans_handle* null, %struct.btrfs_trans_handle** %20, align 8
  %21 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 3
  %22 = load i32, i32* @process_one_buffer, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 4
  store %struct.btrfs_trans_handle* null, %struct.btrfs_trans_handle** %23, align 8
  %24 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %24, %struct.btrfs_path** %5, align 8
  %25 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %26 = icmp ne %struct.btrfs_path* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %292

30:                                               ; preds = %1
  %31 = load i32, i32* @BTRFS_FS_LOG_RECOVERING, align 4
  %32 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %33 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %32, i32 0, i32 0
  %34 = call i32 @set_bit(i32 %31, i32* %33)
  %35 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %36 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(i32 %37, i32 0)
  store %struct.btrfs_trans_handle* %38, %struct.btrfs_trans_handle** %6, align 8
  %39 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %40 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %44 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %43)
  store i32 %44, i32* %4, align 4
  br label %280

45:                                               ; preds = %30
  %46 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %47 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 2
  store %struct.btrfs_trans_handle* %46, %struct.btrfs_trans_handle** %47, align 8
  %48 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 1
  store i32 1, i32* %48, align 8
  %49 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %50 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %51 = bitcast %struct.btrfs_root* %50 to %struct.btrfs_trans_handle*
  %52 = call i32 @walk_log_tree(%struct.btrfs_trans_handle* %49, %struct.btrfs_trans_handle* %51, %struct.walk_control* %12)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @btrfs_handle_fs_error(%struct.btrfs_fs_info* %56, i32 %57, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %280

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %253, %242, %59
  %61 = load i64, i64* @BTRFS_TREE_LOG_OBJECTID, align 8
  %62 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 0
  store i64 %61, i64* %62, align 8
  %63 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 1
  store i64 -1, i64* %63, align 8
  %64 = load i8*, i8** @BTRFS_ROOT_ITEM_KEY, align 8
  %65 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 2
  store i8* %64, i8** %65, align 8
  br label %66

66:                                               ; preds = %60, %235
  %67 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %68 = bitcast %struct.btrfs_root* %67 to %struct.btrfs_trans_handle*
  %69 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %70 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_trans_handle* %68, %struct.btrfs_key* %7, %struct.btrfs_path* %69, i32 0, i32 0)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @btrfs_handle_fs_error(%struct.btrfs_fs_info* %74, i32 %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %280

77:                                               ; preds = %66
  %78 = load i32, i32* %4, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %77
  %81 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %82 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %236

88:                                               ; preds = %80
  %89 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %90 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, -1
  store i64 %94, i64* %92, align 8
  br label %95

95:                                               ; preds = %88, %77
  %96 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %97 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %102 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @btrfs_item_key_to_cpu(i32 %100, %struct.btrfs_key* %8, i64 %105)
  %107 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %108 = call i32 @btrfs_release_path(%struct.btrfs_path* %107)
  %109 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @BTRFS_TREE_LOG_OBJECTID, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %95
  br label %236

114:                                              ; preds = %95
  %115 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %116 = bitcast %struct.btrfs_root* %115 to %struct.btrfs_trans_handle*
  %117 = call %struct.btrfs_trans_handle* @btrfs_read_fs_root(%struct.btrfs_trans_handle* %116, %struct.btrfs_key* %8)
  %118 = bitcast %struct.btrfs_trans_handle* %117 to %struct.btrfs_root*
  store %struct.btrfs_root* %118, %struct.btrfs_root** %10, align 8
  %119 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %120 = bitcast %struct.btrfs_root* %119 to %struct.btrfs_trans_handle*
  %121 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %114
  %124 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %125 = bitcast %struct.btrfs_root* %124 to %struct.btrfs_trans_handle*
  %126 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %125)
  store i32 %126, i32* %4, align 4
  %127 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %128 = load i32, i32* %4, align 4
  %129 = call i32 @btrfs_handle_fs_error(%struct.btrfs_fs_info* %127, i32 %128, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %280

130:                                              ; preds = %114
  %131 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  store i64 %132, i64* %133, align 8
  %134 = load i8*, i8** @BTRFS_ROOT_ITEM_KEY, align 8
  %135 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 2
  store i8* %134, i8** %135, align 8
  %136 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 1
  store i64 -1, i64* %136, align 8
  %137 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %138 = call %struct.btrfs_trans_handle* @btrfs_read_fs_root_no_name(%struct.btrfs_fs_info* %137, %struct.btrfs_key* %9)
  %139 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 4
  store %struct.btrfs_trans_handle* %138, %struct.btrfs_trans_handle** %139, align 8
  %140 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 4
  %141 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %140, align 8
  %142 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %162

144:                                              ; preds = %130
  %145 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 4
  %146 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %145, align 8
  %147 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %146)
  store i32 %147, i32* %4, align 4
  %148 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %149 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @free_extent_buffer(i32 %150)
  %152 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %153 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @free_extent_buffer(i32 %154)
  %156 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %157 = bitcast %struct.btrfs_root* %156 to %struct.btrfs_trans_handle*
  %158 = call i32 @kfree(%struct.btrfs_trans_handle* %157)
  %159 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %160 = load i32, i32* %4, align 4
  %161 = call i32 @btrfs_handle_fs_error(%struct.btrfs_fs_info* %159, i32 %160, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %280

162:                                              ; preds = %130
  %163 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %164 = bitcast %struct.btrfs_root* %163 to %struct.btrfs_trans_handle*
  %165 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 4
  %166 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %165, align 8
  %167 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %166, i32 0, i32 0
  store %struct.btrfs_trans_handle* %164, %struct.btrfs_trans_handle** %167, align 8
  %168 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %169 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 4
  %170 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %169, align 8
  %171 = call i32 @btrfs_record_root_in_trans(%struct.btrfs_trans_handle* %168, %struct.btrfs_trans_handle* %170)
  %172 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %173 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %174 = bitcast %struct.btrfs_root* %173 to %struct.btrfs_trans_handle*
  %175 = call i32 @walk_log_tree(%struct.btrfs_trans_handle* %172, %struct.btrfs_trans_handle* %174, %struct.walk_control* %12)
  store i32 %175, i32* %4, align 4
  %176 = load i32, i32* %4, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %189, label %178

178:                                              ; preds = %162
  %179 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @LOG_WALK_REPLAY_ALL, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %189

183:                                              ; preds = %178
  %184 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %185 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 4
  %186 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %185, align 8
  %187 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %188 = call i32 @fixup_inode_link_counts(%struct.btrfs_trans_handle* %184, %struct.btrfs_trans_handle* %186, %struct.btrfs_path* %187)
  store i32 %188, i32* %4, align 4
  br label %189

189:                                              ; preds = %183, %178, %162
  %190 = load i32, i32* %4, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %208, label %192

192:                                              ; preds = %189
  %193 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @LOG_WALK_REPLAY_ALL, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %208

197:                                              ; preds = %192
  %198 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 4
  %199 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %198, align 8
  %200 = bitcast %struct.btrfs_trans_handle* %199 to %struct.btrfs_root*
  store %struct.btrfs_root* %200, %struct.btrfs_root** %13, align 8
  %201 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %202 = call i32 @btrfs_release_path(%struct.btrfs_path* %201)
  %203 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  %204 = bitcast %struct.btrfs_root* %203 to %struct.btrfs_trans_handle*
  %205 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  %206 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %205, i32 0, i32 3
  %207 = call i32 @btrfs_find_highest_objectid(%struct.btrfs_trans_handle* %204, i32* %206)
  store i32 %207, i32* %4, align 4
  br label %208

208:                                              ; preds = %197, %192, %189
  %209 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = sub nsw i64 %210, 1
  %212 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 1
  store i64 %211, i64* %212, align 8
  %213 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 4
  %214 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %213, align 8
  %215 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %214, i32 0, i32 0
  store %struct.btrfs_trans_handle* null, %struct.btrfs_trans_handle** %215, align 8
  %216 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %217 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @free_extent_buffer(i32 %218)
  %220 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %221 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @free_extent_buffer(i32 %222)
  %224 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %225 = bitcast %struct.btrfs_root* %224 to %struct.btrfs_trans_handle*
  %226 = call i32 @kfree(%struct.btrfs_trans_handle* %225)
  %227 = load i32, i32* %4, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %208
  br label %280

230:                                              ; preds = %208
  %231 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %230
  br label %236

235:                                              ; preds = %230
  br label %66

236:                                              ; preds = %234, %113, %87
  %237 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %238 = call i32 @btrfs_release_path(%struct.btrfs_path* %237)
  %239 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %236
  %243 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 1
  store i32 0, i32* %243, align 8
  %244 = load i32, i32* @replay_one_buffer, align 4
  %245 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 3
  store i32 %244, i32* %245, align 8
  %246 = load i64, i64* @LOG_WALK_REPLAY_INODES, align 8
  %247 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 0
  store i64 %246, i64* %247, align 8
  br label %60

248:                                              ; preds = %236
  %249 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @LOG_WALK_REPLAY_ALL, align 8
  %252 = icmp slt i64 %250, %251
  br i1 %252, label %253, label %257

253:                                              ; preds = %248
  %254 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = add nsw i64 %255, 1
  store i64 %256, i64* %254, align 8
  br label %60

257:                                              ; preds = %248
  %258 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %259 = call i32 @btrfs_free_path(%struct.btrfs_path* %258)
  %260 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %261 = call i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle* %260)
  store i32 %261, i32* %4, align 4
  %262 = load i32, i32* %4, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %257
  %265 = load i32, i32* %4, align 4
  store i32 %265, i32* %2, align 4
  br label %292

266:                                              ; preds = %257
  %267 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %268 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @free_extent_buffer(i32 %269)
  %271 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %272 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %271, i32 0, i32 0
  store %struct.btrfs_root* null, %struct.btrfs_root** %272, align 8
  %273 = load i32, i32* @BTRFS_FS_LOG_RECOVERING, align 4
  %274 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %275 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %274, i32 0, i32 0
  %276 = call i32 @clear_bit(i32 %273, i32* %275)
  %277 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %278 = bitcast %struct.btrfs_root* %277 to %struct.btrfs_trans_handle*
  %279 = call i32 @kfree(%struct.btrfs_trans_handle* %278)
  store i32 0, i32* %2, align 4
  br label %292

280:                                              ; preds = %229, %144, %123, %73, %55, %42
  %281 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 2
  %282 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %281, align 8
  %283 = icmp ne %struct.btrfs_trans_handle* %282, null
  br i1 %283, label %284, label %288

284:                                              ; preds = %280
  %285 = getelementptr inbounds %struct.walk_control, %struct.walk_control* %12, i32 0, i32 2
  %286 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %285, align 8
  %287 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %286)
  br label %288

288:                                              ; preds = %284, %280
  %289 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %290 = call i32 @btrfs_free_path(%struct.btrfs_path* %289)
  %291 = load i32, i32* %4, align 4
  store i32 %291, i32* %2, align 4
  br label %292

292:                                              ; preds = %288, %266, %264, %27
  %293 = load i32, i32* %2, align 4
  ret i32 %293
}

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @walk_log_tree(%struct.btrfs_trans_handle*, %struct.btrfs_trans_handle*, %struct.walk_control*) #1

declare dso_local i32 @btrfs_handle_fs_error(%struct.btrfs_fs_info*, i32, i8*) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_trans_handle*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_item_key_to_cpu(i32, %struct.btrfs_key*, i64) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_read_fs_root(%struct.btrfs_trans_handle*, %struct.btrfs_key*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_read_fs_root_no_name(%struct.btrfs_fs_info*, %struct.btrfs_key*) #1

declare dso_local i32 @free_extent_buffer(i32) #1

declare dso_local i32 @kfree(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_record_root_in_trans(%struct.btrfs_trans_handle*, %struct.btrfs_trans_handle*) #1

declare dso_local i32 @fixup_inode_link_counts(%struct.btrfs_trans_handle*, %struct.btrfs_trans_handle*, %struct.btrfs_path*) #1

declare dso_local i32 @btrfs_find_highest_objectid(%struct.btrfs_trans_handle*, i32*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
