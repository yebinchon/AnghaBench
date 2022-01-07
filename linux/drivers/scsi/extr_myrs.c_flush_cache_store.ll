; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_flush_cache_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_flush_cache_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.myrs_hba = type { i32 }

@MYRS_IOCTL_FLUSH_DEVICE_DATA = common dso_local global i32 0, align 4
@MYRS_RAID_CONTROLLER = common dso_local global i32 0, align 4
@MYRS_STATUS_SUCCESS = common dso_local global i8 0, align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Cache Flush Completed\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Cache Flush failed, status 0x%02x\0A\00", align 1
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @flush_cache_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @flush_cache_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.myrs_hba*, align 8
  %12 = alloca i8, align 1
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %13)
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %10, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %16 = call %struct.myrs_hba* @shost_priv(%struct.Scsi_Host* %15)
  store %struct.myrs_hba* %16, %struct.myrs_hba** %11, align 8
  %17 = load %struct.myrs_hba*, %struct.myrs_hba** %11, align 8
  %18 = load i32, i32* @MYRS_IOCTL_FLUSH_DEVICE_DATA, align 4
  %19 = load i32, i32* @MYRS_RAID_CONTROLLER, align 4
  %20 = call zeroext i8 @myrs_dev_op(%struct.myrs_hba* %17, i32 %18, i32 %19)
  store i8 %20, i8* %12, align 1
  %21 = load i8, i8* %12, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @MYRS_STATUS_SUCCESS, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %4
  %27 = load i32, i32* @KERN_INFO, align 4
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %29 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %27, %struct.Scsi_Host* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %30 = load i64, i64* %9, align 8
  store i64 %30, i64* %5, align 8
  br label %39

31:                                               ; preds = %4
  %32 = load i32, i32* @KERN_INFO, align 4
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %34 = load i8, i8* %12, align 1
  %35 = zext i8 %34 to i32
  %36 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %32, %struct.Scsi_Host* %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i64, i64* @EIO, align 8
  %38 = sub i64 0, %37
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %31, %26
  %40 = load i64, i64* %5, align 8
  ret i64 %40
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local %struct.myrs_hba* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local zeroext i8 @myrs_dev_op(%struct.myrs_hba*, i32, i32) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
