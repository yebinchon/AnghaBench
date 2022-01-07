; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_file.c_btrfs_punch_hole_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_file.c_btrfs_punch_hole_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.btrfs_path = type { i32 }
%struct.btrfs_clone_extent_info = type { i64, i32, i32 }
%struct.btrfs_trans_handle = type { %struct.btrfs_block_rsv* }
%struct.btrfs_block_rsv = type { i32, i8* }
%struct.btrfs_fs_info = type { %struct.btrfs_block_rsv, i32 }
%struct.btrfs_root = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.btrfs_root* }

@EINVAL = common dso_local global i32 0, align 4
@BTRFS_BLOCK_RSV_TEMP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NO_HOLES = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@BTRFS_INODE_NEEDS_FULL_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_punch_hole_range(%struct.inode* %0, %struct.btrfs_path* %1, i64 %2, i64 %3, %struct.btrfs_clone_extent_info* %4, %struct.btrfs_trans_handle** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.btrfs_path*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.btrfs_clone_extent_info*, align 8
  %13 = alloca %struct.btrfs_trans_handle**, align 8
  %14 = alloca %struct.btrfs_fs_info*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.btrfs_root*, align 8
  %18 = alloca %struct.btrfs_trans_handle*, align 8
  %19 = alloca %struct.btrfs_block_rsv*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.btrfs_clone_extent_info* %4, %struct.btrfs_clone_extent_info** %12, align 8
  store %struct.btrfs_trans_handle** %5, %struct.btrfs_trans_handle*** %13, align 8
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %28)
  store %struct.btrfs_fs_info* %29, %struct.btrfs_fs_info** %14, align 8
  %30 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %31 = call i8* @btrfs_calc_insert_metadata_size(%struct.btrfs_fs_info* %30, i32 1)
  %32 = ptrtoint i8* %31 to i64
  store i64 %32, i64* %15, align 8
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %37 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @round_up(i32 %35, i32 %38)
  store i64 %39, i64* %16, align 8
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %40)
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load %struct.btrfs_root*, %struct.btrfs_root** %42, align 8
  store %struct.btrfs_root* %43, %struct.btrfs_root** %17, align 8
  store %struct.btrfs_trans_handle* null, %struct.btrfs_trans_handle** %18, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %10, align 8
  %46 = sub nsw i64 %44, %45
  store i64 %46, i64* %23, align 8
  store i32 0, i32* %24, align 4
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %6
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %350

53:                                               ; preds = %6
  %54 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %55 = load i32, i32* @BTRFS_BLOCK_RSV_TEMP, align 4
  %56 = call %struct.btrfs_block_rsv* @btrfs_alloc_block_rsv(%struct.btrfs_fs_info* %54, i32 %55)
  store %struct.btrfs_block_rsv* %56, %struct.btrfs_block_rsv** %19, align 8
  %57 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %19, align 8
  %58 = icmp ne %struct.btrfs_block_rsv* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %24, align 4
  br label %348

62:                                               ; preds = %53
  %63 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %64 = call i8* @btrfs_calc_insert_metadata_size(%struct.btrfs_fs_info* %63, i32 1)
  %65 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %19, align 8
  %66 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %19, align 8
  %68 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %70 = load i32, i32* @NO_HOLES, align 4
  %71 = call i32 @btrfs_fs_incompat(%struct.btrfs_fs_info* %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %62
  %74 = load %struct.btrfs_clone_extent_info*, %struct.btrfs_clone_extent_info** %12, align 8
  %75 = icmp ne %struct.btrfs_clone_extent_info* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %73, %62
  store i32 3, i32* %20, align 4
  br label %78

77:                                               ; preds = %73
  store i32 2, i32* %20, align 4
  br label %78

78:                                               ; preds = %77, %76
  %79 = load %struct.btrfs_root*, %struct.btrfs_root** %17, align 8
  %80 = load i32, i32* %20, align 4
  %81 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %79, i32 %80)
  store %struct.btrfs_trans_handle* %81, %struct.btrfs_trans_handle** %18, align 8
  %82 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %18, align 8
  %83 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %18, align 8
  %87 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %86)
  store i32 %87, i32* %24, align 4
  store %struct.btrfs_trans_handle* null, %struct.btrfs_trans_handle** %18, align 8
  br label %344

