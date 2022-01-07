; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_inode-tests.c_test_hole_first.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_inode-tests.c_test_hole_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.inode = type { i32 }
%struct.btrfs_root = type { i64, i32, i32, i64, i32 }
%struct.extent_map = type { i64, i32, i32, i64, i32 }
%struct.TYPE_5__ = type { %struct.extent_map*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"running hole first btrfs_get_extent test\00", align 1
@TEST_ALLOC_INODE = common dso_local global i32 0, align 4
@BTRFS_INODE_ITEM_KEY = common dso_local global i32 0, align 4
@BTRFS_FIRST_FREE_OBJECTID = common dso_local global i32 0, align 4
@TEST_ALLOC_FS_INFO = common dso_local global i32 0, align 4
@TEST_ALLOC_ROOT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BTRFS_FILE_EXTENT_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"got an error when we shouldn't have\00", align 1
@EXTENT_MAP_HOLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"expected a hole, got %llu\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"unexpected extent wanted start 0 len %u, got start %llu len %llu\00", align 1
@vacancy_only = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"wrong flags, wanted %lu, have %lu\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"expected a real extent, got %llu\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"unexpected extent wanted start %u len %u, got start %llu len %llu\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"unexpected flags set, wanted 0 got %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @test_hole_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_hole_first(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca %struct.extent_map*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.btrfs_fs_info* null, %struct.btrfs_fs_info** %6, align 8
  store %struct.inode* null, %struct.inode** %7, align 8
  store %struct.btrfs_root* null, %struct.btrfs_root** %8, align 8
  store %struct.extent_map* null, %struct.extent_map** %9, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = call i32 @test_msg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %14 = call %struct.inode* (...) @btrfs_new_test_inode()
  store %struct.inode* %14, %struct.inode** %7, align 8
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = icmp ne %struct.inode* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @TEST_ALLOC_INODE, align 4
  %19 = call i32 @test_std_err(i32 %18)
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %3, align 4
  br label %224

21:                                               ; preds = %2
  %22 = load i32, i32* @BTRFS_INODE_ITEM_KEY, align 4
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = call %struct.TYPE_5__* @BTRFS_I(%struct.inode* %23)
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  store i32 %22, i32* %26, align 4
  %27 = load i32, i32* @BTRFS_FIRST_FREE_OBJECTID, align 4
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = call %struct.TYPE_5__* @BTRFS_I(%struct.inode* %28)
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %27, i32* %31, align 8
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = call %struct.TYPE_5__* @BTRFS_I(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call %struct.btrfs_fs_info* @btrfs_alloc_dummy_fs_info(i32 %36, i32 %37)
  store %struct.btrfs_fs_info* %38, %struct.btrfs_fs_info** %6, align 8
  %39 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %40 = icmp ne %struct.btrfs_fs_info* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %21
  %42 = load i32, i32* @TEST_ALLOC_FS_INFO, align 4
  %43 = call i32 @test_std_err(i32 %42)
  br label %208

44:                                               ; preds = %21
  %45 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %46 = call %struct.extent_map* @btrfs_alloc_dummy_root(%struct.btrfs_fs_info* %45)
  %47 = bitcast %struct.extent_map* %46 to %struct.btrfs_root*
  store %struct.btrfs_root* %47, %struct.btrfs_root** %8, align 8
  %48 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %49 = bitcast %struct.btrfs_root* %48 to %struct.extent_map*
  %50 = call i64 @IS_ERR(%struct.extent_map* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* @TEST_ALLOC_ROOT, align 4
  %54 = call i32 @test_std_err(i32 %53)
  br label %208

55:                                               ; preds = %44
  %56 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @alloc_dummy_extent_buffer(%struct.btrfs_fs_info* %56, i32 %57)
  %59 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %60 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %62 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %55
  %66 = load i32, i32* @TEST_ALLOC_ROOT, align 4
  %67 = call i32 @test_std_err(i32 %66)
  br label %208

68:                                               ; preds = %55
  %69 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %70 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @btrfs_set_header_nritems(i32 %71, i32 0)
  %73 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %74 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @btrfs_set_header_level(i32 %75, i32 0)
  %77 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %78 = bitcast %struct.btrfs_root* %77 to %struct.extent_map*
  %79 = load %struct.inode*, %struct.inode** %7, align 8
  %80 = call %struct.TYPE_5__* @BTRFS_I(%struct.inode* %79)
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store %struct.extent_map* %78, %struct.extent_map** %81, align 8
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %10, align 4
  %84 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %85 = bitcast %struct.btrfs_root* %84 to %struct.extent_map*
  %86 = call i32 @insert_inode_item_key(%struct.extent_map* %85)
  %87 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %88 = bitcast %struct.btrfs_root* %87 to %struct.extent_map*
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @BTRFS_FILE_EXTENT_REG, align 4
  %95 = call i32 @insert_extent(%struct.extent_map* %88, i32 %89, i32 %90, i32 %91, i32 0, i32 %92, i32 %93, i32 %94, i32 0, i32 1)
  %96 = load %struct.inode*, %struct.inode** %7, align 8
  %97 = call %struct.TYPE_5__* @BTRFS_I(%struct.inode* %96)
  %98 = load i32, i32* %4, align 4
  %99 = mul nsw i32 2, %98
  %100 = call %struct.extent_map* @btrfs_get_extent(%struct.TYPE_5__* %97, i32* null, i32 0, i32 0, i32 %99, i32 0)
  store %struct.extent_map* %100, %struct.extent_map** %9, align 8
  %101 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %102 = call i64 @IS_ERR(%struct.extent_map* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %68
  %105 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %208

106:                                              ; preds = %68
  %107 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %108 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @EXTENT_MAP_HOLE, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %114 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %115)
  br label %208

117:                                              ; preds = %106
  %118 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %119 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %117
  %123 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %124 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %4, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %122, %117
  %129 = load i32, i32* %4, align 4
  %130 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %131 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %134 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %129, i32 %132, i32 %135)
  br label %208

137:                                              ; preds = %122
  %138 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %139 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @vacancy_only, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load i64, i64* @vacancy_only, align 8
  %145 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %146 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i64 %144, i64 %147)
  br label %208

149:                                              ; preds = %137
  %150 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %151 = call i32 @free_extent_map(%struct.extent_map* %150)
  %152 = load %struct.inode*, %struct.inode** %7, align 8
  %153 = call %struct.TYPE_5__* @BTRFS_I(%struct.inode* %152)
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* %4, align 4
  %156 = mul nsw i32 2, %155
  %157 = call %struct.extent_map* @btrfs_get_extent(%struct.TYPE_5__* %153, i32* null, i32 0, i32 %154, i32 %156, i32 0)
  store %struct.extent_map* %157, %struct.extent_map** %9, align 8
  %158 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %159 = call i64 @IS_ERR(%struct.extent_map* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %149
  %162 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %208

163:                                              ; preds = %149
  %164 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %165 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i32, i32* %4, align 4
  %168 = sext i32 %167 to i64
  %169 = icmp ne i64 %166, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %163
  %171 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %172 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i64 %173)
  br label %208

175:                                              ; preds = %163
  %176 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %177 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* %4, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %187, label %181

181:                                              ; preds = %175
  %182 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %183 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %4, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %197

187:                                              ; preds = %181, %175
  %188 = load i32, i32* %4, align 4
  %189 = load i32, i32* %4, align 4
  %190 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %191 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %194 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0), i32 %188, i32 %189, i32 %192, i32 %195)
  br label %208

