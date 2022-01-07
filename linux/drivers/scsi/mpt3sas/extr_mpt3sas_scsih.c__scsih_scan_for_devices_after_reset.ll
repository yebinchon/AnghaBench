; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_scan_for_devices_after_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_scan_for_devices_after_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._raid_device = type { i32 }
%struct.MPT3SAS_ADAPTER = type { i32, i32, i32, i32 }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_30__ = type { i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_29__ = type { i32, i32 }
%struct._sas_device = type { i32 }
%struct._pcie_device = type { i32 }
%struct._sas_node = type { i32 }

@_scsih_scan_for_devices_after_reset.raid_device = internal global %struct._raid_device* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"scan devices: start\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"\09scan devices: expanders start\0A\00", align 1
@MPI2_SAS_EXPAND_PGAD_FORM_GET_NEXT_HNDL = common dso_local global i32 0, align 4
@MPI2_IOCSTATUS_MASK = common dso_local global i32 0, align 4
@MPI2_IOCSTATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"\09break from expander scan: ioc_status(0x%04x), loginfo(0x%08x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"\09BEFORE adding expander: handle (0x%04x), sas_addr(0x%016llx)\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"\09AFTER adding expander: handle (0x%04x), sas_addr(0x%016llx)\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"\09scan devices: expanders complete\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"\09scan devices: phys disk start\0A\00", align 1
@MPI2_PHYSDISK_PGAD_FORM_GET_NEXT_PHYSDISKNUM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [65 x i8] c"\09break from phys disk scan: ioc_status(0x%04x), loginfo(0x%08x)\0A\00", align 1
@MPI2_SAS_DEVICE_PGAD_FORM_HANDLE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [64 x i8] c"\09break from phys disk scan ioc_status(0x%04x), loginfo(0x%08x)\0A\00", align 1
@.str.9 = private unnamed_addr constant [64 x i8] c"\09BEFORE adding phys disk: handle (0x%04x), sas_addr(0x%016llx)\0A\00", align 1
@MPI2_SAS_NEG_LINK_RATE_1_5 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [63 x i8] c"\09AFTER adding phys disk: handle (0x%04x), sas_addr(0x%016llx)\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"\09scan devices: phys disk complete\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"\09scan devices: volumes start\0A\00", align 1
@MPI2_RAID_VOLUME_PGAD_FORM_GET_NEXT_HANDLE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [62 x i8] c"\09break from volume scan: ioc_status(0x%04x), loginfo(0x%08x)\0A\00", align 1
@MPI2_RAID_VOLUME_PGAD_FORM_HANDLE = common dso_local global i32 0, align 4
@MPI2_RAID_VOL_STATE_OPTIMAL = common dso_local global i64 0, align 8
@MPI2_RAID_VOL_STATE_ONLINE = common dso_local global i64 0, align 8
@MPI2_RAID_VOL_STATE_DEGRADED = common dso_local global i64 0, align 8
@MPI2_EVENT_IR_CHANGE_RC_ADDED = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [40 x i8] c"\09BEFORE adding volume: handle (0x%04x)\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"\09AFTER adding volume: handle (0x%04x)\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"\09scan devices: volumes complete\0A\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"\09scan devices: end devices start\0A\00", align 1
@MPI2_SAS_DEVICE_PGAD_FORM_GET_NEXT_HANDLE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [66 x i8] c"\09break from end device scan: ioc_status(0x%04x), loginfo(0x%08x)\0A\00", align 1
@.str.19 = private unnamed_addr constant [65 x i8] c"\09BEFORE adding end device: handle (0x%04x), sas_addr(0x%016llx)\0A\00", align 1
@.str.20 = private unnamed_addr constant [64 x i8] c"\09AFTER adding end device: handle (0x%04x), sas_addr(0x%016llx)\0A\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"\09scan devices: end devices complete\0A\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"\09scan devices: pcie end devices start\0A\00", align 1
@MPI26_PCIE_DEVICE_PGAD_FORM_GET_NEXT_HANDLE = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [71 x i8] c"\09break from pcie end device scan: ioc_status(0x%04x), loginfo(0x%08x)\0A\00", align 1
@.str.24 = private unnamed_addr constant [65 x i8] c"\09AFTER adding pcie end device: handle (0x%04x), wwid(0x%016llx)\0A\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"\09pcie devices: pcie end devices complete\0A\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"scan devices: complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*)* @_scsih_scan_for_devices_after_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_scan_for_devices_after_reset(%struct.MPT3SAS_ADAPTER* %0) #0 {
  %2 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %3 = alloca %struct.TYPE_27__, align 4
  %4 = alloca %struct.TYPE_23__, align 4
  %5 = alloca %struct.TYPE_30__, align 4
  %6 = alloca %struct.TYPE_24__, align 4
  %7 = alloca %struct.TYPE_25__, align 8
  %8 = alloca %struct.TYPE_26__, align 4
  %9 = alloca %struct.TYPE_28__, align 4
  %10 = alloca %struct.TYPE_29__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct._sas_device*, align 8
  %17 = alloca %struct._pcie_device*, align 8
  %18 = alloca %struct._sas_node*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %2, align 8
  %21 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %22 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %24 = call i32 @_scsih_sas_host_refresh(%struct.MPT3SAS_ADAPTER* %23)
  %25 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %26 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 65535, i32* %13, align 4
  br label %27

27:                                               ; preds = %92, %1
  %28 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %29 = load i32, i32* @MPI2_SAS_EXPAND_PGAD_FORM_GET_NEXT_HNDL, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @mpt3sas_config_get_expander_pg0(%struct.MPT3SAS_ADAPTER* %28, %struct.TYPE_29__* %10, %struct.TYPE_27__* %3, i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %93

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le16_to_cpu(i32 %36)
  %38 = load i32, i32* @MPI2_IOCSTATUS_MASK, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @MPI2_IOCSTATUS_SUCCESS, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %45 = load i32, i32* %12, align 4
  %46 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le32_to_cpu(i32 %47)
  %49 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %44, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %48)
  br label %93

50:                                               ; preds = %34
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %3, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le16_to_cpu(i32 %52)
  store i32 %53, i32* %13, align 4
  %54 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %55 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %54, i32 0, i32 3
  %56 = load i64, i64* %20, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %3, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @le64_to_cpu(i32 %60)
  %62 = call %struct._sas_node* @mpt3sas_scsih_expander_find_by_sas_address(%struct.MPT3SAS_ADAPTER* %58, i64 %61)
  store %struct._sas_node* %62, %struct._sas_node** %18, align 8
  %63 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %64 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %63, i32 0, i32 3
  %65 = load i64, i64* %20, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load %struct._sas_node*, %struct._sas_node** %18, align 8
  %68 = icmp ne %struct._sas_node* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %50
  %70 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %71 = load %struct._sas_node*, %struct._sas_node** %18, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @_scsih_refresh_expander_links(%struct.MPT3SAS_ADAPTER* %70, %struct._sas_node* %71, i32 %72)
  br label %92

74:                                               ; preds = %50
  %75 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %76 = load i32, i32* %13, align 4
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %3, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @le64_to_cpu(i32 %78)
  %80 = trunc i64 %79 to i32
  %81 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %75, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %76, i32 %80)
  %82 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @_scsih_expander_add(%struct.MPT3SAS_ADAPTER* %82, i32 %83)
  %85 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %86 = load i32, i32* %13, align 4
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %3, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @le64_to_cpu(i32 %88)
  %90 = trunc i64 %89 to i32
  %91 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %85, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i32 %86, i32 %90)
  br label %92

