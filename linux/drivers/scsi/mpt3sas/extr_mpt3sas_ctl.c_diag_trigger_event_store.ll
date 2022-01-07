; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_ctl.c_diag_trigger_event_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_ctl.c_diag_trigger_event_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.MPT3SAS_ADAPTER = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@NUM_VALID_ENTRIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @diag_trigger_event_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diag_trigger_event_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %13)
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %9, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %16 = call %struct.MPT3SAS_ADAPTER* @shost_priv(%struct.Scsi_Host* %15)
  store %struct.MPT3SAS_ADAPTER* %16, %struct.MPT3SAS_ADAPTER** %10, align 8
  %17 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %10, align 8
  %18 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %17, i32 0, i32 0
  %19 = load i64, i64* %11, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @min(i32 4, i64 %21)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %10, align 8
  %24 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %23, i32 0, i32 1
  %25 = call i32 @memset(%struct.TYPE_3__* %24, i32 0, i32 4)
  %26 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %10, align 8
  %27 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %26, i32 0, i32 1
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @memcpy(%struct.TYPE_3__* %27, i8* %28, i32 %29)
  %31 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %10, align 8
  %32 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NUM_VALID_ENTRIES, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %4
  %38 = load i64, i64* @NUM_VALID_ENTRIES, align 8
  %39 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %10, align 8
  %40 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  br label %42

42:                                               ; preds = %37, %4
  %43 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %10, align 8
  %44 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %43, i32 0, i32 0
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load i32, i32* %12, align 4
  ret i32 %47
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local %struct.MPT3SAS_ADAPTER* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
