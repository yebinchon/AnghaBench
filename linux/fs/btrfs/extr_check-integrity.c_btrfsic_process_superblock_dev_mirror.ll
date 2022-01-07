; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_check-integrity.c_btrfsic_process_superblock_dev_mirror.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_check-integrity.c_btrfsic_process_superblock_dev_mirror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfsic_state = type { i64, i64, i32, i64, %struct.btrfsic_block*, i32, i32, %struct.btrfs_fs_info* }
%struct.btrfsic_block = type { i32, i32, i32, i32, i32, i32, i64, %struct.btrfs_disk_key, i32, i64, %struct.btrfsic_dev_state* }
%struct.btrfs_disk_key = type { i64, i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfsic_dev_state = type { i32 }
%struct.btrfs_device = type { i64, i32, i32, %struct.block_device* }
%struct.block_device = type { i32 }
%struct.btrfs_super_block = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { i64 }
%struct.btrfsic_block_data_ctx = type { i32 }
%struct.btrfsic_block_link = type { i32 }

@BTRFS_SUPER_INFO_SIZE = common dso_local global i64 0, align 8
@BTRFS_BDEV_BLOCKSIZE = common dso_local global i32 0, align 4
@BTRFS_MAGIC = common dso_local global i64 0, align 8
@BTRFS_UUID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"btrfsic: error, kmalloc failed!\0A\00", align 1
@BTRFSIC_PRINT_MASK_SUPERBLOCK_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"new initial S-block (bdev %p, %s) @%llu (%s/%llu/%d)\00", align 1
@BTRFS_ROOT_ITEM_KEY = common dso_local global i32 0, align 4
@BTRFS_ROOT_TREE_OBJECTID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"initial root \00", align 1
@BTRFS_CHUNK_TREE_OBJECTID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"initial chunk \00", align 1
@BTRFS_TREE_LOG_OBJECTID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"initial log \00", align 1
@BTRFSIC_PRINT_MASK_NUM_COPIES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"num_copies(log_bytenr=%llu) = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"btrfsic: btrfsic_map_block(bytenr @%llu, mirror %d) failed!\0A\00", align 1
@BTRFSIC_GENERATION_UNKNOWN = common dso_local global i64 0, align 8
@BTRFSIC_PRINT_MASK_INITIAL_ALL_TREES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfsic_state*, %struct.btrfsic_dev_state*, %struct.btrfs_device*, i32, %struct.btrfsic_dev_state**, %struct.btrfs_super_block*)* @btrfsic_process_superblock_dev_mirror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfsic_process_superblock_dev_mirror(%struct.btrfsic_state* %0, %struct.btrfsic_dev_state* %1, %struct.btrfs_device* %2, i32 %3, %struct.btrfsic_dev_state** %4, %struct.btrfs_super_block* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfsic_state*, align 8
  %9 = alloca %struct.btrfsic_dev_state*, align 8
  %10 = alloca %struct.btrfs_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfsic_dev_state**, align 8
  %13 = alloca %struct.btrfs_super_block*, align 8
  %14 = alloca %struct.btrfs_fs_info*, align 8
  %15 = alloca %struct.btrfs_super_block*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca %struct.btrfsic_block*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.block_device*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca %struct.btrfs_disk_key, align 8
  %26 = alloca %struct.btrfsic_block*, align 8
  %27 = alloca %struct.btrfsic_block_data_ctx, align 4
  %28 = alloca %struct.btrfsic_block_link*, align 8
  store %struct.btrfsic_state* %0, %struct.btrfsic_state** %8, align 8
  store %struct.btrfsic_dev_state* %1, %struct.btrfsic_dev_state** %9, align 8
  store %struct.btrfs_device* %2, %struct.btrfs_device** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.btrfsic_dev_state** %4, %struct.btrfsic_dev_state*** %12, align 8
  store %struct.btrfs_super_block* %5, %struct.btrfs_super_block** %13, align 8
  %29 = load %struct.btrfsic_state*, %struct.btrfsic_state** %8, align 8
  %30 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %29, i32 0, i32 7
  %31 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %30, align 8
  store %struct.btrfs_fs_info* %31, %struct.btrfs_fs_info** %14, align 8
  %32 = load %struct.btrfs_device*, %struct.btrfs_device** %10, align 8
  %33 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %32, i32 0, i32 3
  %34 = load %struct.block_device*, %struct.block_device** %33, align 8
  store %struct.block_device* %34, %struct.block_device** %20, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @btrfs_sb_offset(i32 %35)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* @BTRFS_SUPER_INFO_SIZE, align 8
  %40 = add nsw i64 %38, %39
  %41 = load %struct.btrfs_device*, %struct.btrfs_device** %10, align 8
  %42 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %318

46:                                               ; preds = %6
  %47 = load %struct.block_device*, %struct.block_device** %20, align 8
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* @BTRFS_BDEV_BLOCKSIZE, align 4
  %50 = sdiv i32 %48, %49
  %51 = load i64, i64* @BTRFS_SUPER_INFO_SIZE, align 8
  %52 = call %struct.buffer_head* @__bread(%struct.block_device* %47, i32 %50, i64 %51)
  store %struct.buffer_head* %52, %struct.buffer_head** %17, align 8
  %53 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %54 = icmp eq %struct.buffer_head* null, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  store i32 -1, i32* %7, align 4
  br label %318

56:                                               ; preds = %46
  %57 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %58 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* @BTRFS_BDEV_BLOCKSIZE, align 4
  %62 = sub nsw i32 %61, 1
  %63 = and i32 %60, %62
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %59, %64
  %66 = inttoptr i64 %65 to %struct.btrfs_super_block*
  store %struct.btrfs_super_block* %66, %struct.btrfs_super_block** %15, align 8
  %67 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %15, align 8
  %68 = call i32 @btrfs_super_bytenr(%struct.btrfs_super_block* %67)
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %101, label %71

71:                                               ; preds = %56
  %72 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %15, align 8
  %73 = call i64 @btrfs_super_magic(%struct.btrfs_super_block* %72)
  %74 = load i64, i64* @BTRFS_MAGIC, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %101, label %76

76:                                               ; preds = %71
  %77 = load %struct.btrfs_device*, %struct.btrfs_device** %10, align 8
  %78 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %15, align 8
  %81 = getelementptr inbounds %struct.btrfs_super_block, %struct.btrfs_super_block* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @BTRFS_UUID_SIZE, align 4
  %85 = call i64 @memcmp(i32 %79, i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %101, label %87

87:                                               ; preds = %76
  %88 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %15, align 8
  %89 = call i64 @btrfs_super_nodesize(%struct.btrfs_super_block* %88)
  %90 = load %struct.btrfsic_state*, %struct.btrfsic_state** %8, align 8
  %91 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %89, %92
  br i1 %93, label %101, label %94

94:                                               ; preds = %87
  %95 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %15, align 8
  %96 = call i64 @btrfs_super_sectorsize(%struct.btrfs_super_block* %95)
  %97 = load %struct.btrfsic_state*, %struct.btrfsic_state** %8, align 8
  %98 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %96, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %94, %87, %76, %71, %56
  %102 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %103 = call i32 @brelse(%struct.buffer_head* %102)
  store i32 0, i32* %7, align 4
  br label %318

104:                                              ; preds = %94
  %105 = load %struct.block_device*, %struct.block_device** %20, align 8
  %106 = load i32, i32* %16, align 4
  %107 = load %struct.btrfsic_state*, %struct.btrfsic_state** %8, align 8
  %108 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %107, i32 0, i32 5
  %109 = call %struct.btrfsic_block* @btrfsic_block_hashtable_lookup(%struct.block_device* %105, i32 %106, i32* %108)
  store %struct.btrfsic_block* %109, %struct.btrfsic_block** %18, align 8
  %110 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  %111 = icmp eq %struct.btrfsic_block* null, %110
  br i1 %111, label %112, label %176

112:                                              ; preds = %104
  %113 = call %struct.btrfsic_block* (...) @btrfsic_block_alloc()
  store %struct.btrfsic_block* %113, %struct.btrfsic_block** %18, align 8
  %114 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  %115 = icmp eq %struct.btrfsic_block* null, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %118 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %119 = call i32 @brelse(%struct.buffer_head* %118)
  store i32 -1, i32* %7, align 4
  br label %318

120:                                              ; preds = %112
  %121 = load i32, i32* %16, align 4
  %122 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  %123 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %9, align 8
  %125 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  %126 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %125, i32 0, i32 10
  store %struct.btrfsic_dev_state* %124, %struct.btrfsic_dev_state** %126, align 8
  %127 = load i32, i32* %16, align 4
  %128 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  %129 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %15, align 8
  %131 = call i64 @btrfs_super_generation(%struct.btrfs_super_block* %130)
  %132 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  %133 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %132, i32 0, i32 6
  store i64 %131, i64* %133, align 8
  %134 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  %135 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %134, i32 0, i32 2
  store i32 1, i32* %135, align 8
  %136 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  %137 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %136, i32 0, i32 3
  store i32 1, i32* %137, align 4
  %138 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  %139 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %138, i32 0, i32 4
  store i32 1, i32* %139, align 8
  %140 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  %141 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %140, i32 0, i32 9
  store i64 0, i64* %141, align 8
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 1, %142
  %144 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  %145 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %144, i32 0, i32 5
  store i32 %143, i32* %145, align 4
  %146 = load %struct.btrfsic_state*, %struct.btrfsic_state** %8, align 8
  %147 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @BTRFSIC_PRINT_MASK_SUPERBLOCK_WRITE, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %166

152:                                              ; preds = %120
  %153 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %154 = load %struct.block_device*, %struct.block_device** %20, align 8
  %155 = load %struct.btrfs_device*, %struct.btrfs_device** %10, align 8
  %156 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @rcu_str_deref(i32 %157)
  %159 = load i32, i32* %16, align 4
  %160 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %9, align 8
  %161 = getelementptr inbounds %struct.btrfsic_dev_state, %struct.btrfsic_dev_state* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %16, align 4
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @btrfs_info_in_rcu(%struct.btrfs_fs_info* %153, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), %struct.block_device* %154, i32 %158, i32 %159, i32 %162, i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %152, %120
  %167 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  %168 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %167, i32 0, i32 8
  %169 = load %struct.btrfsic_state*, %struct.btrfsic_state** %8, align 8
  %170 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %169, i32 0, i32 6
  %171 = call i32 @list_add(i32* %168, i32* %170)
  %172 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  %173 = load %struct.btrfsic_state*, %struct.btrfsic_state** %8, align 8
  %174 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %173, i32 0, i32 5
  %175 = call i32 @btrfsic_block_hashtable_add(%struct.btrfsic_block* %172, i32* %174)
  br label %176

176:                                              ; preds = %166, %104
  %177 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %15, align 8
  %178 = call i64 @btrfs_super_generation(%struct.btrfs_super_block* %177)
  %179 = load %struct.btrfsic_state*, %struct.btrfsic_state** %8, align 8
  %180 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = icmp sgt i64 %178, %181
  br i1 %182, label %188, label %183

183:                                              ; preds = %176
  %184 = load %struct.btrfsic_state*, %struct.btrfsic_state** %8, align 8
  %185 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = icmp eq i64 0, %186
  br i1 %187, label %188, label %201

188:                                              ; preds = %183, %176
  %189 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %13, align 8
  %190 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %15, align 8
  %191 = call i32 @memcpy(%struct.btrfs_super_block* %189, %struct.btrfs_super_block* %190, i32 4)
  %192 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %9, align 8
  %193 = load %struct.btrfsic_dev_state**, %struct.btrfsic_dev_state*** %12, align 8
  store %struct.btrfsic_dev_state* %192, %struct.btrfsic_dev_state** %193, align 8
  %194 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %15, align 8
  %195 = call i64 @btrfs_super_generation(%struct.btrfs_super_block* %194)
  %196 = load %struct.btrfsic_state*, %struct.btrfsic_state** %8, align 8
  %197 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %196, i32 0, i32 3
  store i64 %195, i64* %197, align 8
  %198 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  %199 = load %struct.btrfsic_state*, %struct.btrfsic_state** %8, align 8
  %200 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %199, i32 0, i32 4
  store %struct.btrfsic_block* %198, %struct.btrfsic_block** %200, align 8
  br label %201

201:                                              ; preds = %188, %183
  store i32 0, i32* %19, align 4
  br label %202

202:                                              ; preds = %301, %201
  %203 = load i32, i32* %19, align 4
  %204 = icmp slt i32 %203, 3
  br i1 %204, label %205, label %304

205:                                              ; preds = %202
  store i8* null, i8** %24, align 8
  %206 = load i32, i32* @BTRFS_ROOT_ITEM_KEY, align 4
  %207 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %25, i32 0, i32 1
  store i32 %206, i32* %207, align 8
  %208 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %25, i32 0, i32 0
  store i64 0, i64* %208, align 8
  %209 = load i32, i32* %19, align 4
  switch i32 %209, label %229 [
    i32 0, label %210
    i32 1, label %215
    i32 2, label %220
  ]

210:                                              ; preds = %205
  %211 = load i32, i32* @BTRFS_ROOT_TREE_OBJECTID, align 4
  %212 = call i32 @btrfs_set_disk_key_objectid(%struct.btrfs_disk_key* %25, i32 %211)
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %24, align 8
  %213 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %15, align 8
  %214 = call i32 @btrfs_super_root(%struct.btrfs_super_block* %213)
  store i32 %214, i32* %21, align 4
  br label %229

215:                                              ; preds = %205
  %216 = load i32, i32* @BTRFS_CHUNK_TREE_OBJECTID, align 4
  %217 = call i32 @btrfs_set_disk_key_objectid(%struct.btrfs_disk_key* %25, i32 %216)
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %24, align 8
  %218 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %15, align 8
  %219 = call i32 @btrfs_super_chunk_root(%struct.btrfs_super_block* %218)
  store i32 %219, i32* %21, align 4
  br label %229

220:                                              ; preds = %205
  %221 = load i32, i32* @BTRFS_TREE_LOG_OBJECTID, align 4
  %222 = call i32 @btrfs_set_disk_key_objectid(%struct.btrfs_disk_key* %25, i32 %221)
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %24, align 8
  %223 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %15, align 8
  %224 = call i32 @btrfs_super_log_root(%struct.btrfs_super_block* %223)
  store i32 %224, i32* %21, align 4
  %225 = load i32, i32* %21, align 4
  %226 = icmp eq i32 0, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %220
  br label %301

228:                                              ; preds = %220
  br label %229

229:                                              ; preds = %205, %228, %215, %210
  %230 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %231 = load i32, i32* %21, align 4
  %232 = load %struct.btrfsic_state*, %struct.btrfsic_state** %8, align 8
  %233 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = call i32 @btrfs_num_copies(%struct.btrfs_fs_info* %230, i32 %231, i64 %234)
  store i32 %235, i32* %22, align 4
  %236 = load %struct.btrfsic_state*, %struct.btrfsic_state** %8, align 8
  %237 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @BTRFSIC_PRINT_MASK_NUM_COPIES, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %229
  %243 = load i32, i32* %21, align 4
  %244 = load i32, i32* %22, align 4
  %245 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %243, i32 %244)
  br label %246

246:                                              ; preds = %242, %229
  store i32 1, i32* %23, align 4
  br label %247

247:                                              ; preds = %297, %246
  %248 = load i32, i32* %23, align 4
  %249 = load i32, i32* %22, align 4
  %250 = icmp sle i32 %248, %249
  br i1 %250, label %251, label %300

251:                                              ; preds = %247
  %252 = load %struct.btrfsic_state*, %struct.btrfsic_state** %8, align 8
  %253 = load i32, i32* %21, align 4
  %254 = load %struct.btrfsic_state*, %struct.btrfsic_state** %8, align 8
  %255 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i32, i32* %23, align 4
  %258 = call i64 @btrfsic_map_block(%struct.btrfsic_state* %252, i32 %253, i64 %256, %struct.btrfsic_block_data_ctx* %27, i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %251
  %261 = load i32, i32* %21, align 4
  %262 = load i32, i32* %23, align 4
  %263 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i32 %261, i32 %262)
  %264 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %265 = call i32 @brelse(%struct.buffer_head* %264)
  store i32 -1, i32* %7, align 4
  br label %318

266:                                              ; preds = %251
  %267 = load %struct.btrfsic_state*, %struct.btrfsic_state** %8, align 8
  %268 = load i8*, i8** %24, align 8
  %269 = load i32, i32* %23, align 4
  %270 = call %struct.btrfsic_block* @btrfsic_block_lookup_or_add(%struct.btrfsic_state* %267, %struct.btrfsic_block_data_ctx* %27, i8* %268, i32 1, i32 1, i32 0, i32 %269, i32* null)
  store %struct.btrfsic_block* %270, %struct.btrfsic_block** %26, align 8
  %271 = load %struct.btrfsic_block*, %struct.btrfsic_block** %26, align 8
  %272 = icmp eq %struct.btrfsic_block* null, %271
  br i1 %272, label %273, label %277

273:                                              ; preds = %266
  %274 = call i32 @btrfsic_release_block_ctx(%struct.btrfsic_block_data_ctx* %27)
  %275 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %276 = call i32 @brelse(%struct.buffer_head* %275)
  store i32 -1, i32* %7, align 4
  br label %318

277:                                              ; preds = %266
  %278 = load %struct.btrfsic_block*, %struct.btrfsic_block** %26, align 8
  %279 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %278, i32 0, i32 7
  %280 = bitcast %struct.btrfs_disk_key* %279 to i8*
  %281 = bitcast %struct.btrfs_disk_key* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %280, i8* align 8 %281, i64 16, i1 false)
  %282 = load i64, i64* @BTRFSIC_GENERATION_UNKNOWN, align 8
  %283 = load %struct.btrfsic_block*, %struct.btrfsic_block** %26, align 8
  %284 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %283, i32 0, i32 6
  store i64 %282, i64* %284, align 8
  %285 = load %struct.btrfsic_state*, %struct.btrfsic_state** %8, align 8
  %286 = load %struct.btrfsic_block*, %struct.btrfsic_block** %26, align 8
  %287 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  %288 = load i64, i64* @BTRFSIC_GENERATION_UNKNOWN, align 8
  %289 = call %struct.btrfsic_block_link* @btrfsic_block_link_lookup_or_add(%struct.btrfsic_state* %285, %struct.btrfsic_block_data_ctx* %27, %struct.btrfsic_block* %286, %struct.btrfsic_block* %287, i64 %288)
  store %struct.btrfsic_block_link* %289, %struct.btrfsic_block_link** %28, align 8
  %290 = call i32 @btrfsic_release_block_ctx(%struct.btrfsic_block_data_ctx* %27)
  %291 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %28, align 8
  %292 = icmp eq %struct.btrfsic_block_link* null, %291
  br i1 %292, label %293, label %296

