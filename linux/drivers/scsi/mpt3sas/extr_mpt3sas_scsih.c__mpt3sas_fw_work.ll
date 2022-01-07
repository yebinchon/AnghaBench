; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__mpt3sas_fw_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__mpt3sas_fw_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32, i32, i64, i32, i32, i64 }
%struct.fw_event_work = type { i32, i64, i32 }
%struct.SL_WH_TRIGGERS_EVENT_DATA_T = type { i32 }

@missing_delay = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"port enable: complete from worker thread\0A\00", align 1
@MPT_DEBUG_EVENT_WORK_TASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*, %struct.fw_event_work*)* @_mpt3sas_fw_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_mpt3sas_fw_work(%struct.MPT3SAS_ADAPTER* %0, %struct.fw_event_work* %1) #0 {
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca %struct.fw_event_work*, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %3, align 8
  store %struct.fw_event_work* %1, %struct.fw_event_work** %4, align 8
  %5 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %6 = load %struct.fw_event_work*, %struct.fw_event_work** %4, align 8
  %7 = call i32 @_scsih_fw_event_del_from_list(%struct.MPT3SAS_ADAPTER* %5, %struct.fw_event_work* %6)
  %8 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %9 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %14 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12, %2
  %18 = load %struct.fw_event_work*, %struct.fw_event_work** %4, align 8
  %19 = call i32 @fw_event_work_put(%struct.fw_event_work* %18)
  br label %157

20:                                               ; preds = %12
  %21 = load %struct.fw_event_work*, %struct.fw_event_work** %4, align 8
  %22 = getelementptr inbounds %struct.fw_event_work, %struct.fw_event_work* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %153 [
    i32 130, label %24
    i32 129, label %31
    i32 131, label %58
    i32 128, label %84
    i32 132, label %90
    i32 135, label %94
    i32 134, label %109
    i32 136, label %113
    i32 137, label %117
    i32 133, label %121
    i32 144, label %125
    i32 141, label %129
    i32 142, label %133
    i32 143, label %137
    i32 140, label %141
    i32 139, label %145
    i32 138, label %149
  ]

