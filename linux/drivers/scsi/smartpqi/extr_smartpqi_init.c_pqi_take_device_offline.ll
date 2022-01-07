; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_take_device_offline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_take_device_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, %struct.pqi_scsi_dev* }
%struct.pqi_scsi_dev = type { i32, i32, i32, i32 }
%struct.pqi_ctrl_info = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"re-scanning %s scsi %d:%d:%d:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*, i8*)* @pqi_take_device_offline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_take_device_offline(%struct.scsi_device* %0, i8* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pqi_ctrl_info*, align 8
  %6 = alloca %struct.pqi_scsi_dev*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %7, i32 0, i32 1
  %9 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %8, align 8
  store %struct.pqi_scsi_dev* %9, %struct.pqi_scsi_dev** %6, align 8
  %10 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %6, align 8
  %11 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %44

15:                                               ; preds = %2
  %16 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %6, align 8
  %17 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %19 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.pqi_ctrl_info* @shost_to_hba(i32 %20)
  store %struct.pqi_ctrl_info* %21, %struct.pqi_ctrl_info** %5, align 8
  %22 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %23 = call i32 @pqi_schedule_rescan_worker(%struct.pqi_ctrl_info* %22)
  %24 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %25 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i8*, i8** %4, align 8
  %29 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %30 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %6, align 8
  %35 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %6, align 8
  %38 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %6, align 8
  %41 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %33, i32 %36, i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.pqi_ctrl_info* @shost_to_hba(i32) #1

declare dso_local i32 @pqi_schedule_rescan_worker(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
