; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_check-integrity.c_btrfsic_process_written_superblock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_check-integrity.c_btrfsic_process_written_superblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfsic_state = type { i64, i32, %struct.btrfsic_block*, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfsic_block = type { i64, %struct.btrfs_disk_key, i32, i32, %struct.TYPE_2__*, i32 }
%struct.btrfs_disk_key = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.btrfs_super_block = type { i32 }
%struct.btrfsic_block_data_ctx = type { i32 }
%struct.btrfsic_block_link = type { i32 }

@BTRFSIC_PRINT_MASK_SUPERBLOCK_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"btrfsic: superblock @%llu (%s/%llu/%d) with old gen %llu <= %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"btrfsic: got new superblock @%llu (%s/%llu/%d) with new gen %llu > %llu\0A\00", align 1
@BTRFS_ROOT_ITEM_KEY = common dso_local global i32 0, align 4
@BTRFS_ROOT_TREE_OBJECTID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"root \00", align 1
@BTRFSIC_PRINT_MASK_ROOT_CHUNK_LOG_TREE_LOCATION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"root@%llu\0A\00", align 1
@BTRFS_CHUNK_TREE_OBJECTID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"chunk \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"chunk@%llu\0A\00", align 1
@BTRFS_TREE_LOG_OBJECTID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"log \00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"log@%llu\0A\00", align 1
@BTRFS_SUPER_INFO_SIZE = common dso_local global i32 0, align 4
@BTRFSIC_PRINT_MASK_NUM_COPIES = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"num_copies(log_bytenr=%llu) = %d\0A\00", align 1
@BTRFSIC_PRINT_MASK_VERBOSE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [51 x i8] c"btrfsic_process_written_superblock(mirror_num=%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"btrfsic: btrfsic_map_block(@%llu, mirror=%d) failed!\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"btrfsic: error, kmalloc failed!\0A\00", align 1
@BTRFSIC_GENERATION_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfsic_state*, %struct.btrfsic_block*, %struct.btrfs_super_block*)* @btrfsic_process_written_superblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfsic_process_written_superblock(%struct.btrfsic_state* %0, %struct.btrfsic_block* %1, %struct.btrfs_super_block* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfsic_state*, align 8
  %6 = alloca %struct.btrfsic_block*, align 8
  %7 = alloca %struct.btrfs_super_block*, align 8
  %8 = alloca %struct.btrfs_fs_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfsic_block*, align 8
  %13 = alloca %struct.btrfsic_block_data_ctx, align 4
  %14 = alloca %struct.btrfsic_block_link*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.btrfs_disk_key, align 4
  %19 = alloca i32, align 4
  store %struct.btrfsic_state* %0, %struct.btrfsic_state** %5, align 8
  store %struct.btrfsic_block* %1, %struct.btrfsic_block** %6, align 8
  store %struct.btrfs_super_block* %2, %struct.btrfs_super_block** %7, align 8
  %20 = load %struct.btrfsic_state*, %struct.btrfsic_state** %5, align 8
  %21 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %20, i32 0, i32 3
  %22 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %21, align 8
  store %struct.btrfs_fs_info* %22, %struct.btrfs_fs_info** %8, align 8
  %23 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %7, align 8
  %24 = call i8* @btrfs_super_generation(%struct.btrfs_super_block* %23)
  %25 = ptrtoint i8* %24 to i64
  %26 = load %struct.btrfsic_block*, %struct.btrfsic_block** %6, align 8
  %27 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.btrfsic_block*, %struct.btrfsic_block** %6, align 8
  %29 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.btrfsic_state*, %struct.btrfsic_state** %5, align 8
  %32 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %69, label %35

35:                                               ; preds = %3
  %36 = load %struct.btrfsic_state*, %struct.btrfsic_state** %5, align 8
  %37 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 0, %38
  br i1 %39, label %69, label %40

40:                                               ; preds = %35
  %41 = load %struct.btrfsic_state*, %struct.btrfsic_state** %5, align 8
  %42 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @BTRFSIC_PRINT_MASK_SUPERBLOCK_WRITE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %40
  %48 = load %struct.btrfsic_block*, %struct.btrfsic_block** %6, align 8
  %49 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.btrfsic_block*, %struct.btrfsic_block** %6, align 8
  %52 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %51, i32 0, i32 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.btrfsic_block*, %struct.btrfsic_block** %6, align 8
  %57 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.btrfsic_block*, %struct.btrfsic_block** %6, align 8
  %60 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %7, align 8
  %63 = call i8* @btrfs_super_generation(%struct.btrfs_super_block* %62)
  %64 = load %struct.btrfsic_state*, %struct.btrfsic_state** %5, align 8
  %65 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %55, i32 %58, i32 %61, i8* %63, i64 %66)
  br label %68