24:                                               ; preds = %20
  %25 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %26 = load %struct.fw_event_work*, %struct.fw_event_work** %4, align 8
  %27 = getelementptr inbounds %struct.fw_event_work, %struct.fw_event_work* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.SL_WH_TRIGGERS_EVENT_DATA_T*
  %30 = call i32 @mpt3sas_process_trigger_data(%struct.MPT3SAS_ADAPTER* %25, %struct.SL_WH_TRIGGERS_EVENT_DATA_T* %29)
  br label %153

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %51, %31
  %33 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %34 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @scsi_host_in_recovery(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %40 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %38, %32
  %44 = phi i1 [ true, %32 ], [ %42, %38 ]
  br i1 %44, label %45, label %53

45:                                               ; preds = %43
  %46 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %47 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %154

51:                                               ; preds = %45
  %52 = call i32 @ssleep(i32 1)
  br label %32

53:                                               ; preds = %43
  %54 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %55 = call i32 @_scsih_remove_unresponding_devices(%struct.MPT3SAS_ADAPTER* %54)
  %56 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %57 = call i32 @_scsih_scan_for_devices_after_reset(%struct.MPT3SAS_ADAPTER* %56)
  br label %153

58:                                               ; preds = %20
  %59 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %60 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  %61 = load i32*, i32** @missing_delay, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, -1
  br i1 %64, label %65, label %79

65:                                               ; preds = %58
  %66 = load i32*, i32** @missing_delay, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, -1
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %72 = load i32*, i32** @missing_delay, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** @missing_delay, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @mpt3sas_base_update_missing_delay(%struct.MPT3SAS_ADAPTER* %71, i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %70, %65, %58
  %80 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %81 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %82 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %81, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %83 = call i32 @dewtprintk(%struct.MPT3SAS_ADAPTER* %80, i32 %82)
  br label %153

84:                                               ; preds = %20
  %85 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %86 = load %struct.fw_event_work*, %struct.fw_event_work** %4, align 8
  %87 = getelementptr inbounds %struct.fw_event_work, %struct.fw_event_work* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @_scsih_turn_on_pfa_led(%struct.MPT3SAS_ADAPTER* %85, i32 %88)
  br label %153

90:                                               ; preds = %20
  %91 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %92 = load %struct.fw_event_work*, %struct.fw_event_work** %4, align 8
  %93 = call i32 @_scsih_sas_topology_change_event(%struct.MPT3SAS_ADAPTER* %91, %struct.fw_event_work* %92)
  br label %153

94:                                               ; preds = %20
  %95 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %96 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @MPT_DEBUG_EVENT_WORK_TASK, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %94
  %102 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %103 = load %struct.fw_event_work*, %struct.fw_event_work** %4, align 8
  %104 = getelementptr inbounds %struct.fw_event_work, %struct.fw_event_work* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i32*
  %107 = call i32 @_scsih_sas_device_status_change_event_debug(%struct.MPT3SAS_ADAPTER* %102, i32* %106)
  br label %108

108:                                              ; preds = %101, %94
  br label %153

109:                                              ; preds = %20
  %110 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %111 = load %struct.fw_event_work*, %struct.fw_event_work** %4, align 8
  %112 = call i32 @_scsih_sas_discovery_event(%struct.MPT3SAS_ADAPTER* %110, %struct.fw_event_work* %111)
  br label %153

113:                                              ; preds = %20
  %114 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %115 = load %struct.fw_event_work*, %struct.fw_event_work** %4, align 8
  %116 = call i32 @_scsih_sas_device_discovery_error_event(%struct.MPT3SAS_ADAPTER* %114, %struct.fw_event_work* %115)
  br label %153

117:                                              ; preds = %20
  %118 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %119 = load %struct.fw_event_work*, %struct.fw_event_work** %4, align 8
  %120 = call i32 @_scsih_sas_broadcast_primitive_event(%struct.MPT3SAS_ADAPTER* %118, %struct.fw_event_work* %119)
  br label %153

121:                                              ; preds = %20
  %122 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %123 = load %struct.fw_event_work*, %struct.fw_event_work** %4, align 8
  %124 = call i32 @_scsih_sas_enclosure_dev_status_change_event(%struct.MPT3SAS_ADAPTER* %122, %struct.fw_event_work* %123)
  br label %153

125:                                              ; preds = %20
  %126 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %127 = load %struct.fw_event_work*, %struct.fw_event_work** %4, align 8
  %128 = call i32 @_scsih_sas_ir_config_change_event(%struct.MPT3SAS_ADAPTER* %126, %struct.fw_event_work* %127)
  br label %153

129:                                              ; preds = %20
  %130 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %131 = load %struct.fw_event_work*, %struct.fw_event_work** %4, align 8
  %132 = call i32 @_scsih_sas_ir_volume_event(%struct.MPT3SAS_ADAPTER* %130, %struct.fw_event_work* %131)
  br label %153

133:                                              ; preds = %20
  %134 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %135 = load %struct.fw_event_work*, %struct.fw_event_work** %4, align 8
  %136 = call i32 @_scsih_sas_ir_physical_disk_event(%struct.MPT3SAS_ADAPTER* %134, %struct.fw_event_work* %135)
  br label %153

137:                                              ; preds = %20
  %138 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %139 = load %struct.fw_event_work*, %struct.fw_event_work** %4, align 8
  %140 = call i32 @_scsih_sas_ir_operation_status_event(%struct.MPT3SAS_ADAPTER* %138, %struct.fw_event_work* %139)
  br label %153

141:                                              ; preds = %20
  %142 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %143 = load %struct.fw_event_work*, %struct.fw_event_work** %4, align 8
  %144 = call i32 @_scsih_pcie_device_status_change_event(%struct.MPT3SAS_ADAPTER* %142, %struct.fw_event_work* %143)
  br label %153

145:                                              ; preds = %20
  %146 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %147 = load %struct.fw_event_work*, %struct.fw_event_work** %4, align 8
  %148 = call i32 @_scsih_pcie_enumeration_event(%struct.MPT3SAS_ADAPTER* %146, %struct.fw_event_work* %147)
  br label %153

149:                                              ; preds = %20
  %150 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %151 = load %struct.fw_event_work*, %struct.fw_event_work** %4, align 8
  %152 = call i32 @_scsih_pcie_topology_change_event(%struct.MPT3SAS_ADAPTER* %150, %struct.fw_event_work* %151)
  br label %157

153:                                              ; preds = %20, %145, %141, %137, %133, %129, %125, %121, %117, %113, %109, %108, %90, %84, %79, %53, %24
  br label %154

154:                                              ; preds = %153, %50
  %155 = load %struct.fw_event_work*, %struct.fw_event_work** %4, align 8
  %156 = call i32 @fw_event_work_put(%struct.fw_event_work* %155)
  br label %157

157:                                              ; preds = %154, %149, %17
  ret void
}

declare dso_local i32 @_scsih_fw_event_del_from_list(%struct.MPT3SAS_ADAPTER*, %struct.fw_event_work*) #1

declare dso_local i32 @fw_event_work_put(%struct.fw_event_work*) #1

declare dso_local i32 @mpt3sas_process_trigger_data(%struct.MPT3SAS_ADAPTER*, %struct.SL_WH_TRIGGERS_EVENT_DATA_T*) #1

declare dso_local i32 @scsi_host_in_recovery(i32) #1

declare dso_local i32 @ssleep(i32) #1

declare dso_local i32 @_scsih_remove_unresponding_devices(%struct.MPT3SAS_ADAPTER*) #1

declare dso_local i32 @_scsih_scan_for_devices_after_reset(%struct.MPT3SAS_ADAPTER*) #1

declare dso_local i32 @mpt3sas_base_update_missing_delay(%struct.MPT3SAS_ADAPTER*, i32, i32) #1

declare dso_local i32 @dewtprintk(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @ioc_info(%struct.MPT3SAS_ADAPTER*, i8*) #1

declare dso_local i32 @_scsih_turn_on_pfa_led(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @_scsih_sas_topology_change_event(%struct.MPT3SAS_ADAPTER*, %struct.fw_event_work*) #1

declare dso_local i32 @_scsih_sas_device_status_change_event_debug(%struct.MPT3SAS_ADAPTER*, i32*) #1

declare dso_local i32 @_scsih_sas_discovery_event(%struct.MPT3SAS_ADAPTER*, %struct.fw_event_work*) #1

declare dso_local i32 @_scsih_sas_device_discovery_error_event(%struct.MPT3SAS_ADAPTER*, %struct.fw_event_work*) #1

declare dso_local i32 @_scsih_sas_broadcast_primitive_event(%struct.MPT3SAS_ADAPTER*, %struct.fw_event_work*) #1

declare dso_local i32 @_scsih_sas_enclosure_dev_status_change_event(%struct.MPT3SAS_ADAPTER*, %struct.fw_event_work*) #1

declare dso_local i32 @_scsih_sas_ir_config_change_event(%struct.MPT3SAS_ADAPTER*, %struct.fw_event_work*) #1

declare dso_local i32 @_scsih_sas_ir_volume_event(%struct.MPT3SAS_ADAPTER*, %struct.fw_event_work*) #1

declare dso_local i32 @_scsih_sas_ir_physical_disk_event(%struct.MPT3SAS_ADAPTER*, %struct.fw_event_work*) #1

declare dso_local i32 @_scsih_sas_ir_operation_status_event(%struct.MPT3SAS_ADAPTER*, %struct.fw_event_work*) #1

declare dso_local i32 @_scsih_pcie_device_status_change_event(%struct.MPT3SAS_ADAPTER*, %struct.fw_event_work*) #1

declare dso_local i32 @_scsih_pcie_enumeration_event(%struct.MPT3SAS_ADAPTER*, %struct.fw_event_work*) #1

declare dso_local i32 @_scsih_pcie_topology_change_event(%struct.MPT3SAS_ADAPTER*, %struct.fw_event_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
