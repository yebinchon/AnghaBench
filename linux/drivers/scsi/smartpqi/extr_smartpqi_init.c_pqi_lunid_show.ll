; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_lunid_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_lunid_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pqi_ctrl_info = type { i32 }
%struct.scsi_device = type { %struct.pqi_scsi_dev*, i32 }
%struct.pqi_scsi_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"0x%8phN\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @pqi_lunid_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_lunid_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pqi_ctrl_info*, align 8
  %9 = alloca %struct.scsi_device*, align 8
  %10 = alloca %struct.pqi_scsi_dev*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [8 x i32], align 16
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
  %27 = icmp ne %struct.pqi_scsi_dev* %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %3
  %29 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %8, align 8
  %30 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %29, i32 0, i32 0
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %49

35:                                               ; preds = %3
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %37 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %10, align 8
  %38 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @memcpy(i32* %36, i32 %39, i32 32)
  %41 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %8, align 8
  %42 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %41, i32 0, i32 0
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %48 = call i32 @snprintf(i8* %45, i32 %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %35, %28
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local %struct.pqi_ctrl_info* @shost_to_hba(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