68:                                               ; preds = %47, %40
  br label %106

69:                                               ; preds = %35, %3
  %70 = load %struct.btrfsic_state*, %struct.btrfsic_state** %5, align 8
  %71 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @BTRFSIC_PRINT_MASK_SUPERBLOCK_WRITE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %97

76:                                               ; preds = %69
  %77 = load %struct.btrfsic_block*, %struct.btrfsic_block** %6, align 8
  %78 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.btrfsic_block*, %struct.btrfsic_block** %6, align 8
  %81 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %80, i32 0, i32 4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.btrfsic_block*, %struct.btrfsic_block** %6, align 8
  %86 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.btrfsic_block*, %struct.btrfsic_block** %6, align 8
  %89 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %7, align 8
  %92 = call i8* @btrfs_super_generation(%struct.btrfs_super_block* %91)
  %93 = load %struct.btrfsic_state*, %struct.btrfsic_state** %5, align 8
  %94 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %84, i32 %87, i32 %90, i8* %92, i64 %95)
  br label %97

97:                                               ; preds = %76, %69
  %98 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %7, align 8
  %99 = call i8* @btrfs_super_generation(%struct.btrfs_super_block* %98)
  %100 = ptrtoint i8* %99 to i64
  %101 = load %struct.btrfsic_state*, %struct.btrfsic_state** %5, align 8
  %102 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load %struct.btrfsic_block*, %struct.btrfsic_block** %6, align 8
  %104 = load %struct.btrfsic_state*, %struct.btrfsic_state** %5, align 8
  %105 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %104, i32 0, i32 2
  store %struct.btrfsic_block* %103, %struct.btrfsic_block** %105, align 8
  br label %106

106:                                              ; preds = %97, %68
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %243, %106
  %108 = load i32, i32* %9, align 4
  %109 = icmp slt i32 %108, 3
  br i1 %109, label %110, label %246

110:                                              ; preds = %107
  store i8* null, i8** %17, align 8
  %111 = bitcast %struct.btrfs_disk_key* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %111, i8 0, i64 4, i1 false)
  %112 = load i32, i32* @BTRFS_ROOT_ITEM_KEY, align 4
  %113 = call i32 @btrfs_set_disk_key_objectid(%struct.btrfs_disk_key* %18, i32 %112)
  %114 = call i32 @btrfs_set_disk_key_objectid(%struct.btrfs_disk_key* %18, i32 0)
  %115 = load i32, i32* %9, align 4
  switch i32 %115, label %165 [
    i32 0, label %116
    i32 1, label %131
    i32 2, label %146
  ]

116:                                              ; preds = %110
  %117 = load i32, i32* @BTRFS_ROOT_TREE_OBJECTID, align 4
  %118 = call i32 @btrfs_set_disk_key_objectid(%struct.btrfs_disk_key* %18, i32 %117)
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %17, align 8
  %119 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %7, align 8
  %120 = call i32 @btrfs_super_root(%struct.btrfs_super_block* %119)
  store i32 %120, i32* %11, align 4
  %121 = load %struct.btrfsic_state*, %struct.btrfsic_state** %5, align 8
  %122 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @BTRFSIC_PRINT_MASK_ROOT_CHUNK_LOG_TREE_LOCATION, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %116
  %128 = load i32, i32* %11, align 4
  %129 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %127, %116
  br label %165

