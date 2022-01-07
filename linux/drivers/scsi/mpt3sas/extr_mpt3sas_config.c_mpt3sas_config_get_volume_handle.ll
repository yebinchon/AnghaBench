; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_config.c_mpt3sas_config_get_volume_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_config.c_mpt3sas_config_get_volume_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32 (%struct.MPT3SAS_ADAPTER*, i32*)* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@MPI2_FUNCTION_CONFIG = common dso_local global i32 0, align 4
@MPI2_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@MPI2_CONFIG_PAGETYPE_EXTENDED = common dso_local global i32 0, align 4
@MPI2_CONFIG_EXTPAGETYPE_RAID_CONFIG = common dso_local global i32 0, align 4
@MPI2_RAIDCONFIG0_PAGEVERSION = common dso_local global i32 0, align 4
@MPT3_CONFIG_PAGE_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@MPI2_CONFIG_ACTION_PAGE_READ_CURRENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MPI2_RAID_PGAD_FORM_GET_NEXT_CONFIGNUM = common dso_local global i64 0, align 8
@MPI2_IOCSTATUS_MASK = common dso_local global i32 0, align 4
@MPI2_IOCSTATUS_SUCCESS = common dso_local global i32 0, align 4
@MPI2_RAIDCONFIG0_EFLAGS_MASK_ELEMENT_TYPE = common dso_local global i32 0, align 4
@MPI2_RAIDCONFIG0_EFLAGS_VOL_PHYS_DISK_ELEMENT = common dso_local global i32 0, align 4
@MPI2_RAIDCONFIG0_EFLAGS_OCE_ELEMENT = common dso_local global i32 0, align 4
@MPI2_RAIDCONFIG0_EFLAGS_HOT_SPARE_ELEMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt3sas_config_get_volume_handle(%struct.MPT3SAS_ADAPTER* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_15__, align 8
  %9 = alloca %struct.TYPE_16__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  %17 = load i32*, i32** %6, align 8
  store i32 0, i32* %17, align 4
  %18 = call i32 @memset(%struct.TYPE_15__* %8, i32 0, i32 40)
  %19 = load i32, i32* @MPI2_FUNCTION_CONFIG, align 4
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 5
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @MPI2_CONFIG_ACTION_PAGE_HEADER, align 4
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @MPI2_CONFIG_PAGETYPE_EXTENDED, align 4
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @MPI2_CONFIG_EXTPAGETYPE_RAID_CONFIG, align 4
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 4
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* @MPI2_RAIDCONFIG0_PAGEVERSION, align 4
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %34 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %33, i32 0, i32 0
  %35 = load i32 (%struct.MPT3SAS_ADAPTER*, i32*)*, i32 (%struct.MPT3SAS_ADAPTER*, i32*)** %34, align 8
  %36 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 2
  %38 = call i32 %35(%struct.MPT3SAS_ADAPTER* %36, i32* %37)
  %39 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %40 = load i32, i32* @MPT3_CONFIG_PAGE_DEFAULT_TIMEOUT, align 4
  %41 = call i32 @_config_request(%struct.MPT3SAS_ADAPTER* %39, %struct.TYPE_15__* %8, %struct.TYPE_16__* %9, i32 %40, %struct.TYPE_14__* null, i32 0)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %3
  br label %150

45:                                               ; preds = %3
  %46 = load i32, i32* @MPI2_CONFIG_ACTION_PAGE_READ_CURRENT, align 4
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le16_to_cpu(i32 %49)
  %51 = mul nsw i32 %50, 4
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.TYPE_14__* @kmalloc(i32 %52, i32 %53)
  store %struct.TYPE_14__* %54, %struct.TYPE_14__** %7, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %56 = icmp ne %struct.TYPE_14__* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %45
  store i32 -1, i32* %10, align 4
  br label %150

58:                                               ; preds = %45
  store i32 255, i32* %14, align 4
  br label %59

59:                                               ; preds = %58, %146
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* @MPI2_RAID_PGAD_FORM_GET_NEXT_CONFIGNUM, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @cpu_to_le32(i64 %63)
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  store i32 %64, i32* %65, align 8
  %66 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %67 = load i32, i32* @MPT3_CONFIG_PAGE_DEFAULT_TIMEOUT, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @_config_request(%struct.MPT3SAS_ADAPTER* %66, %struct.TYPE_15__* %8, %struct.TYPE_16__* %9, i32 %67, %struct.TYPE_14__* %68, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %59
  br label %150

74:                                               ; preds = %59
  store i32 -1, i32* %10, align 4
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le16_to_cpu(i32 %76)
  %78 = load i32, i32* @MPI2_IOCSTATUS_MASK, align 4
  %79 = and i32 %77, %78
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @MPI2_IOCSTATUS_SUCCESS, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %150

84:                                               ; preds = %74
  store i32 0, i32* %11, align 4
  br label %85

85:                                               ; preds = %143, %84
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %146

91:                                               ; preds = %85
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @le16_to_cpu(i32 %99)
  %101 = load i32, i32* @MPI2_RAIDCONFIG0_EFLAGS_MASK_ELEMENT_TYPE, align 4
  %102 = and i32 %100, %101
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* @MPI2_RAIDCONFIG0_EFLAGS_VOL_PHYS_DISK_ELEMENT, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %110, label %106

106:                                              ; preds = %91
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* @MPI2_RAIDCONFIG0_EFLAGS_OCE_ELEMENT, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %135

110:                                              ; preds = %106, %91
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @le16_to_cpu(i32 %118)
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* %5, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %110
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @le16_to_cpu(i32 %131)
  %133 = load i32*, i32** %6, align 8
  store i32 %132, i32* %133, align 4
  store i32 0, i32* %10, align 4
  br label %150

134:                                              ; preds = %110
  br label %142

135:                                              ; preds = %106
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* @MPI2_RAIDCONFIG0_EFLAGS_HOT_SPARE_ELEMENT, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load i32*, i32** %6, align 8
  store i32 0, i32* %140, align 4
  store i32 0, i32* %10, align 4
  br label %150

141:                                              ; preds = %135
  br label %142

142:                                              ; preds = %141, %134
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %11, align 4
  br label %85

146:                                              ; preds = %85
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %14, align 4
  br label %59

150:                                              ; preds = %139, %123, %83, %73, %57, %44
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %152 = call i32 @kfree(%struct.TYPE_14__* %151)
  %153 = load i32, i32* %10, align 4
  ret i32 %153
}

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @_config_request(%struct.MPT3SAS_ADAPTER*, %struct.TYPE_15__*, %struct.TYPE_16__*, i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_14__* @kmalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @kfree(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
