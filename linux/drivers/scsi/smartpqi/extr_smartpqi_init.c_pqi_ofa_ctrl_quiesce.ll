; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_ofa_ctrl_quiesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_ofa_ctrl_quiesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32 }

@PQI_PENDING_IO_TIMEOUT_SECS = common dso_local global i32 0, align 4
@SIS_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_ctrl_info*)* @pqi_ofa_ctrl_quiesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_ofa_ctrl_quiesce(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca %struct.pqi_ctrl_info*, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %2, align 8
  %3 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %4 = call i32 @pqi_cancel_update_time_worker(%struct.pqi_ctrl_info* %3)
  %5 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %6 = call i32 @pqi_cancel_rescan_worker(%struct.pqi_ctrl_info* %5)
  %7 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %8 = call i32 @pqi_wait_until_lun_reset_finished(%struct.pqi_ctrl_info* %7)
  %9 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %10 = call i32 @pqi_wait_until_scan_finished(%struct.pqi_ctrl_info* %9)
  %11 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %12 = call i32 @pqi_ctrl_ofa_start(%struct.pqi_ctrl_info* %11)
  %13 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %14 = call i32 @pqi_ctrl_block_requests(%struct.pqi_ctrl_info* %13)
  %15 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %16 = call i32 @pqi_ctrl_wait_until_quiesced(%struct.pqi_ctrl_info* %15)
  %17 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %18 = load i32, i32* @PQI_PENDING_IO_TIMEOUT_SECS, align 4
  %19 = call i32 @pqi_ctrl_wait_for_pending_io(%struct.pqi_ctrl_info* %17, i32 %18)
  %20 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %21 = call i32 @pqi_fail_io_queued_for_all_devices(%struct.pqi_ctrl_info* %20)
  %22 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %23 = call i32 @pqi_wait_until_inbound_queues_empty(%struct.pqi_ctrl_info* %22)
  %24 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %25 = call i32 @pqi_stop_heartbeat_timer(%struct.pqi_ctrl_info* %24)
  %26 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %27 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %29 = load i32, i32* @SIS_MODE, align 4
  %30 = call i32 @pqi_save_ctrl_mode(%struct.pqi_ctrl_info* %28, i32 %29)
  ret void
}

declare dso_local i32 @pqi_cancel_update_time_worker(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_cancel_rescan_worker(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_wait_until_lun_reset_finished(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_wait_until_scan_finished(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_ctrl_ofa_start(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_ctrl_block_requests(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_ctrl_wait_until_quiesced(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_ctrl_wait_for_pending_io(%struct.pqi_ctrl_info*, i32) #1

declare dso_local i32 @pqi_fail_io_queued_for_all_devices(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_wait_until_inbound_queues_empty(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_stop_heartbeat_timer(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_save_ctrl_mode(%struct.pqi_ctrl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
