; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_root-tree.c_btrfs_find_orphan_roots.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_root-tree.c_btrfs_find_orphan_roots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.btrfs_root* }
%struct.btrfs_root = type { i32, i32 }
%struct.extent_buffer = type { i32 }
%struct.btrfs_path = type { i64*, %struct.extent_buffer** }
%struct.btrfs_key = type { i64, i64, i64 }
%struct.btrfs_trans_handle = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_ORPHAN_OBJECTID = common dso_local global i64 0, align 8
@BTRFS_ORPHAN_ITEM_KEY = common dso_local global i64 0, align 8
@BTRFS_ROOT_ITEM_KEY = common dso_local global i64 0, align 8
@BTRFS_ROOT_ORPHAN_ITEM_INSERTED = common dso_local global i32 0, align 4
@BTRFS_ROOT_DEAD_TREE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to start trans to delete orphan item\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to delete root orphan item\00", align 1
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_find_orphan_roots(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.extent_buffer*, align 8
  %6 = alloca %struct.btrfs_path*, align 8
  %7 = alloca %struct.btrfs_key, align 8
  %8 = alloca %struct.btrfs_key, align 8
  %9 = alloca %struct.btrfs_root*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_trans_handle*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  %13 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %14 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %13, i32 0, i32 0
  %15 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  store %struct.btrfs_root* %15, %struct.btrfs_root** %4, align 8
  store i32 0, i32* %10, align 4
  %16 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %16, %struct.btrfs_path** %6, align 8
  %17 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %18 = icmp ne %struct.btrfs_path* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %217

22:                                               ; preds = %1
  %23 = load i64, i64* @BTRFS_ORPHAN_OBJECTID, align 8
  %24 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  %25 = load i64, i64* @BTRFS_ORPHAN_ITEM_KEY, align 8
  %26 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 1
  store i64 %25, i64* %26, align 8
  %27 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load i64, i64* @BTRFS_ROOT_ITEM_KEY, align 8
  %29 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 1
  store i64 %28, i64* %29, align 8
  %30 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 2
  store i64 -1, i64* %30, align 8
  br label %31

31:                                               ; preds = %22, %124, %171, %212
  %32 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %33 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %34 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %32, %struct.btrfs_key* %7, %struct.btrfs_path* %33, i32 0, i32 0)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %10, align 4
  br label %213

39:                                               ; preds = %31
  %40 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %41 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %40, i32 0, i32 1
  %42 = load %struct.extent_buffer**, %struct.extent_buffer*** %41, align 8
  %43 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %42, i64 0
  %44 = load %struct.extent_buffer*, %struct.extent_buffer** %43, align 8
  store %struct.extent_buffer* %44, %struct.extent_buffer** %5, align 8
  %45 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %46 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %51 = call i64 @btrfs_header_nritems(%struct.extent_buffer* %50)
  %52 = icmp sge i64 %49, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %39
  %54 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %55 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %56 = call i32 @btrfs_next_leaf(%struct.btrfs_root* %54, %struct.btrfs_path* %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %59, %53
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %213

65:                                               ; preds = %61
  %66 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %67 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %66, i32 0, i32 1
  %68 = load %struct.extent_buffer**, %struct.extent_buffer*** %67, align 8
  %69 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %68, i64 0
  %70 = load %struct.extent_buffer*, %struct.extent_buffer** %69, align 8
  store %struct.extent_buffer* %70, %struct.extent_buffer** %5, align 8
  br label %71

71:                                               ; preds = %65, %39
  %72 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %73 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %74 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %72, %struct.btrfs_key* %7, i64 %77)
  %79 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %80 = call i32 @btrfs_release_path(%struct.btrfs_path* %79)
  %81 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @BTRFS_ORPHAN_OBJECTID, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %90, label %85

85:                                               ; preds = %71
  %86 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @BTRFS_ORPHAN_ITEM_KEY, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %85, %71
  br label %213

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 0
  store i64 %93, i64* %94, align 8
  %95 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %95, align 8
  %98 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %99 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call %struct.btrfs_root* @btrfs_lookup_fs_root(%struct.btrfs_fs_info* %98, i64 %100)
  store %struct.btrfs_root* %101, %struct.btrfs_root** %9, align 8
  %102 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %103 = icmp ne %struct.btrfs_root* %102, null
  br i1 %103, label %104, label %125

104:                                              ; preds = %91
  %105 = load i32, i32* @BTRFS_ROOT_ORPHAN_ITEM_INSERTED, align 4
  %106 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %107 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %106, i32 0, i32 0
  %108 = call i32 @test_bit(i32 %105, i32* %107)
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = call i32 @WARN_ON(i32 %111)
  %113 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %114 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %113, i32 0, i32 1
  %115 = call i64 @btrfs_root_refs(i32* %114)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %104
  %118 = load i32, i32* @BTRFS_ROOT_DEAD_TREE, align 4
  %119 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %120 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %119, i32 0, i32 0
  %121 = call i32 @set_bit(i32 %118, i32* %120)
  %122 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %123 = call i32 @btrfs_add_dead_root(%struct.btrfs_root* %122)
  br label %124