92:                                               ; preds = %74, %69
  br label %27

93:                                               ; preds = %43, %27
  %94 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %95 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %94, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %96 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %97 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %93
  br label %317

101:                                              ; preds = %93
  %102 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %103 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %102, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  store i32 255, i32* %11, align 4
  br label %104

104:                                              ; preds = %209, %147, %138, %101
  %105 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %106 = load i32, i32* @MPI2_PHYSDISK_PGAD_FORM_GET_NEXT_PHYSDISKNUM, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @mpt3sas_config_get_phys_disk_pg0(%struct.MPT3SAS_ADAPTER* %105, %struct.TYPE_29__* %10, %struct.TYPE_26__* %8, i32 %106, i32 %107)
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  br i1 %110, label %111, label %210

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @le16_to_cpu(i32 %113)
  %115 = load i32, i32* @MPI2_IOCSTATUS_MASK, align 4
  %116 = and i32 %114, %115
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @MPI2_IOCSTATUS_SUCCESS, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %111
  %121 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %122 = load i32, i32* %12, align 4
  %123 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @le32_to_cpu(i32 %124)
  %126 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %121, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0), i32 %122, i32 %125)
  br label %210

127:                                              ; preds = %111
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %11, align 4
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @le16_to_cpu(i32 %131)
  store i32 %132, i32* %13, align 4
  %133 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %134 = load i32, i32* %13, align 4
  %135 = call %struct._sas_device* @mpt3sas_get_sdev_by_handle(%struct.MPT3SAS_ADAPTER* %133, i32 %134)
  store %struct._sas_device* %135, %struct._sas_device** %16, align 8
  %136 = load %struct._sas_device*, %struct._sas_device** %16, align 8
  %137 = icmp ne %struct._sas_device* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %127
  %139 = load %struct._sas_device*, %struct._sas_device** %16, align 8
  %140 = call i32 @sas_device_put(%struct._sas_device* %139)
  br label %104

