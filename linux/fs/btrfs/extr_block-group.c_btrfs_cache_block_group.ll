; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_btrfs_cache_block_group.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_btrfs_cache_block_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { i64, i32, i32, i32, %struct.btrfs_caching_control*, %struct.TYPE_4__*, i32, %struct.TYPE_3__, %struct.btrfs_fs_info* }
%struct.btrfs_caching_control = type { i32, i32, i32, i32, i32, i32, %struct.btrfs_block_group_cache* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.btrfs_fs_info = type { i32, i32, i32 }

@wait = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@btrfs_cache_helper = common dso_local global i32 0, align 4
@caching_thread = common dso_local global i32 0, align 4
@BTRFS_CACHE_FAST = common dso_local global i64 0, align 8
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@BTRFS_CACHE_NO = common dso_local global i64 0, align 8
@SPACE_CACHE = common dso_local global i32 0, align 4
@BTRFS_CACHE_FINISHED = common dso_local global i64 0, align 8
@BTRFS_CACHE_STARTED = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_cache_block_group(%struct.btrfs_block_group_cache* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_block_group_cache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca %struct.btrfs_caching_control*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_caching_control*, align 8
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @wait, align 4
  %11 = call i32 @DEFINE_WAIT(i32 %10)
  %12 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %13 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %12, i32 0, i32 8
  %14 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %13, align 8
  store %struct.btrfs_fs_info* %14, %struct.btrfs_fs_info** %6, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* @GFP_NOFS, align 4
  %16 = call %struct.btrfs_caching_control* @kzalloc(i32 32, i32 %15)
  store %struct.btrfs_caching_control* %16, %struct.btrfs_caching_control** %7, align 8
  %17 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %7, align 8
  %18 = icmp ne %struct.btrfs_caching_control* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %223

22:                                               ; preds = %2
  %23 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %7, align 8
  %24 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %23, i32 0, i32 2
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %7, align 8
  %27 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %26, i32 0, i32 5
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %7, align 8
  %30 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %29, i32 0, i32 4
  %31 = call i32 @init_waitqueue_head(i32* %30)
  %32 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %33 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %7, align 8
  %34 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %33, i32 0, i32 6
  store %struct.btrfs_block_group_cache* %32, %struct.btrfs_block_group_cache** %34, align 8
  %35 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %36 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %35, i32 0, i32 7
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %7, align 8
  %40 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %7, align 8
  %42 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %41, i32 0, i32 3
  %43 = call i32 @refcount_set(i32* %42, i32 1)
  %44 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %7, align 8
  %45 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %44, i32 0, i32 1
  %46 = load i32, i32* @btrfs_cache_helper, align 4
  %47 = load i32, i32* @caching_thread, align 4
  %48 = call i32 @btrfs_init_work(i32* %45, i32 %46, i32 %47, i32* null, i32* null)
  %49 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %50 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %49, i32 0, i32 3
  %51 = call i32 @spin_lock(i32* %50)
  br label %52

52:                                               ; preds = %58, %22
  %53 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %54 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @BTRFS_CACHE_FAST, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %81

58:                                               ; preds = %52
  %59 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %60 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %59, i32 0, i32 4
  %61 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %60, align 8
  store %struct.btrfs_caching_control* %61, %struct.btrfs_caching_control** %9, align 8
  %62 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %9, align 8
  %63 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %62, i32 0, i32 3
  %64 = call i32 @refcount_inc(i32* %63)
  %65 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %9, align 8
  %66 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %65, i32 0, i32 4
  %67 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %68 = call i32 @prepare_to_wait(i32* %66, i32* @wait, i32 %67)
  %69 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %70 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %69, i32 0, i32 3
  %71 = call i32 @spin_unlock(i32* %70)
  %72 = call i32 (...) @schedule()
  %73 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %9, align 8
  %74 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %73, i32 0, i32 4
  %75 = call i32 @finish_wait(i32* %74, i32* @wait)
  %76 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %9, align 8
  %77 = call i32 @btrfs_put_caching_control(%struct.btrfs_caching_control* %76)
  %78 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %79 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %78, i32 0, i32 3
  %80 = call i32 @spin_lock(i32* %79)
  br label %52

81:                                               ; preds = %52
  %82 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %83 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @BTRFS_CACHE_NO, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %89 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %88, i32 0, i32 3
  %90 = call i32 @spin_unlock(i32* %89)
  %91 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %7, align 8
  %92 = call i32 @kfree(%struct.btrfs_caching_control* %91)
  store i32 0, i32* %3, align 4
  br label %223

93:                                               ; preds = %81
  %94 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %95 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %94, i32 0, i32 4
  %96 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %95, align 8
  %97 = call i32 @WARN_ON(%struct.btrfs_caching_control* %96)
  %98 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %7, align 8
  %99 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %100 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %99, i32 0, i32 4
  store %struct.btrfs_caching_control* %98, %struct.btrfs_caching_control** %100, align 8
  %101 = load i64, i64* @BTRFS_CACHE_FAST, align 8
  %102 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %103 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %105 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %104, i32 0, i32 3
  %106 = call i32 @spin_unlock(i32* %105)
  %107 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %108 = load i32, i32* @SPACE_CACHE, align 4
  %109 = call i64 @btrfs_test_opt(%struct.btrfs_fs_info* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %167

111:                                              ; preds = %93
  %112 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %7, align 8
  %113 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %112, i32 0, i32 5
  %114 = call i32 @mutex_lock(i32* %113)
  %115 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %116 = call i32 @load_free_space_cache(%struct.btrfs_block_group_cache* %115)
  store i32 %116, i32* %8, align 4
  %117 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %118 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %117, i32 0, i32 3
  %119 = call i32 @spin_lock(i32* %118)
  %120 = load i32, i32* %8, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %132

122:                                              ; preds = %111
  %123 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %124 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %123, i32 0, i32 4
  store %struct.btrfs_caching_control* null, %struct.btrfs_caching_control** %124, align 8
  %125 = load i64, i64* @BTRFS_CACHE_FINISHED, align 8
  %126 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %127 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %129 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %128, i32 0, i32 1
  store i32 -1, i32* %129, align 8
  %130 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %7, align 8
  %131 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %130, i32 0, i32 0
  store i32 -1, i32* %131, align 8
  br label %149

132:                                              ; preds = %111
  %133 = load i32, i32* %5, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %137 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %136, i32 0, i32 4
  store %struct.btrfs_caching_control* null, %struct.btrfs_caching_control** %137, align 8
  %138 = load i64, i64* @BTRFS_CACHE_NO, align 8
  %139 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %140 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  br label %148

141:                                              ; preds = %132
  %142 = load i8*, i8** @BTRFS_CACHE_STARTED, align 8
  %143 = ptrtoint i8* %142 to i64
  %144 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %145 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  %146 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %147 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %146, i32 0, i32 2
  store i32 1, i32* %147, align 4
  br label %148

148:                                              ; preds = %141, %135
  br label %149

149:                                              ; preds = %148, %122
  %150 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %151 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %150, i32 0, i32 3
  %152 = call i32 @spin_unlock(i32* %151)
  %153 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %7, align 8
  %154 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %153, i32 0, i32 5
  %155 = call i32 @mutex_unlock(i32* %154)
  %156 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %7, align 8
  %157 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %156, i32 0, i32 4
  %158 = call i32 @wake_up(i32* %157)
  %159 = load i32, i32* %8, align 4
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %161, label %166

161:                                              ; preds = %149
  %162 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %7, align 8
  %163 = call i32 @btrfs_put_caching_control(%struct.btrfs_caching_control* %162)
  %164 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %165 = call i32 @btrfs_free_excluded_extents(%struct.btrfs_block_group_cache* %164)
  store i32 0, i32* %3, align 4
  br label %223

166:                                              ; preds = %149
  br label %193

167:                                              ; preds = %93
  %168 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %169 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %168, i32 0, i32 3
  %170 = call i32 @spin_lock(i32* %169)
  %171 = load i32, i32* %5, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %167
  %174 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %175 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %174, i32 0, i32 4
  store %struct.btrfs_caching_control* null, %struct.btrfs_caching_control** %175, align 8
  %176 = load i64, i64* @BTRFS_CACHE_NO, align 8
  %177 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %178 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %177, i32 0, i32 0
  store i64 %176, i64* %178, align 8
  br label %186

179:                                              ; preds = %167
  %180 = load i8*, i8** @BTRFS_CACHE_STARTED, align 8
  %181 = ptrtoint i8* %180 to i64
  %182 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %183 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %182, i32 0, i32 0
  store i64 %181, i64* %183, align 8
  %184 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %185 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %184, i32 0, i32 2
  store i32 1, i32* %185, align 4
  br label %186

186:                                              ; preds = %179, %173
  %187 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %188 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %187, i32 0, i32 3
  %189 = call i32 @spin_unlock(i32* %188)
  %190 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %7, align 8
  %191 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %190, i32 0, i32 4
  %192 = call i32 @wake_up(i32* %191)
  br label %193

193:                                              ; preds = %186, %166
  %194 = load i32, i32* %5, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %7, align 8
  %198 = call i32 @btrfs_put_caching_control(%struct.btrfs_caching_control* %197)
  store i32 0, i32* %3, align 4
  br label %223

199:                                              ; preds = %193
  %200 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %201 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %200, i32 0, i32 1
  %202 = call i32 @down_write(i32* %201)
  %203 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %7, align 8
  %204 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %203, i32 0, i32 3
  %205 = call i32 @refcount_inc(i32* %204)
  %206 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %7, align 8
  %207 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %206, i32 0, i32 2
  %208 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %209 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %208, i32 0, i32 2
  %210 = call i32 @list_add_tail(i32* %207, i32* %209)
  %211 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %212 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %211, i32 0, i32 1
  %213 = call i32 @up_write(i32* %212)
  %214 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %215 = call i32 @btrfs_get_block_group(%struct.btrfs_block_group_cache* %214)
  %216 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %217 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.btrfs_caching_control*, %struct.btrfs_caching_control** %7, align 8
  %220 = getelementptr inbounds %struct.btrfs_caching_control, %struct.btrfs_caching_control* %219, i32 0, i32 1
  %221 = call i32 @btrfs_queue_work(i32 %218, i32* %220)
  %222 = load i32, i32* %8, align 4
  store i32 %222, i32* %3, align 4
  br label %223

223:                                              ; preds = %199, %196, %161, %87, %19
  %224 = load i32, i32* %3, align 4
  ret i32 %224
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local %struct.btrfs_caching_control* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @btrfs_init_work(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @btrfs_put_caching_control(%struct.btrfs_caching_control*) #1

declare dso_local i32 @kfree(%struct.btrfs_caching_control*) #1

declare dso_local i32 @WARN_ON(%struct.btrfs_caching_control*) #1

declare dso_local i64 @btrfs_test_opt(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @load_free_space_cache(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @btrfs_free_excluded_extents(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @btrfs_get_block_group(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @btrfs_queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
