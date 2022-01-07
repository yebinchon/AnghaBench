; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_sas_device_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_sas_device_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32 }
%struct._sas_device = type { i32, i64, i32 }

@.str = private unnamed_addr constant [46 x i8] c"removing handle(0x%04x), sas_addr(0x%016llx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*, %struct._sas_device*)* @_scsih_sas_device_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_sas_device_remove(%struct.MPT3SAS_ADAPTER* %0, %struct._sas_device* %1) #0 {
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca %struct._sas_device*, align 8
  %5 = alloca i64, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %3, align 8
  store %struct._sas_device* %1, %struct._sas_device** %4, align 8
  %6 = load %struct._sas_device*, %struct._sas_device** %4, align 8
  %7 = icmp ne %struct._sas_device* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %41

9:                                                ; preds = %2
  %10 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %11 = load %struct._sas_device*, %struct._sas_device** %4, align 8
  %12 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct._sas_device*, %struct._sas_device** %4, align 8
  %15 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %10, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %17)
  %19 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %20 = load %struct._sas_device*, %struct._sas_device** %4, align 8
  %21 = call i32 @_scsih_display_enclosure_chassis_info(%struct.MPT3SAS_ADAPTER* %19, %struct._sas_device* %20, i32* null, i32* null)
  %22 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %23 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %22, i32 0, i32 0
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct._sas_device*, %struct._sas_device** %4, align 8
  %27 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %26, i32 0, i32 0
  %28 = call i32 @list_empty(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %9
  %31 = load %struct._sas_device*, %struct._sas_device** %4, align 8
  %32 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %31, i32 0, i32 0
  %33 = call i32 @list_del_init(i32* %32)
  %34 = load %struct._sas_device*, %struct._sas_device** %4, align 8
  %35 = call i32 @sas_device_put(%struct._sas_device* %34)
  br label %36

36:                                               ; preds = %30, %9
  %37 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %38 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %37, i32 0, i32 0
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  br label %41

41:                                               ; preds = %36, %8
  ret void
}

declare dso_local i32 @ioc_info(%struct.MPT3SAS_ADAPTER*, i8*, i32, i32) #1

declare dso_local i32 @_scsih_display_enclosure_chassis_info(%struct.MPT3SAS_ADAPTER*, %struct._sas_device*, i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @sas_device_put(%struct._sas_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