88:                                               ; preds = %78
  %89 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %90 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %89, i32 0, i32 0
  %91 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %19, align 8
  %92 = load i64, i64* %15, align 8
  %93 = call i32 @btrfs_block_rsv_migrate(%struct.btrfs_block_rsv* %90, %struct.btrfs_block_rsv* %91, i64 %92, i32 0)
  store i32 %93, i32* %24, align 4
  %94 = load i32, i32* %24, align 4
  %95 = call i32 @BUG_ON(i32 %94)
  %96 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %19, align 8
  %97 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %18, align 8
  %98 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %97, i32 0, i32 0
  store %struct.btrfs_block_rsv* %96, %struct.btrfs_block_rsv** %98, align 8
  %99 = load i64, i64* %10, align 8
  store i64 %99, i64* %21, align 8
  br label %100

100:                                              ; preds = %255, %88
  %101 = load i64, i64* %21, align 8
  %102 = load i64, i64* %11, align 8
  %103 = icmp slt i64 %101, %102
  br i1 %103, label %104, label %256

104:                                              ; preds = %100
  %105 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %18, align 8
  %106 = load %struct.btrfs_root*, %struct.btrfs_root** %17, align 8
  %107 = load %struct.inode*, %struct.inode** %8, align 8
  %108 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %109 = load i64, i64* %21, align 8
  %110 = load i64, i64* %11, align 8
  %111 = add nsw i64 %110, 1
  %112 = call i32 @__btrfs_drop_extents(%struct.btrfs_trans_handle* %105, %struct.btrfs_root* %106, %struct.inode* %107, %struct.btrfs_path* %108, i64 %109, i64 %111, i64* %22, i32 1, i32 0, i32 0, i32* null)
  store i32 %112, i32* %24, align 4
  %113 = load i32, i32* %24, align 4
  %114 = load i32, i32* @ENOSPC, align 4
  %115 = sub nsw i32 0, %114
  %116 = icmp ne i32 %113, %115
  br i1 %116, label %117, label %133

117:                                              ; preds = %104
  %118 = load %struct.btrfs_clone_extent_info*, %struct.btrfs_clone_extent_info** %12, align 8
  %119 = icmp ne %struct.btrfs_clone_extent_info* %118, null
  br i1 %119, label %120, label %132

120:                                              ; preds = %117
  %121 = load i32, i32* %24, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %120
  %124 = load i32, i32* %24, align 4
  %125 = load i32, i32* @EOPNOTSUPP, align 4
  %126 = sub nsw i32 0, %125
  %127 = icmp ne i32 %124, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %18, align 8
  %130 = load i32, i32* %24, align 4
  %131 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %129, i32 %130)
  br label %132

132:                                              ; preds = %128, %123, %120, %117
  br label %256

133:                                              ; preds = %104
  %134 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %135 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %134, i32 0, i32 0
  %136 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %18, align 8
  %137 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %136, i32 0, i32 0
  store %struct.btrfs_block_rsv* %135, %struct.btrfs_block_rsv** %137, align 8
  %138 = load %struct.btrfs_clone_extent_info*, %struct.btrfs_clone_extent_info** %12, align 8
  %139 = icmp ne %struct.btrfs_clone_extent_info* %138, null
  br i1 %139, label %163, label %140

140:                                              ; preds = %133
  %141 = load i64, i64* %21, align 8
  %142 = load i64, i64* %22, align 8
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %144, label %163

144:                                              ; preds = %140
  %145 = load i64, i64* %21, align 8
  %146 = load i64, i64* %16, align 8
  %147 = icmp slt i64 %145, %146
  br i1 %147, label %148, label %163

148:                                              ; preds = %144
  %149 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %18, align 8
  %150 = load %struct.inode*, %struct.inode** %8, align 8
  %151 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %150)
  %152 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %153 = load i64, i64* %21, align 8
  %154 = load i64, i64* %22, align 8
  %155 = call i32 @fill_holes(%struct.btrfs_trans_handle* %149, %struct.TYPE_3__* %151, %struct.btrfs_path* %152, i64 %153, i64 %154)
  store i32 %155, i32* %24, align 4
  %156 = load i32, i32* %24, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %148
  %159 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %18, align 8
  %160 = load i32, i32* %24, align 4
  %161 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %159, i32 %160)
  br label %256

