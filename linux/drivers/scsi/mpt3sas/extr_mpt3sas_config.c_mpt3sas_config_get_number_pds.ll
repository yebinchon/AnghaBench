; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_config.c_mpt3sas_config_get_number_pds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_config.c_mpt3sas_config_get_number_pds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32 (%struct.MPT3SAS_ADAPTER*, i32*)* }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i64, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@MPI2_FUNCTION_CONFIG = common dso_local global i32 0, align 4
@MPI2_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@MPI2_CONFIG_PAGETYPE_RAID_VOLUME = common dso_local global i32 0, align 4
@MPI2_RAIDVOLPAGE0_PAGEVERSION = common dso_local global i32 0, align 4
@MPT3_CONFIG_PAGE_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@MPI2_RAID_VOLUME_PGAD_FORM_HANDLE = common dso_local global i32 0, align 4
@MPI2_CONFIG_ACTION_PAGE_READ_CURRENT = common dso_local global i32 0, align 4
@MPI2_IOCSTATUS_MASK = common dso_local global i32 0, align 4
@MPI2_IOCSTATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt3sas_config_get_number_pds(%struct.MPT3SAS_ADAPTER* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca %struct.TYPE_10__, align 4
  %9 = alloca %struct.TYPE_12__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = call i32 @memset(%struct.TYPE_11__* %7, i32 0, i32 48)
  %13 = load i32*, i32** %6, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @MPI2_FUNCTION_CONFIG, align 4
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 4
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* @MPI2_CONFIG_ACTION_PAGE_HEADER, align 4
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* @MPI2_CONFIG_PAGETYPE_RAID_VOLUME, align 4
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @MPI2_RAIDVOLPAGE0_PAGEVERSION, align 4
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %27 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %26, i32 0, i32 0
  %28 = load i32 (%struct.MPT3SAS_ADAPTER*, i32*)*, i32 (%struct.MPT3SAS_ADAPTER*, i32*)** %27, align 8
  %29 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %31 = call i32 %28(%struct.MPT3SAS_ADAPTER* %29, i32* %30)
  %32 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %33 = load i32, i32* @MPT3_CONFIG_PAGE_DEFAULT_TIMEOUT, align 4
  %34 = call i32 @_config_request(%struct.MPT3SAS_ADAPTER* %32, %struct.TYPE_11__* %7, %struct.TYPE_12__* %9, i32 %33, %struct.TYPE_10__* null, i32 0)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  br label %66

38:                                               ; preds = %3
  %39 = load i32, i32* @MPI2_RAID_VOLUME_PGAD_FORM_HANDLE, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @cpu_to_le32(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @MPI2_CONFIG_ACTION_PAGE_READ_CURRENT, align 4
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  %46 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %47 = load i32, i32* @MPT3_CONFIG_PAGE_DEFAULT_TIMEOUT, align 4
  %48 = call i32 @_config_request(%struct.MPT3SAS_ADAPTER* %46, %struct.TYPE_11__* %7, %struct.TYPE_12__* %9, i32 %47, %struct.TYPE_10__* %8, i32 4)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %38
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le16_to_cpu(i32 %53)
  %55 = load i32, i32* @MPI2_IOCSTATUS_MASK, align 4
  %56 = and i32 %54, %55
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @MPI2_IOCSTATUS_SUCCESS, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %6, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %51
  br label %65

65:                                               ; preds = %64, %38
  br label %66

66:                                               ; preds = %65, %37
  %67 = load i32, i32* %10, align 4
  ret i32 %67
}

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @_config_request(%struct.MPT3SAS_ADAPTER*, %struct.TYPE_11__*, %struct.TYPE_12__*, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
