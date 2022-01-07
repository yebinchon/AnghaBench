; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_set_volume_delete_flag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_set_volume_delete_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32 }
%struct._raid_device = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.MPT3SAS_TARGET* }
%struct.MPT3SAS_TARGET = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"setting delete flag: handle(0x%04x), wwid(0x%016llx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*, i32)* @_scsih_set_volume_delete_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_set_volume_delete_flag(%struct.MPT3SAS_ADAPTER* %0, i32 %1) #0 {
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._raid_device*, align 8
  %6 = alloca %struct.MPT3SAS_TARGET*, align 8
  %7 = alloca i64, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %9 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %8, i32 0, i32 0
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call %struct._raid_device* @mpt3sas_raid_device_find_by_handle(%struct.MPT3SAS_ADAPTER* %12, i32 %13)
  store %struct._raid_device* %14, %struct._raid_device** %5, align 8
  %15 = load %struct._raid_device*, %struct._raid_device** %5, align 8
  %16 = icmp ne %struct._raid_device* %15, null
  br i1 %16, label %17, label %46

17:                                               ; preds = %2
  %18 = load %struct._raid_device*, %struct._raid_device** %5, align 8
  %19 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %46

22:                                               ; preds = %17
  %23 = load %struct._raid_device*, %struct._raid_device** %5, align 8
  %24 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %26, align 8
  %28 = icmp ne %struct.MPT3SAS_TARGET* %27, null
  br i1 %28, label %29, label %46

29:                                               ; preds = %22
  %30 = load %struct._raid_device*, %struct._raid_device** %5, align 8
  %31 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %33, align 8
  store %struct.MPT3SAS_TARGET* %34, %struct.MPT3SAS_TARGET** %6, align 8
  %35 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %36 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %38 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load %struct._raid_device*, %struct._raid_device** %5, align 8
  %41 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %38, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %43)
  %45 = call i32 @dewtprintk(%struct.MPT3SAS_ADAPTER* %37, i32 %44)
  br label %46

46:                                               ; preds = %29, %22, %17, %2
  %47 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %48 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %47, i32 0, i32 0
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct._raid_device* @mpt3sas_raid_device_find_by_handle(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @dewtprintk(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @ioc_info(%struct.MPT3SAS_ADAPTER*, i8*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
