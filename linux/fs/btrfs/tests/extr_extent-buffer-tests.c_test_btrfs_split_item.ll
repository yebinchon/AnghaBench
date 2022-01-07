; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_extent-buffer-tests.c_test_btrfs_split_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_extent-buffer-tests.c_test_btrfs_split_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_path = type { i64*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_item = type { i32 }
%struct.btrfs_key = type { i64, i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"mary had a little lamb\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"mary had a little\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" lamb\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mary\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c" had a little\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"running btrfs_split_item tests\00", align 1
@TEST_ALLOC_FS_INFO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TEST_ALLOC_ROOT = common dso_local global i32 0, align 4
@TEST_ALLOC_PATH = common dso_local global i32 0, align 4
@TEST_ALLOC_EXTENT_BUFFER = common dso_local global i32 0, align 4
@BTRFS_EXTENT_CSUM_KEY = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"split item failed %d\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"invalid key at slot 0\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"invalid len in the first split\00", align 1
@.str.9 = private unnamed_addr constant [89 x i8] c"data in the buffer doesn't match what it should in the first split have='%.*s' want '%s'\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"invalid key at slot 1\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"invalid len in the second split\00", align 1
@.str.12 = private unnamed_addr constant [68 x i8] c"data in the buffer doesn't match what it should in the second split\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"second split item failed %d\00", align 1
@.str.14 = private unnamed_addr constant [67 x i8] c"data in the buffer doesn't match what it should in the third split\00", align 1
@.str.15 = private unnamed_addr constant [68 x i8] c"data in the buffer doesn't match what it should in the fourth split\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"invalid key at slot 2\00", align 1
@.str.17 = private unnamed_addr constant [66 x i8] c"data in the buffer doesn't match what it should in the last chunk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @test_btrfs_split_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_btrfs_split_item(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca %struct.btrfs_path*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca %struct.extent_buffer*, align 8
  %10 = alloca %struct.btrfs_item*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [32 x i8], align 16
  %17 = alloca %struct.btrfs_key, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.btrfs_path* null, %struct.btrfs_path** %7, align 8
  store %struct.btrfs_root* null, %struct.btrfs_root** %8, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %15, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = call i64 @strlen(i8* %20)
  store i64 %21, i64* %18, align 8
  store i32 0, i32* %19, align 4
  %22 = call i32 @test_msg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call %struct.btrfs_fs_info* @btrfs_alloc_dummy_fs_info(i64 %23, i64 %24)
  store %struct.btrfs_fs_info* %25, %struct.btrfs_fs_info** %6, align 8
  %26 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %27 = icmp ne %struct.btrfs_fs_info* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @TEST_ALLOC_FS_INFO, align 4
  %30 = call i32 @test_std_err(i32 %29)
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %368

33:                                               ; preds = %2
  %34 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %35 = call %struct.btrfs_root* @btrfs_alloc_dummy_root(%struct.btrfs_fs_info* %34)
  store %struct.btrfs_root* %35, %struct.btrfs_root** %8, align 8
  %36 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %37 = call i64 @IS_ERR(%struct.btrfs_root* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i32, i32* @TEST_ALLOC_ROOT, align 4
  %41 = call i32 @test_std_err(i32 %40)
  %42 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %43 = call i32 @PTR_ERR(%struct.btrfs_root* %42)
  store i32 %43, i32* %19, align 4
  br label %360

44:                                               ; preds = %33
  %45 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %45, %struct.btrfs_path** %7, align 8
  %46 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %47 = icmp ne %struct.btrfs_path* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @TEST_ALLOC_PATH, align 4
  %50 = call i32 @test_std_err(i32 %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %19, align 4
  br label %360

53:                                               ; preds = %44
  %54 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call %struct.extent_buffer* @alloc_dummy_extent_buffer(%struct.btrfs_fs_info* %54, i64 %55)
  store %struct.extent_buffer* %56, %struct.extent_buffer** %9, align 8
  %57 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %58 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %57, i32 0, i32 1
  %59 = load %struct.extent_buffer**, %struct.extent_buffer*** %58, align 8
  %60 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %59, i64 0
  store %struct.extent_buffer* %56, %struct.extent_buffer** %60, align 8
  %61 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %62 = icmp ne %struct.extent_buffer* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %53
  %64 = load i32, i32* @TEST_ALLOC_EXTENT_BUFFER, align 4
  %65 = call i32 @test_std_err(i32 %64)
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %19, align 4
  br label %360

68:                                               ; preds = %53
  %69 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %70 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  store i64 0, i64* %72, align 8
  %73 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 0
  store i64 0, i64* %73, align 8
  %74 = load i64, i64* @BTRFS_EXTENT_CSUM_KEY, align 8
  %75 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 1
  store i64 %74, i64* %75, align 8
  %76 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 2
  store i32 0, i32* %76, align 8
  %77 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %78 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %79 = load i64, i64* %18, align 8
  %80 = load i64, i64* %18, align 8
  %81 = add i64 %80, 4
  %82 = call i32 @setup_items_for_insert(%struct.btrfs_root* %77, %struct.btrfs_path* %78, %struct.btrfs_key* %17, i64* %18, i64 %79, i64 %81, i32 1)
  %83 = call %struct.btrfs_item* @btrfs_item_nr(i32 0)
  store %struct.btrfs_item* %83, %struct.btrfs_item** %10, align 8
  %84 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %87 = call i32 @btrfs_item_ptr_offset(%struct.extent_buffer* %86, i32 0)
  %88 = load i64, i64* %18, align 8
  %89 = call i32 @write_extent_buffer(%struct.extent_buffer* %84, i8* %85, i32 %87, i64 %88)
  %90 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 2
  store i32 3, i32* %90, align 8
  %91 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %92 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %93 = call i32 @btrfs_split_item(i32* null, %struct.btrfs_root* %91, %struct.btrfs_path* %92, %struct.btrfs_key* %17, i32 17)
  store i32 %93, i32* %19, align 4
  %94 = load i32, i32* %19, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %68
  %97 = load i32, i32* %19, align 4
  %98 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %97)
  br label %360

99:                                               ; preds = %68
  %100 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %101 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %100, %struct.btrfs_key* %17, i32 0)
  %102 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @BTRFS_EXTENT_CSUM_KEY, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %114, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %110, %105, %99
  %115 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %19, align 4
  br label %360

118:                                              ; preds = %110
  %119 = call %struct.btrfs_item* @btrfs_item_nr(i32 0)
  store %struct.btrfs_item* %119, %struct.btrfs_item** %10, align 8
  %120 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %121 = load %struct.btrfs_item*, %struct.btrfs_item** %10, align 8
  %122 = call i64 @btrfs_item_size(%struct.extent_buffer* %120, %struct.btrfs_item* %121)
  %123 = load i8*, i8** %12, align 8
  %124 = call i64 @strlen(i8* %123)
  %125 = icmp ne i64 %122, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %118
  %127 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %19, align 4
  br label %360

130:                                              ; preds = %118
  %131 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %132 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %133 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %134 = call i32 @btrfs_item_ptr_offset(%struct.extent_buffer* %133, i32 0)
  %135 = load i8*, i8** %12, align 8
  %136 = call i64 @strlen(i8* %135)
  %137 = call i32 @read_extent_buffer(%struct.extent_buffer* %131, i8* %132, i32 %134, i64 %136)
  %138 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %139 = load i8*, i8** %12, align 8
  %140 = load i8*, i8** %12, align 8
  %141 = call i64 @strlen(i8* %140)
  %142 = call i64 @memcmp(i8* %138, i8* %139, i64 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %130
  %145 = load i8*, i8** %12, align 8
  %146 = call i64 @strlen(i8* %145)
  %147 = trunc i64 %146 to i32
  %148 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %149 = load i8*, i8** %12, align 8
  %150 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.9, i64 0, i64 0), i32 %147, i8* %148, i8* %149)
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %19, align 4
  br label %360

153:                                              ; preds = %130
  %154 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %155 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %154, %struct.btrfs_key* %17, i32 1)
  %156 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %168, label %159

