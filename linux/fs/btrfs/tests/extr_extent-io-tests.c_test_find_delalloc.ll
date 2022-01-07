; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_extent-io-tests.c_test_find_delalloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_extent-io-tests.c_test_find_delalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_io_tree = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { %struct.extent_io_tree }

@BTRFS_MAX_EXTENT_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"running find delalloc tests\00", align 1
@TEST_ALLOC_INODE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IO_TREE_SELFTEST = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to allocate test page\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"should have found at least one delalloc\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"expected start 0 end %u, got start %llu end %llu\00", align 1
@SZ_64M = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"couldn't find the locked page\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"couldn't find delalloc in our range\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"expected start %llu end %llu, got start %llu, end %llu\00", align 1
@PROCESS_TEST_LOCKED = common dso_local global i32 0, align 4
@PROCESS_UNLOCK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"there were unlocked pages in the range\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"found range when we shouldn't have\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"did not return the proper end offset\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"didn't find our range\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"expected start %llu end %llu, got start %llu end %llu\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"pages in range were not all locked\00", align 1
@SZ_1M = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"couldn't find our page\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@PROCESS_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_find_delalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_find_delalloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.extent_io_tree*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.page* null, %struct.page** %7, align 8
  store i64 0, i64* %8, align 8
  %16 = load i32, i32* @BTRFS_MAX_EXTENT_SIZE, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = mul nsw i32 2, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %15, align 4
  %21 = call i32 @test_msg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %22 = call %struct.inode* (...) @btrfs_new_test_inode()
  store %struct.inode* %22, %struct.inode** %4, align 8
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = icmp ne %struct.inode* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @TEST_ALLOC_INODE, align 4
  %27 = call i32 @test_std_err(i32 %26)
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %324

30:                                               ; preds = %1
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store %struct.extent_io_tree* %33, %struct.extent_io_tree** %5, align 8
  %34 = load %struct.extent_io_tree*, %struct.extent_io_tree** %5, align 8
  %35 = load i32, i32* @IO_TREE_SELFTEST, align 4
  %36 = call i32 @extent_io_tree_init(i32* null, %struct.extent_io_tree* %34, i32 %35, i32* null)
  store i64 0, i64* %8, align 8
  br label %37

37:                                               ; preds = %70, %30
  %38 = load i64, i64* %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @PAGE_SHIFT, align 4
  %41 = ashr i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = icmp ult i64 %38, %42
  br i1 %43, label %44, label %73

44:                                               ; preds = %37
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %8, align 8
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.page* @find_or_create_page(i32 %47, i64 %48, i32 %49)
  store %struct.page* %50, %struct.page** %6, align 8
  %51 = load %struct.page*, %struct.page** %6, align 8
  %52 = icmp ne %struct.page* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %44
  %54 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %15, align 4
  br label %307

57:                                               ; preds = %44
  %58 = load %struct.page*, %struct.page** %6, align 8
  %59 = call i32 @SetPageDirty(%struct.page* %58)
  %60 = load i64, i64* %8, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.page*, %struct.page** %6, align 8
  %64 = call i32 @unlock_page(%struct.page* %63)
  br label %69

65:                                               ; preds = %57
  %66 = load %struct.page*, %struct.page** %6, align 8
  %67 = call i32 @get_page(%struct.page* %66)
  %68 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %68, %struct.page** %7, align 8
  br label %69

69:                                               ; preds = %65, %62
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %8, align 8
  br label %37

73:                                               ; preds = %37
  %74 = load %struct.extent_io_tree*, %struct.extent_io_tree** %5, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sub nsw i32 %75, 1
  %77 = call i32 @set_extent_delalloc(%struct.extent_io_tree* %74, i32 0, i32 %76, i32 0, i32* null)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %78 = load %struct.inode*, %struct.inode** %4, align 8
  %79 = load %struct.page*, %struct.page** %7, align 8
  %80 = call i32 @find_lock_delalloc_range(%struct.inode* %78, %struct.page* %79, i32* %11, i32* %12)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %73
  %84 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %302

85:                                               ; preds = %73
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %3, align 4
  %91 = sub nsw i32 %90, 1
  %92 = icmp ne i32 %89, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %88, %85
  %94 = load i32, i32* %3, align 4
  %95 = sub nsw i32 %94, 1
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %95, i32 %96, i32 %97)
  br label %302

