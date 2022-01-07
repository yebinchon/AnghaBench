; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sr.c_sr_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sr.c_sr_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scsi_device = type { i64, i32, i32, i32, i32 }
%struct.gendisk = type { i32, i32, i32, i32, i32, i32**, i32*, i32, i32 }
%struct.scsi_cd = type { i32, i32, i32, %struct.scsi_device*, %struct.TYPE_2__, i32*, i64, i64, %struct.gendisk*, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.gendisk*, i64, %struct.scsi_cd*, i32* }

@ENODEV = common dso_local global i32 0, align 4
@TYPE_ROM = common dso_local global i64 0, align 8
@TYPE_WORM = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@sr_index_lock = common dso_local global i32 0, align 4
@sr_index_bits = common dso_local global i32 0, align 4
@SR_DISKS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SCSI_CDROM_MAJOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"sr%d\00", align 1
@sr_bdops = common dso_local global i32 0, align 4
@GENHD_FL_CD = common dso_local global i32 0, align 4
@GENHD_FL_BLOCK_EVENTS_ON_EXCL_WRITE = common dso_local global i32 0, align 4
@DISK_EVENT_MEDIA_CHANGE = common dso_local global i32 0, align 4
@DISK_EVENT_EJECT_REQUEST = common dso_local global i32 0, align 4
@DISK_EVENT_FLAG_POLL = common dso_local global i32 0, align 4
@DISK_EVENT_FLAG_UEVENT = common dso_local global i32 0, align 4
@SR_TIMEOUT = common dso_local global i32 0, align 4
@sr_template = common dso_local global i32 0, align 4
@sr_dops = common dso_local global i32 0, align 4
@GENHD_FL_REMOVABLE = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Attached scsi CD-ROM %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @sr_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.gendisk*, align 8
  %6 = alloca %struct.scsi_cd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.scsi_device* @to_scsi_device(%struct.device* %9)
  store %struct.scsi_device* %10, %struct.scsi_device** %4, align 8
  %11 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %12 = call i32 @scsi_autopm_get_device(%struct.scsi_device* %11)
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %16 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TYPE_ROM, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %22 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TYPE_WORM, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %201

27:                                               ; preds = %20, %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.scsi_cd* @kzalloc(i32 104, i32 %30)
  store %struct.scsi_cd* %31, %struct.scsi_cd** %6, align 8
  %32 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %33 = icmp ne %struct.scsi_cd* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %201

35:                                               ; preds = %27
  %36 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %37 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %36, i32 0, i32 9
  %38 = call i32 @kref_init(i32* %37)
  %39 = call %struct.gendisk* @alloc_disk(i32 1)
  store %struct.gendisk* %39, %struct.gendisk** %5, align 8
  %40 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %41 = icmp ne %struct.gendisk* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  br label %198