159:                                              ; preds = %153
  %160 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @BTRFS_EXTENT_CSUM_KEY, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %168, label %164

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 3
  br i1 %167, label %168, label %172

168:                                              ; preds = %164, %159, %153
  %169 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %19, align 4
  br label %360

172:                                              ; preds = %164
  %173 = call %struct.btrfs_item* @btrfs_item_nr(i32 1)
  store %struct.btrfs_item* %173, %struct.btrfs_item** %10, align 8
  %174 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %175 = load %struct.btrfs_item*, %struct.btrfs_item** %10, align 8
  %176 = call i64 @btrfs_item_size(%struct.extent_buffer* %174, %struct.btrfs_item* %175)
  %177 = load i8*, i8** %13, align 8
  %178 = call i64 @strlen(i8* %177)
  %179 = icmp ne i64 %176, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %172
  %181 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %182 = load i32, i32* @EINVAL, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %19, align 4
  br label %360

184:                                              ; preds = %172
  %185 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %186 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %187 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %188 = call i32 @btrfs_item_ptr_offset(%struct.extent_buffer* %187, i32 1)
  %189 = load i8*, i8** %13, align 8
  %190 = call i64 @strlen(i8* %189)
  %191 = call i32 @read_extent_buffer(%struct.extent_buffer* %185, i8* %186, i32 %188, i64 %190)
  %192 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %193 = load i8*, i8** %13, align 8
  %194 = load i8*, i8** %13, align 8
  %195 = call i64 @strlen(i8* %194)
  %196 = call i64 @memcmp(i8* %192, i8* %193, i64 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %184
  %199 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.12, i64 0, i64 0))
  %200 = load i32, i32* @EINVAL, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %19, align 4
  br label %360

