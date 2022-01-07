; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_cache_save_setup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_cache_save_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { i32, i64, i64, i32, %struct.TYPE_4__, i64, %struct.btrfs_fs_info* }
%struct.TYPE_4__ = type { i32 }
%struct.btrfs_fs_info = type { i32, %struct.btrfs_root* }
%struct.btrfs_root = type { i32 }
%struct.btrfs_trans_handle = type { i64, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.btrfs_path = type { i32 }
%struct.inode = type { i32 }
%struct.extent_changeset = type { i32 }
%struct.TYPE_6__ = type { i64 }

@BTRFS_DC_ERROR = common dso_local global i32 0, align 4
@SZ_1M = common dso_local global i32 0, align 4
@BTRFS_DC_WRITTEN = common dso_local global i8* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@BTRFS_DC_SETUP = common dso_local global i32 0, align 4
@BTRFS_CACHE_FINISHED = common dso_local global i64 0, align 8
@SPACE_CACHE = common dso_local global i32 0, align 4
@BTRFS_TRANS_CACHE_ENOSPC = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@SZ_256M = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_block_group_cache*, %struct.btrfs_trans_handle*, %struct.btrfs_path*)* @cache_save_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_save_setup(%struct.btrfs_block_group_cache* %0, %struct.btrfs_trans_handle* %1, %struct.btrfs_path* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_block_group_cache*, align 8
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.btrfs_path*, align 8
  %8 = alloca %struct.btrfs_fs_info*, align 8
  %9 = alloca %struct.btrfs_root*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.extent_changeset*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %5, align 8
  store %struct.btrfs_trans_handle* %1, %struct.btrfs_trans_handle** %6, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %7, align 8
  %17 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %18 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %17, i32 0, i32 6
  %19 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %18, align 8
  store %struct.btrfs_fs_info* %19, %struct.btrfs_fs_info** %8, align 8
  %20 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %21 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %20, i32 0, i32 1
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %21, align 8
  store %struct.btrfs_root* %22, %struct.btrfs_root** %9, align 8
  store %struct.inode* null, %struct.inode** %10, align 8
  store %struct.extent_changeset* null, %struct.extent_changeset** %11, align 8
  store i32 0, i32* %12, align 4
  %23 = load i32, i32* @BTRFS_DC_ERROR, align 4
  store i32 %23, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %24 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %25 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SZ_1M, align 4
  %29 = mul nsw i32 100, %28
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %3
  %32 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %33 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %32, i32 0, i32 3
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load i8*, i8** @BTRFS_DC_WRITTEN, align 8
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %38 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %40 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %39, i32 0, i32 3
  %41 = call i32 @spin_unlock(i32* %40)
  store i32 0, i32* %4, align 4
  br label %253

42:                                               ; preds = %3
  %43 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %44 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %253

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %89, %48
  %50 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %51 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %52 = call %struct.inode* @lookup_free_space_inode(%struct.btrfs_block_group_cache* %50, %struct.btrfs_path* %51)
  store %struct.inode* %52, %struct.inode** %10, align 8
  %53 = load %struct.inode*, %struct.inode** %10, align 8
  %54 = call i64 @IS_ERR(%struct.inode* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %49
  %57 = load %struct.inode*, %struct.inode** %10, align 8
  %58 = call i32 @PTR_ERR(%struct.inode* %57)
  %59 = load i32, i32* @ENOENT, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.inode*, %struct.inode** %10, align 8
  %64 = call i32 @PTR_ERR(%struct.inode* %63)
  store i32 %64, i32* %16, align 4
  %65 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %66 = call i32 @btrfs_release_path(%struct.btrfs_path* %65)
  br label %227

67:                                               ; preds = %56, %49
  %68 = load %struct.inode*, %struct.inode** %10, align 8
  %69 = call i64 @IS_ERR(%struct.inode* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %67
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @BUG_ON(i32 %72)
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %15, align 4
  %76 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %77 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %224

81:                                               ; preds = %71
  %82 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %83 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %84 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %85 = call i32 @create_free_space_inode(%struct.btrfs_trans_handle* %82, %struct.btrfs_block_group_cache* %83, %struct.btrfs_path* %84)
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %16, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %224

89:                                               ; preds = %81
  br label %49

90:                                               ; preds = %67
  %91 = load %struct.inode*, %struct.inode** %10, align 8
  %92 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %91)
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  %94 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %95 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %96 = load %struct.inode*, %struct.inode** %10, align 8
  %97 = call i32 @btrfs_update_inode(%struct.btrfs_trans_handle* %94, %struct.btrfs_root* %95, %struct.inode* %96)
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %90
  %101 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %102 = load i32, i32* %16, align 4
  %103 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %101, i32 %102)
  br label %221

104:                                              ; preds = %90
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @WARN_ON(i32 %105)
  %107 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %108 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %111 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %109, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %104
  %115 = load %struct.inode*, %struct.inode** %10, align 8
  %116 = call i64 @i_size_read(%struct.inode* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i32, i32* @BTRFS_DC_SETUP, align 4
  store i32 %119, i32* %13, align 4
  br label %221

120:                                              ; preds = %114, %104
  %121 = load %struct.inode*, %struct.inode** %10, align 8
  %122 = call i64 @i_size_read(%struct.inode* %121)
  %123 = icmp sgt i64 %122, 0
  br i1 %123, label %124, label %140

124:                                              ; preds = %120
  %125 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %126 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %127 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %126, i32 0, i32 0
  %128 = call i32 @btrfs_check_trunc_cache_free_space(%struct.btrfs_fs_info* %125, i32* %127)
  store i32 %128, i32* %16, align 4
  %129 = load i32, i32* %16, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  br label %221

132:                                              ; preds = %124
  %133 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %134 = load %struct.inode*, %struct.inode** %10, align 8
  %135 = call i32 @btrfs_truncate_free_space_cache(%struct.btrfs_trans_handle* %133, i32* null, %struct.inode* %134)
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %16, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  br label %221

139:                                              ; preds = %132
  br label %140

140:                                              ; preds = %139, %120
  %141 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %142 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %141, i32 0, i32 3
  %143 = call i32 @spin_lock(i32* %142)
  %144 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %145 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @BTRFS_CACHE_FINISHED, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %154, label %149

149:                                              ; preds = %140
  %150 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %151 = load i32, i32* @SPACE_CACHE, align 4
  %152 = call i32 @btrfs_test_opt(%struct.btrfs_fs_info* %150, i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %149, %140
  %155 = load i8*, i8** @BTRFS_DC_WRITTEN, align 8
  %156 = ptrtoint i8* %155 to i32
  store i32 %156, i32* %13, align 4
  %157 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %158 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %157, i32 0, i32 3
  %159 = call i32 @spin_unlock(i32* %158)
  br label %221

160:                                              ; preds = %149
  %161 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %162 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %161, i32 0, i32 3
  %163 = call i32 @spin_unlock(i32* %162)
  %164 = load i32, i32* @BTRFS_TRANS_CACHE_ENOSPC, align 4
  %165 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %166 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %165, i32 0, i32 1
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = call i64 @test_bit(i32 %164, i32* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %160
  %172 = load i32, i32* @ENOSPC, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %16, align 4
  br label %221

174:                                              ; preds = %160
  %175 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %176 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @SZ_256M, align 4
  %180 = call i32 @div_u64(i32 %178, i32 %179)
  store i32 %180, i32* %14, align 4
  %181 = load i32, i32* %14, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %174
  store i32 1, i32* %14, align 4
  br label %184

184:                                              ; preds = %183, %174
  %185 = load i32, i32* %14, align 4
  %186 = mul nsw i32 %185, 16
  store i32 %186, i32* %14, align 4
  %187 = load i32, i32* @PAGE_SIZE, align 4
  %188 = load i32, i32* %14, align 4
  %189 = mul nsw i32 %188, %187
  store i32 %189, i32* %14, align 4
  %190 = load %struct.inode*, %struct.inode** %10, align 8
  %191 = load i32, i32* %14, align 4
  %192 = call i32 @btrfs_check_data_free_space(%struct.inode* %190, %struct.extent_changeset** %11, i32 0, i32 %191)
  store i32 %192, i32* %16, align 4
  %193 = load i32, i32* %16, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %184
  br label %221

196:                                              ; preds = %184
  %197 = load %struct.inode*, %struct.inode** %10, align 8
  %198 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %199 = load i32, i32* %14, align 4
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* %14, align 4
  %202 = call i32 @btrfs_prealloc_file_range_trans(%struct.inode* %197, %struct.btrfs_trans_handle* %198, i32 0, i32 0, i32 %199, i32 %200, i32 %201, i32* %12)
  store i32 %202, i32* %16, align 4
  %203 = load i32, i32* %16, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %207, label %205

205:                                              ; preds = %196
  %206 = load i32, i32* @BTRFS_DC_SETUP, align 4
  store i32 %206, i32* %13, align 4
  br label %220

207:                                              ; preds = %196
  %208 = load i32, i32* %16, align 4
  %209 = load i32, i32* @ENOSPC, align 4
  %210 = sub nsw i32 0, %209
  %211 = icmp eq i32 %208, %210
  br i1 %211, label %212, label %219

212:                                              ; preds = %207
  %213 = load i32, i32* @BTRFS_TRANS_CACHE_ENOSPC, align 4
  %214 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %215 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %214, i32 0, i32 1
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 0
  %218 = call i32 @set_bit(i32 %213, i32* %217)
  br label %219

219:                                              ; preds = %212, %207
  br label %220

220:                                              ; preds = %219, %205
  br label %221

221:                                              ; preds = %220, %195, %171, %154, %138, %131, %118, %100
  %222 = load %struct.inode*, %struct.inode** %10, align 8
  %223 = call i32 @iput(%struct.inode* %222)
  br label %224

224:                                              ; preds = %221, %88, %80
  %225 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %226 = call i32 @btrfs_release_path(%struct.btrfs_path* %225)
  br label %227

227:                                              ; preds = %224, %62
  %228 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %229 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %228, i32 0, i32 3
  %230 = call i32 @spin_lock(i32* %229)
  %231 = load i32, i32* %16, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %243, label %233

233:                                              ; preds = %227
  %234 = load i32, i32* %13, align 4
  %235 = load i32, i32* @BTRFS_DC_SETUP, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %243

237:                                              ; preds = %233
  %238 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %239 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %242 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %241, i32 0, i32 1
  store i64 %240, i64* %242, align 8
  br label %243

243:                                              ; preds = %237, %233, %227
  %244 = load i32, i32* %13, align 4
  %245 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %246 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %245, i32 0, i32 0
  store i32 %244, i32* %246, align 8
  %247 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %5, align 8
  %248 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %247, i32 0, i32 3
  %249 = call i32 @spin_unlock(i32* %248)
  %250 = load %struct.extent_changeset*, %struct.extent_changeset** %11, align 8
  %251 = call i32 @extent_changeset_free(%struct.extent_changeset* %250)
  %252 = load i32, i32* %16, align 4
  store i32 %252, i32* %4, align 4
  br label %253

253:                                              ; preds = %243, %47, %31
  %254 = load i32, i32* %4, align 4
  ret i32 %254
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.inode* @lookup_free_space_inode(%struct.btrfs_block_group_cache*, %struct.btrfs_path*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @create_free_space_inode(%struct.btrfs_trans_handle*, %struct.btrfs_block_group_cache*, %struct.btrfs_path*) #1

declare dso_local %struct.TYPE_6__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_update_inode(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*) #1

declare dso_local i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @btrfs_check_trunc_cache_free_space(%struct.btrfs_fs_info*, i32*) #1

declare dso_local i32 @btrfs_truncate_free_space_cache(%struct.btrfs_trans_handle*, i32*, %struct.inode*) #1

declare dso_local i32 @btrfs_test_opt(%struct.btrfs_fs_info*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @btrfs_check_data_free_space(%struct.inode*, %struct.extent_changeset**, i32, i32) #1

declare dso_local i32 @btrfs_prealloc_file_range_trans(%struct.inode*, %struct.btrfs_trans_handle*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @extent_changeset_free(%struct.extent_changeset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
