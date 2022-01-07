; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ioctl.c_create_snapshot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ioctl.c_create_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.inode = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.dentry = type { i32 }
%struct.btrfs_qgroup_inherit = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_pending_snapshot = type { i32, i32, i32, %struct.btrfs_pending_snapshot*, i32, i32, i32, %struct.btrfs_qgroup_inherit*, %struct.inode*, %struct.btrfs_root*, %struct.dentry* }
%struct.btrfs_trans_handle = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 }

@BTRFS_ROOT_REF_COWS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"cannot snapshot subvolume with active swapfile\00", align 1
@ETXTBSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@U64_MAX = common dso_local global i32 0, align 4
@BTRFS_BLOCK_RSV_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, %struct.inode*, %struct.dentry*, i32*, i32, %struct.btrfs_qgroup_inherit*)* @create_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_snapshot(%struct.btrfs_root* %0, %struct.inode* %1, %struct.dentry* %2, i32* %3, i32 %4, %struct.btrfs_qgroup_inherit* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.btrfs_qgroup_inherit*, align 8
  %14 = alloca %struct.btrfs_fs_info*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca %struct.btrfs_pending_snapshot*, align 8
  %17 = alloca %struct.btrfs_trans_handle*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.dentry* %2, %struct.dentry** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.btrfs_qgroup_inherit* %5, %struct.btrfs_qgroup_inherit** %13, align 8
  %20 = load %struct.inode*, %struct.inode** %9, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %22)
  store %struct.btrfs_fs_info* %23, %struct.btrfs_fs_info** %14, align 8
  store i32 0, i32* %19, align 4
  %24 = load i32, i32* @BTRFS_ROOT_REF_COWS, align 4
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %26 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %25, i32 0, i32 4
  %27 = call i32 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %6
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %248