197:                                              ; preds = %181
  %198 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %199 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %197
  %203 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %204 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i64 %205)
  br label %208

207:                                              ; preds = %197
  store i32 0, i32* %10, align 4
  br label %208

208:                                              ; preds = %207, %202, %187, %170, %161, %143, %128, %112, %104, %65, %52, %41
  %209 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %210 = call i64 @IS_ERR(%struct.extent_map* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %208
  %213 = load %struct.extent_map*, %struct.extent_map** %9, align 8
  %214 = call i32 @free_extent_map(%struct.extent_map* %213)
  br label %215

215:                                              ; preds = %212, %208
  %216 = load %struct.inode*, %struct.inode** %7, align 8
  %217 = call i32 @iput(%struct.inode* %216)
  %218 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %219 = bitcast %struct.btrfs_root* %218 to %struct.extent_map*
  %220 = call i32 @btrfs_free_dummy_root(%struct.extent_map* %219)
  %221 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %222 = call i32 @btrfs_free_dummy_fs_info(%struct.btrfs_fs_info* %221)
  %223 = load i32, i32* %10, align 4
  store i32 %223, i32* %3, align 4
  br label %224

224:                                              ; preds = %215, %17
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local i32 @test_msg(i8*) #1

declare dso_local %struct.inode* @btrfs_new_test_inode(...) #1

declare dso_local i32 @test_std_err(i32) #1

declare dso_local %struct.TYPE_5__* @BTRFS_I(%struct.inode*) #1

declare dso_local %struct.btrfs_fs_info* @btrfs_alloc_dummy_fs_info(i32, i32) #1

declare dso_local %struct.extent_map* @btrfs_alloc_dummy_root(%struct.btrfs_fs_info*) #1

declare dso_local i64 @IS_ERR(%struct.extent_map*) #1

declare dso_local i32 @alloc_dummy_extent_buffer(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @btrfs_set_header_nritems(i32, i32) #1

declare dso_local i32 @btrfs_set_header_level(i32, i32) #1

declare dso_local i32 @insert_inode_item_key(%struct.extent_map*) #1

declare dso_local i32 @insert_extent(%struct.extent_map*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.extent_map* @btrfs_get_extent(%struct.TYPE_5__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @test_err(i8*, ...) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @btrfs_free_dummy_root(%struct.extent_map*) #1

declare dso_local i32 @btrfs_free_dummy_fs_info(%struct.btrfs_fs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