131:                                              ; preds = %110
  %132 = load i32, i32* @BTRFS_CHUNK_TREE_OBJECTID, align 4
  %133 = call i32 @btrfs_set_disk_key_objectid(%struct.btrfs_disk_key* %18, i32 %132)
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %17, align 8
  %134 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %7, align 8
  %135 = call i32 @btrfs_super_chunk_root(%struct.btrfs_super_block* %134)
  store i32 %135, i32* %11, align 4
  %136 = load %struct.btrfsic_state*, %struct.btrfsic_state** %5, align 8
  %137 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @BTRFSIC_PRINT_MASK_ROOT_CHUNK_LOG_TREE_LOCATION, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %131
  %143 = load i32, i32* %11, align 4
  %144 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %142, %131
  br label %165

146:                                              ; preds = %110
  %147 = load i32, i32* @BTRFS_TREE_LOG_OBJECTID, align 4
  %148 = call i32 @btrfs_set_disk_key_objectid(%struct.btrfs_disk_key* %18, i32 %147)
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %17, align 8
  %149 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %7, align 8
  %150 = call i32 @btrfs_super_log_root(%struct.btrfs_super_block* %149)
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp eq i32 0, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  br label %243

154:                                              ; preds = %146
  %155 = load %struct.btrfsic_state*, %struct.btrfsic_state** %5, align 8
  %156 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @BTRFSIC_PRINT_MASK_ROOT_CHUNK_LOG_TREE_LOCATION, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %154
  %162 = load i32, i32* %11, align 4
  %163 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %161, %154
  br label %165

165:                                              ; preds = %110, %164, %145, %130
  %166 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* @BTRFS_SUPER_INFO_SIZE, align 4
  %169 = call i32 @btrfs_num_copies(%struct.btrfs_fs_info* %166, i32 %167, i32 %168)
  store i32 %169, i32* %15, align 4
  %170 = load %struct.btrfsic_state*, %struct.btrfsic_state** %5, align 8
  %171 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @BTRFSIC_PRINT_MASK_NUM_COPIES, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %165
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* %15, align 4
  %179 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %176, %165
  store i32 1, i32* %16, align 4
  br label %181

181:                                              ; preds = %239, %180
  %182 = load i32, i32* %16, align 4
  %183 = load i32, i32* %15, align 4
  %184 = icmp sle i32 %182, %183
  br i1 %184, label %185, label %242

185:                                              ; preds = %181
  %186 = load %struct.btrfsic_state*, %struct.btrfsic_state** %5, align 8
  %187 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @BTRFSIC_PRINT_MASK_VERBOSE, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %185
  %193 = load i32, i32* %16, align 4
  %194 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0), i32 %193)
  br label %195

195:                                              ; preds = %192, %185
  %196 = load %struct.btrfsic_state*, %struct.btrfsic_state** %5, align 8
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* @BTRFS_SUPER_INFO_SIZE, align 4
  %199 = load i32, i32* %16, align 4
  %200 = call i32 @btrfsic_map_block(%struct.btrfsic_state* %196, i32 %197, i32 %198, %struct.btrfsic_block_data_ctx* %13, i32 %199)
  store i32 %200, i32* %10, align 4
  %201 = load i32, i32* %10, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %195
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* %16, align 4
  %206 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i32 %204, i32 %205)
  store i32 -1, i32* %4, align 4
  br label %258

207:                                              ; preds = %195
  %208 = load %struct.btrfsic_state*, %struct.btrfsic_state** %5, align 8
  %209 = load i8*, i8** %17, align 8
  %210 = load i32, i32* %16, align 4
  %211 = call %struct.btrfsic_block* @btrfsic_block_lookup_or_add(%struct.btrfsic_state* %208, %struct.btrfsic_block_data_ctx* %13, i8* %209, i32 1, i32 0, i32 1, i32 %210, i32* %19)
  store %struct.btrfsic_block* %211, %struct.btrfsic_block** %12, align 8
  %212 = load %struct.btrfsic_block*, %struct.btrfsic_block** %12, align 8
  %213 = icmp eq %struct.btrfsic_block* null, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %207
  %215 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %216 = call i32 @btrfsic_release_block_ctx(%struct.btrfsic_block_data_ctx* %13)
  store i32 -1, i32* %4, align 4
  br label %258