43:                                               ; preds = %35
  %44 = call i32 @spin_lock(i32* @sr_index_lock)
  %45 = load i32, i32* @sr_index_bits, align 4
  %46 = load i32, i32* @SR_DISKS, align 4
  %47 = call i32 @find_first_zero_bit(i32 %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @SR_DISKS, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = call i32 @spin_unlock(i32* @sr_index_lock)
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %8, align 4
  br label %195

55:                                               ; preds = %43
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @sr_index_bits, align 4
  %58 = call i32 @__set_bit(i32 %56, i32 %57)
  %59 = call i32 @spin_unlock(i32* @sr_index_lock)
  %60 = load i32, i32* @SCSI_CDROM_MAJOR, align 4
  %61 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %62 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %61, i32 0, i32 8
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %65 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %67 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @sprintf(i32 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %72 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %71, i32 0, i32 6
  store i32* @sr_bdops, i32** %72, align 8
  %73 = load i32, i32* @GENHD_FL_CD, align 4
  %74 = load i32, i32* @GENHD_FL_BLOCK_EVENTS_ON_EXCL_WRITE, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %77 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @DISK_EVENT_MEDIA_CHANGE, align 4
  %79 = load i32, i32* @DISK_EVENT_EJECT_REQUEST, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %82 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @DISK_EVENT_FLAG_POLL, align 4
  %84 = load i32, i32* @DISK_EVENT_FLAG_UEVENT, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %87 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %89 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @SR_TIMEOUT, align 4
  %92 = call i32 @blk_queue_rq_timeout(i32 %90, i32 %91)
  %93 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %94 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %95 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %94, i32 0, i32 3
  store %struct.scsi_device* %93, %struct.scsi_device** %95, align 8
  %96 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %97 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %98 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %97, i32 0, i32 8
  store %struct.gendisk* %96, %struct.gendisk** %98, align 8
  %99 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %100 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %99, i32 0, i32 5
  store i32* @sr_template, i32** %100, align 8
  %101 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %102 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %103 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %102, i32 0, i32 8
  store %struct.gendisk* %101, %struct.gendisk** %103, align 8
  %104 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %105 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %104, i32 0, i32 0
  store i32 2097151, i32* %105, align 8
  %106 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %107 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %106, i32 0, i32 3
  %108 = load %struct.scsi_device*, %struct.scsi_device** %107, align 8
  %109 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %108, i32 0, i32 1
  store i32 1, i32* %109, align 8
  %110 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %111 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  %112 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %113 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %112, i32 0, i32 2
  store i32 1, i32* %113, align 8
  %114 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %115 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %114, i32 0, i32 7
  store i64 0, i64* %115, align 8
  %116 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %117 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %116, i32 0, i32 6
  store i64 0, i64* %117, align 8
  %118 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %119 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 5
  store i32* @sr_dops, i32** %120, align 8
  %121 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %122 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %123 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 4
  store %struct.scsi_cd* %121, %struct.scsi_cd** %124, align 8
  %125 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %126 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 3
  store i64 0, i64* %127, align 8
  %128 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %129 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  store i32 1, i32* %130, align 8
  %131 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %132 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @sprintf(i32 %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %135)
  %137 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %138 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %137, i32 0, i32 2
  store i32 2048, i32* %138, align 4
  %139 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %140 = call i32 @get_capabilities(%struct.scsi_cd* %139)
  %141 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %142 = call i32 @sr_vendor_init(%struct.scsi_cd* %141)
  %143 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %144 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %145 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @set_capacity(%struct.gendisk* %143, i32 %146)
  %148 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %149 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %148, i32 0, i32 5
  %150 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %151 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %150, i32 0, i32 5
  store i32** %149, i32*** %151, align 8
  %152 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %153 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %156 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %155, i32 0, i32 4
  store i32 %154, i32* %156, align 8
  %157 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %158 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %159 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 2
  store %struct.gendisk* %157, %struct.gendisk** %160, align 8
  %161 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %162 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %161, i32 0, i32 4
  %163 = call i64 @register_cdrom(%struct.TYPE_2__* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %55
  br label %195

166:                                              ; preds = %55
  %167 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %168 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.device*, %struct.device** %3, align 8
  %171 = call i32 @blk_pm_runtime_init(i32 %169, %struct.device* %170)
  %172 = load %struct.device*, %struct.device** %3, align 8
  %173 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %174 = call i32 @dev_set_drvdata(%struct.device* %172, %struct.scsi_cd* %173)
  %175 = load i32, i32* @GENHD_FL_REMOVABLE, align 4
  %176 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %177 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 4
  %180 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %181 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %180, i32 0, i32 3
  %182 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %183 = call i32 @device_add_disk(i32* %181, %struct.gendisk* %182, i32* null)
  %184 = load i32, i32* @KERN_DEBUG, align 4
  %185 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %186 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %187 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @sdev_printk(i32 %184, %struct.scsi_device* %185, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %189)
  %191 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %192 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %191, i32 0, i32 3
  %193 = load %struct.scsi_device*, %struct.scsi_device** %192, align 8
  %194 = call i32 @scsi_autopm_put_device(%struct.scsi_device* %193)
  store i32 0, i32* %2, align 4
  br label %205

195:                                              ; preds = %165, %51
  %196 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %197 = call i32 @put_disk(%struct.gendisk* %196)
  br label %198

198:                                              ; preds = %195, %42
  %199 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %200 = call i32 @kfree(%struct.scsi_cd* %199)
  br label %201

201:                                              ; preds = %198, %34, %26
  %202 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %203 = call i32 @scsi_autopm_put_device(%struct.scsi_device* %202)
  %204 = load i32, i32* %8, align 4
  store i32 %204, i32* %2, align 4
  br label %205

205:                                              ; preds = %201, %166
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local i32 @scsi_autopm_get_device(%struct.scsi_device*) #1

declare dso_local %struct.scsi_cd* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local %struct.gendisk* @alloc_disk(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @blk_queue_rq_timeout(i32, i32) #1

declare dso_local i32 @get_capabilities(%struct.scsi_cd*) #1

declare dso_local i32 @sr_vendor_init(%struct.scsi_cd*) #1

declare dso_local i32 @set_capacity(%struct.gendisk*, i32) #1

declare dso_local i64 @register_cdrom(%struct.TYPE_2__*) #1

declare dso_local i32 @blk_pm_runtime_init(i32, %struct.device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.scsi_cd*) #1

declare dso_local i32 @device_add_disk(i32*, %struct.gendisk*, i32*) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32) #1

declare dso_local i32 @scsi_autopm_put_device(%struct.scsi_device*) #1

declare dso_local i32 @put_disk(%struct.gendisk*) #1

declare dso_local i32 @kfree(%struct.scsi_cd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
