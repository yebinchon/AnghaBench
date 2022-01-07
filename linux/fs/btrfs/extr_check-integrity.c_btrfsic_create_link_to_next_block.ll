; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_check-integrity.c_btrfsic_create_link_to_next_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_check-integrity.c_btrfsic_create_link_to_next_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfsic_state = type { i32, i32, i32, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfsic_block = type { i32, i32, i32, i32, %struct.btrfs_disk_key, i32, i32 }
%struct.btrfs_disk_key = type { i32 }
%struct.btrfsic_block_data_ctx = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.btrfsic_block_link = type { i32, i32, i32, i32, %struct.btrfsic_block*, %struct.btrfsic_block* }

@BTRFSIC_PRINT_MASK_NUM_COPIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"num_copies(log_bytenr=%llu) = %d\0A\00", align 1
@BTRFSIC_PRINT_MASK_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"btrfsic_create_link_to_next_block(mirror_num=%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"btrfsic: btrfsic_map_block(@%llu, mirror=%d) failed!\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"referenced \00", align 1
@BTRFSIC_GENERATION_UNKNOWN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [96 x i8] c"Referenced block @%llu (%s/%llu/%d) found in hash table, %c, bytenr mismatch (!= stored %llu).\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"Referenced block @%llu (%s/%llu/%d) found in hash table, %c.\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"btrfsic: error, kmalloc failed!\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"btrfsic: read block @logical %llu failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfsic_state*, %struct.btrfsic_block*, %struct.btrfsic_block_data_ctx*, i32, i32, %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block**, i32, i32*, i32*, %struct.btrfs_disk_key*, i32)* @btrfsic_create_link_to_next_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfsic_create_link_to_next_block(%struct.btrfsic_state* %0, %struct.btrfsic_block* %1, %struct.btrfsic_block_data_ctx* %2, i32 %3, i32 %4, %struct.btrfsic_block_data_ctx* %5, %struct.btrfsic_block** %6, i32 %7, i32* %8, i32* %9, %struct.btrfs_disk_key* %10, i32 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.btrfsic_state*, align 8
  %15 = alloca %struct.btrfsic_block*, align 8
  %16 = alloca %struct.btrfsic_block_data_ctx*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.btrfsic_block_data_ctx*, align 8
  %20 = alloca %struct.btrfsic_block**, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.btrfs_disk_key*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.btrfs_fs_info*, align 8
  %27 = alloca %struct.btrfsic_block*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.btrfsic_block_link*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.btrfsic_state* %0, %struct.btrfsic_state** %14, align 8
  store %struct.btrfsic_block* %1, %struct.btrfsic_block** %15, align 8
  store %struct.btrfsic_block_data_ctx* %2, %struct.btrfsic_block_data_ctx** %16, align 8
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store %struct.btrfsic_block_data_ctx* %5, %struct.btrfsic_block_data_ctx** %19, align 8
  store %struct.btrfsic_block** %6, %struct.btrfsic_block*** %20, align 8
  store i32 %7, i32* %21, align 4
  store i32* %8, i32** %22, align 8
  store i32* %9, i32** %23, align 8
  store %struct.btrfs_disk_key* %10, %struct.btrfs_disk_key** %24, align 8
  store i32 %11, i32* %25, align 4
  %32 = load %struct.btrfsic_state*, %struct.btrfsic_state** %14, align 8
  %33 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %32, i32 0, i32 3
  %34 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %33, align 8
  store %struct.btrfs_fs_info* %34, %struct.btrfs_fs_info** %26, align 8
  store %struct.btrfsic_block* null, %struct.btrfsic_block** %27, align 8
  %35 = load %struct.btrfsic_block**, %struct.btrfsic_block*** %20, align 8
  store %struct.btrfsic_block* null, %struct.btrfsic_block** %35, align 8
  %36 = load i32*, i32** %22, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 0, %37
  br i1 %38, label %39, label %60

39:                                               ; preds = %12
  %40 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %26, align 8
  %41 = load i32, i32* %17, align 4
  %42 = load %struct.btrfsic_state*, %struct.btrfsic_state** %14, align 8
  %43 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @btrfs_num_copies(%struct.btrfs_fs_info* %40, i32 %41, i32 %44)
  %46 = load i32*, i32** %22, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.btrfsic_state*, %struct.btrfsic_state** %14, align 8
  %48 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @BTRFSIC_PRINT_MASK_NUM_COPIES, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %39
  %54 = load i32, i32* %17, align 4
  %55 = load i32*, i32** %22, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %56)
  br label %58

58:                                               ; preds = %53, %39
  %59 = load i32*, i32** %23, align 8
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %58, %12
  %61 = load i32*, i32** %23, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %22, align 8
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 0, i32* %13, align 4
  br label %316

