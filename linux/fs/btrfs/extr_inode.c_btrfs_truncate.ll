; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_truncate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.btrfs_fs_info = type { i32, %struct.btrfs_block_rsv }
%struct.btrfs_block_rsv = type { i32, i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_trans_handle = type { %struct.btrfs_block_rsv* }
%struct.TYPE_2__ = type { i32, %struct.btrfs_root* }

@BTRFS_BLOCK_RSV_TEMP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_INODE_NEEDS_FULL_SYNC = common dso_local global i32 0, align 4
@BTRFS_EXTENT_DATA_KEY = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@NEED_TRUNCATE_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @btrfs_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_truncate(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca %struct.btrfs_block_rsv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_trans_handle*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %16)
  store %struct.btrfs_fs_info* %17, %struct.btrfs_fs_info** %6, align 8
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.btrfs_root*, %struct.btrfs_root** %20, align 8
  store %struct.btrfs_root* %21, %struct.btrfs_root** %7, align 8
  %22 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %23 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %11, align 4
  %26 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %27 = call i32 @btrfs_calc_metadata_size(%struct.btrfs_fs_info* %26, i32 1)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %2
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %11, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = call i32 @btrfs_wait_ordered_range(%struct.inode* %31, i32 %37, i32 -1)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %3, align 4
  br label %211

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43, %2
  %45 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %46 = load i32, i32* @BTRFS_BLOCK_RSV_TEMP, align 4
  %47 = call %struct.btrfs_block_rsv* @btrfs_alloc_block_rsv(%struct.btrfs_fs_info* %45, i32 %46)
  store %struct.btrfs_block_rsv* %47, %struct.btrfs_block_rsv** %8, align 8
  %48 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %8, align 8
  %49 = icmp ne %struct.btrfs_block_rsv* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %211

53:                                               ; preds = %44
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %8, align 8
  %56 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %8, align 8
  %58 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  %59 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %60 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %59, i32 2)
  store %struct.btrfs_trans_handle* %60, %struct.btrfs_trans_handle** %10, align 8
  %61 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %62 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %66 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %65)
  store i32 %66, i32* %9, align 4
  br label %206

67:                                               ; preds = %53
  %68 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %69 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %68, i32 0, i32 1
  %70 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %8, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @btrfs_block_rsv_migrate(%struct.btrfs_block_rsv* %69, %struct.btrfs_block_rsv* %70, i32 %71, i32 0)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @BUG_ON(i32 %73)
  %75 = load i32, i32* @BTRFS_INODE_NEEDS_FULL_SYNC, align 4
  %76 = load %struct.inode*, %struct.inode** %4, align 8
  %77 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %76)
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = call i32 @set_bit(i32 %75, i32* %78)
  %80 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %8, align 8
  %81 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %82 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %81, i32 0, i32 0
  store %struct.btrfs_block_rsv* %80, %struct.btrfs_block_rsv** %82, align 8
  br label %83

83:                                               ; preds = %67, %127
  %84 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %85 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %86 = load %struct.inode*, %struct.inode** %4, align 8
  %87 = load %struct.inode*, %struct.inode** %4, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @BTRFS_EXTENT_DATA_KEY, align 4
  %91 = call i32 @btrfs_truncate_inode_items(%struct.btrfs_trans_handle* %84, %struct.btrfs_root* %85, %struct.inode* %86, i32 %89, i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %93 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %92, i32 0, i32 1
  %94 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %95 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %94, i32 0, i32 0
  store %struct.btrfs_block_rsv* %93, %struct.btrfs_block_rsv** %95, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @ENOSPC, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp ne i32 %96, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %83
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @EAGAIN, align 4
  %103 = sub nsw i32 0, %102
  %104 = icmp ne i32 %101, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %141

106:                                              ; preds = %100, %83
  %107 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %108 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %109 = load %struct.inode*, %struct.inode** %4, align 8
  %110 = call i32 @btrfs_update_inode(%struct.btrfs_trans_handle* %107, %struct.btrfs_root* %108, %struct.inode* %109)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %141

114:                                              ; preds = %106
  %115 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %116 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %115)
  %117 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %118 = call i32 @btrfs_btree_balance_dirty(%struct.btrfs_fs_info* %117)
  %119 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %120 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %119, i32 2)
  store %struct.btrfs_trans_handle* %120, %struct.btrfs_trans_handle** %10, align 8
  %121 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %122 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %114
  %125 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %126 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %125)
  store i32 %126, i32* %9, align 4
  store %struct.btrfs_trans_handle* null, %struct.btrfs_trans_handle** %10, align 8
  br label %141

