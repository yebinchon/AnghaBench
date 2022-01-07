; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_sysfs.c_zfcp_sysfs_scsi_zfcp_failed_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_sysfs.c_zfcp_sysfs_scsi_zfcp_failed_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_device = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@ZFCP_STATUS_COMMON_RUNNING = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"syufai3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @zfcp_sysfs_scsi_zfcp_failed_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zfcp_sysfs_scsi_zfcp_failed_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.scsi_device*, align 8
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.scsi_device* @to_scsi_device(%struct.device* %12)
  store %struct.scsi_device* %13, %struct.scsi_device** %10, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i64 @kstrtoul(i8* %14, i32 0, i64* %11)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* %11, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17, %4
  %21 = load i64, i64* @EINVAL, align 8
  %22 = sub i64 0, %21
  store i64 %22, i64* %5, align 8
  br label %38

23:                                               ; preds = %17
  %24 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %25 = load i32, i32* @ZFCP_STATUS_COMMON_RUNNING, align 4
  %26 = call i32 @zfcp_erp_set_lun_status(%struct.scsi_device* %24, i32 %25)
  %27 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %28 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %29 = call i32 @zfcp_erp_lun_reopen(%struct.scsi_device* %27, i32 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %31 = call %struct.TYPE_4__* @sdev_to_zfcp(%struct.scsi_device* %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @zfcp_erp_wait(i32 %35)
  %37 = load i64, i64* %9, align 8
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %23, %20
  %39 = load i64, i64* %5, align 8
  ret i64 %39
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @zfcp_erp_set_lun_status(%struct.scsi_device*, i32) #1

declare dso_local i32 @zfcp_erp_lun_reopen(%struct.scsi_device*, i32, i8*) #1

declare dso_local i32 @zfcp_erp_wait(i32) #1

declare dso_local %struct.TYPE_4__* @sdev_to_zfcp(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
