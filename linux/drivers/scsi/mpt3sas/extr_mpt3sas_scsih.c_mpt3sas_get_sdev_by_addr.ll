; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_mpt3sas_get_sdev_by_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_mpt3sas_get_sdev_by_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._sas_device = type { i32 }
%struct.MPT3SAS_ADAPTER = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._sas_device* @mpt3sas_get_sdev_by_addr(%struct.MPT3SAS_ADAPTER* %0, i32 %1) #0 {
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._sas_device*, align 8
  %6 = alloca i64, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %8 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct._sas_device* @__mpt3sas_get_sdev_by_addr(%struct.MPT3SAS_ADAPTER* %11, i32 %12)
  store %struct._sas_device* %13, %struct._sas_device** %5, align 8
  %14 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %15 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %14, i32 0, i32 0
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* %15, i64 %16)
  %18 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  ret %struct._sas_device* %18
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct._sas_device* @__mpt3sas_get_sdev_by_addr(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