293:                                              ; preds = %277
  %294 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %295 = call i32 @brelse(%struct.buffer_head* %294)
  store i32 -1, i32* %7, align 4
  br label %318

296:                                              ; preds = %277
  br label %297

297:                                              ; preds = %296
  %298 = load i32, i32* %23, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %23, align 4
  br label %247

300:                                              ; preds = %247
  br label %301

301:                                              ; preds = %300, %227
  %302 = load i32, i32* %19, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %19, align 4
  br label %202

304:                                              ; preds = %202
  %305 = load %struct.btrfsic_state*, %struct.btrfsic_state** %8, align 8
  %306 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @BTRFSIC_PRINT_MASK_INITIAL_ALL_TREES, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %315

311:                                              ; preds = %304
  %312 = load %struct.btrfsic_state*, %struct.btrfsic_state** %8, align 8
  %313 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  %314 = call i32 @btrfsic_dump_tree_sub(%struct.btrfsic_state* %312, %struct.btrfsic_block* %313, i32 0)
  br label %315

315:                                              ; preds = %311, %304
  %316 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %317 = call i32 @brelse(%struct.buffer_head* %316)
  store i32 0, i32* %7, align 4
  br label %318

318:                                              ; preds = %315, %293, %273, %260, %116, %101, %55, %45
  %319 = load i32, i32* %7, align 4
  ret i32 %319
}

