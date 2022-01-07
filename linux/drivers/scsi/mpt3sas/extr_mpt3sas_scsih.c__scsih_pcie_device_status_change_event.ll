; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_pcie_device_status_change_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_pcie_device_status_change_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32, i32 }
%struct.fw_event_work = type { i64 }
%struct.MPT3SAS_TARGET = type { i32 }
%struct._pcie_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.MPT3SAS_TARGET* }
%struct.TYPE_5__ = type { i64, i32 }

@MPT_DEBUG_EVENT_WORK_TASK = common dso_local global i32 0, align 4
@MPI26_EVENT_PCIDEV_STAT_RC_INTERNAL_DEVICE_RESET = common dso_local global i64 0, align 8
@MPI26_EVENT_PCIDEV_STAT_RC_CMP_INTERNAL_DEV_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*, %struct.fw_event_work*)* @_scsih_pcie_device_status_change_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_pcie_device_status_change_event(%struct.MPT3SAS_ADAPTER* %0, %struct.fw_event_work* %1) #0 {
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca %struct.fw_event_work*, align 8
  %5 = alloca %struct.MPT3SAS_TARGET*, align 8
  %6 = alloca %struct._pcie_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %3, align 8
  store %struct.fw_event_work* %1, %struct.fw_event_work** %4, align 8
  %10 = load %struct.fw_event_work*, %struct.fw_event_work** %4, align 8
  %11 = getelementptr inbounds %struct.fw_event_work, %struct.fw_event_work* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %9, align 8
  %14 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %15 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MPT_DEBUG_EVENT_WORK_TASK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %23 = call i32 @_scsih_pcie_device_status_change_event_debug(%struct.MPT3SAS_ADAPTER* %21, %struct.TYPE_5__* %22)
  br label %24

24:                                               ; preds = %20, %2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MPI26_EVENT_PCIDEV_STAT_RC_INTERNAL_DEVICE_RESET, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MPI26_EVENT_PCIDEV_STAT_RC_CMP_INTERNAL_DEV_RESET, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %90

37:                                               ; preds = %30, %24
  %38 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %39 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %38, i32 0, i32 1
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @le64_to_cpu(i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call %struct._pcie_device* @__mpt3sas_get_pdev_by_wwid(%struct.MPT3SAS_ADAPTER* %46, i32 %47)
  store %struct._pcie_device* %48, %struct._pcie_device** %6, align 8
  %49 = load %struct._pcie_device*, %struct._pcie_device** %6, align 8
  %50 = icmp ne %struct._pcie_device* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %37
  %52 = load %struct._pcie_device*, %struct._pcie_device** %6, align 8
  %53 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = icmp ne %struct.TYPE_4__* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %51, %37
  br label %79

57:                                               ; preds = %51
  %58 = load %struct._pcie_device*, %struct._pcie_device** %6, align 8
  %59 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %61, align 8
  store %struct.MPT3SAS_TARGET* %62, %struct.MPT3SAS_TARGET** %5, align 8
  %63 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %5, align 8
  %64 = icmp ne %struct.MPT3SAS_TARGET* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %57
  br label %79

66:                                               ; preds = %57
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @MPI26_EVENT_PCIDEV_STAT_RC_INTERNAL_DEVICE_RESET, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %5, align 8
  %74 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  br label %78

75:                                               ; preds = %66
  %76 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %5, align 8
  %77 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %76, i32 0, i32 0
  store i32 0, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %72
  br label %79

79:                                               ; preds = %78, %65, %56
  %80 = load %struct._pcie_device*, %struct._pcie_device** %6, align 8
  %81 = icmp ne %struct._pcie_device* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load %struct._pcie_device*, %struct._pcie_device** %6, align 8
  %84 = call i32 @pcie_device_put(%struct._pcie_device* %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %87 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %86, i32 0, i32 1
  %88 = load i64, i64* %8, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  br label %90

90:                                               ; preds = %85, %36
  ret void
}

declare dso_local i32 @_scsih_pcie_device_status_change_event_debug(%struct.MPT3SAS_ADAPTER*, %struct.TYPE_5__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local %struct._pcie_device* @__mpt3sas_get_pdev_by_wwid(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @pcie_device_put(%struct._pcie_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
