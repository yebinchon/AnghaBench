; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scsi_device = type { i64, i32, i64, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.scsi_disk = type { i32, i32, i32, i64, i64, i64, i32, i64, i64, i64, i64, i64, %struct.scsi_device*, i32*, %struct.TYPE_6__, i32, %struct.gendisk* }
%struct.TYPE_6__ = type { i32*, %struct.device* }
%struct.gendisk = type { i32, i32, i32, i32, %struct.TYPE_7__*, i32**, i32*, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@TYPE_DISK = common dso_local global i64 0, align 8
@TYPE_ZBC = common dso_local global i64 0, align 8
@TYPE_MOD = common dso_local global i64 0, align 8
@TYPE_RBC = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"sd_probe\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SD_MINORS = common dso_local global i32 0, align 4
@sd_index_ida = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"sd_probe: memory exhausted.\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"sd\00", align 1
@DISK_NAME_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"SCSI disk (sd) name length exceeded.\0A\00", align 1
@sd_template = common dso_local global i32 0, align 4
@SD_TIMEOUT = common dso_local global i32 0, align 4
@SD_MOD_TIMEOUT = common dso_local global i32 0, align 4
@sd_disk_class = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@sd_fops = common dso_local global i32 0, align 4
@SD_MAX_MEDIUM_TIMEOUTS = common dso_local global i32 0, align 4
@GENHD_FL_EXT_DEVT = common dso_local global i32 0, align 4
@GENHD_FL_REMOVABLE = common dso_local global i32 0, align 4
@DISK_EVENT_MEDIA_CHANGE = common dso_local global i32 0, align 4
@DISK_EVENT_FLAG_POLL = common dso_local global i32 0, align 4
@DISK_EVENT_FLAG_UEVENT = common dso_local global i32 0, align 4
@sd_sec_submit = common dso_local global i32 0, align 4
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"supports TCG Opal\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Attached SCSI %sdisk\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"removable \00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @sd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.scsi_disk*, align 8
  %6 = alloca %struct.gendisk*, align 8
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
  %18 = load i64, i64* @TYPE_DISK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %1
  %21 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %22 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TYPE_ZBC, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %28 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TYPE_MOD, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %34 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TYPE_RBC, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %290

39:                                               ; preds = %32, %26, %20, %1
  %40 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %41 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TYPE_ZBC, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %290

46:                                               ; preds = %39
  %47 = load i32, i32* @KERN_INFO, align 4
  %48 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %49 = call i32 @sdev_printk(i32 %47, %struct.scsi_device* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %50 = call i32 @SCSI_LOG_HLQUEUE(i32 3, i32 %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.scsi_disk* @kzalloc(i32 136, i32 %53)
  store %struct.scsi_disk* %54, %struct.scsi_disk** %5, align 8
  %55 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %56 = icmp ne %struct.scsi_disk* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %46
  br label %290

58:                                               ; preds = %46
  %59 = load i32, i32* @SD_MINORS, align 4
  %60 = call %struct.gendisk* @alloc_disk(i32 %59)
  store %struct.gendisk* %60, %struct.gendisk** %6, align 8
  %61 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %62 = icmp ne %struct.gendisk* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  br label %287

64:                                               ; preds = %58
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i32 @ida_alloc(i32* @sd_index_ida, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @KERN_WARNING, align 4
  %71 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %72 = call i32 @sdev_printk(i32 %70, %struct.scsi_device* %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %284

73:                                               ; preds = %64
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %76 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @DISK_NAME_LEN, align 4
  %79 = call i32 @sd_format_disk_name(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %77, i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %73
  %83 = load i32, i32* @KERN_WARNING, align 4
  %84 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %85 = call i32 @sdev_printk(i32 %83, %struct.scsi_device* %84, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %281

86:                                               ; preds = %73
  %87 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %88 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %89 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %88, i32 0, i32 12
  store %struct.scsi_device* %87, %struct.scsi_device** %89, align 8
  %90 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %91 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %90, i32 0, i32 13
  store i32* @sd_template, i32** %91, align 8
  %92 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %93 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %94 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %93, i32 0, i32 16
  store %struct.gendisk* %92, %struct.gendisk** %94, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %97 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %99 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %98, i32 0, i32 15
  %100 = call i32 @atomic_set(i32* %99, i32 0)
  %101 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %102 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %101, i32 0, i32 12
  %103 = load %struct.scsi_device*, %struct.scsi_device** %102, align 8
  %104 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %103, i32 0, i32 4
  %105 = call i32 @atomic_set(i32* %104, i32 0)
  %106 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %107 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %106, i32 0, i32 3
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %131, label %112

112:                                              ; preds = %86
  %113 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %114 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @TYPE_MOD, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %112
  %119 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %120 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %119, i32 0, i32 3
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = load i32, i32* @SD_TIMEOUT, align 4
  %123 = call i32 @blk_queue_rq_timeout(%struct.TYPE_7__* %121, i32 %122)
  br label %130

124:                                              ; preds = %112
  %125 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %126 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %125, i32 0, i32 3
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = load i32, i32* @SD_MOD_TIMEOUT, align 4
  %129 = call i32 @blk_queue_rq_timeout(%struct.TYPE_7__* %127, i32 %128)
  br label %130

130:                                              ; preds = %124, %118
  br label %131

131:                                              ; preds = %130, %86
  %132 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %133 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %132, i32 0, i32 14
  %134 = call i32 @device_initialize(%struct.TYPE_6__* %133)
  %135 = load %struct.device*, %struct.device** %3, align 8
  %136 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %137 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %136, i32 0, i32 14
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  store %struct.device* %135, %struct.device** %138, align 8
  %139 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %140 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %139, i32 0, i32 14
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  store i32* @sd_disk_class, i32** %141, align 8
  %142 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %143 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %142, i32 0, i32 14
  %144 = load %struct.device*, %struct.device** %3, align 8
  %145 = call i32 @dev_name(%struct.device* %144)
  %146 = call i32 @dev_set_name(%struct.TYPE_6__* %143, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %145)
  %147 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %148 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %147, i32 0, i32 14
  %149 = call i32 @device_add(%struct.TYPE_6__* %148)
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %131
  br label %281

153:                                              ; preds = %131
  %154 = load %struct.device*, %struct.device** %3, align 8
  %155 = call i32 @get_device(%struct.device* %154)
  %156 = load %struct.device*, %struct.device** %3, align 8
  %157 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %158 = call i32 @dev_set_drvdata(%struct.device* %156, %struct.scsi_disk* %157)
  %159 = load i32, i32* %7, align 4
  %160 = and i32 %159, 240
  %161 = ashr i32 %160, 4
  %162 = call i32 @sd_major(i32 %161)
  %163 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %164 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %163, i32 0, i32 7
  store i32 %162, i32* %164, align 8
  %165 = load i32, i32* %7, align 4
  %166 = and i32 %165, 15
  %167 = shl i32 %166, 4
  %168 = load i32, i32* %7, align 4
  %169 = and i32 %168, 1048320
  %170 = or i32 %167, %169
  %171 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %172 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  %173 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %174 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %173, i32 0, i32 6
  store i32* @sd_fops, i32** %174, align 8
  %175 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %176 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %175, i32 0, i32 13
  %177 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %178 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %177, i32 0, i32 5
  store i32** %176, i32*** %178, align 8
  %179 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %180 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %179, i32 0, i32 12
  %181 = load %struct.scsi_device*, %struct.scsi_device** %180, align 8
  %182 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %181, i32 0, i32 3
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %182, align 8
  %184 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %185 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %184, i32 0, i32 4
  store %struct.TYPE_7__* %183, %struct.TYPE_7__** %185, align 8
  %186 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %187 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %186, i32 0, i32 1
  store i32 512, i32* %187, align 8
  %188 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %189 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %188, i32 0, i32 5
  store i64 0, i64* %189, align 8
  %190 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %191 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %190, i32 0, i32 1
  store i32 1, i32* %191, align 4
  %192 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %193 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %192, i32 0, i32 11
  store i64 0, i64* %193, align 8
  %194 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %195 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %194, i32 0, i32 10
  store i64 0, i64* %195, align 8
  %196 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %197 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %196, i32 0, i32 9
  store i64 0, i64* %197, align 8
  %198 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %199 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %198, i32 0, i32 8
  store i64 0, i64* %199, align 8
  %200 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %201 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %200, i32 0, i32 7
  store i64 0, i64* %201, align 8
  %202 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %203 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %202, i32 0, i32 2
  store i32 1, i32* %203, align 8
  %204 = load i32, i32* @SD_MAX_MEDIUM_TIMEOUTS, align 4
  %205 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %206 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %205, i32 0, i32 6
  store i32 %204, i32* %206, align 8
  %207 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %208 = call i32 @sd_revalidate_disk(%struct.gendisk* %207)
  %209 = load i32, i32* @GENHD_FL_EXT_DEVT, align 4
  %210 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %211 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %210, i32 0, i32 3
  store i32 %209, i32* %211, align 4
  %212 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %213 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %232

216:                                              ; preds = %153
  %217 = load i32, i32* @GENHD_FL_REMOVABLE, align 4
  %218 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %219 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = or i32 %220, %217
  store i32 %221, i32* %219, align 4
  %222 = load i32, i32* @DISK_EVENT_MEDIA_CHANGE, align 4
  %223 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %224 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = or i32 %225, %222
  store i32 %226, i32* %224, align 8
  %227 = load i32, i32* @DISK_EVENT_FLAG_POLL, align 4
  %228 = load i32, i32* @DISK_EVENT_FLAG_UEVENT, align 4
  %229 = or i32 %227, %228
  %230 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %231 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %230, i32 0, i32 1
  store i32 %229, i32* %231, align 4
  br label %232

232:                                              ; preds = %216, %153
  %233 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %234 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %233, i32 0, i32 3
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %234, align 8
  %236 = load %struct.device*, %struct.device** %3, align 8
  %237 = call i32 @blk_pm_runtime_init(%struct.TYPE_7__* %235, %struct.device* %236)
  %238 = load %struct.device*, %struct.device** %3, align 8
  %239 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %240 = call i32 @device_add_disk(%struct.device* %238, %struct.gendisk* %239, i32* null)
  %241 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %242 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %241, i32 0, i32 5
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %232
  %246 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %247 = call i32 @sd_dif_config_host(%struct.scsi_disk* %246)
  br label %248

248:                                              ; preds = %245, %232
  %249 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %250 = call i32 @sd_revalidate_disk(%struct.gendisk* %249)
  %251 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %252 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %251, i32 0, i32 4
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %269

255:                                              ; preds = %248
  %256 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %257 = call i64 @init_opal_dev(%struct.scsi_device* %256, i32* @sd_sec_submit)
  %258 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %259 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %258, i32 0, i32 3
  store i64 %257, i64* %259, align 8
  %260 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %261 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %260, i32 0, i32 3
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %255
  %265 = load i32, i32* @KERN_NOTICE, align 4
  %266 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %267 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_printk(i32 %265, %struct.scsi_disk* %266, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %268

268:                                              ; preds = %264, %255
  br label %269

269:                                              ; preds = %268, %248
  %270 = load i32, i32* @KERN_NOTICE, align 4
  %271 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %272 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %273 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %272, i32 0, i32 2
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  %276 = zext i1 %275 to i64
  %277 = select i1 %275, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %278 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_printk(i32 %270, %struct.scsi_disk* %271, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %277)
  %279 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %280 = call i32 @scsi_autopm_put_device(%struct.scsi_device* %279)
  store i32 0, i32* %2, align 4
  br label %294

281:                                              ; preds = %152, %82
  %282 = load i32, i32* %7, align 4
  %283 = call i32 @ida_free(i32* @sd_index_ida, i32 %282)
  br label %284

284:                                              ; preds = %281, %69
  %285 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %286 = call i32 @put_disk(%struct.gendisk* %285)
  br label %287

287:                                              ; preds = %284, %63
  %288 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %289 = call i32 @kfree(%struct.scsi_disk* %288)
  br label %290

290:                                              ; preds = %287, %57, %45, %38
  %291 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %292 = call i32 @scsi_autopm_put_device(%struct.scsi_device* %291)
  %293 = load i32, i32* %8, align 4
  store i32 %293, i32* %2, align 4
  br label %294

294:                                              ; preds = %290, %269
  %295 = load i32, i32* %2, align 4
  ret i32 %295
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local i32 @scsi_autopm_get_device(%struct.scsi_device*) #1

declare dso_local i32 @SCSI_LOG_HLQUEUE(i32, i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*) #1

declare dso_local %struct.scsi_disk* @kzalloc(i32, i32) #1

declare dso_local %struct.gendisk* @alloc_disk(i32) #1

declare dso_local i32 @ida_alloc(i32*, i32) #1

declare dso_local i32 @sd_format_disk_name(i8*, i32, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @blk_queue_rq_timeout(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @device_add(%struct.TYPE_6__*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.scsi_disk*) #1

declare dso_local i32 @sd_major(i32) #1

declare dso_local i32 @sd_revalidate_disk(%struct.gendisk*) #1

declare dso_local i32 @blk_pm_runtime_init(%struct.TYPE_7__*, %struct.device*) #1

declare dso_local i32 @device_add_disk(%struct.device*, %struct.gendisk*, i32*) #1

declare dso_local i32 @sd_dif_config_host(%struct.scsi_disk*) #1

declare dso_local i64 @init_opal_dev(%struct.scsi_device*, i32*) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*, ...) #1

declare dso_local i32 @scsi_autopm_put_device(%struct.scsi_device*) #1

declare dso_local i32 @ida_free(i32*, i32) #1

declare dso_local i32 @put_disk(%struct.gendisk*) #1

declare dso_local i32 @kfree(%struct.scsi_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
