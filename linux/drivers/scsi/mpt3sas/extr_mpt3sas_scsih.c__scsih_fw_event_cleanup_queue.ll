; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_fw_event_cleanup_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_fw_event_cleanup_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32, i32 }
%struct.fw_event_work = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*)* @_scsih_fw_event_cleanup_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_fw_event_cleanup_queue(%struct.MPT3SAS_ADAPTER* %0) #0 {
  %2 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %3 = alloca %struct.fw_event_work*, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %2, align 8
  %4 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %5 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %4, i32 0, i32 1
  %6 = call i64 @list_empty(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %10 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = call i64 (...) @in_interrupt()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %8, %1
  br label %33

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %30, %17
  %19 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %20 = call %struct.fw_event_work* @dequeue_next_fw_event(%struct.MPT3SAS_ADAPTER* %19)
  store %struct.fw_event_work* %20, %struct.fw_event_work** %3, align 8
  %21 = icmp ne %struct.fw_event_work* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load %struct.fw_event_work*, %struct.fw_event_work** %3, align 8
  %24 = getelementptr inbounds %struct.fw_event_work, %struct.fw_event_work* %23, i32 0, i32 0
  %25 = call i64 @cancel_work_sync(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.fw_event_work*, %struct.fw_event_work** %3, align 8
  %29 = call i32 @fw_event_work_put(%struct.fw_event_work* %28)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load %struct.fw_event_work*, %struct.fw_event_work** %3, align 8
  %32 = call i32 @fw_event_work_put(%struct.fw_event_work* %31)
  br label %18

33:                                               ; preds = %16, %18
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local %struct.fw_event_work* @dequeue_next_fw_event(%struct.MPT3SAS_ADAPTER*) #1

declare dso_local i64 @cancel_work_sync(i32*) #1

declare dso_local i32 @fw_event_work_put(%struct.fw_event_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
