; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_emc.c_trespass_endio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_emc.c_trespass_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.scsi_sense_hdr = type { i32, i32, i32 }

@SCSI_DH_IO = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"%s: Found valid sense data 0x%2x, 0x%2x, 0x%2x while sending CLARiiON trespass command.\0A\00", align 1
@CLARIION_NAME = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"%s: Array Based Copy in progress while sending CLARiiON trespass command.\0A\00", align 1
@SCSI_DH_DEV_TEMP_BUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [95 x i8] c"%s: Detected in-progress ucode upgrade NDU operation while sending CLARiiON trespass command.\0A\00", align 1
@SCSI_DH_DEV_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.scsi_sense_hdr*)* @trespass_endio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trespass_endio(%struct.scsi_device* %0, %struct.scsi_sense_hdr* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.scsi_sense_hdr*, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store %struct.scsi_sense_hdr* %1, %struct.scsi_sense_hdr** %4, align 8
  %6 = load i32, i32* @SCSI_DH_IO, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* @KERN_ERR, align 4
  %8 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %9 = load i32, i32* @CLARIION_NAME, align 4
  %10 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %17 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %7, %struct.scsi_device* %8, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12, i32 %15, i32 %18)
  %20 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %21 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 5
  br i1 %23, label %24, label %40

24:                                               ; preds = %2
  %25 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %26 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %31 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* @KERN_INFO, align 4
  %36 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %37 = load i32, i32* @CLARIION_NAME, align 4
  %38 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %35, %struct.scsi_device* %36, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @SCSI_DH_DEV_TEMP_BUSY, align 4
  store i32 %39, i32* %5, align 4
  br label %64

40:                                               ; preds = %29, %24, %2
  %41 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %42 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %61

45:                                               ; preds = %40
  %46 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %47 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 4
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %52 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32, i32* @KERN_INFO, align 4
  %57 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %58 = load i32, i32* @CLARIION_NAME, align 4
  %59 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %56, %struct.scsi_device* %57, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @SCSI_DH_DEV_TEMP_BUSY, align 4
  store i32 %60, i32* %5, align 4
  br label %63

61:                                               ; preds = %50, %45, %40
  %62 = load i32, i32* @SCSI_DH_DEV_FAILED, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %55
  br label %64

64:                                               ; preds = %63, %34
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