141:                                              ; preds = %127
  %142 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %143 = load i32, i32* @MPI2_SAS_DEVICE_PGAD_FORM_HANDLE, align 4
  %144 = load i32, i32* %13, align 4
  %145 = call i64 @mpt3sas_config_get_sas_device_pg0(%struct.MPT3SAS_ADAPTER* %142, %struct.TYPE_29__* %10, %struct.TYPE_23__* %4, i32 %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  br label %104

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @le16_to_cpu(i32 %150)
  %152 = load i32, i32* @MPI2_IOCSTATUS_MASK, align 4
  %153 = and i32 %151, %152
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* @MPI2_IOCSTATUS_SUCCESS, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %148
  %158 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %159 = load i32, i32* %12, align 4
  %160 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @le32_to_cpu(i32 %161)
  %163 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %158, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0), i32 %159, i32 %162)
  br label %210

164:                                              ; preds = %148
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @le16_to_cpu(i32 %166)
  store i32 %167, i32* %14, align 4
  %168 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %169 = load i32, i32* %14, align 4
  %170 = call i32 @_scsih_get_sas_address(%struct.MPT3SAS_ADAPTER* %168, i32 %169, i32* %15)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %209, label %172

172:                                              ; preds = %164
  %173 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %174 = load i32, i32* %13, align 4
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i64 @le64_to_cpu(i32 %176)
  %178 = trunc i64 %177 to i32
  %179 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %173, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.9, i64 0, i64 0), i32 %174, i32 %178)
  %180 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %181 = load i32, i32* %15, align 4
  %182 = load i32, i32* %13, align 4
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @MPI2_SAS_NEG_LINK_RATE_1_5, align 4
  %186 = call i32 @mpt3sas_transport_update_links(%struct.MPT3SAS_ADAPTER* %180, i32 %181, i32 %182, i32 %184, i32 %185)
  %187 = load i32, i32* %13, align 4
  %188 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %189 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @set_bit(i32 %187, i32 %190)
  store i32 0, i32* %19, align 4
  br label %192

192:                                              ; preds = %199, %172
  %193 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %194 = load i32, i32* %13, align 4
  %195 = load i32, i32* %19, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %19, align 4
  %197 = call i64 @_scsih_add_device(%struct.MPT3SAS_ADAPTER* %193, i32 %194, i32 %195, i32 1)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %192
  %200 = call i32 @ssleep(i32 1)
  br label %192

201:                                              ; preds = %192
  %202 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %203 = load i32, i32* %13, align 4
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i64 @le64_to_cpu(i32 %205)
  %207 = trunc i64 %206 to i32
  %208 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %202, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.10, i64 0, i64 0), i32 %203, i32 %207)
  br label %209

209:                                              ; preds = %201, %164
  br label %104

210:                                              ; preds = %157, %120, %104
  %211 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %212 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %211, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %213 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %214 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %213, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  store i32 65535, i32* %13, align 4
  br label %215

