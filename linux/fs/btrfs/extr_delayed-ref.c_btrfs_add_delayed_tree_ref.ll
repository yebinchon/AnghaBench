; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_btrfs_add_delayed_tree_ref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_btrfs_add_delayed_tree_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { %struct.TYPE_4__*, %struct.btrfs_fs_info* }
%struct.TYPE_4__ = type { %struct.btrfs_delayed_ref_root }
%struct.btrfs_delayed_ref_root = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_ref = type { i32, i64, i64, %struct.TYPE_3__, i32, i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.btrfs_delayed_extent_op = type { i64 }
%struct.btrfs_delayed_tree_ref = type { i64, i32, i32, %struct.btrfs_delayed_extent_op*, i64 }
%struct.btrfs_delayed_ref_head = type { i64, i32, i32, %struct.btrfs_delayed_extent_op*, i64 }
%struct.btrfs_qgroup_extent_record = type { i32 }

@BTRFS_CHUNK_TREE_OBJECTID = common dso_local global i64 0, align 8
@BTRFS_REF_METADATA = common dso_local global i64 0, align 8
@btrfs_delayed_tree_ref_cachep = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@btrfs_delayed_ref_head_cachep = common dso_local global i32 0, align 4
@BTRFS_FS_QUOTA_ENABLED = common dso_local global i32 0, align 4
@BTRFS_SHARED_BLOCK_REF_KEY = common dso_local global i32 0, align 4
@BTRFS_TREE_BLOCK_REF_KEY = common dso_local global i32 0, align 4
@BTRFS_ADD_DELAYED_EXTENT = common dso_local global i32 0, align 4
@BTRFS_ADD_DELAYED_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_add_delayed_tree_ref(%struct.btrfs_trans_handle* %0, %struct.btrfs_ref* %1, %struct.btrfs_delayed_extent_op* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_ref*, align 8
  %9 = alloca %struct.btrfs_delayed_extent_op*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.btrfs_fs_info*, align 8
  %13 = alloca %struct.btrfs_delayed_tree_ref*, align 8
  %14 = alloca %struct.btrfs_delayed_ref_head*, align 8
  %15 = alloca %struct.btrfs_delayed_ref_root*, align 8
  %16 = alloca %struct.btrfs_qgroup_extent_record*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store %struct.btrfs_ref* %1, %struct.btrfs_ref** %8, align 8
  store %struct.btrfs_delayed_extent_op* %2, %struct.btrfs_delayed_extent_op** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %26 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %27 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %26, i32 0, i32 1
  %28 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %27, align 8
  store %struct.btrfs_fs_info* %28, %struct.btrfs_fs_info** %12, align 8
  store %struct.btrfs_qgroup_extent_record* null, %struct.btrfs_qgroup_extent_record** %16, align 8
  %29 = load %struct.btrfs_ref*, %struct.btrfs_ref** %8, align 8
  %30 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %19, align 4
  %32 = load %struct.btrfs_ref*, %struct.btrfs_ref** %8, align 8
  %33 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %20, align 4
  %36 = load %struct.btrfs_ref*, %struct.btrfs_ref** %8, align 8
  %37 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %36, i32 0, i32 7
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %22, align 8
  %39 = load %struct.btrfs_ref*, %struct.btrfs_ref** %8, align 8
  %40 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %23, align 8
  %42 = load %struct.btrfs_ref*, %struct.btrfs_ref** %8, align 8
  %43 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %24, align 8
  %45 = load %struct.btrfs_ref*, %struct.btrfs_ref** %8, align 8
  %46 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @BTRFS_CHUNK_TREE_OBJECTID, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %18, align 4
  %51 = load %struct.btrfs_ref*, %struct.btrfs_ref** %8, align 8
  %52 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @BTRFS_REF_METADATA, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %5
  %57 = load %struct.btrfs_ref*, %struct.btrfs_ref** %8, align 8
  %58 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %56, %5
  %62 = phi i1 [ false, %5 ], [ %60, %56 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @ASSERT(i32 %63)
  %65 = load %struct.btrfs_delayed_extent_op*, %struct.btrfs_delayed_extent_op** %9, align 8
  %66 = icmp ne %struct.btrfs_delayed_extent_op* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load %struct.btrfs_delayed_extent_op*, %struct.btrfs_delayed_extent_op** %9, align 8
  %69 = getelementptr inbounds %struct.btrfs_delayed_extent_op, %struct.btrfs_delayed_extent_op* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br label %72

72:                                               ; preds = %67, %61
  %73 = phi i1 [ false, %61 ], [ %71, %67 ]
  %74 = zext i1 %73 to i32
  %75 = call i32 @BUG_ON(i32 %74)
  %76 = load i32, i32* @btrfs_delayed_tree_ref_cachep, align 4
  %77 = load i32, i32* @GFP_NOFS, align 4
  %78 = call %struct.btrfs_delayed_tree_ref* @kmem_cache_alloc(i32 %76, i32 %77)
  store %struct.btrfs_delayed_tree_ref* %78, %struct.btrfs_delayed_tree_ref** %13, align 8
  %79 = load %struct.btrfs_delayed_tree_ref*, %struct.btrfs_delayed_tree_ref** %13, align 8
  %80 = icmp ne %struct.btrfs_delayed_tree_ref* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %72
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %240

84:                                               ; preds = %72
  %85 = load i32, i32* @btrfs_delayed_ref_head_cachep, align 4
  %86 = load i32, i32* @GFP_NOFS, align 4
  %87 = call %struct.btrfs_delayed_tree_ref* @kmem_cache_alloc(i32 %85, i32 %86)
  %88 = bitcast %struct.btrfs_delayed_tree_ref* %87 to %struct.btrfs_delayed_ref_head*
  store %struct.btrfs_delayed_ref_head* %88, %struct.btrfs_delayed_ref_head** %14, align 8
  %89 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %14, align 8
  %90 = icmp ne %struct.btrfs_delayed_ref_head* %89, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %84
  %92 = load i32, i32* @btrfs_delayed_tree_ref_cachep, align 4
  %93 = load %struct.btrfs_delayed_tree_ref*, %struct.btrfs_delayed_tree_ref** %13, align 8
  %94 = call i32 @kmem_cache_free(i32 %92, %struct.btrfs_delayed_tree_ref* %93)
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %6, align 4
  br label %240

97:                                               ; preds = %84
  %98 = load i32, i32* @BTRFS_FS_QUOTA_ENABLED, align 4
  %99 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %100 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %99, i32 0, i32 0
  %101 = call i64 @test_bit(i32 %98, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %137

103:                                              ; preds = %97
  %104 = load %struct.btrfs_ref*, %struct.btrfs_ref** %8, align 8
  %105 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @is_fstree(i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %137

109:                                              ; preds = %103
  %110 = load %struct.btrfs_ref*, %struct.btrfs_ref** %8, align 8
  %111 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @is_fstree(i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %137

116:                                              ; preds = %109
  %117 = load %struct.btrfs_ref*, %struct.btrfs_ref** %8, align 8
  %118 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %137, label %121

121:                                              ; preds = %116
  %122 = load i32, i32* @GFP_NOFS, align 4
  %123 = call %struct.btrfs_qgroup_extent_record* @kzalloc(i32 4, i32 %122)
  store %struct.btrfs_qgroup_extent_record* %123, %struct.btrfs_qgroup_extent_record** %16, align 8
  %124 = load %struct.btrfs_qgroup_extent_record*, %struct.btrfs_qgroup_extent_record** %16, align 8
  %125 = icmp ne %struct.btrfs_qgroup_extent_record* %124, null
  br i1 %125, label %136, label %126

126:                                              ; preds = %121
  %127 = load i32, i32* @btrfs_delayed_tree_ref_cachep, align 4
  %128 = load %struct.btrfs_delayed_tree_ref*, %struct.btrfs_delayed_tree_ref** %13, align 8
  %129 = call i32 @kmem_cache_free(i32 %127, %struct.btrfs_delayed_tree_ref* %128)
  %130 = load i32, i32* @btrfs_delayed_ref_head_cachep, align 4
  %131 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %14, align 8
  %132 = bitcast %struct.btrfs_delayed_ref_head* %131 to %struct.btrfs_delayed_tree_ref*
  %133 = call i32 @kmem_cache_free(i32 %130, %struct.btrfs_delayed_tree_ref* %132)
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %6, align 4
  br label %240

136:                                              ; preds = %121
  br label %137

137:                                              ; preds = %136, %116, %109, %103, %97
  %138 = load i64, i64* %24, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = load i32, i32* @BTRFS_SHARED_BLOCK_REF_KEY, align 4
  store i32 %141, i32* %25, align 4
  br label %144

142:                                              ; preds = %137
  %143 = load i32, i32* @BTRFS_TREE_BLOCK_REF_KEY, align 4
  store i32 %143, i32* %25, align 4
  br label %144

144:                                              ; preds = %142, %140
  %145 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %146 = load %struct.btrfs_delayed_tree_ref*, %struct.btrfs_delayed_tree_ref** %13, align 8
  %147 = getelementptr inbounds %struct.btrfs_delayed_tree_ref, %struct.btrfs_delayed_tree_ref* %146, i32 0, i32 2
  %148 = load i64, i64* %22, align 8
  %149 = load i64, i64* %23, align 8
  %150 = load %struct.btrfs_ref*, %struct.btrfs_ref** %8, align 8
  %151 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %19, align 4
  %155 = load i32, i32* %25, align 4
  %156 = call i32 @init_delayed_ref_common(%struct.btrfs_fs_info* %145, i32* %147, i64 %148, i64 %149, i64 %153, i32 %154, i32 %155)
  %157 = load %struct.btrfs_ref*, %struct.btrfs_ref** %8, align 8
  %158 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.btrfs_delayed_tree_ref*, %struct.btrfs_delayed_tree_ref** %13, align 8
  %162 = getelementptr inbounds %struct.btrfs_delayed_tree_ref, %struct.btrfs_delayed_tree_ref* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  %163 = load i64, i64* %24, align 8
  %164 = load %struct.btrfs_delayed_tree_ref*, %struct.btrfs_delayed_tree_ref** %13, align 8
  %165 = getelementptr inbounds %struct.btrfs_delayed_tree_ref, %struct.btrfs_delayed_tree_ref* %164, i32 0, i32 4
  store i64 %163, i64* %165, align 8
  %166 = load i32, i32* %20, align 4
  %167 = load %struct.btrfs_delayed_tree_ref*, %struct.btrfs_delayed_tree_ref** %13, align 8
  %168 = getelementptr inbounds %struct.btrfs_delayed_tree_ref, %struct.btrfs_delayed_tree_ref* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 8
  %169 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %14, align 8
  %170 = bitcast %struct.btrfs_delayed_ref_head* %169 to %struct.btrfs_delayed_tree_ref*
  %171 = load %struct.btrfs_qgroup_extent_record*, %struct.btrfs_qgroup_extent_record** %16, align 8
  %172 = load i64, i64* %22, align 8
  %173 = load i64, i64* %23, align 8
  %174 = load %struct.btrfs_ref*, %struct.btrfs_ref** %8, align 8
  %175 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i32, i32* %19, align 4
  %179 = load i32, i32* %18, align 4
  %180 = call i32 @init_delayed_ref_head(%struct.btrfs_delayed_tree_ref* %170, %struct.btrfs_qgroup_extent_record* %171, i64 %172, i64 %173, i64 %177, i32 0, i32 %178, i32 0, i32 %179)
  %181 = load %struct.btrfs_delayed_extent_op*, %struct.btrfs_delayed_extent_op** %9, align 8
  %182 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %14, align 8
  %183 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %182, i32 0, i32 3
  store %struct.btrfs_delayed_extent_op* %181, %struct.btrfs_delayed_extent_op** %183, align 8
  %184 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %185 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %184, i32 0, i32 0
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  store %struct.btrfs_delayed_ref_root* %187, %struct.btrfs_delayed_ref_root** %15, align 8
  %188 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %15, align 8
  %189 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %188, i32 0, i32 0
  %190 = call i32 @spin_lock(i32* %189)
  %191 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %192 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %14, align 8
  %193 = bitcast %struct.btrfs_delayed_ref_head* %192 to %struct.btrfs_delayed_tree_ref*
  %194 = load %struct.btrfs_qgroup_extent_record*, %struct.btrfs_qgroup_extent_record** %16, align 8
  %195 = load i32, i32* %19, align 4
  %196 = load i32*, i32** %10, align 8
  %197 = load i32*, i32** %11, align 8
  %198 = call %struct.btrfs_delayed_tree_ref* @add_delayed_ref_head(%struct.btrfs_trans_handle* %191, %struct.btrfs_delayed_tree_ref* %193, %struct.btrfs_qgroup_extent_record* %194, i32 %195, i32* %17, i32* %196, i32* %197)
  %199 = bitcast %struct.btrfs_delayed_tree_ref* %198 to %struct.btrfs_delayed_ref_head*
  store %struct.btrfs_delayed_ref_head* %199, %struct.btrfs_delayed_ref_head** %14, align 8
  %200 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %201 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %15, align 8
  %202 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %14, align 8
  %203 = bitcast %struct.btrfs_delayed_ref_head* %202 to %struct.btrfs_delayed_tree_ref*
  %204 = load %struct.btrfs_delayed_tree_ref*, %struct.btrfs_delayed_tree_ref** %13, align 8
  %205 = getelementptr inbounds %struct.btrfs_delayed_tree_ref, %struct.btrfs_delayed_tree_ref* %204, i32 0, i32 2
  %206 = call i32 @insert_delayed_ref(%struct.btrfs_trans_handle* %200, %struct.btrfs_delayed_ref_root* %201, %struct.btrfs_delayed_tree_ref* %203, i32* %205)
  store i32 %206, i32* %21, align 4
  %207 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %15, align 8
  %208 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %207, i32 0, i32 0
  %209 = call i32 @spin_unlock(i32* %208)
  %210 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %211 = call i32 @btrfs_update_delayed_refs_rsv(%struct.btrfs_trans_handle* %210)
  %212 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %213 = load %struct.btrfs_delayed_tree_ref*, %struct.btrfs_delayed_tree_ref** %13, align 8
  %214 = getelementptr inbounds %struct.btrfs_delayed_tree_ref, %struct.btrfs_delayed_tree_ref* %213, i32 0, i32 2
  %215 = load %struct.btrfs_delayed_tree_ref*, %struct.btrfs_delayed_tree_ref** %13, align 8
  %216 = load i32, i32* %19, align 4
  %217 = load i32, i32* @BTRFS_ADD_DELAYED_EXTENT, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %221

219:                                              ; preds = %144
  %220 = load i32, i32* @BTRFS_ADD_DELAYED_REF, align 4
  br label %223

221:                                              ; preds = %144
  %222 = load i32, i32* %19, align 4
  br label %223

223:                                              ; preds = %221, %219
  %224 = phi i32 [ %220, %219 ], [ %222, %221 ]
  %225 = call i32 @trace_add_delayed_tree_ref(%struct.btrfs_fs_info* %212, i32* %214, %struct.btrfs_delayed_tree_ref* %215, i32 %224)
  %226 = load i32, i32* %21, align 4
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %223
  %229 = load i32, i32* @btrfs_delayed_tree_ref_cachep, align 4
  %230 = load %struct.btrfs_delayed_tree_ref*, %struct.btrfs_delayed_tree_ref** %13, align 8
  %231 = call i32 @kmem_cache_free(i32 %229, %struct.btrfs_delayed_tree_ref* %230)
  br label %232

232:                                              ; preds = %228, %223
  %233 = load i32, i32* %17, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %232
  %236 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %237 = load %struct.btrfs_qgroup_extent_record*, %struct.btrfs_qgroup_extent_record** %16, align 8
  %238 = call i32 @btrfs_qgroup_trace_extent_post(%struct.btrfs_fs_info* %236, %struct.btrfs_qgroup_extent_record* %237)
  br label %239

239:                                              ; preds = %235, %232
  store i32 0, i32* %6, align 4
  br label %240

240:                                              ; preds = %239, %126, %91, %81
  %241 = load i32, i32* %6, align 4
  ret i32 %241
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.btrfs_delayed_tree_ref* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.btrfs_delayed_tree_ref*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @is_fstree(i64) #1

declare dso_local %struct.btrfs_qgroup_extent_record* @kzalloc(i32, i32) #1

declare dso_local i32 @init_delayed_ref_common(%struct.btrfs_fs_info*, i32*, i64, i64, i64, i32, i32) #1

declare dso_local i32 @init_delayed_ref_head(%struct.btrfs_delayed_tree_ref*, %struct.btrfs_qgroup_extent_record*, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.btrfs_delayed_tree_ref* @add_delayed_ref_head(%struct.btrfs_trans_handle*, %struct.btrfs_delayed_tree_ref*, %struct.btrfs_qgroup_extent_record*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @insert_delayed_ref(%struct.btrfs_trans_handle*, %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_tree_ref*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_update_delayed_refs_rsv(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @trace_add_delayed_tree_ref(%struct.btrfs_fs_info*, i32*, %struct.btrfs_delayed_tree_ref*, i32) #1

declare dso_local i32 @btrfs_qgroup_trace_extent_post(%struct.btrfs_fs_info*, %struct.btrfs_qgroup_extent_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
