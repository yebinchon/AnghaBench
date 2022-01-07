; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_config.c_mpt3sas_config_get_pcie_device_pg2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_config.c_mpt3sas_config_get_pcie_device_pg2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32 (%struct.MPT3SAS_ADAPTER*, i32*)* }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@MPI2_FUNCTION_CONFIG = common dso_local global i32 0, align 4
@MPI2_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@MPI2_CONFIG_PAGETYPE_EXTENDED = common dso_local global i32 0, align 4
@MPI2_CONFIG_EXTPAGETYPE_PCIE_DEVICE = common dso_local global i32 0, align 4
@MPI26_PCIEDEVICE2_PAGEVERSION = common dso_local global i32 0, align 4
@MPT3_CONFIG_PAGE_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@MPI2_CONFIG_ACTION_PAGE_READ_CURRENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt3sas_config_get_pcie_device_pg2(%struct.MPT3SAS_ADAPTER* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__, align 4
  %12 = alloca i32, align 4
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = call i32 @memset(%struct.TYPE_6__* %11, i32 0, i32 32)
  %14 = load i32, i32* @MPI2_FUNCTION_CONFIG, align 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 5
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @MPI2_CONFIG_ACTION_PAGE_HEADER, align 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @MPI2_CONFIG_PAGETYPE_EXTENDED, align 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @MPI2_CONFIG_EXTPAGETYPE_PCIE_DEVICE, align 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 4
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @MPI26_PCIEDEVICE2_PAGEVERSION, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 2, i32* %27, align 4
  %28 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %29 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %28, i32 0, i32 0
  %30 = load i32 (%struct.MPT3SAS_ADAPTER*, i32*)*, i32 (%struct.MPT3SAS_ADAPTER*, i32*)** %29, align 8
  %31 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %33 = call i32 %30(%struct.MPT3SAS_ADAPTER* %31, i32* %32)
  %34 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* @MPT3_CONFIG_PAGE_DEFAULT_TIMEOUT, align 4
  %37 = call i32 @_config_request(%struct.MPT3SAS_ADAPTER* %34, %struct.TYPE_6__* %11, i32* %35, i32 %36, i32* null, i32 0)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %5
  br label %54

41:                                               ; preds = %5
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @cpu_to_le32(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @MPI2_CONFIG_ACTION_PAGE_READ_CURRENT, align 4
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %6, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* @MPT3_CONFIG_PAGE_DEFAULT_TIMEOUT, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @_config_request(%struct.MPT3SAS_ADAPTER* %49, %struct.TYPE_6__* %11, i32* %50, i32 %51, i32* %52, i32 4)
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %41, %40
  %55 = load i32, i32* %12, align 4
  ret i32 %55
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @_config_request(%struct.MPT3SAS_ADAPTER*, %struct.TYPE_6__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