162:                                              ; preds = %148
  br label %163

163:                                              ; preds = %162, %144, %140, %133
  %164 = load %struct.btrfs_clone_extent_info*, %struct.btrfs_clone_extent_info** %12, align 8
  %165 = icmp ne %struct.btrfs_clone_extent_info* %164, null
  br i1 %165, label %166, label %202

166:                                              ; preds = %163
  %167 = load i64, i64* %22, align 8
  %168 = load i64, i64* %21, align 8
  %169 = sub nsw i64 %167, %168
  store i64 %169, i64* %25, align 8
  %170 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %18, align 8
  %171 = load %struct.inode*, %struct.inode** %8, align 8
  %172 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %173 = load %struct.btrfs_clone_extent_info*, %struct.btrfs_clone_extent_info** %12, align 8
  %174 = load i64, i64* %25, align 8
  %175 = call i32 @btrfs_insert_clone_extent(%struct.btrfs_trans_handle* %170, %struct.inode* %171, %struct.btrfs_path* %172, %struct.btrfs_clone_extent_info* %173, i64 %174)
  store i32 %175, i32* %24, align 4
  %176 = load i32, i32* %24, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %166
  %179 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %18, align 8
  %180 = load i32, i32* %24, align 4
  %181 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %179, i32 %180)
  br label %256

182:                                              ; preds = %166
  %183 = load i64, i64* %25, align 8
  %184 = load %struct.btrfs_clone_extent_info*, %struct.btrfs_clone_extent_info** %12, align 8
  %185 = getelementptr inbounds %struct.btrfs_clone_extent_info, %struct.btrfs_clone_extent_info* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = sub nsw i64 %186, %183
  store i64 %187, i64* %185, align 8
  %188 = load i64, i64* %25, align 8
  %189 = load %struct.btrfs_clone_extent_info*, %struct.btrfs_clone_extent_info** %12, align 8
  %190 = getelementptr inbounds %struct.btrfs_clone_extent_info, %struct.btrfs_clone_extent_info* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = sext i32 %191 to i64
  %193 = add nsw i64 %192, %188
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %190, align 4
  %195 = load i64, i64* %25, align 8
  %196 = load %struct.btrfs_clone_extent_info*, %struct.btrfs_clone_extent_info** %12, align 8
  %197 = getelementptr inbounds %struct.btrfs_clone_extent_info, %struct.btrfs_clone_extent_info* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  %200 = add nsw i64 %199, %195
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %197, align 8
  br label %202

202:                                              ; preds = %182, %163
  %203 = load i64, i64* %22, align 8
  store i64 %203, i64* %21, align 8
  %204 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %18, align 8
  %205 = load %struct.btrfs_root*, %struct.btrfs_root** %17, align 8
  %206 = load %struct.inode*, %struct.inode** %8, align 8
  %207 = call i32 @btrfs_update_inode(%struct.btrfs_trans_handle* %204, %struct.btrfs_root* %205, %struct.inode* %206)
  store i32 %207, i32* %24, align 4
  %208 = load i32, i32* %24, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %202
  br label %256

211:                                              ; preds = %202
  %212 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %18, align 8
  %213 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %212)
  %214 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %215 = call i32 @btrfs_btree_balance_dirty(%struct.btrfs_fs_info* %214)
  %216 = load %struct.btrfs_root*, %struct.btrfs_root** %17, align 8
  %217 = load i32, i32* %20, align 4
  %218 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %216, i32 %217)
  store %struct.btrfs_trans_handle* %218, %struct.btrfs_trans_handle** %18, align 8
  %219 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %18, align 8
  %220 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %211
  %223 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %18, align 8
  %224 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %223)
  store i32 %224, i32* %24, align 4
  store %struct.btrfs_trans_handle* null, %struct.btrfs_trans_handle** %18, align 8
  br label %256

