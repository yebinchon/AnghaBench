; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_raid_level_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_raid_level_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_device = type { i64, %struct.myrb_ldev_info*, i32 }
%struct.myrb_ldev_info = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Invalid (%02X)\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Physical Drive\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @raid_level_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid_level_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.scsi_device*, align 8
  %9 = alloca %struct.myrb_ldev_info*, align 8
  %10 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.scsi_device* @to_scsi_device(%struct.device* %11)
  store %struct.scsi_device* %12, %struct.scsi_device** %8, align 8
  %13 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %14 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @myrb_logical_channel(i32 %18)
  %20 = icmp eq i64 %15, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %3
  %22 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %23 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %22, i32 0, i32 1
  %24 = load %struct.myrb_ldev_info*, %struct.myrb_ldev_info** %23, align 8
  store %struct.myrb_ldev_info* %24, %struct.myrb_ldev_info** %9, align 8
  %25 = load %struct.myrb_ldev_info*, %struct.myrb_ldev_info** %9, align 8
  %26 = icmp ne %struct.myrb_ldev_info* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENXIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %50

30:                                               ; preds = %21
  %31 = load %struct.myrb_ldev_info*, %struct.myrb_ldev_info** %9, align 8
  %32 = getelementptr inbounds %struct.myrb_ldev_info, %struct.myrb_ldev_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @myrb_raidlevel_name(i32 %33)
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %30
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.myrb_ldev_info*, %struct.myrb_ldev_info** %9, align 8
  %40 = getelementptr inbounds %struct.myrb_ldev_info, %struct.myrb_ldev_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %38, i32 32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i32 %42, i32* %4, align 4
  br label %50

43:                                               ; preds = %30
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %44, i32 32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  store i32 %46, i32* %4, align 4
  br label %50

47:                                               ; preds = %3
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %48, i32 32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %43, %37, %27
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local i64 @myrb_logical_channel(i32) #1

declare dso_local i8* @myrb_raidlevel_name(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
