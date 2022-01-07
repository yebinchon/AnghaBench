; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_iblock.c_iblock_configure_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_iblock.c_iblock_configure_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i64, i64, i32, i32, i32 }
%struct.iblock_dev = type { i32, %struct.bio_set, %struct.block_device*, i32*, i32 }
%struct.bio_set = type { i32 }
%struct.block_device = type { i32 }
%struct.request_queue = type { i32 }
%struct.blk_integrity = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@IBDF_HAS_UDEV_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Missing udev_path= parameters for IBLOCK\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IBLOCK_BIO_POOL_SIZE = common dso_local global i32 0, align 4
@BIOSET_NEED_BVECS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"IBLOCK: Unable to create bioset\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"IBLOCK: Claiming struct block_device: %s\0A\00", align 1
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_EXCL = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@DF_READ_ONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"IBLOCK: BLOCK Discard support available, disabled by default\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"T10-DIF-TYPE3-IP\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"T10-DIF-TYPE1-IP\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"IBLOCK export of blk_integrity: %s not supported\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"T10-DIF-TYPE3-CRC\00", align 1
@TARGET_DIF_TYPE3_PROT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"T10-DIF-TYPE1-CRC\00", align 1
@TARGET_DIF_TYPE1_PROT = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [34 x i8] c"Unable to allocate bioset for PI\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"IBLOCK setup BIP bs->bio_integrity_pool: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*)* @iblock_configure_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iblock_configure_device(%struct.se_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_device*, align 8
  %4 = alloca %struct.iblock_dev*, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca %struct.blk_integrity*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bio_set*, align 8
  store %struct.se_device* %0, %struct.se_device** %3, align 8
  %12 = load %struct.se_device*, %struct.se_device** %3, align 8
  %13 = call %struct.iblock_dev* @IBLOCK_DEV(%struct.se_device* %12)
  store %struct.iblock_dev* %13, %struct.iblock_dev** %4, align 8
  store %struct.block_device* null, %struct.block_device** %6, align 8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %10, align 4
  %16 = load %struct.iblock_dev*, %struct.iblock_dev** %4, align 8
  %17 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IBDF_HAS_UDEV_PATH, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %1
  %23 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %225

26:                                               ; preds = %1
  %27 = load %struct.iblock_dev*, %struct.iblock_dev** %4, align 8
  %28 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %27, i32 0, i32 1
  %29 = load i32, i32* @IBLOCK_BIO_POOL_SIZE, align 4
  %30 = load i32, i32* @BIOSET_NEED_BVECS, align 4
  %31 = call i32 @bioset_init(%struct.bio_set* %28, i32 %29, i32 0, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %223

36:                                               ; preds = %26
  %37 = load %struct.iblock_dev*, %struct.iblock_dev** %4, align 8
  %38 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32* %39)
  %41 = load i32, i32* @FMODE_READ, align 4
  %42 = load i32, i32* @FMODE_EXCL, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %8, align 4
  %44 = load %struct.iblock_dev*, %struct.iblock_dev** %4, align 8
  %45 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %36
  %49 = load i32, i32* @FMODE_WRITE, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %58

52:                                               ; preds = %36
  %53 = load i32, i32* @DF_READ_ONLY, align 4
  %54 = load %struct.se_device*, %struct.se_device** %3, align 8
  %55 = getelementptr inbounds %struct.se_device, %struct.se_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %52, %48
  %59 = load %struct.iblock_dev*, %struct.iblock_dev** %4, align 8
  %60 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.iblock_dev*, %struct.iblock_dev** %4, align 8
  %64 = call %struct.block_device* @blkdev_get_by_path(i32* %61, i32 %62, %struct.iblock_dev* %63)
  store %struct.block_device* %64, %struct.block_device** %6, align 8
  %65 = load %struct.block_device*, %struct.block_device** %6, align 8
  %66 = call i64 @IS_ERR(%struct.block_device* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load %struct.block_device*, %struct.block_device** %6, align 8
  %70 = call i32 @PTR_ERR(%struct.block_device* %69)
  store i32 %70, i32* %10, align 4
  br label %219

71:                                               ; preds = %58
  %72 = load %struct.block_device*, %struct.block_device** %6, align 8
  %73 = load %struct.iblock_dev*, %struct.iblock_dev** %4, align 8
  %74 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %73, i32 0, i32 2
  store %struct.block_device* %72, %struct.block_device** %74, align 8
  %75 = load %struct.block_device*, %struct.block_device** %6, align 8
  %76 = call %struct.request_queue* @bdev_get_queue(%struct.block_device* %75)
  store %struct.request_queue* %76, %struct.request_queue** %5, align 8
  %77 = load %struct.block_device*, %struct.block_device** %6, align 8
  %78 = call i32 @bdev_logical_block_size(%struct.block_device* %77)
  %79 = load %struct.se_device*, %struct.se_device** %3, align 8
  %80 = getelementptr inbounds %struct.se_device, %struct.se_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 6
  store i32 %78, i32* %81, align 8
  %82 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %83 = call i32 @queue_max_hw_sectors(%struct.request_queue* %82)
  %84 = load %struct.se_device*, %struct.se_device** %3, align 8
  %85 = getelementptr inbounds %struct.se_device, %struct.se_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 5
  store i32 %83, i32* %86, align 4
  %87 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %88 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.se_device*, %struct.se_device** %3, align 8
  %91 = getelementptr inbounds %struct.se_device, %struct.se_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 4
  store i32 %89, i32* %92, align 8
  %93 = load %struct.se_device*, %struct.se_device** %3, align 8
  %94 = getelementptr inbounds %struct.se_device, %struct.se_device* %93, i32 0, i32 0
  %95 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %96 = call i64 @target_configure_unmap_from_queue(%struct.TYPE_4__* %94, %struct.request_queue* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %71
  %99 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %71
  %101 = load %struct.block_device*, %struct.block_device** %6, align 8
  %102 = call i32 @bdev_write_zeroes_sectors(%struct.block_device* %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.se_device*, %struct.se_device** %3, align 8
  %108 = getelementptr inbounds %struct.se_device, %struct.se_device* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 8
  br label %114

110:                                              ; preds = %100
  %111 = load %struct.se_device*, %struct.se_device** %3, align 8
  %112 = getelementptr inbounds %struct.se_device, %struct.se_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i32 65535, i32* %113, align 8
  br label %114

114:                                              ; preds = %110, %105
  %115 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %116 = call i64 @blk_queue_nonrot(%struct.request_queue* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load %struct.se_device*, %struct.se_device** %3, align 8
  %120 = getelementptr inbounds %struct.se_device, %struct.se_device* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  store i32 1, i32* %121, align 4
  br label %122

122:                                              ; preds = %118, %114
  %123 = load %struct.block_device*, %struct.block_device** %6, align 8
  %124 = call %struct.blk_integrity* @bdev_get_integrity(%struct.block_device* %123)
  store %struct.blk_integrity* %124, %struct.blk_integrity** %7, align 8
  %125 = load %struct.blk_integrity*, %struct.blk_integrity** %7, align 8
  %126 = icmp ne %struct.blk_integrity* %125, null
  br i1 %126, label %127, label %208

127:                                              ; preds = %122
  %128 = load %struct.iblock_dev*, %struct.iblock_dev** %4, align 8
  %129 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %128, i32 0, i32 1
  store %struct.bio_set* %129, %struct.bio_set** %11, align 8
  %130 = load %struct.blk_integrity*, %struct.blk_integrity** %7, align 8
  %131 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %130, i32 0, i32 0
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @strcmp(i32 %134, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %127
  %138 = load %struct.blk_integrity*, %struct.blk_integrity** %7, align 8
  %139 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %138, i32 0, i32 0
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @strcmp(i32 %142, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %154, label %145

145:                                              ; preds = %137, %127
  %146 = load %struct.blk_integrity*, %struct.blk_integrity** %7, align 8
  %147 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %146, i32 0, i32 0
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* @ENOSYS, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %10, align 4
  br label %209

154:                                              ; preds = %137
  %155 = load %struct.blk_integrity*, %struct.blk_integrity** %7, align 8
  %156 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %155, i32 0, i32 0
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @strcmp(i32 %159, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %154
  %163 = load i64, i64* @TARGET_DIF_TYPE3_PROT, align 8
  %164 = load %struct.se_device*, %struct.se_device** %3, align 8
  %165 = getelementptr inbounds %struct.se_device, %struct.se_device* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 2
  store i64 %163, i64* %166, align 8
  br label %181

167:                                              ; preds = %154
  %168 = load %struct.blk_integrity*, %struct.blk_integrity** %7, align 8
  %169 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %168, i32 0, i32 0
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @strcmp(i32 %172, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %180, label %175

175:                                              ; preds = %167
  %176 = load i64, i64* @TARGET_DIF_TYPE1_PROT, align 8
  %177 = load %struct.se_device*, %struct.se_device** %3, align 8
  %178 = getelementptr inbounds %struct.se_device, %struct.se_device* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 2
  store i64 %176, i64* %179, align 8
  br label %180

180:                                              ; preds = %175, %167
  br label %181

181:                                              ; preds = %180, %162
  %182 = load %struct.se_device*, %struct.se_device** %3, align 8
  %183 = getelementptr inbounds %struct.se_device, %struct.se_device* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %200

187:                                              ; preds = %181
  %188 = load %struct.bio_set*, %struct.bio_set** %11, align 8
  %189 = load i32, i32* @IBLOCK_BIO_POOL_SIZE, align 4
  %190 = call i64 @bioset_integrity_create(%struct.bio_set* %188, i32 %189)
  %191 = icmp slt i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %187
  %193 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %194 = load i32, i32* @ENOMEM, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %10, align 4
  br label %209

196:                                              ; preds = %187
  %197 = load %struct.bio_set*, %struct.bio_set** %11, align 8
  %198 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %197, i32 0, i32 0
  %199 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32* %198)
  br label %200

200:                                              ; preds = %196, %181
  %201 = load %struct.se_device*, %struct.se_device** %3, align 8
  %202 = getelementptr inbounds %struct.se_device, %struct.se_device* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.se_device*, %struct.se_device** %3, align 8
  %206 = getelementptr inbounds %struct.se_device, %struct.se_device* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 3
  store i64 %204, i64* %207, align 8
  br label %208

208:                                              ; preds = %200, %122
  store i32 0, i32* %2, align 4
  br label %225

209:                                              ; preds = %192, %145
  %210 = load %struct.iblock_dev*, %struct.iblock_dev** %4, align 8
  %211 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %210, i32 0, i32 2
  %212 = load %struct.block_device*, %struct.block_device** %211, align 8
  %213 = load i32, i32* @FMODE_WRITE, align 4
  %214 = load i32, i32* @FMODE_READ, align 4
  %215 = or i32 %213, %214
  %216 = load i32, i32* @FMODE_EXCL, align 4
  %217 = or i32 %215, %216
  %218 = call i32 @blkdev_put(%struct.block_device* %212, i32 %217)
  br label %219

219:                                              ; preds = %209, %68
  %220 = load %struct.iblock_dev*, %struct.iblock_dev** %4, align 8
  %221 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %220, i32 0, i32 1
  %222 = call i32 @bioset_exit(%struct.bio_set* %221)
  br label %223

223:                                              ; preds = %219, %34
  %224 = load i32, i32* %10, align 4
  store i32 %224, i32* %2, align 4
  br label %225

225:                                              ; preds = %223, %208, %22
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local %struct.iblock_dev* @IBLOCK_DEV(%struct.se_device*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @bioset_init(%struct.bio_set*, i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.block_device* @blkdev_get_by_path(i32*, i32, %struct.iblock_dev*) #1

declare dso_local i64 @IS_ERR(%struct.block_device*) #1

declare dso_local i32 @PTR_ERR(%struct.block_device*) #1

declare dso_local %struct.request_queue* @bdev_get_queue(%struct.block_device*) #1

declare dso_local i32 @bdev_logical_block_size(%struct.block_device*) #1

declare dso_local i32 @queue_max_hw_sectors(%struct.request_queue*) #1

declare dso_local i64 @target_configure_unmap_from_queue(%struct.TYPE_4__*, %struct.request_queue*) #1

declare dso_local i32 @bdev_write_zeroes_sectors(%struct.block_device*) #1

declare dso_local i64 @blk_queue_nonrot(%struct.request_queue*) #1

declare dso_local %struct.blk_integrity* @bdev_get_integrity(%struct.block_device*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i64 @bioset_integrity_create(%struct.bio_set*, i32) #1

declare dso_local i32 @blkdev_put(%struct.block_device*, i32) #1

declare dso_local i32 @bioset_exit(%struct.bio_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
