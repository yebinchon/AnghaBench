; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_internal_device_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_internal_device_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.MPT3SAS_DEVICE = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"device_block, handle(0x%04x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"device_block failed with return(%d) for handle(0x%04x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*, %struct.MPT3SAS_DEVICE*)* @_scsih_internal_device_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_internal_device_block(%struct.scsi_device* %0, %struct.MPT3SAS_DEVICE* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.MPT3SAS_DEVICE*, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store %struct.MPT3SAS_DEVICE* %1, %struct.MPT3SAS_DEVICE** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @KERN_INFO, align 4
  %7 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %8 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %9 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %6, %struct.scsi_device* %7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %15 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %17 = call i32 @scsi_internal_device_block_nowait(%struct.scsi_device* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load i32, i32* @KERN_WARNING, align 4
  %24 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %27 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %23, %struct.scsi_device* %24, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %30)
  br label %32

32:                                               ; preds = %22, %2
  ret void
}

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, ...) #1

declare dso_local i32 @scsi_internal_device_block_nowait(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