202:                                              ; preds = %184
  %203 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 2
  store i32 1, i32* %203, align 8
  %204 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %205 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %206 = call i32 @btrfs_split_item(i32* null, %struct.btrfs_root* %204, %struct.btrfs_path* %205, %struct.btrfs_key* %17, i32 4)
  store i32 %206, i32* %19, align 4
  %207 = load i32, i32* %19, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %202
  %210 = load i32, i32* %19, align 4
  %211 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 %210)
  br label %360

212:                                              ; preds = %202
  %213 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %214 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %213, %struct.btrfs_key* %17, i32 0)
  %215 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %227, label %218

218:                                              ; preds = %212
  %219 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @BTRFS_EXTENT_CSUM_KEY, align 8
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %227, label %223

223:                                              ; preds = %218
  %224 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %223, %218, %212
  %228 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %229 = load i32, i32* @EINVAL, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %19, align 4
  br label %360

231:                                              ; preds = %223
  %232 = call %struct.btrfs_item* @btrfs_item_nr(i32 0)
  store %struct.btrfs_item* %232, %struct.btrfs_item** %10, align 8
  %233 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %234 = load %struct.btrfs_item*, %struct.btrfs_item** %10, align 8
  %235 = call i64 @btrfs_item_size(%struct.extent_buffer* %233, %struct.btrfs_item* %234)
  %236 = load i8*, i8** %14, align 8
  %237 = call i64 @strlen(i8* %236)
  %238 = icmp ne i64 %235, %237
  br i1 %238, label %239, label %243

239:                                              ; preds = %231
  %240 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %241 = load i32, i32* @EINVAL, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %19, align 4
  br label %360

243:                                              ; preds = %231
  %244 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %245 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %246 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %247 = call i32 @btrfs_item_ptr_offset(%struct.extent_buffer* %246, i32 0)
  %248 = load i8*, i8** %14, align 8
  %249 = call i64 @strlen(i8* %248)
  %250 = call i32 @read_extent_buffer(%struct.extent_buffer* %244, i8* %245, i32 %247, i64 %249)
  %251 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %252 = load i8*, i8** %14, align 8
  %253 = load i8*, i8** %14, align 8
  %254 = call i64 @strlen(i8* %253)
  %255 = call i64 @memcmp(i8* %251, i8* %252, i64 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %243
  %258 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.14, i64 0, i64 0))
  %259 = load i32, i32* @EINVAL, align 4
  %260 = sub nsw i32 0, %259
  store i32 %260, i32* %19, align 4
  br label %360

261:                                              ; preds = %243
  %262 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %263 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %262, %struct.btrfs_key* %17, i32 1)
  %264 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %276, label %267

267:                                              ; preds = %261
  %268 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @BTRFS_EXTENT_CSUM_KEY, align 8
  %271 = icmp ne i64 %269, %270
  br i1 %271, label %276, label %272

272:                                              ; preds = %267
  %273 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = icmp ne i32 %274, 1
  br i1 %275, label %276, label %280

276:                                              ; preds = %272, %267, %261
  %277 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %278 = load i32, i32* @EINVAL, align 4
  %279 = sub nsw i32 0, %278
  store i32 %279, i32* %19, align 4
  br label %360

280:                                              ; preds = %272
  %281 = call %struct.btrfs_item* @btrfs_item_nr(i32 1)
  store %struct.btrfs_item* %281, %struct.btrfs_item** %10, align 8
  %282 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %283 = load %struct.btrfs_item*, %struct.btrfs_item** %10, align 8
  %284 = call i64 @btrfs_item_size(%struct.extent_buffer* %282, %struct.btrfs_item* %283)
  %285 = load i8*, i8** %15, align 8
  %286 = call i64 @strlen(i8* %285)
  %287 = icmp ne i64 %284, %286
  br i1 %287, label %288, label %292

288:                                              ; preds = %280
  %289 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %290 = load i32, i32* @EINVAL, align 4
  %291 = sub nsw i32 0, %290
  store i32 %291, i32* %19, align 4
  br label %360

292:                                              ; preds = %280
  %293 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %294 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %295 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %296 = call i32 @btrfs_item_ptr_offset(%struct.extent_buffer* %295, i32 1)
  %297 = load i8*, i8** %15, align 8
  %298 = call i64 @strlen(i8* %297)
  %299 = call i32 @read_extent_buffer(%struct.extent_buffer* %293, i8* %294, i32 %296, i64 %298)
  %300 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %301 = load i8*, i8** %15, align 8
  %302 = load i8*, i8** %15, align 8
  %303 = call i64 @strlen(i8* %302)
  %304 = call i64 @memcmp(i8* %300, i8* %301, i64 %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %310

306:                                              ; preds = %292
  %307 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.15, i64 0, i64 0))
  %308 = load i32, i32* @EINVAL, align 4
  %309 = sub nsw i32 0, %308
  store i32 %309, i32* %19, align 4
  br label %360

