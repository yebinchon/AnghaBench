; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_scsih_slave_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_scsih_slave_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32* }
%struct.MPT3SAS_TARGET = type { i32, i32 }
%struct.scsi_target = type { i32, %struct.MPT3SAS_TARGET* }
%struct.Scsi_Host = type { i32 }
%struct.MPT3SAS_ADAPTER = type { i32, i32 }
%struct._sas_device = type { i32* }
%struct._pcie_device = type { i32* }

@MPT_TARGET_FLAGS_PCIE_DEVICE = common dso_local global i32 0, align 4
@MPT_TARGET_FLAGS_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*)* @scsih_slave_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsih_slave_destroy(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.MPT3SAS_TARGET*, align 8
  %4 = alloca %struct.scsi_target*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %7 = alloca %struct._sas_device*, align 8
  %8 = alloca %struct._pcie_device*, align 8
  %9 = alloca i64, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %10 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %11 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %109

15:                                               ; preds = %1
  %16 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %17 = call %struct.scsi_target* @scsi_target(%struct.scsi_device* %16)
  store %struct.scsi_target* %17, %struct.scsi_target** %4, align 8
  %18 = load %struct.scsi_target*, %struct.scsi_target** %4, align 8
  %19 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %18, i32 0, i32 1
  %20 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %19, align 8
  store %struct.MPT3SAS_TARGET* %20, %struct.MPT3SAS_TARGET** %3, align 8
  %21 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %3, align 8
  %22 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.scsi_target*, %struct.scsi_target** %4, align 8
  %26 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %25, i32 0, i32 0
  %27 = call %struct.Scsi_Host* @dev_to_shost(i32* %26)
  store %struct.Scsi_Host* %27, %struct.Scsi_Host** %5, align 8
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %29 = call %struct.MPT3SAS_ADAPTER* @shost_priv(%struct.Scsi_Host* %28)
  store %struct.MPT3SAS_ADAPTER* %29, %struct.MPT3SAS_ADAPTER** %6, align 8
  %30 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %3, align 8
  %31 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MPT_TARGET_FLAGS_PCIE_DEVICE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %15
  %37 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %38 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %37, i32 0, i32 1
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %42 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %3, align 8
  %43 = call %struct._pcie_device* @__mpt3sas_get_pdev_from_target(%struct.MPT3SAS_ADAPTER* %41, %struct.MPT3SAS_TARGET* %42)
  store %struct._pcie_device* %43, %struct._pcie_device** %8, align 8
  %44 = load %struct._pcie_device*, %struct._pcie_device** %8, align 8
  %45 = icmp ne %struct._pcie_device* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %36
  %47 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %3, align 8
  %48 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load %struct._pcie_device*, %struct._pcie_device** %8, align 8
  %53 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %51, %46, %36
  %55 = load %struct._pcie_device*, %struct._pcie_device** %8, align 8
  %56 = icmp ne %struct._pcie_device* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct._pcie_device*, %struct._pcie_device** %8, align 8
  %59 = call i32 @pcie_device_put(%struct._pcie_device* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %62 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %61, i32 0, i32 1
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  br label %102

65:                                               ; preds = %15
  %66 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %3, align 8
  %67 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @MPT_TARGET_FLAGS_VOLUME, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %101, label %72

72:                                               ; preds = %65
  %73 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %74 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %73, i32 0, i32 0
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @spin_lock_irqsave(i32* %74, i64 %75)
  %77 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %78 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %3, align 8
  %79 = call %struct._sas_device* @__mpt3sas_get_sdev_from_target(%struct.MPT3SAS_ADAPTER* %77, %struct.MPT3SAS_TARGET* %78)
  store %struct._sas_device* %79, %struct._sas_device** %7, align 8
  %80 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %81 = icmp ne %struct._sas_device* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %72
  %83 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %3, align 8
  %84 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %89 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %88, i32 0, i32 0
  store i32* null, i32** %89, align 8
  br label %90

90:                                               ; preds = %87, %82, %72
  %91 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %92 = icmp ne %struct._sas_device* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %95 = call i32 @sas_device_put(%struct._sas_device* %94)
  br label %96

96:                                               ; preds = %93, %90
  %97 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %98 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %97, i32 0, i32 0
  %99 = load i64, i64* %9, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  br label %101

101:                                              ; preds = %96, %65
  br label %102

102:                                              ; preds = %101, %60
  %103 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %104 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @kfree(i32* %105)
  %107 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %108 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %107, i32 0, i32 0
  store i32* null, i32** %108, align 8
  br label %109

109:                                              ; preds = %102, %14
  ret void
}

declare dso_local %struct.scsi_target* @scsi_target(%struct.scsi_device*) #1

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32*) #1

declare dso_local %struct.MPT3SAS_ADAPTER* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct._pcie_device* @__mpt3sas_get_pdev_from_target(%struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_TARGET*) #1

declare dso_local i32 @pcie_device_put(%struct._pcie_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct._sas_device* @__mpt3sas_get_sdev_from_target(%struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_TARGET*) #1

declare dso_local i32 @sas_device_put(%struct._sas_device*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