217:                                              ; preds = %207
  %218 = load %struct.btrfsic_block*, %struct.btrfsic_block** %12, align 8
  %219 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %218, i32 0, i32 1
  %220 = bitcast %struct.btrfs_disk_key* %219 to i8*
  %221 = bitcast %struct.btrfs_disk_key* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %220, i8* align 4 %221, i64 4, i1 false)
  %222 = load i32, i32* %19, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %217
  %225 = load i64, i64* @BTRFSIC_GENERATION_UNKNOWN, align 8
  %226 = load %struct.btrfsic_block*, %struct.btrfsic_block** %12, align 8
  %227 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %226, i32 0, i32 0
  store i64 %225, i64* %227, align 8
  br label %228

228:                                              ; preds = %224, %217
  %229 = load %struct.btrfsic_state*, %struct.btrfsic_state** %5, align 8
  %230 = load %struct.btrfsic_block*, %struct.btrfsic_block** %12, align 8
  %231 = load %struct.btrfsic_block*, %struct.btrfsic_block** %6, align 8
  %232 = load i64, i64* @BTRFSIC_GENERATION_UNKNOWN, align 8
  %233 = call %struct.btrfsic_block_link* @btrfsic_block_link_lookup_or_add(%struct.btrfsic_state* %229, %struct.btrfsic_block_data_ctx* %13, %struct.btrfsic_block* %230, %struct.btrfsic_block* %231, i64 %232)
  store %struct.btrfsic_block_link* %233, %struct.btrfsic_block_link** %14, align 8
  %234 = call i32 @btrfsic_release_block_ctx(%struct.btrfsic_block_data_ctx* %13)
  %235 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %14, align 8
  %236 = icmp eq %struct.btrfsic_block_link* null, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %228
  store i32 -1, i32* %4, align 4
  br label %258

238:                                              ; preds = %228
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %16, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %16, align 4
  br label %181

242:                                              ; preds = %181
  br label %243

243:                                              ; preds = %242, %153
  %244 = load i32, i32* %9, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %9, align 4
  br label %107

246:                                              ; preds = %107
  %247 = load %struct.btrfsic_state*, %struct.btrfsic_state** %5, align 8
  %248 = load %struct.btrfsic_block*, %struct.btrfsic_block** %6, align 8
  %249 = call i32 @btrfsic_check_all_ref_blocks(%struct.btrfsic_state* %247, %struct.btrfsic_block* %248, i32 0)
  %250 = icmp eq i32 -1, %249
  %251 = zext i1 %250 to i32
  %252 = call i64 @WARN_ON(i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %246
  %255 = load %struct.btrfsic_state*, %struct.btrfsic_state** %5, align 8
  %256 = call i32 @btrfsic_dump_tree(%struct.btrfsic_state* %255)
  br label %257

257:                                              ; preds = %254, %246
  store i32 0, i32* %4, align 4
  br label %258

258:                                              ; preds = %257, %237, %214, %203
  %259 = load i32, i32* %4, align 4
  ret i32 %259
}

declare dso_local i8* @btrfs_super_generation(%struct.btrfs_super_block*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @btrfs_set_disk_key_objectid(%struct.btrfs_disk_key*, i32) #1

declare dso_local i32 @btrfs_super_root(%struct.btrfs_super_block*) #1

declare dso_local i32 @btrfs_super_chunk_root(%struct.btrfs_super_block*) #1

declare dso_local i32 @btrfs_super_log_root(%struct.btrfs_super_block*) #1

declare dso_local i32 @btrfs_num_copies(%struct.btrfs_fs_info*, i32, i32) #1

declare dso_local i32 @btrfsic_map_block(%struct.btrfsic_state*, i32, i32, %struct.btrfsic_block_data_ctx*, i32) #1

declare dso_local %struct.btrfsic_block* @btrfsic_block_lookup_or_add(%struct.btrfsic_state*, %struct.btrfsic_block_data_ctx*, i8*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @btrfsic_release_block_ctx(%struct.btrfsic_block_data_ctx*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.btrfsic_block_link* @btrfsic_block_link_lookup_or_add(%struct.btrfsic_state*, %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block*, %struct.btrfsic_block*, i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @btrfsic_check_all_ref_blocks(%struct.btrfsic_state*, %struct.btrfsic_block*, i32) #1

declare dso_local i32 @btrfsic_dump_tree(%struct.btrfsic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