215:                                              ; preds = %313, %264, %257, %210
  %216 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %217 = load i32, i32* @MPI2_RAID_VOLUME_PGAD_FORM_GET_NEXT_HANDLE, align 4
  %218 = load i32, i32* %13, align 4
  %219 = call i32 @mpt3sas_config_get_raid_volume_pg1(%struct.MPT3SAS_ADAPTER* %216, %struct.TYPE_29__* %10, %struct.TYPE_24__* %6, i32 %217, i32 %218)
  %220 = icmp ne i32 %219, 0
  %221 = xor i1 %220, true
  br i1 %221, label %222, label %314

222:                                              ; preds = %215
  %223 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @le16_to_cpu(i32 %224)
  %226 = load i32, i32* @MPI2_IOCSTATUS_MASK, align 4
  %227 = and i32 %225, %226
  store i32 %227, i32* %12, align 4
  %228 = load i32, i32* %12, align 4
  %229 = load i32, i32* @MPI2_IOCSTATUS_SUCCESS, align 4
  %230 = icmp ne i32 %228, %229
  br i1 %230, label %231, label %238

231:                                              ; preds = %222
  %232 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %233 = load i32, i32* %12, align 4
  %234 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @le32_to_cpu(i32 %235)
  %237 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %232, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i64 0, i64 0), i32 %233, i32 %236)
  br label %314

238:                                              ; preds = %222
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @le16_to_cpu(i32 %240)
  store i32 %241, i32* %13, align 4
  %242 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %243 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %242, i32 0, i32 0
  %244 = load i64, i64* %20, align 8
  %245 = call i32 @spin_lock_irqsave(i32* %243, i64 %244)
  %246 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i64 @le64_to_cpu(i32 %248)
  %250 = call %struct._raid_device* @_scsih_raid_device_find_by_wwid(%struct.MPT3SAS_ADAPTER* %246, i64 %249)
  store %struct._raid_device* %250, %struct._raid_device** @_scsih_scan_for_devices_after_reset.raid_device, align 8
  %251 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %252 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %251, i32 0, i32 0
  %253 = load i64, i64* %20, align 8
  %254 = call i32 @spin_unlock_irqrestore(i32* %252, i64 %253)
  %255 = load %struct._raid_device*, %struct._raid_device** @_scsih_scan_for_devices_after_reset.raid_device, align 8
  %256 = icmp ne %struct._raid_device* %255, null
  br i1 %256, label %257, label %258

257:                                              ; preds = %238
  br label %215

258:                                              ; preds = %238
  %259 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %260 = load i32, i32* @MPI2_RAID_VOLUME_PGAD_FORM_HANDLE, align 4
  %261 = load i32, i32* %13, align 4
  %262 = call i64 @mpt3sas_config_get_raid_volume_pg0(%struct.MPT3SAS_ADAPTER* %259, %struct.TYPE_29__* %10, %struct.TYPE_25__* %7, i32 %260, i32 %261, i32 8)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %258
  br label %215

265:                                              ; preds = %258
  %266 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @le16_to_cpu(i32 %267)
  %269 = load i32, i32* @MPI2_IOCSTATUS_MASK, align 4
  %270 = and i32 %268, %269
  store i32 %270, i32* %12, align 4
  %271 = load i32, i32* %12, align 4
  %272 = load i32, i32* @MPI2_IOCSTATUS_SUCCESS, align 4
  %273 = icmp ne i32 %271, %272
  br i1 %273, label %274, label %281

274:                                              ; preds = %265
  %275 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %276 = load i32, i32* %12, align 4
  %277 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @le32_to_cpu(i32 %278)
  %280 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %275, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i64 0, i64 0), i32 %276, i32 %279)
  br label %314

281:                                              ; preds = %265
  %282 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @MPI2_RAID_VOL_STATE_OPTIMAL, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %296, label %286

286:                                              ; preds = %281
  %287 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @MPI2_RAID_VOL_STATE_ONLINE, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %296, label %291

291:                                              ; preds = %286
  %292 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @MPI2_RAID_VOL_STATE_DEGRADED, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %313

