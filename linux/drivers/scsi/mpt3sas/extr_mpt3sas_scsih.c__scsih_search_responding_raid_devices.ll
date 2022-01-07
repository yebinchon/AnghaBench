; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_search_responding_raid_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_search_responding_raid_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"search for raid volumes: start\0A\00", align 1
@MPI2_RAID_VOLUME_PGAD_FORM_GET_NEXT_HANDLE = common dso_local global i32 0, align 4
@MPI2_IOCSTATUS_MASK = common dso_local global i32 0, align 4
@MPI2_IOCSTATUS_SUCCESS = common dso_local global i32 0, align 4
@MPI2_RAID_VOLUME_PGAD_FORM_HANDLE = common dso_local global i32 0, align 4
@MPI2_RAID_VOL_STATE_OPTIMAL = common dso_local global i64 0, align 8
@MPI2_RAID_VOL_STATE_ONLINE = common dso_local global i64 0, align 8
@MPI2_RAID_VOL_STATE_DEGRADED = common dso_local global i64 0, align 8
@MPI2_PHYSDISK_PGAD_FORM_GET_NEXT_PHYSDISKNUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"search for responding raid volumes: complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*)* @_scsih_search_responding_raid_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_search_responding_raid_devices(%struct.MPT3SAS_ADAPTER* %0) #0 {
  %2 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %3 = alloca %struct.TYPE_11__, align 4
  %4 = alloca %struct.TYPE_12__, align 8
  %5 = alloca %struct.TYPE_13__, align 4
  %6 = alloca %struct.TYPE_14__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %2, align 8
  %10 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %11 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %120

15:                                               ; preds = %1
  %16 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %17 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %19 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %18, i32 0, i32 3
  %20 = call i64 @list_empty(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %117

23:                                               ; preds = %15
  store i32 65535, i32* %8, align 4
  br label %24

24:                                               ; preds = %73, %50, %23
  %25 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %26 = load i32, i32* @MPI2_RAID_VOLUME_PGAD_FORM_GET_NEXT_HANDLE, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @mpt3sas_config_get_raid_volume_pg1(%struct.MPT3SAS_ADAPTER* %25, %struct.TYPE_14__* %6, %struct.TYPE_11__* %3, i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %74

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le16_to_cpu(i32 %33)
  %35 = load i32, i32* @MPI2_IOCSTATUS_MASK, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @MPI2_IOCSTATUS_SUCCESS, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %74

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le16_to_cpu(i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %46 = load i32, i32* @MPI2_RAID_VOLUME_PGAD_FORM_HANDLE, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @mpt3sas_config_get_raid_volume_pg0(%struct.MPT3SAS_ADAPTER* %45, %struct.TYPE_14__* %6, %struct.TYPE_12__* %4, i32 %46, i32 %47, i32 8)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %24

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MPI2_RAID_VOL_STATE_OPTIMAL, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %66, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MPI2_RAID_VOL_STATE_ONLINE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MPI2_RAID_VOL_STATE_DEGRADED, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %61, %56, %51
  %67 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le64_to_cpu(i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @_scsih_mark_responding_raid_device(%struct.MPT3SAS_ADAPTER* %67, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %66, %61
  br label %24

74:                                               ; preds = %40, %24
  %75 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %76 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %116, label %79

79:                                               ; preds = %74
  store i32 255, i32* %9, align 4
  %80 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %81 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %84 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @memset(i32 %82, i32 0, i32 %85)
  br label %87

87:                                               ; preds = %104, %79
  %88 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %89 = load i32, i32* @MPI2_PHYSDISK_PGAD_FORM_GET_NEXT_PHYSDISKNUM, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @mpt3sas_config_get_phys_disk_pg0(%struct.MPT3SAS_ADAPTER* %88, %struct.TYPE_14__* %6, %struct.TYPE_13__* %5, i32 %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  br i1 %93, label %94, label %115

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @le16_to_cpu(i32 %96)
  %98 = load i32, i32* @MPI2_IOCSTATUS_MASK, align 4
  %99 = and i32 %97, %98
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @MPI2_IOCSTATUS_SUCCESS, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  br label %115

104:                                              ; preds = %94
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %9, align 4
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @le16_to_cpu(i32 %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %112 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @set_bit(i32 %110, i32 %113)
  br label %87

115:                                              ; preds = %103, %87
  br label %116

116:                                              ; preds = %115, %74
  br label %117

117:                                              ; preds = %116, %22
  %118 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %119 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %118, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %14
  ret void
}

declare dso_local i32 @ioc_info(%struct.MPT3SAS_ADAPTER*, i8*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @mpt3sas_config_get_raid_volume_pg1(%struct.MPT3SAS_ADAPTER*, %struct.TYPE_14__*, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @mpt3sas_config_get_raid_volume_pg0(%struct.MPT3SAS_ADAPTER*, %struct.TYPE_14__*, %struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @_scsih_mark_responding_raid_device(%struct.MPT3SAS_ADAPTER*, i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mpt3sas_config_get_phys_disk_pg0(%struct.MPT3SAS_ADAPTER*, %struct.TYPE_14__*, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