declare dso_local i32 @btrfs_sb_offset(i32) #1

declare dso_local %struct.buffer_head* @__bread(%struct.block_device*, i32, i64) #1

declare dso_local i32 @btrfs_super_bytenr(%struct.btrfs_super_block*) #1

declare dso_local i64 @btrfs_super_magic(%struct.btrfs_super_block*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i64 @btrfs_super_nodesize(%struct.btrfs_super_block*) #1

declare dso_local i64 @btrfs_super_sectorsize(%struct.btrfs_super_block*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.btrfsic_block* @btrfsic_block_hashtable_lookup(%struct.block_device*, i32, i32*) #1

declare dso_local %struct.btrfsic_block* @btrfsic_block_alloc(...) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i64 @btrfs_super_generation(%struct.btrfs_super_block*) #1

declare dso_local i32 @btrfs_info_in_rcu(%struct.btrfs_fs_info*, i8*, %struct.block_device*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rcu_str_deref(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @btrfsic_block_hashtable_add(%struct.btrfsic_block*, i32*) #1

declare dso_local i32 @memcpy(%struct.btrfs_super_block*, %struct.btrfs_super_block*, i32) #1

declare dso_local i32 @btrfs_set_disk_key_objectid(%struct.btrfs_disk_key*, i32) #1

declare dso_local i32 @btrfs_super_root(%struct.btrfs_super_block*) #1

declare dso_local i32 @btrfs_super_chunk_root(%struct.btrfs_super_block*) #1

declare dso_local i32 @btrfs_super_log_root(%struct.btrfs_super_block*) #1

declare dso_local i32 @btrfs_num_copies(%struct.btrfs_fs_info*, i32, i64) #1

declare dso_local i64 @btrfsic_map_block(%struct.btrfsic_state*, i32, i64, %struct.btrfsic_block_data_ctx*, i32) #1

declare dso_local %struct.btrfsic_block* @btrfsic_block_lookup_or_add(%struct.btrfsic_state*, %struct.btrfsic_block_data_ctx*, i8*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @btrfsic_release_block_ctx(%struct.btrfsic_block_data_ctx*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.btrfsic_block_link* @btrfsic_block_link_lookup_or_add(%struct.btrfsic_state*, %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block*, %struct.btrfsic_block*, i64) #1

declare dso_local i32 @btrfsic_dump_tree_sub(%struct.btrfsic_state*, %struct.btrfsic_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
