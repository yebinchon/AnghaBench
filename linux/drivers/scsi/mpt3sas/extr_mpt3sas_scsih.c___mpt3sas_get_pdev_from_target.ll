; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c___mpt3sas_get_pdev_from_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c___mpt3sas_get_pdev_from_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._pcie_device = type { i32 }
%struct.MPT3SAS_ADAPTER = type { i32 }
%struct.MPT3SAS_TARGET = type { %struct._pcie_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct._pcie_device* (%struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_TARGET*)* @__mpt3sas_get_pdev_from_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._pcie_device* @__mpt3sas_get_pdev_from_target(%struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_TARGET* %1) #0 {
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca %struct.MPT3SAS_TARGET*, align 8
  %5 = alloca %struct._pcie_device*, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %3, align 8
  store %struct.MPT3SAS_TARGET* %1, %struct.MPT3SAS_TARGET** %4, align 8
  %6 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %7 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %6, i32 0, i32 0
  %8 = call i32 @assert_spin_locked(i32* %7)
  %9 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %4, align 8
  %10 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %9, i32 0, i32 0
  %11 = load %struct._pcie_device*, %struct._pcie_device** %10, align 8
  store %struct._pcie_device* %11, %struct._pcie_device** %5, align 8
  %12 = load %struct._pcie_device*, %struct._pcie_device** %5, align 8
  %13 = icmp ne %struct._pcie_device* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct._pcie_device*, %struct._pcie_device** %5, align 8
  %16 = call i32 @pcie_device_get(%struct._pcie_device* %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load %struct._pcie_device*, %struct._pcie_device** %5, align 8
  ret %struct._pcie_device* %18
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @pcie_device_get(%struct._pcie_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