296:                                              ; preds = %291, %286, %281
  %297 = call i32 @memset(%struct.TYPE_28__* %9, i32 0, i32 8)
  %298 = load i32, i32* @MPI2_EVENT_IR_CHANGE_RC_ADDED, align 4
  %299 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 1
  store i32 %298, i32* %299, align 4
  %300 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 0
  store i32 %301, i32* %302, align 4
  %303 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %304 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %303, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i32 %305)
  %307 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %308 = call i32 @_scsih_sas_volume_add(%struct.MPT3SAS_ADAPTER* %307, %struct.TYPE_28__* %9)
  %309 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %310 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %309, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i32 %311)
  br label %313

313:                                              ; preds = %296, %291
  br label %215

314:                                              ; preds = %274, %231, %215
  %315 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %316 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %315, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0))
  br label %317

317:                                              ; preds = %314, %100
  %318 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %319 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %318, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0))
  store i32 65535, i32* %13, align 4
  br label %320

320:                                              ; preds = %404, %361, %352, %317
  %321 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %322 = load i32, i32* @MPI2_SAS_DEVICE_PGAD_FORM_GET_NEXT_HANDLE, align 4
  %323 = load i32, i32* %13, align 4
  %324 = call i64 @mpt3sas_config_get_sas_device_pg0(%struct.MPT3SAS_ADAPTER* %321, %struct.TYPE_29__* %10, %struct.TYPE_23__* %4, i32 %322, i32 %323)
  %325 = icmp ne i64 %324, 0
  %326 = xor i1 %325, true
  br i1 %326, label %327, label %405

327:                                              ; preds = %320
  %328 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @le16_to_cpu(i32 %329)
  %331 = load i32, i32* @MPI2_IOCSTATUS_MASK, align 4
  %332 = and i32 %330, %331
  store i32 %332, i32* %12, align 4
  %333 = load i32, i32* %12, align 4
  %334 = load i32, i32* @MPI2_IOCSTATUS_SUCCESS, align 4
  %335 = icmp ne i32 %333, %334
  br i1 %335, label %336, label %343

336:                                              ; preds = %327
  %337 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %338 = load i32, i32* %12, align 4
  %339 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = call i32 @le32_to_cpu(i32 %340)
  %342 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %337, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.18, i64 0, i64 0), i32 %338, i32 %341)
  br label %405

343:                                              ; preds = %327
  %344 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 4
  %345 = load i32, i32* %344, align 4
  %346 = call i32 @le16_to_cpu(i32 %345)
  store i32 %346, i32* %13, align 4
  %347 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 3
  %348 = load i32, i32* %347, align 4
  %349 = call i32 @le32_to_cpu(i32 %348)
  %350 = call i32 @_scsih_is_end_device(i32 %349)
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %353, label %352

352:                                              ; preds = %343
  br label %320

353:                                              ; preds = %343
  %354 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %355 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = call i64 @le64_to_cpu(i32 %356)
  %358 = call %struct._sas_device* @mpt3sas_get_sdev_by_addr(%struct.MPT3SAS_ADAPTER* %354, i64 %357)
  store %struct._sas_device* %358, %struct._sas_device** %16, align 8
  %359 = load %struct._sas_device*, %struct._sas_device** %16, align 8
  %360 = icmp ne %struct._sas_device* %359, null
  br i1 %360, label %361, label %364

361:                                              ; preds = %353
  %362 = load %struct._sas_device*, %struct._sas_device** %16, align 8
  %363 = call i32 @sas_device_put(%struct._sas_device* %362)
  br label %320

364:                                              ; preds = %353
  %365 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 2
  %366 = load i32, i32* %365, align 4
  %367 = call i32 @le16_to_cpu(i32 %366)
  store i32 %367, i32* %14, align 4
  %368 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %369 = load i32, i32* %14, align 4
  %370 = call i32 @_scsih_get_sas_address(%struct.MPT3SAS_ADAPTER* %368, i32 %369, i32* %15)
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %404, label %372

