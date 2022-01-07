; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_ofa_ctrl_unquiesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_ofa_ctrl_unquiesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32, i32 }

@PQI_MODE = common dso_local global i32 0, align 4
@PQI_SOFT_RESET_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_ctrl_info*)* @pqi_ofa_ctrl_unquiesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_ofa_ctrl_unquiesce(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca %struct.pqi_ctrl_info*, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %2, align 8
  %3 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %4 = call i32 @pqi_ofa_free_host_buffer(%struct.pqi_ctrl_info* %3)
  %5 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %6 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %5, i32 0, i32 0
  store i32 1, i32* %6, align 4
  %7 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %8 = load i32, i32* @PQI_MODE, align 4
  %9 = call i32 @pqi_save_ctrl_mode(%struct.pqi_ctrl_info* %7, i32 %8)
  %10 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %11 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %10, i32 0, i32 1
  store i32 1, i32* %11, align 4
  %12 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %13 = call i32 @pqi_ctrl_unblock_requests(%struct.pqi_ctrl_info* %12)
  %14 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %15 = call i32 @pqi_start_heartbeat_timer(%struct.pqi_ctrl_info* %14)
  %16 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %17 = call i32 @pqi_schedule_update_time_worker(%struct.pqi_ctrl_info* %16)
  %18 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %19 = load i32, i32* @PQI_SOFT_RESET_ABORT, align 4
  %20 = call i32 @pqi_clear_soft_reset_status(%struct.pqi_ctrl_info* %18, i32 %19)
  %21 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %22 = call i32 @pqi_scan_scsi_devices(%struct.pqi_ctrl_info* %21)
  ret void
}

declare dso_local i32 @pqi_ofa_free_host_buffer(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_save_ctrl_mode(%struct.pqi_ctrl_info*, i32) #1

declare dso_local i32 @pqi_ctrl_unblock_requests(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_start_heartbeat_timer(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_schedule_update_time_worker(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_clear_soft_reset_status(%struct.pqi_ctrl_info*, i32) #1

declare dso_local i32 @pqi_scan_scsi_devices(%struct.pqi_ctrl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