67:                                               ; preds = %60
  %68 = load %struct.btrfsic_state*, %struct.btrfsic_state** %14, align 8
  %69 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @BTRFSIC_PRINT_MASK_VERBOSE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i32*, i32** %23, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %74, %67
  %79 = load %struct.btrfsic_state*, %struct.btrfsic_state** %14, align 8
  %80 = load i32, i32* %17, align 4
  %81 = load %struct.btrfsic_state*, %struct.btrfsic_state** %14, align 8
  %82 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %19, align 8
  %85 = load i32*, i32** %23, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @btrfsic_map_block(%struct.btrfsic_state* %79, i32 %80, i32 %83, %struct.btrfsic_block_data_ctx* %84, i32 %86)
  store i32 %87, i32* %28, align 4
  %88 = load i32, i32* %28, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %78
  %91 = load i32, i32* %17, align 4
  %92 = load i32*, i32** %23, align 8
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %91, i32 %93)
  %95 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %19, align 8
  %96 = call i32 @btrfsic_release_block_ctx(%struct.btrfsic_block_data_ctx* %95)
  %97 = load %struct.btrfsic_block**, %struct.btrfsic_block*** %20, align 8
  store %struct.btrfsic_block* null, %struct.btrfsic_block** %97, align 8
  store i32 -1, i32* %13, align 4
  br label %316

98:                                               ; preds = %78
  %99 = load %struct.btrfsic_state*, %struct.btrfsic_state** %14, align 8
  %100 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %19, align 8
  %101 = load i32, i32* %21, align 4
  %102 = load i32, i32* %21, align 4
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = load i32*, i32** %23, align 8
  %107 = load i32, i32* %106, align 4
  %108 = call %struct.btrfsic_block* @btrfsic_block_lookup_or_add(%struct.btrfsic_state* %99, %struct.btrfsic_block_data_ctx* %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 %101, i32 %105, i32 %107, i32* %31)
  store %struct.btrfsic_block* %108, %struct.btrfsic_block** %27, align 8
  %109 = load %struct.btrfsic_block*, %struct.btrfsic_block** %27, align 8
  %110 = icmp eq %struct.btrfsic_block* null, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %98
  %112 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %19, align 8
  %113 = call i32 @btrfsic_release_block_ctx(%struct.btrfsic_block_data_ctx* %112)
  %114 = load %struct.btrfsic_block**, %struct.btrfsic_block*** %20, align 8
  store %struct.btrfsic_block* null, %struct.btrfsic_block** %114, align 8
  store i32 -1, i32* %13, align 4
  br label %316

115:                                              ; preds = %98
  %116 = load i32, i32* %31, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  store %struct.btrfsic_block_link* null, %struct.btrfsic_block_link** %29, align 8
  %119 = load i32, i32* @BTRFSIC_GENERATION_UNKNOWN, align 4
  %120 = load %struct.btrfsic_block*, %struct.btrfsic_block** %27, align 8
  %121 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %120, i32 0, i32 6
  store i32 %119, i32* %121, align 4
  br label %208

122:                                              ; preds = %115
  %123 = load %struct.btrfsic_state*, %struct.btrfsic_state** %14, align 8
  %124 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @BTRFSIC_PRINT_MASK_VERBOSE, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %181

129:                                              ; preds = %122
  %130 = load %struct.btrfsic_block*, %struct.btrfsic_block** %27, align 8
  %131 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %17, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %164

135:                                              ; preds = %129
  %136 = load %struct.btrfsic_block*, %struct.btrfsic_block** %27, align 8
  %137 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %135
  %141 = load %struct.btrfsic_block*, %struct.btrfsic_block** %27, align 8
  %142 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 0, %143
  br i1 %144, label %164, label %145

145:                                              ; preds = %140, %135
  %146 = load i32, i32* %17, align 4
  %147 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %19, align 8
  %148 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %147, i32 0, i32 2
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %19, align 8
  %153 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load i32*, i32** %23, align 8
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.btrfsic_state*, %struct.btrfsic_state** %14, align 8
  %158 = load %struct.btrfsic_block*, %struct.btrfsic_block** %27, align 8
  %159 = call i32 @btrfsic_get_block_type(%struct.btrfsic_state* %157, %struct.btrfsic_block* %158)
  %160 = load %struct.btrfsic_block*, %struct.btrfsic_block** %27, align 8
  %161 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.4, i64 0, i64 0), i32 %146, i32 %151, i32 %154, i32 %156, i32 %159, i32 %162)
  br label %180