99:                                               ; preds = %88
  %100 = load %struct.extent_io_tree*, %struct.extent_io_tree** %5, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @unlock_extent(%struct.extent_io_tree* %100, i32 %101, i32 %102)
  %104 = load %struct.page*, %struct.page** %7, align 8
  %105 = call i32 @unlock_page(%struct.page* %104)
  %106 = load %struct.page*, %struct.page** %7, align 8
  %107 = call i32 @put_page(%struct.page* %106)
  %108 = load i32, i32* @SZ_64M, align 4
  store i32 %108, i32* %13, align 4
  %109 = load %struct.inode*, %struct.inode** %4, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* @PAGE_SHIFT, align 4
  %114 = ashr i32 %112, %113
  %115 = call %struct.page* @find_lock_page(i32 %111, i32 %114)
  store %struct.page* %115, %struct.page** %7, align 8
  %116 = load %struct.page*, %struct.page** %7, align 8
  %117 = icmp ne %struct.page* %116, null
  br i1 %117, label %120, label %118

118:                                              ; preds = %99
  %119 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %302

120:                                              ; preds = %99
  %121 = load %struct.extent_io_tree*, %struct.extent_io_tree** %5, align 8
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* %9, align 4
  %124 = sub nsw i32 %123, 1
  %125 = call i32 @set_extent_delalloc(%struct.extent_io_tree* %121, i32 %122, i32 %124, i32 0, i32* null)
  %126 = load i32, i32* %13, align 4
  store i32 %126, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %127 = load %struct.inode*, %struct.inode** %4, align 8
  %128 = load %struct.page*, %struct.page** %7, align 8
  %129 = call i32 @find_lock_delalloc_range(%struct.inode* %127, %struct.page* %128, i32* %11, i32* %12)
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %120
  %133 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %302

134:                                              ; preds = %120
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %143, label %138

138:                                              ; preds = %134
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %9, align 4
  %141 = sub nsw i32 %140, 1
  %142 = icmp ne i32 %139, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %138, %134
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %9, align 4
  %146 = sub nsw i32 %145, 1
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %12, align 4
  %149 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i32 %144, i32 %146, i32 %147, i32 %148)
  br label %302

150:                                              ; preds = %138
  %151 = load %struct.inode*, %struct.inode** %4, align 8
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* @PROCESS_TEST_LOCKED, align 4
  %155 = load i32, i32* @PROCESS_UNLOCK, align 4
  %156 = or i32 %154, %155
  %157 = call i64 @process_page_range(%struct.inode* %151, i32 %152, i32 %153, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %150
  %160 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  br label %302

161:                                              ; preds = %150
  %162 = load %struct.extent_io_tree*, %struct.extent_io_tree** %5, align 8
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* %12, align 4
  %165 = call i32 @unlock_extent(%struct.extent_io_tree* %162, i32 %163, i32 %164)
  %166 = load %struct.page*, %struct.page** %7, align 8
  %167 = call i32 @put_page(%struct.page* %166)
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %3, align 4
  %170 = add nsw i32 %168, %169
  store i32 %170, i32* %13, align 4
  %171 = load %struct.inode*, %struct.inode** %4, align 8
  %172 = getelementptr inbounds %struct.inode, %struct.inode* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* @PAGE_SHIFT, align 4
  %176 = ashr i32 %174, %175
  %177 = call %struct.page* @find_lock_page(i32 %173, i32 %176)
  store %struct.page* %177, %struct.page** %7, align 8
  %178 = load %struct.page*, %struct.page** %7, align 8
  %179 = icmp ne %struct.page* %178, null
  br i1 %179, label %182, label %180

180:                                              ; preds = %161
  %181 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %302

182:                                              ; preds = %161
  %183 = load i32, i32* %13, align 4
  store i32 %183, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %184 = load %struct.inode*, %struct.inode** %4, align 8
  %185 = load %struct.page*, %struct.page** %7, align 8
  %186 = call i32 @find_lock_delalloc_range(%struct.inode* %184, %struct.page* %185, i32* %11, i32* %12)
  store i32 %186, i32* %14, align 4
  %187 = load i32, i32* %14, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %182
  %190 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  br label %302

191:                                              ; preds = %182
  %192 = load i32, i32* %12, align 4
  %193 = icmp ne i32 %192, -1
  br i1 %193, label %194, label %196

194:                                              ; preds = %191
  %195 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  br label %302

196:                                              ; preds = %191
  %197 = load %struct.extent_io_tree*, %struct.extent_io_tree** %5, align 8
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* %10, align 4
  %200 = sub nsw i32 %199, 1
  %201 = call i32 @set_extent_delalloc(%struct.extent_io_tree* %197, i32 %198, i32 %200, i32 0, i32* null)
  %202 = load i32, i32* %13, align 4
  store i32 %202, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %203 = load %struct.inode*, %struct.inode** %4, align 8
  %204 = load %struct.page*, %struct.page** %7, align 8
  %205 = call i32 @find_lock_delalloc_range(%struct.inode* %203, %struct.page* %204, i32* %11, i32* %12)
  store i32 %205, i32* %14, align 4
  %206 = load i32, i32* %14, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %196
  %209 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  br label %302

210:                                              ; preds = %196
  %211 = load i32, i32* %11, align 4
  %212 = load i32, i32* %13, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %219, label %214

214:                                              ; preds = %210
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* %10, align 4
  %217 = sub nsw i32 %216, 1
  %218 = icmp ne i32 %215, %217
  br i1 %218, label %219, label %226

219:                                              ; preds = %214, %210
  %220 = load i32, i32* %13, align 4
  %221 = load i32, i32* %10, align 4
  %222 = sub nsw i32 %221, 1
  %223 = load i32, i32* %11, align 4
  %224 = load i32, i32* %12, align 4
  %225 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i32 %220, i32 %222, i32 %223, i32 %224)
  br label %302

