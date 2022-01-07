; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_btrfs_add_delayed_data_ref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_btrfs_add_delayed_data_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { %struct.btrfs_fs_info*, %struct.TYPE_4__* }
%struct.btrfs_fs_info = type { i32 }
%struct.TYPE_4__ = type { %struct.btrfs_delayed_ref_root }
%struct.btrfs_delayed_ref_root = type { i32 }
%struct.btrfs_ref = type { i32, i64, i8*, i32, %struct.TYPE_3__, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i8*, i8*, i8* }
%struct.btrfs_delayed_data_ref = type { i32, i32*, i8*, i8*, i8*, i8* }
%struct.btrfs_delayed_ref_head = type { i32, i32*, i8*, i8*, i8*, i8* }
%struct.btrfs_qgroup_extent_record = type { i32 }

@BTRFS_REF_DATA = common dso_local global i64 0, align 8
@btrfs_delayed_data_ref_cachep = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_SHARED_DATA_REF_KEY = common dso_local global i32 0, align 4
@BTRFS_EXTENT_DATA_REF_KEY = common dso_local global i32 0, align 4
@btrfs_delayed_ref_head_cachep = common dso_local global i32 0, align 4
@BTRFS_FS_QUOTA_ENABLED = common dso_local global i32 0, align 4
@BTRFS_ADD_DELAYED_EXTENT = common dso_local global i32 0, align 4
@BTRFS_ADD_DELAYED_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_add_delayed_data_ref(%struct.btrfs_trans_handle* %0, %struct.btrfs_ref* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_ref*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.btrfs_fs_info*, align 8
  %13 = alloca %struct.btrfs_delayed_data_ref*, align 8
  %14 = alloca %struct.btrfs_delayed_ref_head*, align 8
  %15 = alloca %struct.btrfs_delayed_ref_root*, align 8
  %16 = alloca %struct.btrfs_qgroup_extent_record*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store %struct.btrfs_ref* %1, %struct.btrfs_ref** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %27 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %28 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %27, i32 0, i32 0
  %29 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %28, align 8
  store %struct.btrfs_fs_info* %29, %struct.btrfs_fs_info** %12, align 8
  store %struct.btrfs_qgroup_extent_record* null, %struct.btrfs_qgroup_extent_record** %16, align 8
  %30 = load %struct.btrfs_ref*, %struct.btrfs_ref** %8, align 8
  %31 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %18, align 4
  %33 = load %struct.btrfs_ref*, %struct.btrfs_ref** %8, align 8
  %34 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %33, i32 0, i32 7
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %20, align 8
  %36 = load %struct.btrfs_ref*, %struct.btrfs_ref** %8, align 8
  %37 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %36, i32 0, i32 6
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %21, align 8
  %39 = load %struct.btrfs_ref*, %struct.btrfs_ref** %8, align 8
  %40 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %39, i32 0, i32 5
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %22, align 8
  %42 = load %struct.btrfs_ref*, %struct.btrfs_ref** %8, align 8
  %43 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %23, align 8
  %46 = load %struct.btrfs_ref*, %struct.btrfs_ref** %8, align 8
  %47 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %24, align 8
  %50 = load %struct.btrfs_ref*, %struct.btrfs_ref** %8, align 8
  %51 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %25, align 8
  %54 = load %struct.btrfs_ref*, %struct.btrfs_ref** %8, align 8
  %55 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @BTRFS_REF_DATA, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %5
  %60 = load i32, i32* %18, align 4
  %61 = icmp ne i32 %60, 0
  br label %62

62:                                               ; preds = %59, %5
  %63 = phi i1 [ false, %5 ], [ %61, %59 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @ASSERT(i32 %64)
  %66 = load i32, i32* @btrfs_delayed_data_ref_cachep, align 4
  %67 = load i32, i32* @GFP_NOFS, align 4
  %68 = call %struct.btrfs_delayed_ref_head* @kmem_cache_alloc(i32 %66, i32 %67)
  %69 = bitcast %struct.btrfs_delayed_ref_head* %68 to %struct.btrfs_delayed_data_ref*
  store %struct.btrfs_delayed_data_ref* %69, %struct.btrfs_delayed_data_ref** %13, align 8
  %70 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %13, align 8
  %71 = icmp ne %struct.btrfs_delayed_data_ref* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %62
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %6, align 4
  br label %221

75:                                               ; preds = %62
  %76 = load i8*, i8** %22, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* @BTRFS_SHARED_DATA_REF_KEY, align 4
  store i32 %79, i32* %26, align 4
  br label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @BTRFS_EXTENT_DATA_REF_KEY, align 4
  store i32 %81, i32* %26, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %84 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %13, align 8
  %85 = getelementptr inbounds %struct.btrfs_delayed_data_ref, %struct.btrfs_delayed_data_ref* %84, i32 0, i32 0
  %86 = load i8*, i8** %20, align 8
  %87 = load i8*, i8** %21, align 8
  %88 = load i8*, i8** %23, align 8
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* %26, align 4
  %91 = call i32 @init_delayed_ref_common(%struct.btrfs_fs_info* %83, i32* %85, i8* %86, i8* %87, i8* %88, i32 %89, i32 %90)
  %92 = load i8*, i8** %23, align 8
  %93 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %13, align 8
  %94 = getelementptr inbounds %struct.btrfs_delayed_data_ref, %struct.btrfs_delayed_data_ref* %93, i32 0, i32 5
  store i8* %92, i8** %94, align 8
  %95 = load i8*, i8** %22, align 8
  %96 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %13, align 8
  %97 = getelementptr inbounds %struct.btrfs_delayed_data_ref, %struct.btrfs_delayed_data_ref* %96, i32 0, i32 4
  store i8* %95, i8** %97, align 8
  %98 = load i8*, i8** %24, align 8
  %99 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %13, align 8
  %100 = getelementptr inbounds %struct.btrfs_delayed_data_ref, %struct.btrfs_delayed_data_ref* %99, i32 0, i32 3
  store i8* %98, i8** %100, align 8
  %101 = load i8*, i8** %25, align 8
  %102 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %13, align 8
  %103 = getelementptr inbounds %struct.btrfs_delayed_data_ref, %struct.btrfs_delayed_data_ref* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  %104 = load i32, i32* @btrfs_delayed_ref_head_cachep, align 4
  %105 = load i32, i32* @GFP_NOFS, align 4
  %106 = call %struct.btrfs_delayed_ref_head* @kmem_cache_alloc(i32 %104, i32 %105)
  store %struct.btrfs_delayed_ref_head* %106, %struct.btrfs_delayed_ref_head** %14, align 8
  %107 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %14, align 8
  %108 = icmp ne %struct.btrfs_delayed_ref_head* %107, null
  br i1 %108, label %116, label %109

109:                                              ; preds = %82
  %110 = load i32, i32* @btrfs_delayed_data_ref_cachep, align 4
  %111 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %13, align 8
  %112 = bitcast %struct.btrfs_delayed_data_ref* %111 to %struct.btrfs_delayed_ref_head*
  %113 = call i32 @kmem_cache_free(i32 %110, %struct.btrfs_delayed_ref_head* %112)
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %6, align 4
  br label %221

116:                                              ; preds = %82
  %117 = load i32, i32* @BTRFS_FS_QUOTA_ENABLED, align 4
  %118 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %119 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %118, i32 0, i32 0
  %120 = call i64 @test_bit(i32 %117, i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %153

122:                                              ; preds = %116
  %123 = load i8*, i8** %23, align 8
  %124 = call i64 @is_fstree(i8* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %153

126:                                              ; preds = %122
  %127 = load %struct.btrfs_ref*, %struct.btrfs_ref** %8, align 8
  %128 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %127, i32 0, i32 2
  %129 = load i8*, i8** %128, align 8
  %130 = call i64 @is_fstree(i8* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %153

132:                                              ; preds = %126
  %133 = load %struct.btrfs_ref*, %struct.btrfs_ref** %8, align 8
  %134 = getelementptr inbounds %struct.btrfs_ref, %struct.btrfs_ref* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %153, label %137

137:                                              ; preds = %132
  %138 = load i32, i32* @GFP_NOFS, align 4
  %139 = call %struct.btrfs_qgroup_extent_record* @kzalloc(i32 4, i32 %138)
  store %struct.btrfs_qgroup_extent_record* %139, %struct.btrfs_qgroup_extent_record** %16, align 8
  %140 = load %struct.btrfs_qgroup_extent_record*, %struct.btrfs_qgroup_extent_record** %16, align 8
  %141 = icmp ne %struct.btrfs_qgroup_extent_record* %140, null
  br i1 %141, label %152, label %142

142:                                              ; preds = %137
  %143 = load i32, i32* @btrfs_delayed_data_ref_cachep, align 4
  %144 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %13, align 8
  %145 = bitcast %struct.btrfs_delayed_data_ref* %144 to %struct.btrfs_delayed_ref_head*
  %146 = call i32 @kmem_cache_free(i32 %143, %struct.btrfs_delayed_ref_head* %145)
  %147 = load i32, i32* @btrfs_delayed_ref_head_cachep, align 4
  %148 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %14, align 8
  %149 = call i32 @kmem_cache_free(i32 %147, %struct.btrfs_delayed_ref_head* %148)
  %150 = load i32, i32* @ENOMEM, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %6, align 4
  br label %221

152:                                              ; preds = %137
  br label %153

153:                                              ; preds = %152, %132, %126, %122, %116
  %154 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %14, align 8
  %155 = load %struct.btrfs_qgroup_extent_record*, %struct.btrfs_qgroup_extent_record** %16, align 8
  %156 = load i8*, i8** %20, align 8
  %157 = load i8*, i8** %21, align 8
  %158 = load i8*, i8** %23, align 8
  %159 = load i8*, i8** %9, align 8
  %160 = load i32, i32* %18, align 4
  %161 = call i32 @init_delayed_ref_head(%struct.btrfs_delayed_ref_head* %154, %struct.btrfs_qgroup_extent_record* %155, i8* %156, i8* %157, i8* %158, i8* %159, i32 %160, i32 1, i32 0)
  %162 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %14, align 8
  %163 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %162, i32 0, i32 1
  store i32* null, i32** %163, align 8
  %164 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %165 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %164, i32 0, i32 1
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  store %struct.btrfs_delayed_ref_root* %167, %struct.btrfs_delayed_ref_root** %15, align 8
  %168 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %15, align 8
  %169 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %168, i32 0, i32 0
  %170 = call i32 @spin_lock(i32* %169)
  %171 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %172 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %14, align 8
  %173 = load %struct.btrfs_qgroup_extent_record*, %struct.btrfs_qgroup_extent_record** %16, align 8
  %174 = load i32, i32* %18, align 4
  %175 = load i32*, i32** %10, align 8
  %176 = load i32*, i32** %11, align 8
  %177 = call %struct.btrfs_delayed_ref_head* @add_delayed_ref_head(%struct.btrfs_trans_handle* %171, %struct.btrfs_delayed_ref_head* %172, %struct.btrfs_qgroup_extent_record* %173, i32 %174, i32* %17, i32* %175, i32* %176)
  store %struct.btrfs_delayed_ref_head* %177, %struct.btrfs_delayed_ref_head** %14, align 8
  %178 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %179 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %15, align 8
  %180 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %14, align 8
  %181 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %13, align 8
  %182 = getelementptr inbounds %struct.btrfs_delayed_data_ref, %struct.btrfs_delayed_data_ref* %181, i32 0, i32 0
  %183 = call i32 @insert_delayed_ref(%struct.btrfs_trans_handle* %178, %struct.btrfs_delayed_ref_root* %179, %struct.btrfs_delayed_ref_head* %180, i32* %182)
  store i32 %183, i32* %19, align 4
  %184 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %15, align 8
  %185 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %184, i32 0, i32 0
  %186 = call i32 @spin_unlock(i32* %185)
  %187 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %188 = call i32 @btrfs_update_delayed_refs_rsv(%struct.btrfs_trans_handle* %187)
  %189 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %190 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %189, i32 0, i32 0
  %191 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %190, align 8
  %192 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %13, align 8
  %193 = getelementptr inbounds %struct.btrfs_delayed_data_ref, %struct.btrfs_delayed_data_ref* %192, i32 0, i32 0
  %194 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %13, align 8
  %195 = bitcast %struct.btrfs_delayed_data_ref* %194 to %struct.btrfs_delayed_ref_head*
  %196 = load i32, i32* %18, align 4
  %197 = load i32, i32* @BTRFS_ADD_DELAYED_EXTENT, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %153
  %200 = load i32, i32* @BTRFS_ADD_DELAYED_REF, align 4
  br label %203

201:                                              ; preds = %153
  %202 = load i32, i32* %18, align 4
  br label %203

203:                                              ; preds = %201, %199
  %204 = phi i32 [ %200, %199 ], [ %202, %201 ]
  %205 = call i32 @trace_add_delayed_data_ref(%struct.btrfs_fs_info* %191, i32* %193, %struct.btrfs_delayed_ref_head* %195, i32 %204)
  %206 = load i32, i32* %19, align 4
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %203
  %209 = load i32, i32* @btrfs_delayed_data_ref_cachep, align 4
  %210 = load %struct.btrfs_delayed_data_ref*, %struct.btrfs_delayed_data_ref** %13, align 8
  %211 = bitcast %struct.btrfs_delayed_data_ref* %210 to %struct.btrfs_delayed_ref_head*
  %212 = call i32 @kmem_cache_free(i32 %209, %struct.btrfs_delayed_ref_head* %211)
  br label %213

213:                                              ; preds = %208, %203
  %214 = load i32, i32* %17, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %213
  %217 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %218 = load %struct.btrfs_qgroup_extent_record*, %struct.btrfs_qgroup_extent_record** %16, align 8
  %219 = call i32 @btrfs_qgroup_trace_extent_post(%struct.btrfs_fs_info* %217, %struct.btrfs_qgroup_extent_record* %218)
  store i32 %219, i32* %6, align 4
  br label %221

220:                                              ; preds = %213
  store i32 0, i32* %6, align 4
  br label %221

221:                                              ; preds = %220, %216, %142, %109, %72
  %222 = load i32, i32* %6, align 4
  ret i32 %222
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.btrfs_delayed_ref_head* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @init_delayed_ref_common(%struct.btrfs_fs_info*, i32*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.btrfs_delayed_ref_head*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @is_fstree(i8*) #1

declare dso_local %struct.btrfs_qgroup_extent_record* @kzalloc(i32, i32) #1

declare dso_local i32 @init_delayed_ref_head(%struct.btrfs_delayed_ref_head*, %struct.btrfs_qgroup_extent_record*, i8*, i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.btrfs_delayed_ref_head* @add_delayed_ref_head(%struct.btrfs_trans_handle*, %struct.btrfs_delayed_ref_head*, %struct.btrfs_qgroup_extent_record*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @insert_delayed_ref(%struct.btrfs_trans_handle*, %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_head*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_update_delayed_refs_rsv(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @trace_add_delayed_data_ref(%struct.btrfs_fs_info*, i32*, %struct.btrfs_delayed_ref_head*, i32) #1

declare dso_local i32 @btrfs_qgroup_trace_extent_post(%struct.btrfs_fs_info*, %struct.btrfs_qgroup_extent_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