372:                                              ; preds = %364
  %373 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %374 = load i32, i32* %13, align 4
  %375 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 0
  %376 = load i32, i32* %375, align 4
  %377 = call i64 @le64_to_cpu(i32 %376)
  %378 = trunc i64 %377 to i32
  %379 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %373, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19, i64 0, i64 0), i32 %374, i32 %378)
  %380 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %381 = load i32, i32* %15, align 4
  %382 = load i32, i32* %13, align 4
  %383 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = load i32, i32* @MPI2_SAS_NEG_LINK_RATE_1_5, align 4
  %386 = call i32 @mpt3sas_transport_update_links(%struct.MPT3SAS_ADAPTER* %380, i32 %381, i32 %382, i32 %384, i32 %385)
  store i32 0, i32* %19, align 4
  br label %387

387:                                              ; preds = %394, %372
  %388 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %389 = load i32, i32* %13, align 4
  %390 = load i32, i32* %19, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %19, align 4
  %392 = call i64 @_scsih_add_device(%struct.MPT3SAS_ADAPTER* %388, i32 %389, i32 %390, i32 0)
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %396

394:                                              ; preds = %387
  %395 = call i32 @ssleep(i32 1)
  br label %387

396:                                              ; preds = %387
  %397 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %398 = load i32, i32* %13, align 4
  %399 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 0
  %400 = load i32, i32* %399, align 4
  %401 = call i64 @le64_to_cpu(i32 %400)
  %402 = trunc i64 %401 to i32
  %403 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %397, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.20, i64 0, i64 0), i32 %398, i32 %402)
  br label %404

404:                                              ; preds = %396, %364
  br label %320

405:                                              ; preds = %336, %320
  %406 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %407 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %406, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0))
  %408 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %409 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %408, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0))
  store i32 65535, i32* %13, align 4
  br label %410

410:                                              ; preds = %454, %451, %442, %405
  %411 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %412 = load i32, i32* @MPI26_PCIE_DEVICE_PGAD_FORM_GET_NEXT_HANDLE, align 4
  %413 = load i32, i32* %13, align 4
  %414 = call i32 @mpt3sas_config_get_pcie_device_pg0(%struct.MPT3SAS_ADAPTER* %411, %struct.TYPE_29__* %10, %struct.TYPE_30__* %5, i32 %412, i32 %413)
  %415 = icmp ne i32 %414, 0
  %416 = xor i1 %415, true
  br i1 %416, label %417, label %468

417:                                              ; preds = %410
  %418 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 1
  %419 = load i32, i32* %418, align 4
  %420 = call i32 @le16_to_cpu(i32 %419)
  %421 = load i32, i32* @MPI2_IOCSTATUS_MASK, align 4
  %422 = and i32 %420, %421
  store i32 %422, i32* %12, align 4
  %423 = load i32, i32* %12, align 4
  %424 = load i32, i32* @MPI2_IOCSTATUS_SUCCESS, align 4
  %425 = icmp ne i32 %423, %424
  br i1 %425, label %426, label %433

426:                                              ; preds = %417
  %427 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %428 = load i32, i32* %12, align 4
  %429 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 0
  %430 = load i32, i32* %429, align 4
  %431 = call i32 @le32_to_cpu(i32 %430)
  %432 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %427, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.23, i64 0, i64 0), i32 %428, i32 %431)
  br label %468

433:                                              ; preds = %417
  %434 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 3
  %435 = load i32, i32* %434, align 4
  %436 = call i32 @le16_to_cpu(i32 %435)
  store i32 %436, i32* %13, align 4
  %437 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 2
  %438 = load i32, i32* %437, align 4
  %439 = call i32 @le32_to_cpu(i32 %438)
  %440 = call i32 @_scsih_is_nvme_pciescsi_device(i32 %439)
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %443, label %442

442:                                              ; preds = %433
  br label %410

443:                                              ; preds = %433
  %444 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %445 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 0
  %446 = load i32, i32* %445, align 4
  %447 = call i64 @le64_to_cpu(i32 %446)
  %448 = call %struct._pcie_device* @mpt3sas_get_pdev_by_wwid(%struct.MPT3SAS_ADAPTER* %444, i64 %447)
  store %struct._pcie_device* %448, %struct._pcie_device** %17, align 8
  %449 = load %struct._pcie_device*, %struct._pcie_device** %17, align 8
  %450 = icmp ne %struct._pcie_device* %449, null
  br i1 %450, label %451, label %454