124:                                              ; preds = %117, %104
  br label %31

125:                                              ; preds = %91
  %126 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %127 = call %struct.btrfs_root* @btrfs_read_fs_root(%struct.btrfs_root* %126, %struct.btrfs_key* %8)
  store %struct.btrfs_root* %127, %struct.btrfs_root** %9, align 8
  %128 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %129 = call i32 @PTR_ERR_OR_ZERO(%struct.btrfs_root* %128)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %125
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @ENOENT, align 4
  %135 = sub nsw i32 0, %134
  %136 = icmp ne i32 %133, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %213

138:                                              ; preds = %132, %125
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* @ENOENT, align 4
  %141 = sub nsw i32 0, %140
  %142 = icmp eq i32 %139, %141
  br i1 %142, label %143, label %172

143:                                              ; preds = %138
  %144 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %145 = call i32 @btrfs_release_path(%struct.btrfs_path* %144)
  %146 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %147 = call %struct.btrfs_trans_handle* @btrfs_join_transaction(%struct.btrfs_root* %146)
  store %struct.btrfs_trans_handle* %147, %struct.btrfs_trans_handle** %12, align 8
  %148 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %12, align 8
  %149 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %143
  %152 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %12, align 8
  %153 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %152)
  store i32 %153, i32* %10, align 4
  %154 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @btrfs_handle_fs_error(%struct.btrfs_fs_info* %154, i32 %155, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %213

157:                                              ; preds = %143
  %158 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %12, align 8
  %159 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %160 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %8, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @btrfs_del_orphan_item(%struct.btrfs_trans_handle* %158, %struct.btrfs_root* %159, i64 %161)
  store i32 %162, i32* %10, align 4
  %163 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %12, align 8
  %164 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %163)
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %157
  %168 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %169 = load i32, i32* %10, align 4
  %170 = call i32 @btrfs_handle_fs_error(%struct.btrfs_fs_info* %168, i32 %169, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %213

171:                                              ; preds = %157
  br label %31

172:                                              ; preds = %138
  br label %173

173:                                              ; preds = %172
  %174 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %175 = call i32 @btrfs_init_fs_root(%struct.btrfs_root* %174)
  store i32 %175, i32* %10, align 4
  %176 = load i32, i32* %10, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %173
  %179 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %180 = call i32 @btrfs_free_fs_root(%struct.btrfs_root* %179)
  br label %213

181:                                              ; preds = %173
  %182 = load i32, i32* @BTRFS_ROOT_ORPHAN_ITEM_INSERTED, align 4
  %183 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %184 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %183, i32 0, i32 0
  %185 = call i32 @set_bit(i32 %182, i32* %184)
  %186 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %187 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %188 = call i32 @btrfs_insert_fs_root(%struct.btrfs_fs_info* %186, %struct.btrfs_root* %187)
  store i32 %188, i32* %10, align 4
  %189 = load i32, i32* %10, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %181
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* @EEXIST, align 4
  %194 = sub nsw i32 0, %193
  %195 = icmp eq i32 %192, %194
  %196 = zext i1 %195 to i32
  %197 = call i32 @BUG_ON(i32 %196)
  %198 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %199 = call i32 @btrfs_free_fs_root(%struct.btrfs_root* %198)
  br label %213

200:                                              ; preds = %181
  %201 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %202 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %201, i32 0, i32 1
  %203 = call i64 @btrfs_root_refs(i32* %202)
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %200
  %206 = load i32, i32* @BTRFS_ROOT_DEAD_TREE, align 4
  %207 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %208 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %207, i32 0, i32 0
  %209 = call i32 @set_bit(i32 %206, i32* %208)
  %210 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %211 = call i32 @btrfs_add_dead_root(%struct.btrfs_root* %210)
  br label %212

212:                                              ; preds = %205, %200
  br label %31

213:                                              ; preds = %191, %178, %167, %151, %137, %90, %64, %37
  %214 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %215 = call i32 @btrfs_free_path(%struct.btrfs_path* %214)
  %216 = load i32, i32* %10, align 4
  store i32 %216, i32* %2, align 4
  br label %217

217:                                              ; preds = %213, %19
  %218 = load i32, i32* %2, align 4
  ret i32 %218
}

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i64 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_next_leaf(%struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i64) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local %struct.btrfs_root* @btrfs_lookup_fs_root(%struct.btrfs_fs_info*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @btrfs_root_refs(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @btrfs_add_dead_root(%struct.btrfs_root*) #1

declare dso_local %struct.btrfs_root* @btrfs_read_fs_root(%struct.btrfs_root*, %struct.btrfs_key*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.btrfs_root*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_join_transaction(%struct.btrfs_root*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_handle_fs_error(%struct.btrfs_fs_info*, i32, i8*) #1

declare dso_local i32 @btrfs_del_orphan_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i64) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_init_fs_root(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_free_fs_root(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_insert_fs_root(%struct.btrfs_fs_info*, %struct.btrfs_root*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
