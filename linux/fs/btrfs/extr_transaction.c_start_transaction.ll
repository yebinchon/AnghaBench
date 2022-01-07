; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_start_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_start_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.btrfs_trans_handle* }
%struct.btrfs_trans_handle = type { i32, i32, i32, i32, %struct.btrfs_block_rsv*, i32, i32, %struct.btrfs_fs_info*, i32, %struct.btrfs_root*, %struct.btrfs_transaction*, %struct.btrfs_block_rsv* }
%struct.btrfs_fs_info = type { i32, %struct.btrfs_block_rsv, i32, %struct.btrfs_transaction*, %struct.btrfs_root*, i32, %struct.btrfs_block_rsv }
%struct.btrfs_block_rsv = type { i64 }
%struct.btrfs_root = type { %struct.btrfs_fs_info* }
%struct.btrfs_transaction = type { i64, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@BTRFS_SEND_TRANS_STUB = common dso_local global %struct.btrfs_trans_handle* null, align 8
@BTRFS_FS_STATE_ERROR = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@TRANS_EXTWRITERS = common dso_local global i32 0, align 4
@BTRFS_RESERVE_FLUSH_ALL = common dso_local global i32 0, align 4
@btrfs_trans_handle_cachep = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@__TRANS_FREEZABLE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TRANS_ATTACH = common dso_local global i32 0, align 4
@TRANS_JOIN_NOSTART = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@TRANS_STATE_BLOCKED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"transaction\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.btrfs_trans_handle* (%struct.btrfs_root*, i32, i32, i32, i32)* @start_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.btrfs_trans_handle* @start_transaction(%struct.btrfs_root* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_fs_info*, align 8
  %13 = alloca %struct.btrfs_block_rsv*, align 8
  %14 = alloca %struct.btrfs_trans_handle*, align 8
  %15 = alloca %struct.btrfs_transaction*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.btrfs_block_rsv*, align 8
  %21 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %23 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %22, i32 0, i32 0
  %24 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %23, align 8
  store %struct.btrfs_fs_info* %24, %struct.btrfs_fs_info** %12, align 8
  %25 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %26 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %25, i32 0, i32 6
  store %struct.btrfs_block_rsv* %26, %struct.btrfs_block_rsv** %13, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %28, align 8
  %30 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** @BTRFS_SEND_TRANS_STUB, align 8
  %31 = icmp ne %struct.btrfs_trans_handle* %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load i32, i32* @BTRFS_FS_STATE_ERROR, align 4
  %35 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %36 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %35, i32 0, i32 5
  %37 = call i64 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %5
  %40 = load i32, i32* @EROFS, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.btrfs_trans_handle* @ERR_PTR(i32 %41)
  store %struct.btrfs_trans_handle* %42, %struct.btrfs_trans_handle** %6, align 8
  br label %341

43:                                               ; preds = %5
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %45, align 8
  %47 = icmp ne %struct.btrfs_trans_handle* %46, null
  br i1 %47, label %48, label %72

48:                                               ; preds = %43
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @TRANS_EXTWRITERS, align 4
  %51 = and i32 %49, %50
  %52 = call i32 @WARN_ON(i32 %51)
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %54, align 8
  store %struct.btrfs_trans_handle* %55, %struct.btrfs_trans_handle** %14, align 8
  %56 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %57 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %56, i32 0, i32 8
  %58 = call i32 @refcount_inc(i32* %57)
  %59 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %60 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %59, i32 0, i32 8
  %61 = call i32 @refcount_read(i32* %60)
  %62 = icmp sgt i32 %61, 2
  %63 = zext i1 %62 to i32
  %64 = call i32 @WARN_ON(i32 %63)
  %65 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %66 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %65, i32 0, i32 4
  %67 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %66, align 8
  %68 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %69 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %68, i32 0, i32 11
  store %struct.btrfs_block_rsv* %67, %struct.btrfs_block_rsv** %69, align 8
  %70 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %71 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %70, i32 0, i32 4
  store %struct.btrfs_block_rsv* null, %struct.btrfs_block_rsv** %71, align 8
  br label %297

72:                                               ; preds = %43
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %141

75:                                               ; preds = %72
  %76 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %77 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %78 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %77, i32 0, i32 4
  %79 = load %struct.btrfs_root*, %struct.btrfs_root** %78, align 8
  %80 = icmp ne %struct.btrfs_root* %76, %79
  br i1 %80, label %81, label %141

81:                                               ; preds = %75
  %82 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %83 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %82, i32 0, i32 1
  store %struct.btrfs_block_rsv* %83, %struct.btrfs_block_rsv** %20, align 8
  store i32 0, i32* %21, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %86 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = mul i32 %84, %87
  store i32 %88, i32* %17, align 4
  %89 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @btrfs_qgroup_reserve_meta_pertrans(%struct.btrfs_root* %89, i32 %90, i32 %91)
  store i32 %92, i32* %19, align 4
  %93 = load i32, i32* %19, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %81
  %96 = load i32, i32* %19, align 4
  %97 = call %struct.btrfs_trans_handle* @ERR_PTR(i32 %96)
  store %struct.btrfs_trans_handle* %97, %struct.btrfs_trans_handle** %6, align 8
  br label %341

98:                                               ; preds = %81
  %99 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @btrfs_calc_insert_metadata_size(%struct.btrfs_fs_info* %99, i32 %100)
  store i32 %101, i32* %16, align 4
  %102 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %13, align 8
  %103 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %98
  %107 = load i32, i32* %16, align 4
  store i32 %107, i32* %21, align 4
  %108 = load i32, i32* %16, align 4
  %109 = shl i32 %108, 1
  store i32 %109, i32* %16, align 4
  br label %110

110:                                              ; preds = %106, %98
  %111 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %112 = call i64 @need_reserve_reloc_root(%struct.btrfs_root* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %116 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %16, align 4
  %119 = add i32 %118, %117
  store i32 %119, i32* %16, align 4
  store i32 1, i32* %18, align 4
  br label %120

120:                                              ; preds = %114, %110
  %121 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %122 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %20, align 8
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @btrfs_block_rsv_add(%struct.btrfs_root* %121, %struct.btrfs_block_rsv* %122, i32 %123, i32 %124)
  store i32 %125, i32* %19, align 4
  %126 = load i32, i32* %19, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  br label %335

129:                                              ; preds = %120
  %130 = load i32, i32* %21, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %129
  %133 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %134 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %20, align 8
  %135 = load i32, i32* %21, align 4
  %136 = call i32 @btrfs_migrate_to_delayed_refs_rsv(%struct.btrfs_fs_info* %133, %struct.btrfs_block_rsv* %134, i32 %135)
  %137 = load i32, i32* %21, align 4
  %138 = load i32, i32* %16, align 4
  %139 = sub nsw i32 %138, %137
  store i32 %139, i32* %16, align 4
  br label %140

140:                                              ; preds = %132, %129
  br label %162

141:                                              ; preds = %75, %72
  %142 = load i32, i32* %8, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %161

144:                                              ; preds = %141
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @BTRFS_RESERVE_FLUSH_ALL, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %161

148:                                              ; preds = %144
  %149 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %13, align 8
  %150 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %161, label %153

153:                                              ; preds = %148
  %154 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @btrfs_delayed_refs_rsv_refill(%struct.btrfs_fs_info* %154, i32 %155)
  store i32 %156, i32* %19, align 4
  %157 = load i32, i32* %19, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  br label %335

160:                                              ; preds = %153
  br label %161

161:                                              ; preds = %160, %148, %144, %141
  br label %162

162:                                              ; preds = %161, %140
  br label %163

163:                                              ; preds = %270, %162
  %164 = load i32, i32* @btrfs_trans_handle_cachep, align 4
  %165 = load i32, i32* @GFP_NOFS, align 4
  %166 = call %struct.btrfs_trans_handle* @kmem_cache_zalloc(i32 %164, i32 %165)
  store %struct.btrfs_trans_handle* %166, %struct.btrfs_trans_handle** %14, align 8
  %167 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %168 = icmp ne %struct.btrfs_trans_handle* %167, null
  br i1 %168, label %172, label %169

169:                                              ; preds = %163
  %170 = load i32, i32* @ENOMEM, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %19, align 4
  br label %325

172:                                              ; preds = %163
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* @__TRANS_FREEZABLE, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %172
  %178 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %179 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @sb_start_intwrite(i32 %180)
  br label %182

182:                                              ; preds = %177, %172
  %183 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %184 = load i32, i32* %9, align 4
  %185 = call i64 @may_wait_transaction(%struct.btrfs_fs_info* %183, i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %189 = call i32 @wait_current_trans(%struct.btrfs_fs_info* %188)
  br label %190

190:                                              ; preds = %187, %182
  br label %191

191:                                              ; preds = %219, %190
  %192 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %193 = load i32, i32* %9, align 4
  %194 = call i32 @join_transaction(%struct.btrfs_fs_info* %192, i32 %193)
  store i32 %194, i32* %19, align 4
  %195 = load i32, i32* %19, align 4
  %196 = load i32, i32* @EBUSY, align 4
  %197 = sub nsw i32 0, %196
  %198 = icmp eq i32 %195, %197
  br i1 %198, label %199, label %218

199:                                              ; preds = %191
  %200 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %201 = call i32 @wait_current_trans(%struct.btrfs_fs_info* %200)
  %202 = load i32, i32* %9, align 4
  %203 = load i32, i32* @TRANS_ATTACH, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %209, label %205

205:                                              ; preds = %199
  %206 = load i32, i32* %9, align 4
  %207 = load i32, i32* @TRANS_JOIN_NOSTART, align 4
  %208 = icmp eq i32 %206, %207
  br label %209

209:                                              ; preds = %205, %199
  %210 = phi i1 [ true, %199 ], [ %208, %205 ]
  %211 = zext i1 %210 to i32
  %212 = call i64 @unlikely(i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load i32, i32* @ENOENT, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %19, align 4
  br label %217

217:                                              ; preds = %214, %209
  br label %218

218:                                              ; preds = %217, %191
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %19, align 4
  %221 = load i32, i32* @EBUSY, align 4
  %222 = sub nsw i32 0, %221
  %223 = icmp eq i32 %220, %222
  br i1 %223, label %191, label %224

224:                                              ; preds = %219
  %225 = load i32, i32* %19, align 4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %224
  br label %311

228:                                              ; preds = %224
  %229 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %230 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %229, i32 0, i32 3
  %231 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %230, align 8
  store %struct.btrfs_transaction* %231, %struct.btrfs_transaction** %15, align 8
  %232 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %15, align 8
  %233 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %236 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %235, i32 0, i32 5
  store i32 %234, i32* %236, align 8
  %237 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %15, align 8
  %238 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %239 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %238, i32 0, i32 10
  store %struct.btrfs_transaction* %237, %struct.btrfs_transaction** %239, align 8
  %240 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %241 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %242 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %241, i32 0, i32 9
  store %struct.btrfs_root* %240, %struct.btrfs_root** %242, align 8
  %243 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %244 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %243, i32 0, i32 8
  %245 = call i32 @refcount_set(i32* %244, i32 1)
  %246 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %247 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %246, i32 0, i32 0
  %248 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %247, align 8
  %249 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %250 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %249, i32 0, i32 7
  store %struct.btrfs_fs_info* %248, %struct.btrfs_fs_info** %250, align 8
  %251 = load i32, i32* %9, align 4
  %252 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %253 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %252, i32 0, i32 0
  store i32 %251, i32* %253, align 8
  %254 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %255 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %254, i32 0, i32 1
  store i32 1, i32* %255, align 4
  %256 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %257 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %256, i32 0, i32 6
  %258 = call i32 @INIT_LIST_HEAD(i32* %257)
  %259 = call i32 (...) @smp_mb()
  %260 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %15, align 8
  %261 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @TRANS_STATE_BLOCKED, align 8
  %264 = icmp sge i64 %262, %263
  br i1 %264, label %265, label %276

265:                                              ; preds = %228
  %266 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %267 = load i32, i32* %9, align 4
  %268 = call i64 @may_wait_transaction(%struct.btrfs_fs_info* %266, i32 %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %265
  %271 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %272 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %273 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %272, i32 0, i32 0
  store %struct.btrfs_trans_handle* %271, %struct.btrfs_trans_handle** %273, align 8
  %274 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %275 = call i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle* %274)
  br label %163

276:                                              ; preds = %265, %228
  %277 = load i32, i32* %16, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %296

279:                                              ; preds = %276
  %280 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %281 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %282 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %281, i32 0, i32 5
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* %16, align 4
  %285 = call i32 @trace_btrfs_space_reservation(%struct.btrfs_fs_info* %280, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %283, i32 %284, i32 1)
  %286 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %287 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %286, i32 0, i32 1
  %288 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %289 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %288, i32 0, i32 4
  store %struct.btrfs_block_rsv* %287, %struct.btrfs_block_rsv** %289, align 8
  %290 = load i32, i32* %16, align 4
  %291 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %292 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %291, i32 0, i32 2
  store i32 %290, i32* %292, align 8
  %293 = load i32, i32* %18, align 4
  %294 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %295 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %294, i32 0, i32 3
  store i32 %293, i32* %295, align 4
  br label %296

296:                                              ; preds = %279, %276
  br label %297

297:                                              ; preds = %296, %48
  %298 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %299 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %300 = call i32 @btrfs_record_root_in_trans(%struct.btrfs_trans_handle* %298, %struct.btrfs_root* %299)
  %301 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %302 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %301, i32 0, i32 0
  %303 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %302, align 8
  %304 = icmp ne %struct.btrfs_trans_handle* %303, null
  br i1 %304, label %309, label %305

305:                                              ; preds = %297
  %306 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %307 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %308 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %307, i32 0, i32 0
  store %struct.btrfs_trans_handle* %306, %struct.btrfs_trans_handle** %308, align 8
  br label %309

309:                                              ; preds = %305, %297
  %310 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  store %struct.btrfs_trans_handle* %310, %struct.btrfs_trans_handle** %6, align 8
  br label %341

311:                                              ; preds = %227
  %312 = load i32, i32* %9, align 4
  %313 = load i32, i32* @__TRANS_FREEZABLE, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %321

316:                                              ; preds = %311
  %317 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %318 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = call i32 @sb_end_intwrite(i32 %319)
  br label %321

321:                                              ; preds = %316, %311
  %322 = load i32, i32* @btrfs_trans_handle_cachep, align 4
  %323 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %14, align 8
  %324 = call i32 @kmem_cache_free(i32 %322, %struct.btrfs_trans_handle* %323)
  br label %325

325:                                              ; preds = %321, %169
  %326 = load i32, i32* %16, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %334

328:                                              ; preds = %325
  %329 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %330 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %331 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %330, i32 0, i32 1
  %332 = load i32, i32* %16, align 4
  %333 = call i32 @btrfs_block_rsv_release(%struct.btrfs_fs_info* %329, %struct.btrfs_block_rsv* %331, i32 %332)
  br label %334

334:                                              ; preds = %328, %325
  br label %335

335:                                              ; preds = %334, %159, %128
  %336 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %337 = load i32, i32* %17, align 4
  %338 = call i32 @btrfs_qgroup_free_meta_pertrans(%struct.btrfs_root* %336, i32 %337)
  %339 = load i32, i32* %19, align 4
  %340 = call %struct.btrfs_trans_handle* @ERR_PTR(i32 %339)
  store %struct.btrfs_trans_handle* %340, %struct.btrfs_trans_handle** %6, align 8
  br label %341

341:                                              ; preds = %335, %309, %95, %39
  %342 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  ret %struct.btrfs_trans_handle* %342
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.btrfs_trans_handle* @ERR_PTR(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @btrfs_qgroup_reserve_meta_pertrans(%struct.btrfs_root*, i32, i32) #1

declare dso_local i32 @btrfs_calc_insert_metadata_size(%struct.btrfs_fs_info*, i32) #1

declare dso_local i64 @need_reserve_reloc_root(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_block_rsv_add(%struct.btrfs_root*, %struct.btrfs_block_rsv*, i32, i32) #1

declare dso_local i32 @btrfs_migrate_to_delayed_refs_rsv(%struct.btrfs_fs_info*, %struct.btrfs_block_rsv*, i32) #1

declare dso_local i32 @btrfs_delayed_refs_rsv_refill(%struct.btrfs_fs_info*, i32) #1

declare dso_local %struct.btrfs_trans_handle* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @sb_start_intwrite(i32) #1

declare dso_local i64 @may_wait_transaction(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @wait_current_trans(%struct.btrfs_fs_info*) #1

declare dso_local i32 @join_transaction(%struct.btrfs_fs_info*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @trace_btrfs_space_reservation(%struct.btrfs_fs_info*, i8*, i32, i32, i32) #1

declare dso_local i32 @btrfs_record_root_in_trans(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

declare dso_local i32 @sb_end_intwrite(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_block_rsv_release(%struct.btrfs_fs_info*, %struct.btrfs_block_rsv*, i32) #1

declare dso_local i32 @btrfs_qgroup_free_meta_pertrans(%struct.btrfs_root*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
