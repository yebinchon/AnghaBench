; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_rebuild_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_rebuild_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_device = type { i64, %struct.myrs_ldev_info*, i32 }
%struct.myrs_ldev_info = type { i16, i64, i64, i64 }
%struct.myrs_hba = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"physical device - not rebuilding\0A\00", align 1
@MYRS_STATUS_SUCCESS = common dso_local global i8 0, align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to get device information, status 0x%02x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"rebuilding block %zu of %zu\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"not rebuilding\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @rebuild_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rebuild_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.scsi_device*, align 8
  %9 = alloca %struct.myrs_hba*, align 8
  %10 = alloca %struct.myrs_ldev_info*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.scsi_device* @to_scsi_device(%struct.device* %13)
  store %struct.scsi_device* %14, %struct.scsi_device** %8, align 8
  %15 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %16 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.myrs_hba* @shost_priv(i32 %17)
  store %struct.myrs_hba* %18, %struct.myrs_hba** %9, align 8
  %19 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %20 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.myrs_hba*, %struct.myrs_hba** %9, align 8
  %23 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %21, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %29, i32 32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 %30, i32* %4, align 4
  br label %71

31:                                               ; preds = %3
  %32 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %33 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %32, i32 0, i32 1
  %34 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %33, align 8
  store %struct.myrs_ldev_info* %34, %struct.myrs_ldev_info** %10, align 8
  %35 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %10, align 8
  %36 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %35, i32 0, i32 0
  %37 = load i16, i16* %36, align 8
  store i16 %37, i16* %11, align 2
  %38 = load %struct.myrs_hba*, %struct.myrs_hba** %9, align 8
  %39 = load i16, i16* %11, align 2
  %40 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %10, align 8
  %41 = call zeroext i8 @myrs_get_ldev_info(%struct.myrs_hba* %38, i16 zeroext %39, %struct.myrs_ldev_info* %40)
  store i8 %41, i8* %12, align 1
  %42 = load i8, i8* %12, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* @MYRS_STATUS_SUCCESS, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %31
  %48 = load i32, i32* @KERN_INFO, align 4
  %49 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %50 = load i8, i8* %12, align 1
  %51 = call i32 @sdev_printk(i32 %48, %struct.scsi_device* %49, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %50)
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %71

54:                                               ; preds = %31
  %55 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %10, align 8
  %56 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load i8*, i8** %7, align 8
  %61 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %10, align 8
  %62 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %10, align 8
  %65 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %60, i32 32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %63, i64 %66)
  store i32 %67, i32* %4, align 4
  br label %71

68:                                               ; preds = %54
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %69, i32 32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %68, %59, %47, %28
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local %struct.myrs_hba* @shost_priv(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local zeroext i8 @myrs_get_ldev_info(%struct.myrs_hba*, i16 zeroext, %struct.myrs_ldev_info*) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
