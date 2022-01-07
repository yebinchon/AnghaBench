; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_scsih_change_queue_depth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_scsih_change_queue_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, %struct.MPT3SAS_DEVICE*, %struct.Scsi_Host* }
%struct.MPT3SAS_DEVICE = type { %struct.MPT3SAS_TARGET* }
%struct.MPT3SAS_TARGET = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.MPT3SAS_ADAPTER = type { i32, i64 }
%struct._sas_device = type { i32 }

@MPT_TARGET_FLAGS_VOLUME = common dso_local global i32 0, align 4
@MPI2_SAS_DEVICE_INFO_SATA_DEVICE = common dso_local global i32 0, align 4
@MPT3SAS_SATA_QUEUE_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i32)* @scsih_change_queue_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsih_change_queue_depth(%struct.scsi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %8 = alloca %struct.MPT3SAS_DEVICE*, align 8
  %9 = alloca %struct.MPT3SAS_TARGET*, align 8
  %10 = alloca %struct._sas_device*, align 8
  %11 = alloca i64, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %12, i32 0, i32 2
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %13, align 8
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %5, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %16 = call %struct.MPT3SAS_ADAPTER* @shost_priv(%struct.Scsi_Host* %15)
  store %struct.MPT3SAS_ADAPTER* %16, %struct.MPT3SAS_ADAPTER** %7, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %7, align 8
  %21 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %74

25:                                               ; preds = %2
  %26 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %27 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %26, i32 0, i32 1
  %28 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %27, align 8
  store %struct.MPT3SAS_DEVICE* %28, %struct.MPT3SAS_DEVICE** %8, align 8
  %29 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %8, align 8
  %30 = icmp ne %struct.MPT3SAS_DEVICE* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %74

32:                                               ; preds = %25
  %33 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %8, align 8
  %34 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %33, i32 0, i32 0
  %35 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %34, align 8
  store %struct.MPT3SAS_TARGET* %35, %struct.MPT3SAS_TARGET** %9, align 8
  %36 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %9, align 8
  %37 = icmp ne %struct.MPT3SAS_TARGET* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  br label %74

39:                                               ; preds = %32
  %40 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %9, align 8
  %41 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MPT_TARGET_FLAGS_VOLUME, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %74

47:                                               ; preds = %39
  %48 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %7, align 8
  %49 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %48, i32 0, i32 0
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @spin_lock_irqsave(i32* %49, i64 %50)
  %52 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %7, align 8
  %53 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %9, align 8
  %54 = call %struct._sas_device* @__mpt3sas_get_sdev_from_target(%struct.MPT3SAS_ADAPTER* %52, %struct.MPT3SAS_TARGET* %53)
  store %struct._sas_device* %54, %struct._sas_device** %10, align 8
  %55 = load %struct._sas_device*, %struct._sas_device** %10, align 8
  %56 = icmp ne %struct._sas_device* %55, null
  br i1 %56, label %57, label %69

57:                                               ; preds = %47
  %58 = load %struct._sas_device*, %struct._sas_device** %10, align 8
  %59 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MPI2_SAS_DEVICE_INFO_SATA_DEVICE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @MPT3SAS_SATA_QUEUE_DEPTH, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %64, %57
  %67 = load %struct._sas_device*, %struct._sas_device** %10, align 8
  %68 = call i32 @sas_device_put(%struct._sas_device* %67)
  br label %69

69:                                               ; preds = %66, %47
  %70 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %7, align 8
  %71 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %70, i32 0, i32 0
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  br label %74

74:                                               ; preds = %69, %46, %38, %31, %24
  %75 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %76 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  store i32 1, i32* %6, align 4
  br label %80

80:                                               ; preds = %79, %74
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %80
  %87 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @scsi_change_queue_depth(%struct.scsi_device* %87, i32 %88)
  ret i32 %89
}

declare dso_local %struct.MPT3SAS_ADAPTER* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct._sas_device* @__mpt3sas_get_sdev_from_target(%struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_TARGET*) #1

declare dso_local i32 @sas_device_put(%struct._sas_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @scsi_change_queue_depth(%struct.scsi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