127:                                              ; preds = %114
  %128 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %129 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %8, align 8
  %130 = call i32 @btrfs_block_rsv_release(%struct.btrfs_fs_info* %128, %struct.btrfs_block_rsv* %129, i32 -1)
  %131 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %132 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %131, i32 0, i32 1
  %133 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %8, align 8
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @btrfs_block_rsv_migrate(%struct.btrfs_block_rsv* %132, %struct.btrfs_block_rsv* %133, i32 %134, i32 0)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @BUG_ON(i32 %136)
  %138 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %8, align 8
  %139 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %140 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %139, i32 0, i32 0
  store %struct.btrfs_block_rsv* %138, %struct.btrfs_block_rsv** %140, align 8
  br label %83

141:                                              ; preds = %124, %113, %105
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @NEED_TRUNCATE_BLOCK, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %173

145:                                              ; preds = %141
  %146 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %147 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %146)
  %148 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %149 = call i32 @btrfs_btree_balance_dirty(%struct.btrfs_fs_info* %148)
  %150 = load %struct.inode*, %struct.inode** %4, align 8
  %151 = load %struct.inode*, %struct.inode** %4, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @btrfs_truncate_block(%struct.inode* %150, i32 %153, i32 0, i32 0)
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %145
  br label %206

158:                                              ; preds = %145
  %159 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %160 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %159, i32 1)
  store %struct.btrfs_trans_handle* %160, %struct.btrfs_trans_handle** %10, align 8
  %161 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %162 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %158
  %165 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %166 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %165)
  store i32 %166, i32* %9, align 4
  br label %206

167:                                              ; preds = %158
  %168 = load %struct.inode*, %struct.inode** %4, align 8
  %169 = load %struct.inode*, %struct.inode** %4, align 8
  %170 = getelementptr inbounds %struct.inode, %struct.inode* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @btrfs_ordered_update_i_size(%struct.inode* %168, i32 %171, i32* null)
  br label %173

173:                                              ; preds = %167, %141
  %174 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %175 = icmp ne %struct.btrfs_trans_handle* %174, null
  br i1 %175, label %176, label %205

176:                                              ; preds = %173
  %177 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %178 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %177, i32 0, i32 1
  %179 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %180 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %179, i32 0, i32 0
  store %struct.btrfs_block_rsv* %178, %struct.btrfs_block_rsv** %180, align 8
  %181 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %182 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %183 = load %struct.inode*, %struct.inode** %4, align 8
  %184 = call i32 @btrfs_update_inode(%struct.btrfs_trans_handle* %181, %struct.btrfs_root* %182, %struct.inode* %183)
  store i32 %184, i32* %13, align 4
  %185 = load i32, i32* %13, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %176
  %188 = load i32, i32* %9, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %192, label %190

190:                                              ; preds = %187
  %191 = load i32, i32* %13, align 4
  store i32 %191, i32* %9, align 4
  br label %192

192:                                              ; preds = %190, %187, %176
  %193 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %194 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %193)
  store i32 %194, i32* %13, align 4
  %195 = load i32, i32* %13, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %192
  %198 = load i32, i32* %9, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %197
  %201 = load i32, i32* %13, align 4
  store i32 %201, i32* %9, align 4
  br label %202

202:                                              ; preds = %200, %197, %192
  %203 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %204 = call i32 @btrfs_btree_balance_dirty(%struct.btrfs_fs_info* %203)
  br label %205

205:                                              ; preds = %202, %173
  br label %206

206:                                              ; preds = %205, %164, %157, %64
  %207 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %208 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %8, align 8
  %209 = call i32 @btrfs_free_block_rsv(%struct.btrfs_fs_info* %207, %struct.btrfs_block_rsv* %208)
  %210 = load i32, i32* %9, align 4
  store i32 %210, i32* %3, align 4
  br label %211

211:                                              ; preds = %206, %50, %41
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_calc_metadata_size(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @btrfs_wait_ordered_range(%struct.inode*, i32, i32) #1

declare dso_local %struct.btrfs_block_rsv* @btrfs_alloc_block_rsv(%struct.btrfs_fs_info*, i32) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_block_rsv_migrate(%struct.btrfs_block_rsv*, %struct.btrfs_block_rsv*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @btrfs_truncate_inode_items(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*, i32, i32) #1

declare dso_local i32 @btrfs_update_inode(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_btree_balance_dirty(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_block_rsv_release(%struct.btrfs_fs_info*, %struct.btrfs_block_rsv*, i32) #1

declare dso_local i32 @btrfs_truncate_block(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @btrfs_ordered_update_i_size(%struct.inode*, i32, i32*) #1

declare dso_local i32 @btrfs_free_block_rsv(%struct.btrfs_fs_info*, %struct.btrfs_block_rsv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
