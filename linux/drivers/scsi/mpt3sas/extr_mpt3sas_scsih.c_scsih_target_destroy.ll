; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_scsih_target_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_scsih_target_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_target = type { i64, i64, %struct.MPT3SAS_TARGET*, i32 }
%struct.MPT3SAS_TARGET = type { i32*, i32* }
%struct.Scsi_Host = type { i32 }
%struct.MPT3SAS_ADAPTER = type { i32, i32, i32 }
%struct._sas_device = type { i64, i64, %struct.scsi_target* }
%struct._raid_device = type { i32*, i32* }
%struct._pcie_device = type { i64, i64, %struct.scsi_target* }

@RAID_CHANNEL = common dso_local global i64 0, align 8
@PCIE_CHANNEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_target*)* @scsih_target_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsih_target_destroy(%struct.scsi_target* %0) #0 {
  %2 = alloca %struct.scsi_target*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %5 = alloca %struct.MPT3SAS_TARGET*, align 8
  %6 = alloca %struct._sas_device*, align 8
  %7 = alloca %struct._raid_device*, align 8
  %8 = alloca %struct._pcie_device*, align 8
  %9 = alloca i64, align 8
  store %struct.scsi_target* %0, %struct.scsi_target** %2, align 8
  %10 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %11 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %10, i32 0, i32 3
  %12 = call %struct.Scsi_Host* @dev_to_shost(i32* %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %3, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %14 = call %struct.MPT3SAS_ADAPTER* @shost_priv(%struct.Scsi_Host* %13)
  store %struct.MPT3SAS_ADAPTER* %14, %struct.MPT3SAS_ADAPTER** %4, align 8
  %15 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %16 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %15, i32 0, i32 2
  %17 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %16, align 8
  store %struct.MPT3SAS_TARGET* %17, %struct.MPT3SAS_TARGET** %5, align 8
  %18 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %5, align 8
  %19 = icmp ne %struct.MPT3SAS_TARGET* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %163

21:                                               ; preds = %1
  %22 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %23 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RAID_CHANNEL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %21
  %28 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %29 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %28, i32 0, i32 2
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %33 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %34 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %37 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call %struct._raid_device* @_scsih_raid_device_find_by_id(%struct.MPT3SAS_ADAPTER* %32, i64 %35, i64 %38)
  store %struct._raid_device* %39, %struct._raid_device** %7, align 8
  %40 = load %struct._raid_device*, %struct._raid_device** %7, align 8
  %41 = icmp ne %struct._raid_device* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %27
  %43 = load %struct._raid_device*, %struct._raid_device** %7, align 8
  %44 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %struct._raid_device*, %struct._raid_device** %7, align 8
  %46 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %42, %27
  %48 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %49 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %48, i32 0, i32 2
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  br label %158

52:                                               ; preds = %21
  %53 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %54 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PCIE_CHANNEL, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %108

58:                                               ; preds = %52
  %59 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %60 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %59, i32 0, i32 1
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @spin_lock_irqsave(i32* %60, i64 %61)
  %63 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %64 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %5, align 8
  %65 = call %struct._pcie_device* @__mpt3sas_get_pdev_from_target(%struct.MPT3SAS_ADAPTER* %63, %struct.MPT3SAS_TARGET* %64)
  store %struct._pcie_device* %65, %struct._pcie_device** %8, align 8
  %66 = load %struct._pcie_device*, %struct._pcie_device** %8, align 8
  %67 = icmp ne %struct._pcie_device* %66, null
  br i1 %67, label %68, label %93

68:                                               ; preds = %58
  %69 = load %struct._pcie_device*, %struct._pcie_device** %8, align 8
  %70 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %69, i32 0, i32 2
  %71 = load %struct.scsi_target*, %struct.scsi_target** %70, align 8
  %72 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %73 = icmp eq %struct.scsi_target* %71, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %68
  %75 = load %struct._pcie_device*, %struct._pcie_device** %8, align 8
  %76 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %79 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %77, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %74
  %83 = load %struct._pcie_device*, %struct._pcie_device** %8, align 8
  %84 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %87 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %85, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load %struct._pcie_device*, %struct._pcie_device** %8, align 8
  %92 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %91, i32 0, i32 2
  store %struct.scsi_target* null, %struct.scsi_target** %92, align 8
  br label %93

93:                                               ; preds = %90, %82, %74, %68, %58
  %94 = load %struct._pcie_device*, %struct._pcie_device** %8, align 8
  %95 = icmp ne %struct._pcie_device* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %5, align 8
  %98 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %97, i32 0, i32 1
  store i32* null, i32** %98, align 8
  %99 = load %struct._pcie_device*, %struct._pcie_device** %8, align 8
  %100 = call i32 @pcie_device_put(%struct._pcie_device* %99)
  %101 = load %struct._pcie_device*, %struct._pcie_device** %8, align 8
  %102 = call i32 @pcie_device_put(%struct._pcie_device* %101)
  br label %103

103:                                              ; preds = %96, %93
  %104 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %105 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %104, i32 0, i32 1
  %106 = load i64, i64* %9, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  br label %158

108:                                              ; preds = %52
  %109 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %110 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %109, i32 0, i32 0
  %111 = load i64, i64* %9, align 8
  %112 = call i32 @spin_lock_irqsave(i32* %110, i64 %111)
  %113 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %114 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %5, align 8
  %115 = call %struct._sas_device* @__mpt3sas_get_sdev_from_target(%struct.MPT3SAS_ADAPTER* %113, %struct.MPT3SAS_TARGET* %114)
  store %struct._sas_device* %115, %struct._sas_device** %6, align 8
  %116 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %117 = icmp ne %struct._sas_device* %116, null
  br i1 %117, label %118, label %143

118:                                              ; preds = %108
  %119 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %120 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %119, i32 0, i32 2
  %121 = load %struct.scsi_target*, %struct.scsi_target** %120, align 8
  %122 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %123 = icmp eq %struct.scsi_target* %121, %122
  br i1 %123, label %124, label %143

124:                                              ; preds = %118
  %125 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %126 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %129 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %127, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %124
  %133 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %134 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %137 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %135, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %132
  %141 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %142 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %141, i32 0, i32 2
  store %struct.scsi_target* null, %struct.scsi_target** %142, align 8
  br label %143

143:                                              ; preds = %140, %132, %124, %118, %108
  %144 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %145 = icmp ne %struct._sas_device* %144, null
  br i1 %145, label %146, label %153

146:                                              ; preds = %143
  %147 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %5, align 8
  %148 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %147, i32 0, i32 0
  store i32* null, i32** %148, align 8
  %149 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %150 = call i32 @sas_device_put(%struct._sas_device* %149)
  %151 = load %struct._sas_device*, %struct._sas_device** %6, align 8
  %152 = call i32 @sas_device_put(%struct._sas_device* %151)
  br label %153

153:                                              ; preds = %146, %143
  %154 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %155 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %154, i32 0, i32 0
  %156 = load i64, i64* %9, align 8
  %157 = call i32 @spin_unlock_irqrestore(i32* %155, i64 %156)
  br label %158

158:                                              ; preds = %153, %103, %47
  %159 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %5, align 8
  %160 = call i32 @kfree(%struct.MPT3SAS_TARGET* %159)
  %161 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %162 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %161, i32 0, i32 2
  store %struct.MPT3SAS_TARGET* null, %struct.MPT3SAS_TARGET** %162, align 8
  br label %163

163:                                              ; preds = %158, %20
  ret void
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32*) #1

declare dso_local %struct.MPT3SAS_ADAPTER* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct._raid_device* @_scsih_raid_device_find_by_id(%struct.MPT3SAS_ADAPTER*, i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct._pcie_device* @__mpt3sas_get_pdev_from_target(%struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_TARGET*) #1

declare dso_local i32 @pcie_device_put(%struct._pcie_device*) #1

declare dso_local %struct._sas_device* @__mpt3sas_get_sdev_from_target(%struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_TARGET*) #1

declare dso_local i32 @sas_device_put(%struct._sas_device*) #1

declare dso_local i32 @kfree(%struct.MPT3SAS_TARGET*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
