; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_rebuild_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_rebuild_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_device = type { i64, i64, i32 }
%struct.myrb_hba = type { i32 }
%struct.myrb_rbld_progress = type { i64, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"physical device - not rebuilding\0A\00", align 1
@MYRB_STATUS_SUCCESS = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"not rebuilding\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"rebuilding block %u of %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @rebuild_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rebuild_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.scsi_device*, align 8
  %9 = alloca %struct.myrb_hba*, align 8
  %10 = alloca %struct.myrb_rbld_progress, align 8
  %11 = alloca i8, align 1
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.scsi_device* @to_scsi_device(%struct.device* %12)
  store %struct.scsi_device* %13, %struct.scsi_device** %8, align 8
  %14 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %15 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.myrb_hba* @shost_priv(i32 %16)
  store %struct.myrb_hba* %17, %struct.myrb_hba** %9, align 8
  %18 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %19 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %22 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @myrb_logical_channel(i32 %23)
  %25 = icmp slt i64 %20, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %27, i32 32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %4, align 4
  br label %57

29:                                               ; preds = %3
  %30 = load %struct.myrb_hba*, %struct.myrb_hba** %9, align 8
  %31 = call zeroext i8 @myrb_get_rbld_progress(%struct.myrb_hba* %30, %struct.myrb_rbld_progress* %10)
  store i8 %31, i8* %11, align 1
  %32 = getelementptr inbounds %struct.myrb_rbld_progress, %struct.myrb_rbld_progress* %10, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %35 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %29
  %39 = load i8, i8* %11, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* @MYRB_STATUS_SUCCESS, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38, %29
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %45, i32 32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %46, i32* %4, align 4
  br label %57

47:                                               ; preds = %38
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds %struct.myrb_rbld_progress, %struct.myrb_rbld_progress* %10, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.myrb_rbld_progress, %struct.myrb_rbld_progress* %10, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %50, %52
  %54 = getelementptr inbounds %struct.myrb_rbld_progress, %struct.myrb_rbld_progress* %10, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %48, i32 32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %55)
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %47, %44, %26
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local %struct.myrb_hba* @shost_priv(i32) #1

declare dso_local i64 @myrb_logical_channel(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local zeroext i8 @myrb_get_rbld_progress(%struct.myrb_hba*, %struct.myrb_rbld_progress*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
