; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_raid_level_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_raid_level_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ctlr_info = type { i32 }
%struct.scsi_device = type { %struct.hpsa_scsi_dev_t* }
%struct.hpsa_scsi_dev_t = type { i8 }

@ENODEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"N/A\0A\00", align 1
@RAID_UNKNOWN = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"RAID %s\0A\00", align 1
@raid_label = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @raid_level_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid_level_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca %struct.ctlr_info*, align 8
  %11 = alloca %struct.scsi_device*, align 8
  %12 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.scsi_device* @to_scsi_device(%struct.device* %14)
  store %struct.scsi_device* %15, %struct.scsi_device** %11, align 8
  %16 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  %17 = call %struct.ctlr_info* @sdev_to_hba(%struct.scsi_device* %16)
  store %struct.ctlr_info* %17, %struct.ctlr_info** %10, align 8
  %18 = load %struct.ctlr_info*, %struct.ctlr_info** %10, align 8
  %19 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %18, i32 0, i32 0
  %20 = load i64, i64* %13, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  %23 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %22, i32 0, i32 0
  %24 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %23, align 8
  store %struct.hpsa_scsi_dev_t* %24, %struct.hpsa_scsi_dev_t** %12, align 8
  %25 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %12, align 8
  %26 = icmp ne %struct.hpsa_scsi_dev_t* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %3
  %28 = load %struct.ctlr_info*, %struct.ctlr_info** %10, align 8
  %29 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %28, i32 0, i32 0
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %72

34:                                               ; preds = %3
  %35 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %12, align 8
  %36 = call i32 @is_logical_device(%struct.hpsa_scsi_dev_t* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = load %struct.ctlr_info*, %struct.ctlr_info** %10, align 8
  %40 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %39, i32 0, i32 0
  %41 = load i64, i64* %13, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %43, i32 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %72

47:                                               ; preds = %34
  %48 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %12, align 8
  %49 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %48, i32 0, i32 0
  %50 = load i8, i8* %49, align 1
  store i8 %50, i8* %9, align 1
  %51 = load %struct.ctlr_info*, %struct.ctlr_info** %10, align 8
  %52 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %51, i32 0, i32 0
  %53 = load i64, i64* %13, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load i8, i8* %9, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* @RAID_UNKNOWN, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp sgt i32 %56, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %47
  %61 = load i8, i8* @RAID_UNKNOWN, align 1
  store i8 %61, i8* %9, align 1
  br label %62

62:                                               ; preds = %60, %47
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = load i8**, i8*** @raid_label, align 8
  %66 = load i8, i8* %9, align 1
  %67 = zext i8 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %63, i32 %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %62, %38, %27
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local %struct.ctlr_info* @sdev_to_hba(%struct.scsi_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @is_logical_device(%struct.hpsa_scsi_dev_t*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
