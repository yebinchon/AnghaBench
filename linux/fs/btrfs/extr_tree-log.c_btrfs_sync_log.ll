; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_btrfs_sync_log.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_btrfs_sync_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32, i32, i32, i32*, i32, i32*, %struct.TYPE_3__*, i32, i32, i32, i32*, i32, i64, i32, i32, %struct.btrfs_root*, %struct.btrfs_fs_info* }
%struct.TYPE_3__ = type { i32 }
%struct.btrfs_fs_info = type { i32, %struct.btrfs_root* }
%struct.btrfs_log_ctx = type { i32, i32, i32 }
%struct.btrfs_root_item = type { i32 }
%struct.blk_plug = type { i32 }

@SSD = common dso_local global i32 0, align 4
@BTRFS_ROOT_MULTI_LOG_TASKS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EXTENT_DIRTY = common dso_local global i32 0, align 4
@EXTENT_NEW = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_sync_log(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_log_ctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.btrfs_log_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_fs_info*, align 8
  %13 = alloca %struct.btrfs_root*, align 8
  %14 = alloca %struct.btrfs_root*, align 8
  %15 = alloca %struct.btrfs_root_item, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.btrfs_log_ctx, align 4
  %18 = alloca %struct.blk_plug, align 4
  %19 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %6, align 8
  store %struct.btrfs_log_ctx* %2, %struct.btrfs_log_ctx** %7, align 8
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %21 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %20, i32 0, i32 16
  %22 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %21, align 8
  store %struct.btrfs_fs_info* %22, %struct.btrfs_fs_info** %12, align 8
  %23 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %24 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %23, i32 0, i32 15
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %24, align 8
  store %struct.btrfs_root* %25, %struct.btrfs_root** %13, align 8
  %26 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %27 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %26, i32 0, i32 1
  %28 = load %struct.btrfs_root*, %struct.btrfs_root** %27, align 8
  store %struct.btrfs_root* %28, %struct.btrfs_root** %14, align 8
  store i32 0, i32* %16, align 4
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %30 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %29, i32 0, i32 4
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.btrfs_log_ctx*, %struct.btrfs_log_ctx** %7, align 8
  %33 = getelementptr inbounds %struct.btrfs_log_ctx, %struct.btrfs_log_ctx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %16, align 4
  %35 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %36 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %16, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %3
  %41 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %42 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %41, i32 0, i32 4
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load %struct.btrfs_log_ctx*, %struct.btrfs_log_ctx** %7, align 8
  %45 = getelementptr inbounds %struct.btrfs_log_ctx, %struct.btrfs_log_ctx* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %4, align 4
  br label %515

47:                                               ; preds = %3
  %48 = load i32, i32* %16, align 4
  %49 = srem i32 %48, 2
  store i32 %49, i32* %8, align 4
  %50 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %51 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %50, i32 0, i32 5
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = call i32 @atomic_read(i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %47
  %59 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %60 = load i32, i32* %16, align 4
  %61 = call i32 @wait_log_commit(%struct.btrfs_root* %59, i32 %60)
  %62 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %63 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %62, i32 0, i32 4
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load %struct.btrfs_log_ctx*, %struct.btrfs_log_ctx** %7, align 8
  %66 = getelementptr inbounds %struct.btrfs_log_ctx, %struct.btrfs_log_ctx* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %4, align 4
  br label %515

68:                                               ; preds = %47
  %69 = load i32, i32* %16, align 4
  %70 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %71 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %69, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @ASSERT(i32 %74)
  %76 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %77 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %76, i32 0, i32 5
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = call i32 @atomic_set(i32* %81, i32 1)
  %83 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %84 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %83, i32 0, i32 5
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  %88 = srem i32 %87, 2
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %85, i64 %89
  %91 = call i32 @atomic_read(i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %68
  %94 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sub nsw i32 %95, 1
  %97 = call i32 @wait_log_commit(%struct.btrfs_root* %94, i32 %96)
  br label %98

98:                                               ; preds = %93, %68
  br label %99

99:                                               ; preds = %98, %130
  %100 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %101 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %100, i32 0, i32 11
  %102 = call i32 @atomic_read(i32* %101)
  store i32 %102, i32* %19, align 4
  %103 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %104 = load i32, i32* @SSD, align 4
  %105 = call i32 @btrfs_test_opt(%struct.btrfs_fs_info* %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %121, label %107

107:                                              ; preds = %99
  %108 = load i32, i32* @BTRFS_ROOT_MULTI_LOG_TASKS, align 4
  %109 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %110 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %109, i32 0, i32 14
  %111 = call i64 @test_bit(i32 %108, i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %107
  %114 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %115 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %114, i32 0, i32 4
  %116 = call i32 @mutex_unlock(i32* %115)
  %117 = call i32 @schedule_timeout_uninterruptible(i32 1)
  %118 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %119 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %118, i32 0, i32 4
  %120 = call i32 @mutex_lock(i32* %119)
  br label %121

121:                                              ; preds = %113, %107, %99
  %122 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %123 = call i32 @wait_for_writer(%struct.btrfs_root* %122)
  %124 = load i32, i32* %19, align 4
  %125 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %126 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %125, i32 0, i32 11
  %127 = call i32 @atomic_read(i32* %126)
  %128 = icmp eq i32 %124, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  br label %131

130:                                              ; preds = %121
  br label %99

131:                                              ; preds = %129
  %132 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %133 = call i64 @btrfs_need_log_full_commit(%struct.btrfs_trans_handle* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %131
  %136 = load i32, i32* @EAGAIN, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %11, align 4
  %138 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %139 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %138, i32 0, i32 4
  %140 = call i32 @mutex_unlock(i32* %139)
  br label %485

141:                                              ; preds = %131
  %142 = load i32, i32* %16, align 4
  %143 = srem i32 %142, 2
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load i32, i32* @EXTENT_DIRTY, align 4
  store i32 %146, i32* %10, align 4
  br label %149

147:                                              ; preds = %141
  %148 = load i32, i32* @EXTENT_NEW, align 4
  store i32 %148, i32* %10, align 4
  br label %149

149:                                              ; preds = %147, %145
  %150 = call i32 @blk_start_plug(%struct.blk_plug* %18)
  %151 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %152 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  %153 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %152, i32 0, i32 7
  %154 = load i32, i32* %10, align 4
  %155 = call i32 @btrfs_write_marked_extents(%struct.btrfs_fs_info* %151, i32* %153, i32 %154)
  store i32 %155, i32* %11, align 4
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %149
  %159 = call i32 @blk_finish_plug(%struct.blk_plug* %18)
  %160 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %161 = load i32, i32* %11, align 4
  %162 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %160, i32 %161)
  %163 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %164 = call i32 @btrfs_set_log_full_commit(%struct.btrfs_trans_handle* %163)
  %165 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %166 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %165, i32 0, i32 4
  %167 = call i32 @mutex_unlock(i32* %166)
  br label %485

168:                                              ; preds = %149
  %169 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  %170 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %169, i32 0, i32 13
  %171 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  %172 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %171, i32 0, i32 6
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %172, align 8
  %174 = call i32 @btrfs_set_root_node(i32* %170, %struct.TYPE_3__* %173)
  %175 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  %176 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %175, i32 0, i32 13
  %177 = call i32 @memcpy(%struct.btrfs_root_item* %15, i32* %176, i32 4)
  %178 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %179 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %179, align 4
  %182 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %183 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  %186 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %188 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %187, i32 0, i32 12
  store i64 0, i64* %188, align 8
  %189 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %190 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %189, i32 0, i32 4
  %191 = call i32 @mutex_unlock(i32* %190)
  %192 = call i32 @btrfs_init_log_ctx(%struct.btrfs_log_ctx* %17, i32* null)
  %193 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %194 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %193, i32 0, i32 4
  %195 = call i32 @mutex_lock(i32* %194)
  %196 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %197 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %196, i32 0, i32 11
  %198 = call i32 @atomic_inc(i32* %197)
  %199 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %200 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %199, i32 0, i32 9
  %201 = call i32 @atomic_inc(i32* %200)
  %202 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %203 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = srem i32 %204, 2
  store i32 %205, i32* %9, align 4
  %206 = getelementptr inbounds %struct.btrfs_log_ctx, %struct.btrfs_log_ctx* %17, i32 0, i32 2
  %207 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %208 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %207, i32 0, i32 10
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %9, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = call i32 @list_add_tail(i32* %206, i32* %212)
  %214 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %215 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = getelementptr inbounds %struct.btrfs_log_ctx, %struct.btrfs_log_ctx* %17, i32 0, i32 0
  store i32 %216, i32* %217, align 4
  %218 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %219 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %218, i32 0, i32 4
  %220 = call i32 @mutex_unlock(i32* %219)
  %221 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %222 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %221, i32 0, i32 4
  %223 = call i32 @mutex_lock(i32* %222)
  %224 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %225 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  %226 = call i32 @update_log_root(%struct.btrfs_trans_handle* %224, %struct.btrfs_root* %225, %struct.btrfs_root_item* %15)
  store i32 %226, i32* %11, align 4
  %227 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %228 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %227, i32 0, i32 9
  %229 = call i64 @atomic_dec_and_test(i32* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %168
  %232 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %233 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %232, i32 0, i32 8
  %234 = call i32 @cond_wake_up_nomb(i32* %233)
  br label %235

235:                                              ; preds = %231, %168
  %236 = load i32, i32* %11, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %269

238:                                              ; preds = %235
  %239 = getelementptr inbounds %struct.btrfs_log_ctx, %struct.btrfs_log_ctx* %17, i32 0, i32 2
  %240 = call i32 @list_empty(i32* %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.btrfs_log_ctx, %struct.btrfs_log_ctx* %17, i32 0, i32 2
  %244 = call i32 @list_del_init(i32* %243)
  br label %245

245:                                              ; preds = %242, %238
  %246 = call i32 @blk_finish_plug(%struct.blk_plug* %18)
  %247 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %248 = call i32 @btrfs_set_log_full_commit(%struct.btrfs_trans_handle* %247)
  %249 = load i32, i32* %11, align 4
  %250 = load i32, i32* @ENOSPC, align 4
  %251 = sub nsw i32 0, %250
  %252 = icmp ne i32 %249, %251
  br i1 %252, label %253, label %260

253:                                              ; preds = %245
  %254 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %255 = load i32, i32* %11, align 4
  %256 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %254, i32 %255)
  %257 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %258 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %257, i32 0, i32 4
  %259 = call i32 @mutex_unlock(i32* %258)
  br label %485

260:                                              ; preds = %245
  %261 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  %262 = load i32, i32* %10, align 4
  %263 = call i32 @btrfs_wait_tree_log_extents(%struct.btrfs_root* %261, i32 %262)
  %264 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %265 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %264, i32 0, i32 4
  %266 = call i32 @mutex_unlock(i32* %265)
  %267 = load i32, i32* @EAGAIN, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %11, align 4
  br label %485

269:                                              ; preds = %235
  %270 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %271 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = getelementptr inbounds %struct.btrfs_log_ctx, %struct.btrfs_log_ctx* %17, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = icmp sge i32 %272, %274
  br i1 %275, label %276, label %285

276:                                              ; preds = %269
  %277 = call i32 @blk_finish_plug(%struct.blk_plug* %18)
  %278 = getelementptr inbounds %struct.btrfs_log_ctx, %struct.btrfs_log_ctx* %17, i32 0, i32 2
  %279 = call i32 @list_del_init(i32* %278)
  %280 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %281 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %280, i32 0, i32 4
  %282 = call i32 @mutex_unlock(i32* %281)
  %283 = getelementptr inbounds %struct.btrfs_log_ctx, %struct.btrfs_log_ctx* %17, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  store i32 %284, i32* %11, align 4
  br label %485

285:                                              ; preds = %269
  %286 = getelementptr inbounds %struct.btrfs_log_ctx, %struct.btrfs_log_ctx* %17, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = srem i32 %287, 2
  store i32 %288, i32* %9, align 4
  %289 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %290 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %289, i32 0, i32 5
  %291 = load i32*, i32** %290, align 8
  %292 = load i32, i32* %9, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = call i32 @atomic_read(i32* %294)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %315

297:                                              ; preds = %285
  %298 = call i32 @blk_finish_plug(%struct.blk_plug* %18)
  %299 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  %300 = load i32, i32* %10, align 4
  %301 = call i32 @btrfs_wait_tree_log_extents(%struct.btrfs_root* %299, i32 %300)
  store i32 %301, i32* %11, align 4
  %302 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %303 = getelementptr inbounds %struct.btrfs_log_ctx, %struct.btrfs_log_ctx* %17, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @wait_log_commit(%struct.btrfs_root* %302, i32 %304)
  %306 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %307 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %306, i32 0, i32 4
  %308 = call i32 @mutex_unlock(i32* %307)
  %309 = load i32, i32* %11, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %314, label %311

311:                                              ; preds = %297
  %312 = getelementptr inbounds %struct.btrfs_log_ctx, %struct.btrfs_log_ctx* %17, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  store i32 %313, i32* %11, align 4
  br label %314

314:                                              ; preds = %311, %297
  br label %485

315:                                              ; preds = %285
  %316 = getelementptr inbounds %struct.btrfs_log_ctx, %struct.btrfs_log_ctx* %17, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %319 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = icmp eq i32 %317, %320
  %322 = zext i1 %321 to i32
  %323 = call i32 @ASSERT(i32 %322)
  %324 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %325 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %324, i32 0, i32 5
  %326 = load i32*, i32** %325, align 8
  %327 = load i32, i32* %9, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %326, i64 %328
  %330 = call i32 @atomic_set(i32* %329, i32 1)
  %331 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %332 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %331, i32 0, i32 5
  %333 = load i32*, i32** %332, align 8
  %334 = load i32, i32* %9, align 4
  %335 = add nsw i32 %334, 1
  %336 = srem i32 %335, 2
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %333, i64 %337
  %339 = call i32 @atomic_read(i32* %338)
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %347

341:                                              ; preds = %315
  %342 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %343 = getelementptr inbounds %struct.btrfs_log_ctx, %struct.btrfs_log_ctx* %17, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = sub nsw i32 %344, 1
  %346 = call i32 @wait_log_commit(%struct.btrfs_root* %342, i32 %345)
  br label %347

347:                                              ; preds = %341, %315
  %348 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %349 = call i32 @wait_for_writer(%struct.btrfs_root* %348)
  %350 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %351 = call i64 @btrfs_need_log_full_commit(%struct.btrfs_trans_handle* %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %363

353:                                              ; preds = %347
  %354 = call i32 @blk_finish_plug(%struct.blk_plug* %18)
  %355 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  %356 = load i32, i32* %10, align 4
  %357 = call i32 @btrfs_wait_tree_log_extents(%struct.btrfs_root* %355, i32 %356)
  %358 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %359 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %358, i32 0, i32 4
  %360 = call i32 @mutex_unlock(i32* %359)
  %361 = load i32, i32* @EAGAIN, align 4
  %362 = sub nsw i32 0, %361
  store i32 %362, i32* %11, align 4
  br label %456

363:                                              ; preds = %347
  %364 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %365 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %366 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %365, i32 0, i32 7
  %367 = load i32, i32* @EXTENT_DIRTY, align 4
  %368 = load i32, i32* @EXTENT_NEW, align 4
  %369 = or i32 %367, %368
  %370 = call i32 @btrfs_write_marked_extents(%struct.btrfs_fs_info* %364, i32* %366, i32 %369)
  store i32 %370, i32* %11, align 4
  %371 = call i32 @blk_finish_plug(%struct.blk_plug* %18)
  %372 = load i32, i32* %11, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %383

374:                                              ; preds = %363
  %375 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %376 = call i32 @btrfs_set_log_full_commit(%struct.btrfs_trans_handle* %375)
  %377 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %378 = load i32, i32* %11, align 4
  %379 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %377, i32 %378)
  %380 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %381 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %380, i32 0, i32 4
  %382 = call i32 @mutex_unlock(i32* %381)
  br label %456

383:                                              ; preds = %363
  %384 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  %385 = load i32, i32* %10, align 4
  %386 = call i32 @btrfs_wait_tree_log_extents(%struct.btrfs_root* %384, i32 %385)
  store i32 %386, i32* %11, align 4
  %387 = load i32, i32* %11, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %395, label %389

389:                                              ; preds = %383
  %390 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %391 = load i32, i32* @EXTENT_NEW, align 4
  %392 = load i32, i32* @EXTENT_DIRTY, align 4
  %393 = or i32 %391, %392
  %394 = call i32 @btrfs_wait_tree_log_extents(%struct.btrfs_root* %390, i32 %393)
  store i32 %394, i32* %11, align 4
  br label %395

395:                                              ; preds = %389, %383
  %396 = load i32, i32* %11, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %404

398:                                              ; preds = %395
  %399 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %400 = call i32 @btrfs_set_log_full_commit(%struct.btrfs_trans_handle* %399)
  %401 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %402 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %401, i32 0, i32 4
  %403 = call i32 @mutex_unlock(i32* %402)
  br label %456

404:                                              ; preds = %395
  %405 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %406 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %409 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %408, i32 0, i32 6
  %410 = load %struct.TYPE_3__*, %struct.TYPE_3__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 4
  %413 = call i32 @btrfs_set_super_log_root(i32 %407, i32 %412)
  %414 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %415 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %418 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %417, i32 0, i32 6
  %419 = load %struct.TYPE_3__*, %struct.TYPE_3__** %418, align 8
  %420 = call i32 @btrfs_header_level(%struct.TYPE_3__* %419)
  %421 = call i32 @btrfs_set_super_log_root_level(i32 %416, i32 %420)
  %422 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %423 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %423, align 4
  %426 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %427 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %426, i32 0, i32 4
  %428 = call i32 @mutex_unlock(i32* %427)
  %429 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %430 = call i32 @write_all_supers(%struct.btrfs_fs_info* %429, i32 1)
  store i32 %430, i32* %11, align 4
  %431 = load i32, i32* %11, align 4
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %439

433:                                              ; preds = %404
  %434 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %435 = call i32 @btrfs_set_log_full_commit(%struct.btrfs_trans_handle* %434)
  %436 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %437 = load i32, i32* %11, align 4
  %438 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %436, i32 %437)
  br label %456

439:                                              ; preds = %404
  %440 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %441 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %440, i32 0, i32 4
  %442 = call i32 @mutex_lock(i32* %441)
  %443 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %444 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %443, i32 0, i32 2
  %445 = load i32, i32* %444, align 8
  %446 = load i32, i32* %16, align 4
  %447 = icmp slt i32 %445, %446
  br i1 %447, label %448, label %452

448:                                              ; preds = %439
  %449 = load i32, i32* %16, align 4
  %450 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %451 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %450, i32 0, i32 2
  store i32 %449, i32* %451, align 8
  br label %452

452:                                              ; preds = %448, %439
  %453 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %454 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %453, i32 0, i32 4
  %455 = call i32 @mutex_unlock(i32* %454)
  br label %456

456:                                              ; preds = %452, %433, %398, %374, %353
  %457 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %458 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %457, i32 0, i32 4
  %459 = call i32 @mutex_lock(i32* %458)
  %460 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %461 = load i32, i32* %9, align 4
  %462 = load i32, i32* %11, align 4
  %463 = call i32 @btrfs_remove_all_log_ctxs(%struct.btrfs_root* %460, i32 %461, i32 %462)
  %464 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %465 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 8
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %465, align 8
  %468 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %469 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %468, i32 0, i32 5
  %470 = load i32*, i32** %469, align 8
  %471 = load i32, i32* %9, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i32, i32* %470, i64 %472
  %474 = call i32 @atomic_set(i32* %473, i32 0)
  %475 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %476 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %475, i32 0, i32 4
  %477 = call i32 @mutex_unlock(i32* %476)
  %478 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  %479 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %478, i32 0, i32 3
  %480 = load i32*, i32** %479, align 8
  %481 = load i32, i32* %9, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i32, i32* %480, i64 %482
  %484 = call i32 @cond_wake_up(i32* %483)
  br label %485

485:                                              ; preds = %456, %314, %276, %260, %253, %158, %135
  %486 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %487 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %486, i32 0, i32 4
  %488 = call i32 @mutex_lock(i32* %487)
  %489 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %490 = load i32, i32* %8, align 4
  %491 = load i32, i32* %11, align 4
  %492 = call i32 @btrfs_remove_all_log_ctxs(%struct.btrfs_root* %489, i32 %490, i32 %491)
  %493 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %494 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 8
  %496 = add nsw i32 %495, 1
  store i32 %496, i32* %494, align 8
  %497 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %498 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %497, i32 0, i32 5
  %499 = load i32*, i32** %498, align 8
  %500 = load i32, i32* %8, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds i32, i32* %499, i64 %501
  %503 = call i32 @atomic_set(i32* %502, i32 0)
  %504 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %505 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %504, i32 0, i32 4
  %506 = call i32 @mutex_unlock(i32* %505)
  %507 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %508 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %507, i32 0, i32 3
  %509 = load i32*, i32** %508, align 8
  %510 = load i32, i32* %8, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds i32, i32* %509, i64 %511
  %513 = call i32 @cond_wake_up(i32* %512)
  %514 = load i32, i32* %11, align 4
  store i32 %514, i32* %4, align 4
  br label %515

515:                                              ; preds = %485, %58, %40
  %516 = load i32, i32* %4, align 4
  ret i32 %516
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @wait_log_commit(%struct.btrfs_root*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @btrfs_test_opt(%struct.btrfs_fs_info*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @wait_for_writer(%struct.btrfs_root*) #1

declare dso_local i64 @btrfs_need_log_full_commit(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @blk_start_plug(%struct.blk_plug*) #1

declare dso_local i32 @btrfs_write_marked_extents(%struct.btrfs_fs_info*, i32*, i32) #1

declare dso_local i32 @blk_finish_plug(%struct.blk_plug*) #1

declare dso_local i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle*, i32) #1

declare dso_local i32 @btrfs_set_log_full_commit(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_set_root_node(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @memcpy(%struct.btrfs_root_item*, i32*, i32) #1

declare dso_local i32 @btrfs_init_log_ctx(%struct.btrfs_log_ctx*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @update_log_root(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_root_item*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @cond_wake_up_nomb(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @btrfs_wait_tree_log_extents(%struct.btrfs_root*, i32) #1

declare dso_local i32 @btrfs_set_super_log_root(i32, i32) #1

declare dso_local i32 @btrfs_set_super_log_root_level(i32, i32) #1

declare dso_local i32 @btrfs_header_level(%struct.TYPE_3__*) #1

declare dso_local i32 @write_all_supers(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @btrfs_remove_all_log_ctxs(%struct.btrfs_root*, i32, i32) #1

declare dso_local i32 @cond_wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
