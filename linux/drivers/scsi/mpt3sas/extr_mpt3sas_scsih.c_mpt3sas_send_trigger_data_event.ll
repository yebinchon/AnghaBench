; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_mpt3sas_send_trigger_data_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_mpt3sas_send_trigger_data_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i64 }
%struct.SL_WH_TRIGGERS_EVENT_DATA_T = type { i32 }
%struct.fw_event_work = type { i32, %struct.MPT3SAS_ADAPTER*, i32 }

@MPT3SAS_PROCESS_TRIGGER_DIAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpt3sas_send_trigger_data_event(%struct.MPT3SAS_ADAPTER* %0, %struct.SL_WH_TRIGGERS_EVENT_DATA_T* %1) #0 {
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca %struct.SL_WH_TRIGGERS_EVENT_DATA_T*, align 8
  %5 = alloca %struct.fw_event_work*, align 8
  %6 = alloca i32, align 4
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %3, align 8
  store %struct.SL_WH_TRIGGERS_EVENT_DATA_T* %1, %struct.SL_WH_TRIGGERS_EVENT_DATA_T** %4, align 8
  %7 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %8 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %35

12:                                               ; preds = %2
  store i32 4, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.fw_event_work* @alloc_fw_event_work(i32 %13)
  store %struct.fw_event_work* %14, %struct.fw_event_work** %5, align 8
  %15 = load %struct.fw_event_work*, %struct.fw_event_work** %5, align 8
  %16 = icmp ne %struct.fw_event_work* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %35

18:                                               ; preds = %12
  %19 = load i32, i32* @MPT3SAS_PROCESS_TRIGGER_DIAG, align 4
  %20 = load %struct.fw_event_work*, %struct.fw_event_work** %5, align 8
  %21 = getelementptr inbounds %struct.fw_event_work, %struct.fw_event_work* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %23 = load %struct.fw_event_work*, %struct.fw_event_work** %5, align 8
  %24 = getelementptr inbounds %struct.fw_event_work, %struct.fw_event_work* %23, i32 0, i32 1
  store %struct.MPT3SAS_ADAPTER* %22, %struct.MPT3SAS_ADAPTER** %24, align 8
  %25 = load %struct.fw_event_work*, %struct.fw_event_work** %5, align 8
  %26 = getelementptr inbounds %struct.fw_event_work, %struct.fw_event_work* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.SL_WH_TRIGGERS_EVENT_DATA_T*, %struct.SL_WH_TRIGGERS_EVENT_DATA_T** %4, align 8
  %29 = call i32 @memcpy(i32 %27, %struct.SL_WH_TRIGGERS_EVENT_DATA_T* %28, i32 4)
  %30 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %31 = load %struct.fw_event_work*, %struct.fw_event_work** %5, align 8
  %32 = call i32 @_scsih_fw_event_add(%struct.MPT3SAS_ADAPTER* %30, %struct.fw_event_work* %31)
  %33 = load %struct.fw_event_work*, %struct.fw_event_work** %5, align 8
  %34 = call i32 @fw_event_work_put(%struct.fw_event_work* %33)
  br label %35

35:                                               ; preds = %18, %17, %11
  ret void
}

declare dso_local %struct.fw_event_work* @alloc_fw_event_work(i32) #1

declare dso_local i32 @memcpy(i32, %struct.SL_WH_TRIGGERS_EVENT_DATA_T*, i32) #1

declare dso_local i32 @_scsih_fw_event_add(%struct.MPT3SAS_ADAPTER*, %struct.fw_event_work*) #1

declare dso_local i32 @fw_event_work_put(%struct.fw_event_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