225:                                              ; preds = %211
  %226 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %227 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %226, i32 0, i32 0
  %228 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %19, align 8
  %229 = load i64, i64* %15, align 8
  %230 = call i32 @btrfs_block_rsv_migrate(%struct.btrfs_block_rsv* %227, %struct.btrfs_block_rsv* %228, i64 %229, i32 0)
  store i32 %230, i32* %24, align 4
  %231 = load i32, i32* %24, align 4
  %232 = call i32 @BUG_ON(i32 %231)
  %233 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %19, align 8
  %234 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %18, align 8
  %235 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %234, i32 0, i32 0
  store %struct.btrfs_block_rsv* %233, %struct.btrfs_block_rsv** %235, align 8
  %236 = load %struct.btrfs_clone_extent_info*, %struct.btrfs_clone_extent_info** %12, align 8
  %237 = icmp ne %struct.btrfs_clone_extent_info* %236, null
  br i1 %237, label %255, label %238

238:                                              ; preds = %225
  %239 = load %struct.inode*, %struct.inode** %8, align 8
  %240 = call i32 @find_first_non_hole(%struct.inode* %239, i64* %21, i64* %23)
  store i32 %240, i32* %24, align 4
  %241 = load i32, i32* %24, align 4
  %242 = icmp slt i32 %241, 0
  %243 = zext i1 %242 to i32
  %244 = call i64 @unlikely(i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %238
  br label %256

247:                                              ; preds = %238
  %248 = load i32, i32* %24, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %247
  %251 = load i64, i64* %23, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %254, label %253

253:                                              ; preds = %250
  store i32 0, i32* %24, align 4
  br label %256

254:                                              ; preds = %250, %247
  br label %255

255:                                              ; preds = %254, %225
  br label %100

256:                                              ; preds = %253, %246, %222, %210, %178, %158, %132, %100
  %257 = load %struct.btrfs_clone_extent_info*, %struct.btrfs_clone_extent_info** %12, align 8
  %258 = icmp ne %struct.btrfs_clone_extent_info* %257, null
  br i1 %258, label %259, label %265

259:                                              ; preds = %256
  %260 = load i32, i32* @BTRFS_INODE_NEEDS_FULL_SYNC, align 4
  %261 = load %struct.inode*, %struct.inode** %8, align 8
  %262 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %261)
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 0
  %264 = call i32 @set_bit(i32 %260, i32* %263)
  br label %265

265:                                              ; preds = %259, %256
  %266 = load i32, i32* %24, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %265
  br label %326

269:                                              ; preds = %265
  %270 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %271 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %270, i32 0, i32 0
  %272 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %18, align 8
  %273 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %272, i32 0, i32 0
  store %struct.btrfs_block_rsv* %271, %struct.btrfs_block_rsv** %273, align 8
  %274 = load i64, i64* %22, align 8
  %275 = load i64, i64* %11, align 8
  %276 = icmp sle i64 %274, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %269
  %278 = load i64, i64* %11, align 8
  %279 = add nsw i64 %278, 1
  store i64 %279, i64* %22, align 8
  br label %280

280:                                              ; preds = %277, %269
  %281 = load %struct.btrfs_clone_extent_info*, %struct.btrfs_clone_extent_info** %12, align 8
  %282 = icmp ne %struct.btrfs_clone_extent_info* %281, null
  br i1 %282, label %306, label %283

283:                                              ; preds = %280
  %284 = load i64, i64* %21, align 8
  %285 = load i64, i64* %16, align 8
  %286 = icmp slt i64 %284, %285
  br i1 %286, label %287, label %306

287:                                              ; preds = %283
  %288 = load i64, i64* %21, align 8
  %289 = load i64, i64* %22, align 8
  %290 = icmp slt i64 %288, %289
  br i1 %290, label %291, label %306

291:                                              ; preds = %287
  %292 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %18, align 8
  %293 = load %struct.inode*, %struct.inode** %8, align 8
  %294 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %293)
  %295 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %296 = load i64, i64* %21, align 8
  %297 = load i64, i64* %22, align 8
  %298 = call i32 @fill_holes(%struct.btrfs_trans_handle* %292, %struct.TYPE_3__* %294, %struct.btrfs_path* %295, i64 %296, i64 %297)
  store i32 %298, i32* %24, align 4
  %299 = load i32, i32* %24, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %291
  %302 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %18, align 8
  %303 = load i32, i32* %24, align 4
  %304 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %302, i32 %303)
  br label %326

305:                                              ; preds = %291
  br label %306