164:                                              ; preds = %140, %129
  %165 = load i32, i32* %17, align 4
  %166 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %19, align 8
  %167 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %166, i32 0, i32 2
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %19, align 8
  %172 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load i32*, i32** %23, align 8
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.btrfsic_state*, %struct.btrfsic_state** %14, align 8
  %177 = load %struct.btrfsic_block*, %struct.btrfsic_block** %27, align 8
  %178 = call i32 @btrfsic_get_block_type(%struct.btrfsic_state* %176, %struct.btrfsic_block* %177)
  %179 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 %165, i32 %170, i32 %173, i32 %175, i32 %178)
  br label %180

180:                                              ; preds = %164, %145
  br label %181

181:                                              ; preds = %180, %122
  %182 = load i32, i32* %17, align 4
  %183 = load %struct.btrfsic_block*, %struct.btrfsic_block** %27, align 8
  %184 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 4
  %185 = load i32*, i32** %23, align 8
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.btrfsic_block*, %struct.btrfsic_block** %27, align 8
  %188 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  %189 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %19, align 8
  %190 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %189, i32 0, i32 2
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %19, align 8
  %195 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %16, align 8
  %198 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %197, i32 0, i32 2
  %199 = load %struct.TYPE_2__*, %struct.TYPE_2__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %16, align 8
  %203 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.btrfsic_state*, %struct.btrfsic_state** %14, align 8
  %206 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %205, i32 0, i32 1
  %207 = call %struct.btrfsic_block_link* @btrfsic_block_link_hashtable_lookup(i32 %193, i32 %196, i32 %201, i32 %204, i32* %206)
  store %struct.btrfsic_block_link* %207, %struct.btrfsic_block_link** %29, align 8
  br label %208

208:                                              ; preds = %181, %118
  %209 = load %struct.btrfsic_block*, %struct.btrfsic_block** %27, align 8
  %210 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %209, i32 0, i32 4
  %211 = load %struct.btrfs_disk_key*, %struct.btrfs_disk_key** %24, align 8
  %212 = bitcast %struct.btrfs_disk_key* %210 to i8*
  %213 = bitcast %struct.btrfs_disk_key* %211 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %212, i8* align 4 %213, i64 4, i1 false)
  %214 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %29, align 8
  %215 = icmp eq %struct.btrfsic_block_link* null, %214
  br i1 %215, label %216, label %262

216:                                              ; preds = %208
  %217 = call %struct.btrfsic_block_link* (...) @btrfsic_block_link_alloc()
  store %struct.btrfsic_block_link* %217, %struct.btrfsic_block_link** %29, align 8
  %218 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %29, align 8
  %219 = icmp eq %struct.btrfsic_block_link* null, %218
  br i1 %219, label %220, label %225

220:                                              ; preds = %216
  %221 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %222 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %19, align 8
  %223 = call i32 @btrfsic_release_block_ctx(%struct.btrfsic_block_data_ctx* %222)
  %224 = load %struct.btrfsic_block**, %struct.btrfsic_block*** %20, align 8
  store %struct.btrfsic_block* null, %struct.btrfsic_block** %224, align 8
  store i32 -1, i32* %13, align 4
  br label %316

225:                                              ; preds = %216
  store i32 1, i32* %30, align 4
  %226 = load %struct.btrfsic_block*, %struct.btrfsic_block** %27, align 8
  %227 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %29, align 8
  %228 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %227, i32 0, i32 5
  store %struct.btrfsic_block* %226, %struct.btrfsic_block** %228, align 8
  %229 = load %struct.btrfsic_block*, %struct.btrfsic_block** %15, align 8
  %230 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %29, align 8
  %231 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %230, i32 0, i32 4
  store %struct.btrfsic_block* %229, %struct.btrfsic_block** %231, align 8
  %232 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %29, align 8
  %233 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %232, i32 0, i32 0
  store i32 1, i32* %233, align 8
  %234 = load i32, i32* %25, align 4
  %235 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %29, align 8
  %236 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 4
  %237 = load %struct.btrfsic_state*, %struct.btrfsic_state** %14, align 8
  %238 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @BTRFSIC_PRINT_MASK_VERBOSE, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %225
  %244 = load %struct.btrfsic_state*, %struct.btrfsic_state** %14, align 8
  %245 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %29, align 8
  %246 = call i32 @btrfsic_print_add_link(%struct.btrfsic_state* %244, %struct.btrfsic_block_link* %245)
  br label %247

247:                                              ; preds = %243, %225
  %248 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %29, align 8
  %249 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %248, i32 0, i32 3
  %250 = load %struct.btrfsic_block*, %struct.btrfsic_block** %15, align 8
  %251 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %250, i32 0, i32 3
  %252 = call i32 @list_add(i32* %249, i32* %251)
  %253 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %29, align 8
  %254 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %253, i32 0, i32 2
  %255 = load %struct.btrfsic_block*, %struct.btrfsic_block** %27, align 8
  %256 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %255, i32 0, i32 2
  %257 = call i32 @list_add(i32* %254, i32* %256)
  %258 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %29, align 8
  %259 = load %struct.btrfsic_state*, %struct.btrfsic_state** %14, align 8
  %260 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %259, i32 0, i32 1
  %261 = call i32 @btrfsic_block_link_hashtable_add(%struct.btrfsic_block_link* %258, i32* %260)
  br label %285