226:                                              ; preds = %214
  %227 = load %struct.inode*, %struct.inode** %4, align 8
  %228 = load i32, i32* %11, align 4
  %229 = load i32, i32* %12, align 4
  %230 = load i32, i32* @PROCESS_TEST_LOCKED, align 4
  %231 = load i32, i32* @PROCESS_UNLOCK, align 4
  %232 = or i32 %230, %231
  %233 = call i64 @process_page_range(%struct.inode* %227, i32 %228, i32 %229, i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %226
  %236 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  br label %302

237:                                              ; preds = %226
  %238 = load %struct.extent_io_tree*, %struct.extent_io_tree** %5, align 8
  %239 = load i32, i32* %11, align 4
  %240 = load i32, i32* %12, align 4
  %241 = call i32 @unlock_extent(%struct.extent_io_tree* %238, i32 %239, i32 %240)
  %242 = load %struct.inode*, %struct.inode** %4, align 8
  %243 = getelementptr inbounds %struct.inode, %struct.inode* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %9, align 4
  %246 = load i32, i32* @SZ_1M, align 4
  %247 = add nsw i32 %245, %246
  %248 = load i32, i32* @PAGE_SHIFT, align 4
  %249 = ashr i32 %247, %248
  %250 = call %struct.page* @find_get_page(i32 %244, i32 %249)
  store %struct.page* %250, %struct.page** %6, align 8
  %251 = load %struct.page*, %struct.page** %6, align 8
  %252 = icmp ne %struct.page* %251, null
  br i1 %252, label %255, label %253

253:                                              ; preds = %237
  %254 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  br label %302

255:                                              ; preds = %237
  %256 = load %struct.page*, %struct.page** %6, align 8
  %257 = call i32 @ClearPageDirty(%struct.page* %256)
  %258 = load %struct.page*, %struct.page** %6, align 8
  %259 = call i32 @put_page(%struct.page* %258)
  %260 = load %struct.page*, %struct.page** %7, align 8
  %261 = call i32 @lock_page(%struct.page* %260)
  %262 = load i32, i32* %13, align 4
  store i32 %262, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %263 = load %struct.inode*, %struct.inode** %4, align 8
  %264 = load %struct.page*, %struct.page** %7, align 8
  %265 = call i32 @find_lock_delalloc_range(%struct.inode* %263, %struct.page* %264, i32* %11, i32* %12)
  store i32 %265, i32* %14, align 4
  %266 = load i32, i32* %14, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %270, label %268

268:                                              ; preds = %255
  %269 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  br label %302

270:                                              ; preds = %255
  %271 = load i32, i32* %11, align 4
  %272 = load i32, i32* %13, align 4
  %273 = icmp ne i32 %271, %272
  br i1 %273, label %274, label %290

274:                                              ; preds = %270
  %275 = load i32, i32* %12, align 4
  %276 = load i32, i32* %13, align 4
  %277 = load i32, i32* @PAGE_SIZE, align 4
  %278 = add nsw i32 %276, %277
  %279 = sub nsw i32 %278, 1
  %280 = icmp ne i32 %275, %279
  br i1 %280, label %281, label %290

281:                                              ; preds = %274
  %282 = load i32, i32* %13, align 4
  %283 = load i32, i32* %13, align 4
  %284 = load i32, i32* @PAGE_SIZE, align 4
  %285 = add nsw i32 %283, %284
  %286 = sub nsw i32 %285, 1
  %287 = load i32, i32* %11, align 4
  %288 = load i32, i32* %12, align 4
  %289 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i32 %282, i32 %286, i32 %287, i32 %288)
  br label %302

