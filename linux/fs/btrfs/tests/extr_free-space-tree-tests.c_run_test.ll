; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_free-space-tree-tests.c_run_test.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_free-space-tree-tests.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type opaque
%struct.TYPE_5__ = type { %struct.btrfs_root*, %struct.btrfs_root*, i32 }
%struct.btrfs_root = type { i32, i32, %struct.TYPE_5__* }
%struct.btrfs_block_group_cache = type opaque
%struct.btrfs_path = type opaque
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_block_group_cache.0 = type { i32, i32, %struct.TYPE_5__*, i64 }
%struct.btrfs_trans_handle.1 = type { i32 }
%struct.btrfs_path.2 = type { i32 }

@TEST_ALLOC_FS_INFO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TEST_ALLOC_ROOT = common dso_local global i32 0, align 4
@BTRFS_FEATURE_COMPAT_RO_FREE_SPACE_TREE = common dso_local global i32 0, align 4
@TEST_ALLOC_EXTENT_BUFFER = common dso_local global i32 0, align 4
@TEST_ALLOC_BLOCK_GROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"could not add block group free space\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"could not convert block group to bitmaps\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"could not remove block group free space\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"free space tree has leftover items\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32 (%struct.btrfs_trans_handle*, %struct.TYPE_5__*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, i32)*, i32, i32, i32, i32)* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_test(i32 (%struct.btrfs_trans_handle*, %struct.TYPE_5__*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, i32)* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32 (%struct.btrfs_trans_handle*, %struct.TYPE_5__*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, i32)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.btrfs_fs_info*, align 8
  %12 = alloca %struct.btrfs_root*, align 8
  %13 = alloca %struct.btrfs_block_group_cache.0*, align 8
  %14 = alloca %struct.btrfs_trans_handle.1, align 4
  %15 = alloca %struct.btrfs_path.2*, align 8
  %16 = alloca i32, align 4
  store i32 (%struct.btrfs_trans_handle*, %struct.TYPE_5__*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, i32)* %0, i32 (%struct.btrfs_trans_handle*, %struct.TYPE_5__*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, i32)** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store %struct.btrfs_root* null, %struct.btrfs_root** %12, align 8
  store %struct.btrfs_block_group_cache.0* null, %struct.btrfs_block_group_cache.0** %13, align 8
  store %struct.btrfs_path.2* null, %struct.btrfs_path.2** %15, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.btrfs_fs_info* @btrfs_alloc_dummy_fs_info(i32 %17, i32 %18)
  store %struct.btrfs_fs_info* %19, %struct.btrfs_fs_info** %11, align 8
  %20 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %21 = icmp ne %struct.btrfs_fs_info* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @TEST_ALLOC_FS_INFO, align 4
  %24 = call i32 @test_std_err(i32 %23)
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %16, align 4
  br label %174

27:                                               ; preds = %5
  %28 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %29 = call %struct.btrfs_root* @btrfs_alloc_dummy_root(%struct.btrfs_fs_info* %28)
  store %struct.btrfs_root* %29, %struct.btrfs_root** %12, align 8
  %30 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %31 = call i64 @IS_ERR(%struct.btrfs_root* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i32, i32* @TEST_ALLOC_ROOT, align 4
  %35 = call i32 @test_std_err(i32 %34)
  %36 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %37 = call i32 @PTR_ERR(%struct.btrfs_root* %36)
  store i32 %37, i32* %16, align 4
  br label %174

38:                                               ; preds = %27
  %39 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %40 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %39, i32 0, i32 2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @BTRFS_FEATURE_COMPAT_RO_FREE_SPACE_TREE, align 4
  %45 = call i32 @btrfs_set_super_compat_ro_flags(i32 %43, i32 %44)
  %46 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %47 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %48 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %47, i32 0, i32 2
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store %struct.btrfs_root* %46, %struct.btrfs_root** %50, align 8
  %51 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %52 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %53 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %52, i32 0, i32 2
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store %struct.btrfs_root* %51, %struct.btrfs_root** %55, align 8
  %56 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %57 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %56, i32 0, i32 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @alloc_test_extent_buffer(%struct.TYPE_5__* %58, i32 %59)
  %61 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %62 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %64 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %38
  %68 = load i32, i32* @TEST_ALLOC_EXTENT_BUFFER, align 4
  %69 = call i32 @test_std_err(i32 %68)
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %16, align 4
  br label %174

72:                                               ; preds = %38
  %73 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %74 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @btrfs_set_header_level(i32 %75, i32 0)
  %77 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %78 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @btrfs_set_header_nritems(i32 %79, i32 0)
  %81 = load i32, i32* %9, align 4
  %82 = mul nsw i32 2, %81
  %83 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %84 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %88 = load i32, i32* %10, align 4
  %89 = mul nsw i32 8, %88
  %90 = call %struct.btrfs_block_group_cache.0* @btrfs_alloc_dummy_block_group(%struct.btrfs_fs_info* %87, i32 %89)
  store %struct.btrfs_block_group_cache.0* %90, %struct.btrfs_block_group_cache.0** %13, align 8
  %91 = load %struct.btrfs_block_group_cache.0*, %struct.btrfs_block_group_cache.0** %13, align 8
  %92 = icmp ne %struct.btrfs_block_group_cache.0* %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %72
  %94 = load i32, i32* @TEST_ALLOC_BLOCK_GROUP, align 4
  %95 = call i32 @test_std_err(i32 %94)
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %16, align 4
  br label %174

98:                                               ; preds = %72
  %99 = load %struct.btrfs_block_group_cache.0*, %struct.btrfs_block_group_cache.0** %13, align 8
  %100 = getelementptr inbounds %struct.btrfs_block_group_cache.0, %struct.btrfs_block_group_cache.0* %99, i32 0, i32 3
  store i64 0, i64* %100, align 8
  %101 = load %struct.btrfs_block_group_cache.0*, %struct.btrfs_block_group_cache.0** %13, align 8
  %102 = getelementptr inbounds %struct.btrfs_block_group_cache.0, %struct.btrfs_block_group_cache.0* %101, i32 0, i32 0
  store i32 -1, i32* %102, align 8
  %103 = load %struct.btrfs_block_group_cache.0*, %struct.btrfs_block_group_cache.0** %13, align 8
  %104 = getelementptr inbounds %struct.btrfs_block_group_cache.0, %struct.btrfs_block_group_cache.0* %103, i32 0, i32 1
  store i32 1, i32* %104, align 4
  %105 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %106 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %105, i32 0, i32 2
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = load %struct.btrfs_block_group_cache.0*, %struct.btrfs_block_group_cache.0** %13, align 8
  %109 = getelementptr inbounds %struct.btrfs_block_group_cache.0, %struct.btrfs_block_group_cache.0* %108, i32 0, i32 2
  store %struct.TYPE_5__* %107, %struct.TYPE_5__** %109, align 8
  %110 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %111 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %110, i32 0, i32 2
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = call i32 @btrfs_init_dummy_trans(%struct.btrfs_trans_handle.1* %14, %struct.TYPE_5__* %112)
  %114 = call %struct.btrfs_path.2* (...) @btrfs_alloc_path()
  store %struct.btrfs_path.2* %114, %struct.btrfs_path.2** %15, align 8
  %115 = load %struct.btrfs_path.2*, %struct.btrfs_path.2** %15, align 8
  %116 = icmp ne %struct.btrfs_path.2* %115, null
  br i1 %116, label %122, label %117

117:                                              ; preds = %98
  %118 = load i32, i32* @TEST_ALLOC_ROOT, align 4
  %119 = call i32 @test_std_err(i32 %118)
  %120 = load i32, i32* @ENOMEM, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %16, align 4
  br label %174

122:                                              ; preds = %98
  %123 = load %struct.btrfs_block_group_cache.0*, %struct.btrfs_block_group_cache.0** %13, align 8
  %124 = call i32 @add_block_group_free_space(%struct.btrfs_trans_handle.1* %14, %struct.btrfs_block_group_cache.0* %123)
  store i32 %124, i32* %16, align 4
  %125 = load i32, i32* %16, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = call i32 @test_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %174

129:                                              ; preds = %122
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %129
  %133 = load %struct.btrfs_block_group_cache.0*, %struct.btrfs_block_group_cache.0** %13, align 8
  %134 = load %struct.btrfs_path.2*, %struct.btrfs_path.2** %15, align 8
  %135 = call i32 @convert_free_space_to_bitmaps(%struct.btrfs_trans_handle.1* %14, %struct.btrfs_block_group_cache.0* %133, %struct.btrfs_path.2* %134)
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %16, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = call i32 @test_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %174

140:                                              ; preds = %132
  br label %141

141:                                              ; preds = %140, %129
  %142 = load i32 (%struct.btrfs_trans_handle*, %struct.TYPE_5__*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, i32)*, i32 (%struct.btrfs_trans_handle*, %struct.TYPE_5__*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*, i32)** %6, align 8
  %143 = bitcast %struct.btrfs_trans_handle.1* %14 to %struct.btrfs_trans_handle*
  %144 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %145 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %144, i32 0, i32 2
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = load %struct.btrfs_block_group_cache.0*, %struct.btrfs_block_group_cache.0** %13, align 8
  %148 = bitcast %struct.btrfs_block_group_cache.0* %147 to %struct.btrfs_block_group_cache*
  %149 = load %struct.btrfs_path.2*, %struct.btrfs_path.2** %15, align 8
  %150 = bitcast %struct.btrfs_path.2* %149 to %struct.btrfs_path*
  %151 = load i32, i32* %10, align 4
  %152 = call i32 %142(%struct.btrfs_trans_handle* %143, %struct.TYPE_5__* %146, %struct.btrfs_block_group_cache* %148, %struct.btrfs_path* %150, i32 %151)
  store i32 %152, i32* %16, align 4
  %153 = load i32, i32* %16, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %141
  br label %174

156:                                              ; preds = %141
  %157 = load %struct.btrfs_block_group_cache.0*, %struct.btrfs_block_group_cache.0** %13, align 8
  %158 = call i32 @remove_block_group_free_space(%struct.btrfs_trans_handle.1* %14, %struct.btrfs_block_group_cache.0* %157)
  store i32 %158, i32* %16, align 4
  %159 = load i32, i32* %16, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = call i32 @test_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %174

163:                                              ; preds = %156
  %164 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %165 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @btrfs_header_nritems(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %163
  %170 = call i32 @test_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %16, align 4
  br label %174

173:                                              ; preds = %163
  store i32 0, i32* %16, align 4
  br label %174

174:                                              ; preds = %173, %169, %161, %155, %138, %127, %117, %93, %67, %33, %22
  %175 = load %struct.btrfs_path.2*, %struct.btrfs_path.2** %15, align 8
  %176 = call i32 @btrfs_free_path(%struct.btrfs_path.2* %175)
  %177 = load %struct.btrfs_block_group_cache.0*, %struct.btrfs_block_group_cache.0** %13, align 8
  %178 = call i32 @btrfs_free_dummy_block_group(%struct.btrfs_block_group_cache.0* %177)
  %179 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %180 = call i32 @btrfs_free_dummy_root(%struct.btrfs_root* %179)
  %181 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  %182 = call i32 @btrfs_free_dummy_fs_info(%struct.btrfs_fs_info* %181)
  %183 = load i32, i32* %16, align 4
  ret i32 %183
}

declare dso_local %struct.btrfs_fs_info* @btrfs_alloc_dummy_fs_info(i32, i32) #1

declare dso_local i32 @test_std_err(i32) #1

declare dso_local %struct.btrfs_root* @btrfs_alloc_dummy_root(%struct.btrfs_fs_info*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_root*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_set_super_compat_ro_flags(i32, i32) #1

declare dso_local i32 @alloc_test_extent_buffer(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @btrfs_set_header_level(i32, i32) #1

declare dso_local i32 @btrfs_set_header_nritems(i32, i32) #1

declare dso_local %struct.btrfs_block_group_cache.0* @btrfs_alloc_dummy_block_group(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @btrfs_init_dummy_trans(%struct.btrfs_trans_handle.1*, %struct.TYPE_5__*) #1

declare dso_local %struct.btrfs_path.2* @btrfs_alloc_path(...) #1

declare dso_local i32 @add_block_group_free_space(%struct.btrfs_trans_handle.1*, %struct.btrfs_block_group_cache.0*) #1

declare dso_local i32 @test_err(i8*) #1

declare dso_local i32 @convert_free_space_to_bitmaps(%struct.btrfs_trans_handle.1*, %struct.btrfs_block_group_cache.0*, %struct.btrfs_path.2*) #1

declare dso_local i32 @remove_block_group_free_space(%struct.btrfs_trans_handle.1*, %struct.btrfs_block_group_cache.0*) #1

declare dso_local i64 @btrfs_header_nritems(i32) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path.2*) #1

declare dso_local i32 @btrfs_free_dummy_block_group(%struct.btrfs_block_group_cache.0*) #1

declare dso_local i32 @btrfs_free_dummy_root(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_free_dummy_fs_info(%struct.btrfs_fs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