262:                                              ; preds = %208
  store i32 0, i32* %30, align 4
  %263 = load i32, i32* %18, align 4
  %264 = icmp eq i32 0, %263
  br i1 %264, label %265, label %284

265:                                              ; preds = %262
  %266 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %29, align 8
  %267 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %267, align 8
  %270 = load i32, i32* %25, align 4
  %271 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %29, align 8
  %272 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %271, i32 0, i32 1
  store i32 %270, i32* %272, align 4
  %273 = load %struct.btrfsic_state*, %struct.btrfsic_state** %14, align 8
  %274 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @BTRFSIC_PRINT_MASK_VERBOSE, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %265
  %280 = load %struct.btrfsic_state*, %struct.btrfsic_state** %14, align 8
  %281 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %29, align 8
  %282 = call i32 @btrfsic_print_add_link(%struct.btrfsic_state* %280, %struct.btrfsic_block_link* %281)
  br label %283

283:                                              ; preds = %279, %265
  br label %284

284:                                              ; preds = %283, %262
  br label %285

285:                                              ; preds = %284, %247
  %286 = load i32, i32* %18, align 4
  %287 = icmp sgt i32 %286, 0
  br i1 %287, label %288, label %310

288:                                              ; preds = %285
  %289 = load i32, i32* %30, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %310

291:                                              ; preds = %288
  %292 = load %struct.btrfsic_state*, %struct.btrfsic_state** %14, align 8
  %293 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %19, align 8
  %294 = call i32 @btrfsic_read_block(%struct.btrfsic_state* %292, %struct.btrfsic_block_data_ctx* %293)
  store i32 %294, i32* %28, align 4
  %295 = load i32, i32* %28, align 4
  %296 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %19, align 8
  %297 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = trunc i64 %298 to i32
  %300 = icmp slt i32 %295, %299
  br i1 %300, label %301, label %307

301:                                              ; preds = %291
  %302 = load i32, i32* %17, align 4
  %303 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %302)
  %304 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %19, align 8
  %305 = call i32 @btrfsic_release_block_ctx(%struct.btrfsic_block_data_ctx* %304)
  %306 = load %struct.btrfsic_block**, %struct.btrfsic_block*** %20, align 8
  store %struct.btrfsic_block* null, %struct.btrfsic_block** %306, align 8
  store i32 -1, i32* %13, align 4
  br label %316

307:                                              ; preds = %291
  %308 = load %struct.btrfsic_block*, %struct.btrfsic_block** %27, align 8
  %309 = load %struct.btrfsic_block**, %struct.btrfsic_block*** %20, align 8
  store %struct.btrfsic_block* %308, %struct.btrfsic_block** %309, align 8
  br label %312

310:                                              ; preds = %288, %285
  %311 = load %struct.btrfsic_block**, %struct.btrfsic_block*** %20, align 8
  store %struct.btrfsic_block* null, %struct.btrfsic_block** %311, align 8
  br label %312

312:                                              ; preds = %310, %307
  %313 = load i32*, i32** %23, align 8
  %314 = load i32, i32* %313, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %313, align 4
  store i32 0, i32* %13, align 4
  br label %316

316:                                              ; preds = %312, %301, %220, %111, %90, %66
  %317 = load i32, i32* %13, align 4
  ret i32 %317
}

declare dso_local i32 @btrfs_num_copies(%struct.btrfs_fs_info*, i32, i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @btrfsic_map_block(%struct.btrfsic_state*, i32, i32, %struct.btrfsic_block_data_ctx*, i32) #1

declare dso_local i32 @btrfsic_release_block_ctx(%struct.btrfsic_block_data_ctx*) #1

declare dso_local %struct.btrfsic_block* @btrfsic_block_lookup_or_add(%struct.btrfsic_state*, %struct.btrfsic_block_data_ctx*, i8*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @btrfsic_get_block_type(%struct.btrfsic_state*, %struct.btrfsic_block*) #1

declare dso_local %struct.btrfsic_block_link* @btrfsic_block_link_hashtable_lookup(i32, i32, i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.btrfsic_block_link* @btrfsic_block_link_alloc(...) #1

declare dso_local i32 @btrfsic_print_add_link(%struct.btrfsic_state*, %struct.btrfsic_block_link*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @btrfsic_block_link_hashtable_add(%struct.btrfsic_block_link*, i32*) #1

declare dso_local i32 @btrfsic_read_block(%struct.btrfsic_state*, %struct.btrfsic_block_data_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
