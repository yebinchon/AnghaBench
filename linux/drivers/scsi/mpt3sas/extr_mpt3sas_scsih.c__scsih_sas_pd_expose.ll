; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_sas_pd_expose.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_sas_pd_expose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct._sas_device = type { %struct.scsi_target*, i64, i64 }
%struct.scsi_target = type { %struct.MPT3SAS_TARGET* }
%struct.MPT3SAS_TARGET = type { i32 }

@MPT_TARGET_FLAGS_RAID_COMPONENT = common dso_local global i32 0, align 4
@_scsih_reprobe_lun = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*, %struct.TYPE_3__*)* @_scsih_sas_pd_expose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_sas_pd_expose(%struct.MPT3SAS_ADAPTER* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct._sas_device*, align 8
  %6 = alloca %struct.scsi_target*, align 8
  %7 = alloca %struct.MPT3SAS_TARGET*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store %struct.scsi_target* null, %struct.scsi_target** %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le16_to_cpu(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %15 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %14, i32 0, i32 0
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call %struct._sas_device* @__mpt3sas_get_sdev_by_handle(%struct.MPT3SAS_ADAPTER* %18, i32 %19)
  store %struct._sas_device* %20, %struct._sas_device** %5, align 8
  %21 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %22 = icmp ne %struct._sas_device* %21, null
  br i1 %22, label %23, label %58

23:                                               ; preds = %2
  %24 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %25 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %27 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %30 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @clear_bit(i32 %28, i32 %31)
  %33 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %34 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %33, i32 0, i32 0
  %35 = load %struct.scsi_target*, %struct.scsi_target** %34, align 8
  %36 = icmp ne %struct.scsi_target* %35, null
  br i1 %36, label %37, label %57

37:                                               ; preds = %23
  %38 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %39 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %38, i32 0, i32 0
  %40 = load %struct.scsi_target*, %struct.scsi_target** %39, align 8
  %41 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %40, i32 0, i32 0
  %42 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %41, align 8
  %43 = icmp ne %struct.MPT3SAS_TARGET* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %37
  %45 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %46 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %45, i32 0, i32 0
  %47 = load %struct.scsi_target*, %struct.scsi_target** %46, align 8
  store %struct.scsi_target* %47, %struct.scsi_target** %6, align 8
  %48 = load %struct.scsi_target*, %struct.scsi_target** %6, align 8
  %49 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %48, i32 0, i32 0
  %50 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %49, align 8
  store %struct.MPT3SAS_TARGET* %50, %struct.MPT3SAS_TARGET** %7, align 8
  %51 = load i32, i32* @MPT_TARGET_FLAGS_RAID_COMPONENT, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %7, align 8
  %54 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %44, %37, %23
  br label %58

58:                                               ; preds = %57, %2
  %59 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %60 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %59, i32 0, i32 0
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %64 = icmp ne %struct._sas_device* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  br label %76

66:                                               ; preds = %58
  %67 = load %struct.scsi_target*, %struct.scsi_target** %6, align 8
  %68 = icmp ne %struct.scsi_target* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load %struct.scsi_target*, %struct.scsi_target** %6, align 8
  %71 = load i32, i32* @_scsih_reprobe_lun, align 4
  %72 = call i32 @starget_for_each_device(%struct.scsi_target* %70, i32* null, i32 %71)
  br label %73

73:                                               ; preds = %69, %66
  %74 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %75 = call i32 @sas_device_put(%struct._sas_device* %74)
  br label %76

76:                                               ; preds = %73, %65
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct._sas_device* @__mpt3sas_get_sdev_by_handle(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @starget_for_each_device(%struct.scsi_target*, i32*, i32) #1

declare dso_local i32 @sas_device_put(%struct._sas_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