451:                                              ; preds = %443
  %452 = load %struct._pcie_device*, %struct._pcie_device** %17, align 8
  %453 = call i32 @pcie_device_put(%struct._pcie_device* %452)
  br label %410

454:                                              ; preds = %443
  store i32 0, i32* %19, align 4
  %455 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 1
  %456 = load i32, i32* %455, align 4
  %457 = call i32 @le16_to_cpu(i32 %456)
  store i32 %457, i32* %14, align 4
  %458 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %459 = load i32, i32* %13, align 4
  %460 = call i32 @_scsih_pcie_add_device(%struct.MPT3SAS_ADAPTER* %458, i32 %459)
  %461 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %462 = load i32, i32* %13, align 4
  %463 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %5, i32 0, i32 0
  %464 = load i32, i32* %463, align 4
  %465 = call i64 @le64_to_cpu(i32 %464)
  %466 = trunc i64 %465 to i32
  %467 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %461, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.24, i64 0, i64 0), i32 %462, i32 %466)
  br label %410

468:                                              ; preds = %426, %410
  %469 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %470 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %469, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i64 0, i64 0))
  %471 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %472 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %471, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ioc_info(%struct.MPT3SAS_ADAPTER*, i8*, ...) #1

declare dso_local i32 @_scsih_sas_host_refresh(%struct.MPT3SAS_ADAPTER*) #1

declare dso_local i32 @mpt3sas_config_get_expander_pg0(%struct.MPT3SAS_ADAPTER*, %struct.TYPE_29__*, %struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct._sas_node* @mpt3sas_scsih_expander_find_by_sas_address(%struct.MPT3SAS_ADAPTER*, i64) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @_scsih_refresh_expander_links(%struct.MPT3SAS_ADAPTER*, %struct._sas_node*, i32) #1

declare dso_local i32 @_scsih_expander_add(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @mpt3sas_config_get_phys_disk_pg0(%struct.MPT3SAS_ADAPTER*, %struct.TYPE_29__*, %struct.TYPE_26__*, i32, i32) #1

declare dso_local %struct._sas_device* @mpt3sas_get_sdev_by_handle(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @sas_device_put(%struct._sas_device*) #1

declare dso_local i64 @mpt3sas_config_get_sas_device_pg0(%struct.MPT3SAS_ADAPTER*, %struct.TYPE_29__*, %struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @_scsih_get_sas_address(%struct.MPT3SAS_ADAPTER*, i32, i32*) #1

declare dso_local i32 @mpt3sas_transport_update_links(%struct.MPT3SAS_ADAPTER*, i32, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i64 @_scsih_add_device(%struct.MPT3SAS_ADAPTER*, i32, i32, i32) #1

declare dso_local i32 @ssleep(i32) #1

declare dso_local i32 @mpt3sas_config_get_raid_volume_pg1(%struct.MPT3SAS_ADAPTER*, %struct.TYPE_29__*, %struct.TYPE_24__*, i32, i32) #1

declare dso_local %struct._raid_device* @_scsih_raid_device_find_by_wwid(%struct.MPT3SAS_ADAPTER*, i64) #1

declare dso_local i64 @mpt3sas_config_get_raid_volume_pg0(%struct.MPT3SAS_ADAPTER*, %struct.TYPE_29__*, %struct.TYPE_25__*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @_scsih_sas_volume_add(%struct.MPT3SAS_ADAPTER*, %struct.TYPE_28__*) #1

declare dso_local i32 @_scsih_is_end_device(i32) #1

declare dso_local %struct._sas_device* @mpt3sas_get_sdev_by_addr(%struct.MPT3SAS_ADAPTER*, i64) #1

declare dso_local i32 @mpt3sas_config_get_pcie_device_pg0(%struct.MPT3SAS_ADAPTER*, %struct.TYPE_29__*, %struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @_scsih_is_nvme_pciescsi_device(i32) #1

declare dso_local %struct._pcie_device* @mpt3sas_get_pdev_by_wwid(%struct.MPT3SAS_ADAPTER*, i64) #1

declare dso_local i32 @pcie_device_put(%struct._pcie_device*) #1

declare dso_local i32 @_scsih_pcie_add_device(%struct.MPT3SAS_ADAPTER*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
