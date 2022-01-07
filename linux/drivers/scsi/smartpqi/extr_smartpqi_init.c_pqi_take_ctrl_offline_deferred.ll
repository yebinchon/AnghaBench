; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_take_ctrl_offline_deferred.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_take_ctrl_offline_deferred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_ctrl_info*)* @pqi_take_ctrl_offline_deferred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_take_ctrl_offline_deferred(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca %struct.pqi_ctrl_info*, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %2, align 8
  %3 = call i32 (...) @pqi_perform_lockup_action()
  %4 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %5 = call i32 @pqi_stop_heartbeat_timer(%struct.pqi_ctrl_info* %4)
  %6 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %7 = call i32 @pqi_free_interrupts(%struct.pqi_ctrl_info* %6)
  %8 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %9 = call i32 @pqi_cancel_rescan_worker(%struct.pqi_ctrl_info* %8)
  %10 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %11 = call i32 @pqi_cancel_update_time_worker(%struct.pqi_ctrl_info* %10)
  %12 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %13 = call i32 @pqi_ctrl_wait_until_quiesced(%struct.pqi_ctrl_info* %12)
  %14 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %15 = call i32 @pqi_fail_all_outstanding_requests(%struct.pqi_ctrl_info* %14)
  %16 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %17 = call i32 @pqi_clear_all_queued_raid_bypass_retries(%struct.pqi_ctrl_info* %16)
  %18 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %19 = call i32 @pqi_ctrl_unblock_requests(%struct.pqi_ctrl_info* %18)
  ret void
}

declare dso_local i32 @pqi_perform_lockup_action(...) #1

declare dso_local i32 @pqi_stop_heartbeat_timer(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_free_interrupts(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_cancel_rescan_worker(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_cancel_update_time_worker(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_ctrl_wait_until_quiesced(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_fail_all_outstanding_requests(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_clear_all_queued_raid_bypass_retries(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_ctrl_unblock_requests(%struct.pqi_ctrl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
