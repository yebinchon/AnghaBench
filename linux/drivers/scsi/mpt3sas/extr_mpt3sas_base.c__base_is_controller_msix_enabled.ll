; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_is_controller_msix_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_is_controller_msix_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MPI2_IOCFACTS_CAPABILITY_MSI_X_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPT3SAS_ADAPTER*)* @_base_is_controller_msix_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_base_is_controller_msix_enabled(%struct.MPT3SAS_ADAPTER* %0) #0 {
  %2 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %2, align 8
  %3 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %4 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @MPI2_IOCFACTS_CAPABILITY_MSI_X_INDEX, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %12 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %10, %1
  %16 = phi i1 [ false, %1 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
