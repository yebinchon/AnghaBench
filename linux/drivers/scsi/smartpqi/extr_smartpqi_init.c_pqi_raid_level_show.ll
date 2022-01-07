; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_raid_level_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_raid_level_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pqi_ctrl_info = type { i32 }
%struct.scsi_device = type { %struct.pqi_scsi_dev*, i32 }
%struct.pqi_scsi_dev = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @pqi_raid_level_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_raid_level_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pqi_ctrl_info*, align 8
  %8 = alloca %struct.scsi_device*, align 8
  %9 = alloca %struct.pqi_scsi_dev*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.scsi_device* @to_scsi_device(%struct.device* %12)
  store %struct.scsi_device* %13, %struct.scsi_device** %8, align 8
  %14 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %15 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.pqi_ctrl_info* @shost_to_hba(i32 %16)
  store %struct.pqi_ctrl_info* %17, %struct.pqi_ctrl_info** %7, align 8
  %18 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %7, align 8
  %19 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %18, i32 0, i32 0
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %23 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %22, i32 0, i32 0
  %24 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %23, align 8
  store %struct.pqi_scsi_dev* %24, %struct.pqi_scsi_dev** %9, align 8
  %25 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %9, align 8
  %26 = call i64 @pqi_is_logical_device(%struct.pqi_scsi_dev* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %9, align 8
  %30 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @pqi_raid_level_to_string(i32 %31)
  store i8* %32, i8** %11, align 8
  br label %34

33:                                               ; preds = %3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %34

34:                                               ; preds = %33, %28
  %35 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %7, align 8
  %36 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %35, i32 0, i32 0
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = load i8*, i8** %11, align 8
  %42 = call i32 @snprintf(i8* %39, i32 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  ret i32 %42
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local %struct.pqi_ctrl_info* @shost_to_hba(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @pqi_is_logical_device(%struct.pqi_scsi_dev*) #1

declare dso_local i8* @pqi_raid_level_to_string(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
