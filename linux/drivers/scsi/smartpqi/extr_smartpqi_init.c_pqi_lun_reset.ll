; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_lun_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_lun_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32* }
%struct.pqi_scsi_dev = type { i32 }
%struct.pqi_io_request = type { i32, i64, %struct.pqi_task_management_request*, i32*, i32 }
%struct.pqi_task_management_request = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@wait = common dso_local global i32 0, align 4
@pqi_lun_reset_complete = common dso_local global i32 0, align 4
@PQI_REQUEST_IU_TASK_MANAGEMENT = common dso_local global i32 0, align 4
@PQI_REQUEST_HEADER_LENGTH = common dso_local global i64 0, align 8
@SOP_TASK_MANAGEMENT_LUN_RESET = common dso_local global i32 0, align 4
@PQI_DEFAULT_QUEUE_GROUP = common dso_local global i64 0, align 8
@RAID_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*)* @pqi_lun_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_lun_reset(%struct.pqi_ctrl_info* %0, %struct.pqi_scsi_dev* %1) #0 {
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca %struct.pqi_scsi_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pqi_io_request*, align 8
  %7 = alloca %struct.pqi_task_management_request*, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  store %struct.pqi_scsi_dev* %1, %struct.pqi_scsi_dev** %4, align 8
  %8 = load i32, i32* @wait, align 4
  %9 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %8)
  %10 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %11 = call %struct.pqi_io_request* @pqi_alloc_io_request(%struct.pqi_ctrl_info* %10)
  store %struct.pqi_io_request* %11, %struct.pqi_io_request** %6, align 8
  %12 = load i32, i32* @pqi_lun_reset_complete, align 4
  %13 = load %struct.pqi_io_request*, %struct.pqi_io_request** %6, align 8
  %14 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 8
  %15 = load %struct.pqi_io_request*, %struct.pqi_io_request** %6, align 8
  %16 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %15, i32 0, i32 3
  store i32* @wait, i32** %16, align 8
  %17 = load %struct.pqi_io_request*, %struct.pqi_io_request** %6, align 8
  %18 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %17, i32 0, i32 2
  %19 = load %struct.pqi_task_management_request*, %struct.pqi_task_management_request** %18, align 8
  store %struct.pqi_task_management_request* %19, %struct.pqi_task_management_request** %7, align 8
  %20 = load %struct.pqi_task_management_request*, %struct.pqi_task_management_request** %7, align 8
  %21 = call i32 @memset(%struct.pqi_task_management_request* %20, i32 0, i32 20)
  %22 = load i32, i32* @PQI_REQUEST_IU_TASK_MANAGEMENT, align 4
  %23 = load %struct.pqi_task_management_request*, %struct.pqi_task_management_request** %7, align 8
  %24 = getelementptr inbounds %struct.pqi_task_management_request, %struct.pqi_task_management_request* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load i64, i64* @PQI_REQUEST_HEADER_LENGTH, align 8
  %27 = sub i64 20, %26
  %28 = load %struct.pqi_task_management_request*, %struct.pqi_task_management_request** %7, align 8
  %29 = getelementptr inbounds %struct.pqi_task_management_request, %struct.pqi_task_management_request* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @put_unaligned_le16(i64 %27, i32* %30)
  %32 = load %struct.pqi_io_request*, %struct.pqi_io_request** %6, align 8
  %33 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.pqi_task_management_request*, %struct.pqi_task_management_request** %7, align 8
  %36 = getelementptr inbounds %struct.pqi_task_management_request, %struct.pqi_task_management_request* %35, i32 0, i32 2
  %37 = call i32 @put_unaligned_le16(i64 %34, i32* %36)
  %38 = load %struct.pqi_task_management_request*, %struct.pqi_task_management_request** %7, align 8
  %39 = getelementptr inbounds %struct.pqi_task_management_request, %struct.pqi_task_management_request* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %42 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memcpy(i32 %40, i32 %43, i32 4)
  %45 = load i32, i32* @SOP_TASK_MANAGEMENT_LUN_RESET, align 4
  %46 = load %struct.pqi_task_management_request*, %struct.pqi_task_management_request** %7, align 8
  %47 = getelementptr inbounds %struct.pqi_task_management_request, %struct.pqi_task_management_request* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %49 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %50 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @PQI_DEFAULT_QUEUE_GROUP, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* @RAID_PATH, align 4
  %55 = load %struct.pqi_io_request*, %struct.pqi_io_request** %6, align 8
  %56 = call i32 @pqi_start_io(%struct.pqi_ctrl_info* %48, i32* %53, i32 %54, %struct.pqi_io_request* %55)
  %57 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %58 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %4, align 8
  %59 = call i32 @pqi_wait_for_lun_reset_completion(%struct.pqi_ctrl_info* %57, %struct.pqi_scsi_dev* %58, i32* @wait)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %2
  %63 = load %struct.pqi_io_request*, %struct.pqi_io_request** %6, align 8
  %64 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %62, %2
  %67 = load %struct.pqi_io_request*, %struct.pqi_io_request** %6, align 8
  %68 = call i32 @pqi_free_io_request(%struct.pqi_io_request* %67)
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local %struct.pqi_io_request* @pqi_alloc_io_request(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @memset(%struct.pqi_task_management_request*, i32, i32) #1

declare dso_local i32 @put_unaligned_le16(i64, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @pqi_start_io(%struct.pqi_ctrl_info*, i32*, i32, %struct.pqi_io_request*) #1

declare dso_local i32 @pqi_wait_for_lun_reset_completion(%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*, i32*) #1

declare dso_local i32 @pqi_free_io_request(%struct.pqi_io_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
