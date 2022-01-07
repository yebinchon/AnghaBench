; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_internal_device_unblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_internal_device_unblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.MPT3SAS_DEVICE = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"device_unblock and setting to running, handle(0x%04x)\0A\00", align 1
@SDEV_RUNNING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [100 x i8] c"device_unblock failed with return(%d) for handle(0x%04x) performing a block followed by an unblock\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"retried device_block failed with return(%d) for handle(0x%04x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"retried device_unblock failed with return(%d) for handle(0x%04x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*, %struct.MPT3SAS_DEVICE*)* @_scsih_internal_device_unblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_internal_device_unblock(%struct.scsi_device* %0, %struct.MPT3SAS_DEVICE* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.MPT3SAS_DEVICE*, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store %struct.MPT3SAS_DEVICE* %1, %struct.MPT3SAS_DEVICE** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @KERN_WARNING, align 4
  %7 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %8 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %9 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %6, %struct.scsi_device* %7, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %15 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %17 = load i32, i32* @SDEV_RUNNING, align 4
  %18 = call i32 @scsi_internal_device_unblock_nowait(%struct.scsi_device* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %68

23:                                               ; preds = %2
  %24 = load i32, i32* @KERN_WARNING, align 4
  %25 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %28 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %24, %struct.scsi_device* %25, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %31)
  %33 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %34 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %36 = call i32 @scsi_internal_device_block_nowait(%struct.scsi_device* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %23
  %40 = load i32, i32* @KERN_WARNING, align 4
  %41 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %44 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %40, %struct.scsi_device* %41, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %47)
  br label %49

49:                                               ; preds = %39, %23
  %50 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %51 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %53 = load i32, i32* @SDEV_RUNNING, align 4
  %54 = call i32 @scsi_internal_device_unblock_nowait(%struct.scsi_device* %52, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %49
  %58 = load i32, i32* @KERN_WARNING, align 4
  %59 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %62 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %58, %struct.scsi_device* %59, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 %60, i32 %65)
  br label %67

67:                                               ; preds = %57, %49
  br label %68

68:                                               ; preds = %67, %2
  ret void
}

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, ...) #1

declare dso_local i32 @scsi_internal_device_unblock_nowait(%struct.scsi_device*, i32) #1

declare dso_local i32 @scsi_internal_device_block_nowait(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
