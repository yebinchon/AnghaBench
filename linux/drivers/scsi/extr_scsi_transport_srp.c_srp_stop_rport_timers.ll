; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_srp.c_srp_stop_rport_timers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_srp.c_srp_stop_rport_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_rport = type { i64, i32, i32, i32, i32 }

@SRP_RPORT_BLOCKED = common dso_local global i64 0, align 8
@SRP_RPORT_LOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @srp_stop_rport_timers(%struct.srp_rport* %0) #0 {
  %2 = alloca %struct.srp_rport*, align 8
  store %struct.srp_rport* %0, %struct.srp_rport** %2, align 8
  %3 = load %struct.srp_rport*, %struct.srp_rport** %2, align 8
  %4 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %3, i32 0, i32 4
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.srp_rport*, %struct.srp_rport** %2, align 8
  %7 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SRP_RPORT_BLOCKED, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.srp_rport*, %struct.srp_rport** %2, align 8
  %13 = call i32 @__rport_fail_io_fast(%struct.srp_rport* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.srp_rport*, %struct.srp_rport** %2, align 8
  %16 = load i32, i32* @SRP_RPORT_LOST, align 4
  %17 = call i32 @srp_rport_set_state(%struct.srp_rport* %15, i32 %16)
  %18 = load %struct.srp_rport*, %struct.srp_rport** %2, align 8
  %19 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %18, i32 0, i32 4
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = load %struct.srp_rport*, %struct.srp_rport** %2, align 8
  %22 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %21, i32 0, i32 3
  %23 = call i32 @cancel_delayed_work_sync(i32* %22)
  %24 = load %struct.srp_rport*, %struct.srp_rport** %2, align 8
  %25 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %24, i32 0, i32 2
  %26 = call i32 @cancel_delayed_work_sync(i32* %25)
  %27 = load %struct.srp_rport*, %struct.srp_rport** %2, align 8
  %28 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %27, i32 0, i32 1
  %29 = call i32 @cancel_delayed_work_sync(i32* %28)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__rport_fail_io_fast(%struct.srp_rport*) #1

declare dso_local i32 @srp_rport_set_state(%struct.srp_rport*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
