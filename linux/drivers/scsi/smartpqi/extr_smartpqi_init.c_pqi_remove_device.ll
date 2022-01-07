; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_remove_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pqi_scsi_dev = type { i32, i32, i32, i32, i32 }

@PQI_PENDING_IO_TIMEOUT_SECS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"scsi %d:%d:%d:%d removing device with %d outstanding commands\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*)* @pqi_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_remove_device(%struct.pqi_ctrl_info* %0, %struct.pqi_scsi_dev* %1) #0 {
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca %struct.pqi_scsi_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  store %struct.pqi_scsi_dev* %1, %struct.pqi_scsi_dev** %4, align 8
  %6 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %7 = call i32 @pqi_device_remove_start(%struct.pqi_scsi_dev* %6)
  %8 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %9 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %10 = load i32, i32* @PQI_PENDING_IO_TIMEOUT_SECS, align 4
  %11 = call i32 @pqi_device_wait_for_pending_io(%struct.pqi_ctrl_info* %8, %struct.pqi_scsi_dev* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %2
  %15 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %16 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %20 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %28 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %34 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %33, i32 0, i32 1
  %35 = call i32 @atomic_read(i32* %34)
  %36 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i32 %29, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %14, %2
  %38 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %39 = call i64 @pqi_is_logical_device(%struct.pqi_scsi_dev* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %43 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @scsi_remove_device(i32 %44)
  br label %49

46:                                               ; preds = %37
  %47 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %48 = call i32 @pqi_remove_sas_device(%struct.pqi_scsi_dev* %47)
  br label %49

49:                                               ; preds = %46, %41
  ret void
}

declare dso_local i32 @pqi_device_remove_start(%struct.pqi_scsi_dev*) #1

declare dso_local i32 @pqi_device_wait_for_pending_io(%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @pqi_is_logical_device(%struct.pqi_scsi_dev*) #1

declare dso_local i32 @scsi_remove_device(i32) #1

declare dso_local i32 @pqi_remove_sas_device(%struct.pqi_scsi_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
