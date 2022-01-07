; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_retry_raid_bypass.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_retry_raid_bypass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_io_request = type { %struct.pqi_queue_group*, %struct.scsi_cmnd* }
%struct.pqi_queue_group = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.pqi_scsi_dev* }
%struct.pqi_scsi_dev = type { i32 }
%struct.pqi_ctrl_info = type { i32 }

@DID_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_io_request*)* @pqi_retry_raid_bypass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_retry_raid_bypass(%struct.pqi_io_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pqi_io_request*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.pqi_scsi_dev*, align 8
  %6 = alloca %struct.pqi_ctrl_info*, align 8
  %7 = alloca %struct.pqi_queue_group*, align 8
  store %struct.pqi_io_request* %0, %struct.pqi_io_request** %3, align 8
  %8 = load %struct.pqi_io_request*, %struct.pqi_io_request** %3, align 8
  %9 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %8, i32 0, i32 1
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  store %struct.scsi_cmnd* %10, %struct.scsi_cmnd** %4, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %14, align 8
  store %struct.pqi_scsi_dev* %15, %struct.pqi_scsi_dev** %5, align 8
  %16 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %17 = call i64 @pqi_device_in_reset(%struct.pqi_scsi_dev* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.pqi_io_request*, %struct.pqi_io_request** %3, align 8
  %21 = call i32 @pqi_free_io_request(%struct.pqi_io_request* %20)
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %23 = load i32, i32* @DID_RESET, align 4
  %24 = call i32 @set_host_byte(%struct.scsi_cmnd* %22, i32 %23)
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %26 = call i32 @pqi_scsi_done(%struct.scsi_cmnd* %25)
  store i32 0, i32* %2, align 4
  br label %45

27:                                               ; preds = %1
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.pqi_ctrl_info* @shost_to_hba(i32 %32)
  store %struct.pqi_ctrl_info* %33, %struct.pqi_ctrl_info** %6, align 8
  %34 = load %struct.pqi_io_request*, %struct.pqi_io_request** %3, align 8
  %35 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %34, i32 0, i32 0
  %36 = load %struct.pqi_queue_group*, %struct.pqi_queue_group** %35, align 8
  store %struct.pqi_queue_group* %36, %struct.pqi_queue_group** %7, align 8
  %37 = load %struct.pqi_io_request*, %struct.pqi_io_request** %3, align 8
  %38 = call i32 @pqi_reinit_io_request(%struct.pqi_io_request* %37)
  %39 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %6, align 8
  %40 = load %struct.pqi_io_request*, %struct.pqi_io_request** %3, align 8
  %41 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %5, align 8
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %43 = load %struct.pqi_queue_group*, %struct.pqi_queue_group** %7, align 8
  %44 = call i32 @pqi_raid_submit_scsi_cmd_with_io_request(%struct.pqi_ctrl_info* %39, %struct.pqi_io_request* %40, %struct.pqi_scsi_dev* %41, %struct.scsi_cmnd* %42, %struct.pqi_queue_group* %43)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %27, %19
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @pqi_device_in_reset(%struct.pqi_scsi_dev*) #1

declare dso_local i32 @pqi_free_io_request(%struct.pqi_io_request*) #1

declare dso_local i32 @set_host_byte(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @pqi_scsi_done(%struct.scsi_cmnd*) #1

declare dso_local %struct.pqi_ctrl_info* @shost_to_hba(i32) #1

declare dso_local i32 @pqi_reinit_io_request(%struct.pqi_io_request*) #1

declare dso_local i32 @pqi_raid_submit_scsi_cmd_with_io_request(%struct.pqi_ctrl_info*, %struct.pqi_io_request*, %struct.pqi_scsi_dev*, %struct.scsi_cmnd*, %struct.pqi_queue_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
