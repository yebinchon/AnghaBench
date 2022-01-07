; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_sas_address_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_sas_address_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pqi_ctrl_info = type { i32 }
%struct.scsi_device = type { %struct.pqi_scsi_dev*, i32 }
%struct.pqi_scsi_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"0x%016llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @pqi_sas_address_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_sas_address_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pqi_ctrl_info*, align 8
  %9 = alloca %struct.scsi_device*, align 8
  %10 = alloca %struct.pqi_scsi_dev*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.scsi_device* @to_scsi_device(%struct.device* %13)
  store %struct.scsi_device* %14, %struct.scsi_device** %9, align 8
  %15 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %16 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.pqi_ctrl_info* @shost_to_hba(i32 %17)
  store %struct.pqi_ctrl_info* %18, %struct.pqi_ctrl_info** %8, align 8
  %19 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %8, align 8
  %20 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %19, i32 0, i32 0
  %21 = load i64, i64* %11, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %24 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %23, i32 0, i32 0
  %25 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %24, align 8
  store %struct.pqi_scsi_dev* %25, %struct.pqi_scsi_dev** %10, align 8
  %26 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %10, align 8
  %27 = call i64 @pqi_is_logical_device(%struct.pqi_scsi_dev* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %3
  %30 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %8, align 8
  %31 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %30, i32 0, i32 0
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %48

36:                                               ; preds = %3
  %37 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %10, align 8
  %38 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  %40 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %8, align 8
  %41 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %40, i32 0, i32 0
  %42 = load i64, i64* %11, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @snprintf(i8* %44, i32 %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %36, %29
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local %struct.pqi_ctrl_info* @shost_to_hba(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @pqi_is_logical_device(%struct.pqi_scsi_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