290:                                              ; preds = %274, %270
  %291 = load %struct.inode*, %struct.inode** %4, align 8
  %292 = load i32, i32* %11, align 4
  %293 = load i32, i32* %12, align 4
  %294 = load i32, i32* @PROCESS_TEST_LOCKED, align 4
  %295 = load i32, i32* @PROCESS_UNLOCK, align 4
  %296 = or i32 %294, %295
  %297 = call i64 @process_page_range(%struct.inode* %291, i32 %292, i32 %293, i32 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %290
  %300 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  br label %302

301:                                              ; preds = %290
  store i32 0, i32* %15, align 4
  br label %302

302:                                              ; preds = %301, %299, %281, %268, %253, %235, %219, %208, %194, %189, %180, %159, %143, %132, %118, %93, %83
  %303 = load %struct.extent_io_tree*, %struct.extent_io_tree** %5, align 8
  %304 = load i32, i32* %10, align 4
  %305 = sub nsw i32 %304, 1
  %306 = call i32 @clear_extent_bits(%struct.extent_io_tree* %303, i32 0, i32 %305, i32 -1)
  br label %307

307:                                              ; preds = %302, %53
  %308 = load %struct.page*, %struct.page** %7, align 8
  %309 = icmp ne %struct.page* %308, null
  br i1 %309, label %310, label %313

310:                                              ; preds = %307
  %311 = load %struct.page*, %struct.page** %7, align 8
  %312 = call i32 @put_page(%struct.page* %311)
  br label %313

313:                                              ; preds = %310, %307
  %314 = load %struct.inode*, %struct.inode** %4, align 8
  %315 = load i32, i32* %10, align 4
  %316 = sub nsw i32 %315, 1
  %317 = load i32, i32* @PROCESS_UNLOCK, align 4
  %318 = load i32, i32* @PROCESS_RELEASE, align 4
  %319 = or i32 %317, %318
  %320 = call i64 @process_page_range(%struct.inode* %314, i32 0, i32 %316, i32 %319)
  %321 = load %struct.inode*, %struct.inode** %4, align 8
  %322 = call i32 @iput(%struct.inode* %321)
  %323 = load i32, i32* %15, align 4
  store i32 %323, i32* %2, align 4
  br label %324

324:                                              ; preds = %313, %25
  %325 = load i32, i32* %2, align 4
  ret i32 %325
}

declare dso_local i32 @test_msg(i8*) #1

declare dso_local %struct.inode* @btrfs_new_test_inode(...) #1

declare dso_local i32 @test_std_err(i32) #1

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @extent_io_tree_init(i32*, %struct.extent_io_tree*, i32, i32*) #1

declare dso_local %struct.page* @find_or_create_page(i32, i64, i32) #1

declare dso_local i32 @test_err(i8*, ...) #1

declare dso_local i32 @SetPageDirty(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @set_extent_delalloc(%struct.extent_io_tree*, i32, i32, i32, i32*) #1

declare dso_local i32 @find_lock_delalloc_range(%struct.inode*, %struct.page*, i32*, i32*) #1

declare dso_local i32 @unlock_extent(%struct.extent_io_tree*, i32, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local %struct.page* @find_lock_page(i32, i32) #1

declare dso_local i64 @process_page_range(%struct.inode*, i32, i32, i32) #1

declare dso_local %struct.page* @find_get_page(i32, i32) #1

declare dso_local i32 @ClearPageDirty(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @clear_extent_bits(%struct.extent_io_tree*, i32, i32, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
