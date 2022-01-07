; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_sas_volume_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_sas_volume_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32 }
%struct._raid_device = type { i32, i64, i32, %struct.scsi_target* }
%struct.scsi_target = type { i32, %struct.MPT3SAS_TARGET* }
%struct.MPT3SAS_TARGET = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"removing handle(0x%04x), wwid(0x%016llx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*, i32)* @_scsih_sas_volume_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_sas_volume_delete(%struct.MPT3SAS_ADAPTER* %0, i32 %1) #0 {
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._raid_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.MPT3SAS_TARGET*, align 8
  %8 = alloca %struct.scsi_target*, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.scsi_target* null, %struct.scsi_target** %8, align 8
  %9 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %10 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call %struct._raid_device* @mpt3sas_raid_device_find_by_handle(%struct.MPT3SAS_ADAPTER* %13, i32 %14)
  store %struct._raid_device* %15, %struct._raid_device** %5, align 8
  %16 = load %struct._raid_device*, %struct._raid_device** %5, align 8
  %17 = icmp ne %struct._raid_device* %16, null
  br i1 %17, label %18, label %47

18:                                               ; preds = %2
  %19 = load %struct._raid_device*, %struct._raid_device** %5, align 8
  %20 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %19, i32 0, i32 3
  %21 = load %struct.scsi_target*, %struct.scsi_target** %20, align 8
  %22 = icmp ne %struct.scsi_target* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct._raid_device*, %struct._raid_device** %5, align 8
  %25 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %24, i32 0, i32 3
  %26 = load %struct.scsi_target*, %struct.scsi_target** %25, align 8
  store %struct.scsi_target* %26, %struct.scsi_target** %8, align 8
  %27 = load %struct.scsi_target*, %struct.scsi_target** %8, align 8
  %28 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %27, i32 0, i32 1
  %29 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %28, align 8
  store %struct.MPT3SAS_TARGET* %29, %struct.MPT3SAS_TARGET** %7, align 8
  %30 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %7, align 8
  %31 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %23, %18
  %33 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %34 = load %struct._raid_device*, %struct._raid_device** %5, align 8
  %35 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct._raid_device*, %struct._raid_device** %5, align 8
  %38 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %40)
  %42 = load %struct._raid_device*, %struct._raid_device** %5, align 8
  %43 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %42, i32 0, i32 0
  %44 = call i32 @list_del(i32* %43)
  %45 = load %struct._raid_device*, %struct._raid_device** %5, align 8
  %46 = call i32 @kfree(%struct._raid_device* %45)
  br label %47

47:                                               ; preds = %32, %2
  %48 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %49 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %48, i32 0, i32 0
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load %struct.scsi_target*, %struct.scsi_target** %8, align 8
  %53 = icmp ne %struct.scsi_target* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load %struct.scsi_target*, %struct.scsi_target** %8, align 8
  %56 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %55, i32 0, i32 0
  %57 = call i32 @scsi_remove_target(i32* %56)
  br label %58

58:                                               ; preds = %54, %47
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct._raid_device* @mpt3sas_raid_device_find_by_handle(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @ioc_info(%struct.MPT3SAS_ADAPTER*, i8*, i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct._raid_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @scsi_remove_target(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
