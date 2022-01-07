; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_consistency_check_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_consistency_check_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_device = type { i64, %struct.myrs_ldev_info*, i32 }
%struct.myrs_ldev_info = type { i16, i64, i64, i64 }
%struct.myrs_hba = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"physical device - not checking\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"checking block %zu of %zu\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"not checking\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @consistency_check_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @consistency_check_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
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
  %30 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %29, i32 32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 %30, i32* %4, align 4
  br label %64

31:                                               ; preds = %3
  %32 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %33 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %32, i32 0, i32 1
  %34 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %33, align 8
  store %struct.myrs_ldev_info* %34, %struct.myrs_ldev_info** %10, align 8
  %35 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %10, align 8
  %36 = icmp ne %struct.myrs_ldev_info* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @ENXIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %64

40:                                               ; preds = %31
  %41 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %10, align 8
  %42 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %41, i32 0, i32 0
  %43 = load i16, i16* %42, align 8
  store i16 %43, i16* %11, align 2
  %44 = load %struct.myrs_hba*, %struct.myrs_hba** %9, align 8
  %45 = load i16, i16* %11, align 2
  %46 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %10, align 8
  %47 = call zeroext i8 @myrs_get_ldev_info(%struct.myrs_hba* %44, i16 zeroext %45, %struct.myrs_ldev_info* %46)
  store i8 %47, i8* %12, align 1
  %48 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %10, align 8
  %49 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %40
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %10, align 8
  %55 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %10, align 8
  %58 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %53, i32 32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %56, i64 %59)
  store i32 %60, i32* %4, align 4
  br label %64

61:                                               ; preds = %40
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %62, i32 32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %61, %52, %37, %28
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local %struct.myrs_hba* @shost_priv(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local zeroext i8 @myrs_get_ldev_info(%struct.myrs_hba*, i16 zeroext, %struct.myrs_ldev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
