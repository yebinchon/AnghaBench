; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_revalidate_disk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_revalidate_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32 }
%struct.scsi_disk = type { i32, i32, i32, i64, i64, %struct.TYPE_3__*, %struct.scsi_device* }
%struct.TYPE_3__ = type { %struct.request_queue* }
%struct.request_queue = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.scsi_device = type { i64 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"sd_revalidate_disk\0A\00", align 1
@SD_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"sd_revalidate_disk: Memory allocation failure.\0A\00", align 1
@QUEUE_FLAG_NONROT = common dso_local global i32 0, align 4
@QUEUE_FLAG_ADD_RANDOM = common dso_local global i32 0, align 4
@SD_MAX_XFER_BLOCKS = common dso_local global i32 0, align 4
@SD_DEF_XFER_BLOCKS = common dso_local global i32 0, align 4
@BLK_DEF_MAX_SECTORS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gendisk*)* @sd_revalidate_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_revalidate_disk(%struct.gendisk* %0) #0 {
  %2 = alloca %struct.gendisk*, align 8
  %3 = alloca %struct.scsi_disk*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %2, align 8
  %10 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %11 = call %struct.scsi_disk* @scsi_disk(%struct.gendisk* %10)
  store %struct.scsi_disk* %11, %struct.scsi_disk** %3, align 8
  %12 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %12, i32 0, i32 6
  %14 = load %struct.scsi_device*, %struct.scsi_device** %13, align 8
  store %struct.scsi_device* %14, %struct.scsi_device** %4, align 8
  %15 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %16 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %15, i32 0, i32 5
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.request_queue*, %struct.request_queue** %18, align 8
  store %struct.request_queue* %19, %struct.request_queue** %5, align 8
  %20 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %21 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @KERN_INFO, align 4
  %24 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %25 = call i32 @sd_printk(i32 %23, %struct.scsi_disk* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @SCSI_LOG_HLQUEUE(i32 3, i32 %25)
  %27 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %28 = call i32 @scsi_device_online(%struct.scsi_device* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  br label %187

31:                                               ; preds = %1
  %32 = load i32, i32* @SD_BUF_SIZE, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kmalloc(i32 %32, i32 %33)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @KERN_WARNING, align 4
  %39 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %40 = call i32 @sd_printk(i32 %38, %struct.scsi_disk* %39, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %187

41:                                               ; preds = %31
  %42 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %43 = call i32 @sd_spinup_disk(%struct.scsi_disk* %42)
  %44 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %45 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %90

48:                                               ; preds = %41
  %49 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @sd_read_capacity(%struct.scsi_disk* %49, i8* %50)
  %52 = load i32, i32* @QUEUE_FLAG_NONROT, align 4
  %53 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %54 = call i32 @blk_queue_flag_clear(i32 %52, %struct.request_queue* %53)
  %55 = load i32, i32* @QUEUE_FLAG_ADD_RANDOM, align 4
  %56 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %57 = call i32 @blk_queue_flag_set(i32 %55, %struct.request_queue* %56)
  %58 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %59 = call i64 @scsi_device_supports_vpd(%struct.scsi_device* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %48
  %62 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %63 = call i32 @sd_read_block_provisioning(%struct.scsi_disk* %62)
  %64 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %65 = call i32 @sd_read_block_limits(%struct.scsi_disk* %64)
  %66 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %67 = call i32 @sd_read_block_characteristics(%struct.scsi_disk* %66)
  %68 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @sd_zbc_read_zones(%struct.scsi_disk* %68, i8* %69)
  br label %71

71:                                               ; preds = %61, %48
  %72 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @sd_print_capacity(%struct.scsi_disk* %72, i32 %73)
  %75 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @sd_read_write_protect_flag(%struct.scsi_disk* %75, i8* %76)
  %78 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = call i32 @sd_read_cache_type(%struct.scsi_disk* %78, i8* %79)
  %81 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @sd_read_app_tag_own(%struct.scsi_disk* %81, i8* %82)
  %84 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @sd_read_write_same(%struct.scsi_disk* %84, i8* %85)
  %87 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @sd_read_security(%struct.scsi_disk* %87, i8* %88)
  br label %90

90:                                               ; preds = %71, %41
  %91 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %92 = call i32 @sd_set_flush_flag(%struct.scsi_disk* %91)
  %93 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %94 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* @SD_MAX_XFER_BLOCKS, align 4
  br label %101

99:                                               ; preds = %90
  %100 = load i32, i32* @SD_DEF_XFER_BLOCKS, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %105 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @min_not_zero(i32 %103, i32 %106)
  store i32 %107, i32* %8, align 4
  %108 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @logical_to_sectors(%struct.scsi_device* %108, i32 %109)
  %111 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %112 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 4
  %114 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %115 = load i32, i32* %8, align 4
  %116 = call i64 @sd_validate_opt_xfer_size(%struct.scsi_disk* %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %101
  %119 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %120 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %121 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @logical_to_bytes(%struct.scsi_device* %119, i32 %122)
  %124 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %125 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 3
  store i32 %123, i32* %126, align 4
  %127 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %128 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %129 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @logical_to_sectors(%struct.scsi_device* %127, i32 %130)
  store i32 %131, i32* %9, align 4
  br label %139

132:                                              ; preds = %101
  %133 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @logical_to_sectors(%struct.scsi_device* %133, i32 %134)
  %136 = load i64, i64* @BLK_DEF_MAX_SECTORS, align 8
  %137 = trunc i64 %136 to i32
  %138 = call i32 @min_not_zero(i32 %135, i32 %137)
  store i32 %138, i32* %9, align 4
  br label %139

139:                                              ; preds = %132, %118
  %140 = load i32, i32* %9, align 4
  %141 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %142 = call i32 @queue_max_hw_sectors(%struct.request_queue* %141)
  %143 = call i32 @min(i32 %140, i32 %142)
  store i32 %143, i32* %9, align 4
  %144 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %145 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %168, label %148

148:                                              ; preds = %139
  %149 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %150 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %154 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp ugt i32 %152, %156
  br i1 %157, label %168, label %158

158:                                              ; preds = %148
  %159 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %160 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %164 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = icmp ugt i32 %162, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %158, %148, %139
  %169 = load i32, i32* %9, align 4
  %170 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %171 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  store i32 %169, i32* %172, align 4
  br label %173

173:                                              ; preds = %168, %158
  %174 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %175 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %174, i32 0, i32 3
  store i64 0, i64* %175, align 8
  %176 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %177 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %178 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %179 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @logical_to_sectors(%struct.scsi_device* %177, i32 %180)
  %182 = call i32 @set_capacity(%struct.gendisk* %176, i32 %181)
  %183 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %184 = call i32 @sd_config_write_same(%struct.scsi_disk* %183)
  %185 = load i8*, i8** %7, align 8
  %186 = call i32 @kfree(i8* %185)
  br label %187

187:                                              ; preds = %173, %37, %30
  ret i32 0
}

declare dso_local %struct.scsi_disk* @scsi_disk(%struct.gendisk*) #1

declare dso_local i32 @SCSI_LOG_HLQUEUE(i32, i32) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*) #1

declare dso_local i32 @scsi_device_online(%struct.scsi_device*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @sd_spinup_disk(%struct.scsi_disk*) #1

declare dso_local i32 @sd_read_capacity(%struct.scsi_disk*, i8*) #1

declare dso_local i32 @blk_queue_flag_clear(i32, %struct.request_queue*) #1

declare dso_local i32 @blk_queue_flag_set(i32, %struct.request_queue*) #1

declare dso_local i64 @scsi_device_supports_vpd(%struct.scsi_device*) #1

declare dso_local i32 @sd_read_block_provisioning(%struct.scsi_disk*) #1

declare dso_local i32 @sd_read_block_limits(%struct.scsi_disk*) #1

declare dso_local i32 @sd_read_block_characteristics(%struct.scsi_disk*) #1

declare dso_local i32 @sd_zbc_read_zones(%struct.scsi_disk*, i8*) #1

declare dso_local i32 @sd_print_capacity(%struct.scsi_disk*, i32) #1

declare dso_local i32 @sd_read_write_protect_flag(%struct.scsi_disk*, i8*) #1

declare dso_local i32 @sd_read_cache_type(%struct.scsi_disk*, i8*) #1

declare dso_local i32 @sd_read_app_tag_own(%struct.scsi_disk*, i8*) #1

declare dso_local i32 @sd_read_write_same(%struct.scsi_disk*, i8*) #1

declare dso_local i32 @sd_read_security(%struct.scsi_disk*, i8*) #1

declare dso_local i32 @sd_set_flush_flag(%struct.scsi_disk*) #1

declare dso_local i32 @min_not_zero(i32, i32) #1

declare dso_local i32 @logical_to_sectors(%struct.scsi_device*, i32) #1

declare dso_local i64 @sd_validate_opt_xfer_size(%struct.scsi_disk*, i32) #1

declare dso_local i32 @logical_to_bytes(%struct.scsi_device*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @queue_max_hw_sectors(%struct.request_queue*) #1

declare dso_local i32 @set_capacity(%struct.gendisk*, i32) #1

declare dso_local i32 @sd_config_write_same(%struct.scsi_disk*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
