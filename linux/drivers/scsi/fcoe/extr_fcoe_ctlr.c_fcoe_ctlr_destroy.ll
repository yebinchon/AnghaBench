; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr = type { i32, i32, i32, i32, i32 }

@FIP_ST_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fcoe_ctlr_destroy(%struct.fcoe_ctlr* %0) #0 {
  %2 = alloca %struct.fcoe_ctlr*, align 8
  store %struct.fcoe_ctlr* %0, %struct.fcoe_ctlr** %2, align 8
  %3 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %2, align 8
  %4 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %3, i32 0, i32 4
  %5 = call i32 @cancel_work_sync(i32* %4)
  %6 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %2, align 8
  %7 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %6, i32 0, i32 3
  %8 = call i32 @skb_queue_purge(i32* %7)
  %9 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %2, align 8
  %10 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %9, i32 0, i32 2
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %2, align 8
  %13 = load i32, i32* @FIP_ST_DISABLED, align 4
  %14 = call i32 @fcoe_ctlr_set_state(%struct.fcoe_ctlr* %12, i32 %13)
  %15 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %2, align 8
  %16 = call i32 @fcoe_ctlr_reset_fcfs(%struct.fcoe_ctlr* %15)
  %17 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %2, align 8
  %18 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %17, i32 0, i32 2
  %19 = call i32 @mutex_unlock(i32* %18)
  %20 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %2, align 8
  %21 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %20, i32 0, i32 1
  %22 = call i32 @del_timer_sync(i32* %21)
  %23 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %2, align 8
  %24 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %23, i32 0, i32 0
  %25 = call i32 @cancel_work_sync(i32* %24)
  ret void
}

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fcoe_ctlr_set_state(%struct.fcoe_ctlr*, i32) #1

declare dso_local i32 @fcoe_ctlr_reset_fcfs(%struct.fcoe_ctlr*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
