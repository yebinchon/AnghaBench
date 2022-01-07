; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_probe_sas.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_probe_sas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32, i64 }
%struct._sas_device = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*)* @_scsih_probe_sas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_probe_sas(%struct.MPT3SAS_ADAPTER* %0) #0 {
  %2 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %3 = alloca %struct._sas_device*, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %2, align 8
  %4 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %5 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %62

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %56, %40, %24, %9
  %11 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %12 = call %struct._sas_device* @get_next_sas_device(%struct.MPT3SAS_ADAPTER* %11)
  store %struct._sas_device* %12, %struct._sas_device** %3, align 8
  %13 = icmp ne %struct._sas_device* %12, null
  br i1 %13, label %14, label %62

14:                                               ; preds = %10
  %15 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %16 = load %struct._sas_device*, %struct._sas_device** %3, align 8
  %17 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct._sas_device*, %struct._sas_device** %3, align 8
  %20 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mpt3sas_transport_port_add(%struct.MPT3SAS_ADAPTER* %15, i32 %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %14
  %25 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %26 = load %struct._sas_device*, %struct._sas_device** %3, align 8
  %27 = call i32 @_scsih_sas_device_remove(%struct.MPT3SAS_ADAPTER* %25, %struct._sas_device* %26)
  %28 = load %struct._sas_device*, %struct._sas_device** %3, align 8
  %29 = call i32 @sas_device_put(%struct._sas_device* %28)
  br label %10

30:                                               ; preds = %14
  %31 = load %struct._sas_device*, %struct._sas_device** %3, align 8
  %32 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %55, label %35

35:                                               ; preds = %30
  %36 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %37 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %35
  %41 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %42 = load %struct._sas_device*, %struct._sas_device** %3, align 8
  %43 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct._sas_device*, %struct._sas_device** %3, align 8
  %46 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mpt3sas_transport_port_remove(%struct.MPT3SAS_ADAPTER* %41, i32 %44, i32 %47)
  %49 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %50 = load %struct._sas_device*, %struct._sas_device** %3, align 8
  %51 = call i32 @_scsih_sas_device_remove(%struct.MPT3SAS_ADAPTER* %49, %struct._sas_device* %50)
  %52 = load %struct._sas_device*, %struct._sas_device** %3, align 8
  %53 = call i32 @sas_device_put(%struct._sas_device* %52)
  br label %10

54:                                               ; preds = %35
  br label %55

55:                                               ; preds = %54, %30
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %58 = load %struct._sas_device*, %struct._sas_device** %3, align 8
  %59 = call i32 @sas_device_make_active(%struct.MPT3SAS_ADAPTER* %57, %struct._sas_device* %58)
  %60 = load %struct._sas_device*, %struct._sas_device** %3, align 8
  %61 = call i32 @sas_device_put(%struct._sas_device* %60)
  br label %10

62:                                               ; preds = %8, %10
  ret void
}

declare dso_local %struct._sas_device* @get_next_sas_device(%struct.MPT3SAS_ADAPTER*) #1

declare dso_local i32 @mpt3sas_transport_port_add(%struct.MPT3SAS_ADAPTER*, i32, i32) #1

declare dso_local i32 @_scsih_sas_device_remove(%struct.MPT3SAS_ADAPTER*, %struct._sas_device*) #1

declare dso_local i32 @sas_device_put(%struct._sas_device*) #1

declare dso_local i32 @mpt3sas_transport_port_remove(%struct.MPT3SAS_ADAPTER*, i32, i32) #1

declare dso_local i32 @sas_device_make_active(%struct.MPT3SAS_ADAPTER*, %struct._sas_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
