; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_search_responding_sas_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_search_responding_sas_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"search for end-devices: start\0A\00", align 1
@MPI2_SAS_DEVICE_PGAD_FORM_GET_NEXT_HANDLE = common dso_local global i32 0, align 4
@MPI2_IOCSTATUS_MASK = common dso_local global i32 0, align 4
@MPI2_IOCSTATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"search for end-devices: complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*)* @_scsih_search_responding_sas_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_search_responding_sas_devices(%struct.MPT3SAS_ADAPTER* %0) #0 {
  %2 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %2, align 8
  %8 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %9 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %11 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %10, i32 0, i32 0
  %12 = call i64 @list_empty(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %48

15:                                               ; preds = %1
  store i32 65535, i32* %6, align 4
  br label %16

16:                                               ; preds = %44, %43, %15
  %17 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %18 = load i32, i32* @MPI2_SAS_DEVICE_PGAD_FORM_GET_NEXT_HANDLE, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @mpt3sas_config_get_sas_device_pg0(%struct.MPT3SAS_ADAPTER* %17, %struct.TYPE_7__* %4, %struct.TYPE_6__* %3, i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %47

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16_to_cpu(i32 %25)
  %27 = load i32, i32* @MPI2_IOCSTATUS_MASK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @MPI2_IOCSTATUS_SUCCESS, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %47

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le16_to_cpu(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le32_to_cpu(i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @_scsih_is_end_device(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %33
  br label %16

44:                                               ; preds = %33
  %45 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %46 = call i32 @_scsih_mark_responding_sas_device(%struct.MPT3SAS_ADAPTER* %45, %struct.TYPE_6__* %3)
  br label %16

47:                                               ; preds = %32, %16
  br label %48

48:                                               ; preds = %47, %14
  %49 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %50 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ioc_info(%struct.MPT3SAS_ADAPTER*, i8*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @mpt3sas_config_get_sas_device_pg0(%struct.MPT3SAS_ADAPTER*, %struct.TYPE_7__*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @_scsih_is_end_device(i32) #1

declare dso_local i32 @_scsih_mark_responding_sas_device(%struct.MPT3SAS_ADAPTER*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