310:                                              ; preds = %292
  %311 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %312 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %311, %struct.btrfs_key* %17, i32 2)
  %313 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %325, label %316

316:                                              ; preds = %310
  %317 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* @BTRFS_EXTENT_CSUM_KEY, align 8
  %320 = icmp ne i64 %318, %319
  br i1 %320, label %325, label %321

321:                                              ; preds = %316
  %322 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %17, i32 0, i32 2
  %323 = load i32, i32* %322, align 8
  %324 = icmp ne i32 %323, 3
  br i1 %324, label %325, label %329

325:                                              ; preds = %321, %316, %310
  %326 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  %327 = load i32, i32* @EINVAL, align 4
  %328 = sub nsw i32 0, %327
  store i32 %328, i32* %19, align 4
  br label %360

329:                                              ; preds = %321
  %330 = call %struct.btrfs_item* @btrfs_item_nr(i32 2)
  store %struct.btrfs_item* %330, %struct.btrfs_item** %10, align 8
  %331 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %332 = load %struct.btrfs_item*, %struct.btrfs_item** %10, align 8
  %333 = call i64 @btrfs_item_size(%struct.extent_buffer* %331, %struct.btrfs_item* %332)
  %334 = load i8*, i8** %13, align 8
  %335 = call i64 @strlen(i8* %334)
  %336 = icmp ne i64 %333, %335
  br i1 %336, label %337, label %341

337:                                              ; preds = %329
  %338 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %339 = load i32, i32* @EINVAL, align 4
  %340 = sub nsw i32 0, %339
  store i32 %340, i32* %19, align 4
  br label %360

341:                                              ; preds = %329
  %342 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %343 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %344 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %345 = call i32 @btrfs_item_ptr_offset(%struct.extent_buffer* %344, i32 2)
  %346 = load i8*, i8** %13, align 8
  %347 = call i64 @strlen(i8* %346)
  %348 = call i32 @read_extent_buffer(%struct.extent_buffer* %342, i8* %343, i32 %345, i64 %347)
  %349 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %350 = load i8*, i8** %13, align 8
  %351 = load i8*, i8** %13, align 8
  %352 = call i64 @strlen(i8* %351)
  %353 = call i64 @memcmp(i8* %349, i8* %350, i64 %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %359

355:                                              ; preds = %341
  %356 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.17, i64 0, i64 0))
  %357 = load i32, i32* @EINVAL, align 4
  %358 = sub nsw i32 0, %357
  store i32 %358, i32* %19, align 4
  br label %360

359:                                              ; preds = %341
  br label %360

360:                                              ; preds = %359, %355, %337, %325, %306, %288, %276, %257, %239, %227, %209, %198, %180, %168, %144, %126, %114, %96, %63, %48, %39
  %361 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %362 = call i32 @btrfs_free_path(%struct.btrfs_path* %361)
  %363 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %364 = call i32 @btrfs_free_dummy_root(%struct.btrfs_root* %363)
  %365 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %366 = call i32 @btrfs_free_dummy_fs_info(%struct.btrfs_fs_info* %365)
  %367 = load i32, i32* %19, align 4
  store i32 %367, i32* %3, align 4
  br label %368

368:                                              ; preds = %360, %28
  %369 = load i32, i32* %3, align 4
  ret i32 %369
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @test_msg(i8*) #1

declare dso_local %struct.btrfs_fs_info* @btrfs_alloc_dummy_fs_info(i64, i64) #1

declare dso_local i32 @test_std_err(i32) #1

declare dso_local %struct.btrfs_root* @btrfs_alloc_dummy_root(%struct.btrfs_fs_info*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_root*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_root*) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local %struct.extent_buffer* @alloc_dummy_extent_buffer(%struct.btrfs_fs_info*, i64) #1

declare dso_local i32 @setup_items_for_insert(%struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_key*, i64*, i64, i64, i32) #1

declare dso_local %struct.btrfs_item* @btrfs_item_nr(i32) #1

declare dso_local i32 @write_extent_buffer(%struct.extent_buffer*, i8*, i32, i64) #1

declare dso_local i32 @btrfs_item_ptr_offset(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_split_item(i32*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @test_err(i8*, ...) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i64 @btrfs_item_size(%struct.extent_buffer*, %struct.btrfs_item*) #1

declare dso_local i32 @read_extent_buffer(%struct.extent_buffer*, i8*, i32, i64) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_free_dummy_root(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_free_dummy_fs_info(%struct.btrfs_fs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