32:                                               ; preds = %6
  %33 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %34 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %33, i32 0, i32 3
  %35 = call i64 @atomic_read(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %39 = call i32 @btrfs_warn(%struct.btrfs_fs_info* %38, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ETXTBSY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %248

42:                                               ; preds = %32
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @kzalloc(i32 72, i32 %43)
  %45 = bitcast i8* %44 to %struct.btrfs_pending_snapshot*
  store %struct.btrfs_pending_snapshot* %45, %struct.btrfs_pending_snapshot** %16, align 8
  %46 = load %struct.btrfs_pending_snapshot*, %struct.btrfs_pending_snapshot** %16, align 8
  %47 = icmp ne %struct.btrfs_pending_snapshot* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %248

51:                                               ; preds = %42
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @kzalloc(i32 4, i32 %52)
  %54 = bitcast i8* %53 to %struct.btrfs_pending_snapshot*
  %55 = load %struct.btrfs_pending_snapshot*, %struct.btrfs_pending_snapshot** %16, align 8
  %56 = getelementptr inbounds %struct.btrfs_pending_snapshot, %struct.btrfs_pending_snapshot* %55, i32 0, i32 3
  store %struct.btrfs_pending_snapshot* %54, %struct.btrfs_pending_snapshot** %56, align 8
  %57 = call i32 (...) @btrfs_alloc_path()
  %58 = load %struct.btrfs_pending_snapshot*, %struct.btrfs_pending_snapshot** %16, align 8
  %59 = getelementptr inbounds %struct.btrfs_pending_snapshot, %struct.btrfs_pending_snapshot* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.btrfs_pending_snapshot*, %struct.btrfs_pending_snapshot** %16, align 8
  %61 = getelementptr inbounds %struct.btrfs_pending_snapshot, %struct.btrfs_pending_snapshot* %60, i32 0, i32 3
  %62 = load %struct.btrfs_pending_snapshot*, %struct.btrfs_pending_snapshot** %61, align 8
  %63 = icmp ne %struct.btrfs_pending_snapshot* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %51
  %65 = load %struct.btrfs_pending_snapshot*, %struct.btrfs_pending_snapshot** %16, align 8
  %66 = getelementptr inbounds %struct.btrfs_pending_snapshot, %struct.btrfs_pending_snapshot* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64, %51
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %18, align 4
  br label %236

72:                                               ; preds = %64
  %73 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %74 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %73, i32 0, i32 0
  %75 = call i32 @atomic_inc(i32* %74)
  %76 = call i32 (...) @smp_mb__after_atomic()
  %77 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %78 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %83 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = call i64 @percpu_counter_sum(i32* %85)
  %87 = icmp eq i64 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i32 @wait_event(i32 %81, i32 %88)
  %90 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %91 = call i32 @btrfs_start_delalloc_snapshot(%struct.btrfs_root* %90)
  store i32 %91, i32* %18, align 4
  %92 = load i32, i32* %18, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %72
  br label %219

95:                                               ; preds = %72
  %96 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %97 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %96, i32 0, i32 1
  %98 = call i32 @atomic_inc(i32* %97)
  store i32 1, i32* %19, align 4
  %99 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %100 = load i32, i32* @U64_MAX, align 4
  %101 = call i32 @btrfs_wait_ordered_extents(%struct.btrfs_root* %99, i32 %100, i32 0, i32 -1)
  %102 = load %struct.btrfs_pending_snapshot*, %struct.btrfs_pending_snapshot** %16, align 8
  %103 = getelementptr inbounds %struct.btrfs_pending_snapshot, %struct.btrfs_pending_snapshot* %102, i32 0, i32 4
  %104 = load i32, i32* @BTRFS_BLOCK_RSV_TEMP, align 4
  %105 = call i32 @btrfs_init_block_rsv(i32* %103, i32 %104)
  %106 = load %struct.inode*, %struct.inode** %9, align 8
  %107 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %106)
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.btrfs_pending_snapshot*, %struct.btrfs_pending_snapshot** %16, align 8
  %111 = getelementptr inbounds %struct.btrfs_pending_snapshot, %struct.btrfs_pending_snapshot* %110, i32 0, i32 4
  %112 = call i32 @btrfs_subvolume_reserve_metadata(i32 %109, i32* %111, i32 8, i32 0)
  store i32 %112, i32* %18, align 4
  %113 = load i32, i32* %18, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %95
  br label %219

116:                                              ; preds = %95
  %117 = load %struct.dentry*, %struct.dentry** %10, align 8
  %118 = load %struct.btrfs_pending_snapshot*, %struct.btrfs_pending_snapshot** %16, align 8
  %119 = getelementptr inbounds %struct.btrfs_pending_snapshot, %struct.btrfs_pending_snapshot* %118, i32 0, i32 10
  store %struct.dentry* %117, %struct.dentry** %119, align 8
  %120 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %121 = load %struct.btrfs_pending_snapshot*, %struct.btrfs_pending_snapshot** %16, align 8
  %122 = getelementptr inbounds %struct.btrfs_pending_snapshot, %struct.btrfs_pending_snapshot* %121, i32 0, i32 9
  store %struct.btrfs_root* %120, %struct.btrfs_root** %122, align 8
  %123 = load i32, i32* %12, align 4
  %124 = load %struct.btrfs_pending_snapshot*, %struct.btrfs_pending_snapshot** %16, align 8
  %125 = getelementptr inbounds %struct.btrfs_pending_snapshot, %struct.btrfs_pending_snapshot* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.inode*, %struct.inode** %9, align 8
  %127 = load %struct.btrfs_pending_snapshot*, %struct.btrfs_pending_snapshot** %16, align 8
  %128 = getelementptr inbounds %struct.btrfs_pending_snapshot, %struct.btrfs_pending_snapshot* %127, i32 0, i32 8
  store %struct.inode* %126, %struct.inode** %128, align 8
  %129 = load %struct.btrfs_qgroup_inherit*, %struct.btrfs_qgroup_inherit** %13, align 8
  %130 = load %struct.btrfs_pending_snapshot*, %struct.btrfs_pending_snapshot** %16, align 8
  %131 = getelementptr inbounds %struct.btrfs_pending_snapshot, %struct.btrfs_pending_snapshot* %130, i32 0, i32 7
  store %struct.btrfs_qgroup_inherit* %129, %struct.btrfs_qgroup_inherit** %131, align 8
  %132 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %133 = call %struct.inode* @btrfs_start_transaction(%struct.btrfs_root* %132, i32 0)
  %134 = bitcast %struct.inode* %133 to %struct.btrfs_trans_handle*
  store %struct.btrfs_trans_handle* %134, %struct.btrfs_trans_handle** %17, align 8
  %135 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %17, align 8
  %136 = bitcast %struct.btrfs_trans_handle* %135 to %struct.inode*
  %137 = call i64 @IS_ERR(%struct.inode* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %116
  %140 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %17, align 8
  %141 = bitcast %struct.btrfs_trans_handle* %140 to %struct.inode*
  %142 = call i32 @PTR_ERR(%struct.inode* %141)
  store i32 %142, i32* %18, align 4
  br label %214

143:                                              ; preds = %116
  %144 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %145 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %144, i32 0, i32 0
  %146 = call i32 @spin_lock(i32* %145)
  %147 = load %struct.btrfs_pending_snapshot*, %struct.btrfs_pending_snapshot** %16, align 8
  %148 = getelementptr inbounds %struct.btrfs_pending_snapshot, %struct.btrfs_pending_snapshot* %147, i32 0, i32 6
  %149 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %17, align 8
  %150 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %149, i32 0, i32 1
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = call i32 @list_add(i32* %148, i32* %152)
  %154 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %155 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %154, i32 0, i32 0
  %156 = call i32 @spin_unlock(i32* %155)
  %157 = load i32*, i32** %11, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %174

159:                                              ; preds = %143
  %160 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %17, align 8
  %161 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32*, i32** %11, align 8
  store i32 %162, i32* %163, align 4
  %164 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %17, align 8
  %165 = bitcast %struct.btrfs_trans_handle* %164 to %struct.inode*
  %166 = call i32 @btrfs_commit_transaction_async(%struct.inode* %165, i32 1)
  store i32 %166, i32* %18, align 4
  %167 = load i32, i32* %18, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %159
  %170 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %17, align 8
  %171 = bitcast %struct.btrfs_trans_handle* %170 to %struct.inode*
  %172 = call i32 @btrfs_commit_transaction(%struct.inode* %171)
  store i32 %172, i32* %18, align 4
  br label %173

173:                                              ; preds = %169, %159
  br label %178

174:                                              ; preds = %143
  %175 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %17, align 8
  %176 = bitcast %struct.btrfs_trans_handle* %175 to %struct.inode*
  %177 = call i32 @btrfs_commit_transaction(%struct.inode* %176)
  store i32 %177, i32* %18, align 4
  br label %178

178:                                              ; preds = %174, %173
  %179 = load i32, i32* %18, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  br label %214

182:                                              ; preds = %178
  %183 = load %struct.btrfs_pending_snapshot*, %struct.btrfs_pending_snapshot** %16, align 8
  %184 = getelementptr inbounds %struct.btrfs_pending_snapshot, %struct.btrfs_pending_snapshot* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %18, align 4
  %186 = load i32, i32* %18, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %182
  br label %214

189:                                              ; preds = %182
  %190 = load %struct.btrfs_pending_snapshot*, %struct.btrfs_pending_snapshot** %16, align 8
  %191 = getelementptr inbounds %struct.btrfs_pending_snapshot, %struct.btrfs_pending_snapshot* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @btrfs_orphan_cleanup(i32 %192)
  store i32 %193, i32* %18, align 4
  %194 = load i32, i32* %18, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %189
  br label %214

197:                                              ; preds = %189
  %198 = load %struct.dentry*, %struct.dentry** %10, align 8
  %199 = getelementptr inbounds %struct.dentry, %struct.dentry* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @d_inode(i32 %200)
  %202 = load %struct.dentry*, %struct.dentry** %10, align 8
  %203 = call %struct.inode* @btrfs_lookup_dentry(i32 %201, %struct.dentry* %202)
  store %struct.inode* %203, %struct.inode** %15, align 8
  %204 = load %struct.inode*, %struct.inode** %15, align 8
  %205 = call i64 @IS_ERR(%struct.inode* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %197
  %208 = load %struct.inode*, %struct.inode** %15, align 8
  %209 = call i32 @PTR_ERR(%struct.inode* %208)
  store i32 %209, i32* %18, align 4
  br label %214

210:                                              ; preds = %197
  %211 = load %struct.dentry*, %struct.dentry** %10, align 8
  %212 = load %struct.inode*, %struct.inode** %15, align 8
  %213 = call i32 @d_instantiate(%struct.dentry* %211, %struct.inode* %212)
  store i32 0, i32* %18, align 4
  br label %214

214:                                              ; preds = %210, %207, %196, %188, %181, %139
  %215 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %216 = load %struct.btrfs_pending_snapshot*, %struct.btrfs_pending_snapshot** %16, align 8
  %217 = getelementptr inbounds %struct.btrfs_pending_snapshot, %struct.btrfs_pending_snapshot* %216, i32 0, i32 4
  %218 = call i32 @btrfs_subvolume_release_metadata(%struct.btrfs_fs_info* %215, i32* %217)
  br label %219

219:                                              ; preds = %214, %115, %94
  %220 = load i32, i32* %19, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %219
  %223 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %224 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %223, i32 0, i32 1
  %225 = call i32 @atomic_dec(i32* %224)
  br label %226

226:                                              ; preds = %222, %219
  %227 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %228 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %227, i32 0, i32 0
  %229 = call i64 @atomic_dec_and_test(i32* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %226
  %232 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %233 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %232, i32 0, i32 0
  %234 = call i32 @wake_up_var(i32* %233)
  br label %235

235:                                              ; preds = %231, %226
  br label %236

236:                                              ; preds = %235, %69
  %237 = load %struct.btrfs_pending_snapshot*, %struct.btrfs_pending_snapshot** %16, align 8
  %238 = getelementptr inbounds %struct.btrfs_pending_snapshot, %struct.btrfs_pending_snapshot* %237, i32 0, i32 3
  %239 = load %struct.btrfs_pending_snapshot*, %struct.btrfs_pending_snapshot** %238, align 8
  %240 = call i32 @kfree(%struct.btrfs_pending_snapshot* %239)
  %241 = load %struct.btrfs_pending_snapshot*, %struct.btrfs_pending_snapshot** %16, align 8
  %242 = getelementptr inbounds %struct.btrfs_pending_snapshot, %struct.btrfs_pending_snapshot* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @btrfs_free_path(i32 %243)
  %245 = load %struct.btrfs_pending_snapshot*, %struct.btrfs_pending_snapshot** %16, align 8
  %246 = call i32 @kfree(%struct.btrfs_pending_snapshot* %245)
  %247 = load i32, i32* %18, align 4
  store i32 %247, i32* %7, align 4
  br label %248

248:                                              ; preds = %236, %48, %37, %29
  %249 = load i32, i32* %7, align 4
  ret i32 %249
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @btrfs_warn(%struct.btrfs_fs_info*, i8*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @btrfs_alloc_path(...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @percpu_counter_sum(i32*) #1

declare dso_local i32 @btrfs_start_delalloc_snapshot(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_wait_ordered_extents(%struct.btrfs_root*, i32, i32, i32) #1

declare dso_local i32 @btrfs_init_block_rsv(i32*, i32) #1

declare dso_local i32 @btrfs_subvolume_reserve_metadata(i32, i32*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @BTRFS_I(%struct.inode*) #1

declare dso_local %struct.inode* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_commit_transaction_async(%struct.inode*, i32) #1

declare dso_local i32 @btrfs_commit_transaction(%struct.inode*) #1

declare dso_local i32 @btrfs_orphan_cleanup(i32) #1

declare dso_local %struct.inode* @btrfs_lookup_dentry(i32, %struct.dentry*) #1

declare dso_local i32 @d_inode(i32) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @btrfs_subvolume_release_metadata(%struct.btrfs_fs_info*, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up_var(i32*) #1

declare dso_local i32 @kfree(%struct.btrfs_pending_snapshot*) #1

declare dso_local i32 @btrfs_free_path(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