306:                                              ; preds = %305, %287, %283, %280
  %307 = load %struct.btrfs_clone_extent_info*, %struct.btrfs_clone_extent_info** %12, align 8
  %308 = icmp ne %struct.btrfs_clone_extent_info* %307, null
  br i1 %308, label %309, label %325

309:                                              ; preds = %306
  %310 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %18, align 8
  %311 = load %struct.inode*, %struct.inode** %8, align 8
  %312 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %313 = load %struct.btrfs_clone_extent_info*, %struct.btrfs_clone_extent_info** %12, align 8
  %314 = load %struct.btrfs_clone_extent_info*, %struct.btrfs_clone_extent_info** %12, align 8
  %315 = getelementptr inbounds %struct.btrfs_clone_extent_info, %struct.btrfs_clone_extent_info* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = call i32 @btrfs_insert_clone_extent(%struct.btrfs_trans_handle* %310, %struct.inode* %311, %struct.btrfs_path* %312, %struct.btrfs_clone_extent_info* %313, i64 %316)
  store i32 %317, i32* %24, align 4
  %318 = load i32, i32* %24, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %309
  %321 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %18, align 8
  %322 = load i32, i32* %24, align 4
  %323 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %321, i32 %322)
  br label %326

324:                                              ; preds = %309
  br label %325

325:                                              ; preds = %324, %306
  br label %326

326:                                              ; preds = %325, %320, %301, %268
  %327 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %18, align 8
  %328 = icmp ne %struct.btrfs_trans_handle* %327, null
  br i1 %328, label %330, label %329

329:                                              ; preds = %326
  br label %344

330:                                              ; preds = %326
  %331 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %332 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %331, i32 0, i32 0
  %333 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %18, align 8
  %334 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %333, i32 0, i32 0
  store %struct.btrfs_block_rsv* %332, %struct.btrfs_block_rsv** %334, align 8
  %335 = load i32, i32* %24, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %340

337:                                              ; preds = %330
  %338 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %18, align 8
  %339 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %338)
  br label %343

340:                                              ; preds = %330
  %341 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %18, align 8
  %342 = load %struct.btrfs_trans_handle**, %struct.btrfs_trans_handle*** %13, align 8
  store %struct.btrfs_trans_handle* %341, %struct.btrfs_trans_handle** %342, align 8
  br label %343

343:                                              ; preds = %340, %337
  br label %344

344:                                              ; preds = %343, %329, %85
  %345 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %346 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %19, align 8
  %347 = call i32 @btrfs_free_block_rsv(%struct.btrfs_fs_info* %345, %struct.btrfs_block_rsv* %346)
  br label %348

348:                                              ; preds = %344, %59
  %349 = load i32, i32* %24, align 4
  store i32 %349, i32* %7, align 4
  br label %350

350:                                              ; preds = %348, %50
  %351 = load i32, i32* %7, align 4
  ret i32 %351
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local i8* @btrfs_calc_insert_metadata_size(%struct.btrfs_fs_info*, i32) #1

declare dso_local i64 @round_up(i32, i32) #1

declare dso_local %struct.TYPE_3__* @BTRFS_I(%struct.inode*) #1

declare dso_local %struct.btrfs_block_rsv* @btrfs_alloc_block_rsv(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @btrfs_fs_incompat(%struct.btrfs_fs_info*, i32) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_block_rsv_migrate(%struct.btrfs_block_rsv*, %struct.btrfs_block_rsv*, i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__btrfs_drop_extents(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*, %struct.btrfs_path*, i64, i64, i64*, i32, i32, i32, i32*) #1

declare dso_local i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle*, i32) #1

declare dso_local i32 @fill_holes(%struct.btrfs_trans_handle*, %struct.TYPE_3__*, %struct.btrfs_path*, i64, i64) #1

declare dso_local i32 @btrfs_insert_clone_extent(%struct.btrfs_trans_handle*, %struct.inode*, %struct.btrfs_path*, %struct.btrfs_clone_extent_info*, i64) #1

declare dso_local i32 @btrfs_update_inode(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_btree_balance_dirty(%struct.btrfs_fs_info*) #1

declare dso_local i32 @find_first_non_hole(%struct.inode*, i64*, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @btrfs_free_block_rsv(%struct.btrfs_fs_info*, %struct.btrfs_block_rsv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
