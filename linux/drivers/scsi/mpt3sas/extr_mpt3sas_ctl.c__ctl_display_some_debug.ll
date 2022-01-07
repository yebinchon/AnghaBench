; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_ctl.c__ctl_display_some_debug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_ctl.c__ctl_display_some_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32, i8* }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_12__ = type { i32, i32, i64 }
%struct._sas_device = type { i32, i64, i32, i64 }
%struct._pcie_device = type { i64, i32, i64, i32, i64 }

@MPT_DEBUG_IOCTL = common dso_local global i32 0, align 4
@MPT_STRING_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"scsi_io, cmd(0x%02x), cdb_len(%d)\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"task_mgmt\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ioc_init\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ioc_facts\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"config, type(0x%02x), ext_type(0x%02x), number(%d)\00", align 1
@MPI2_CONFIG_PAGETYPE_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"port_facts\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"port_enable\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"event_notification\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"fw_download\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"fw_upload\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"raid_action\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"raid_pass, cmd(0x%02x), cdb_len(%d)\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"sas_iounit_cntl\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"sata_pass\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"diag_buffer_post\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"diag_release\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"smp_passthrough\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"%s: %s, smid(%d)\0A\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"\09iocstatus(0x%04x), loginfo(0x%08x)\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"\09sas_address(0x%016llx), phy(%d)\0A\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"\09enclosure_logical_id(0x%016llx), slot(%d)\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"\09WWID(0x%016llx), port(%d)\0A\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"\09scsi_state(0x%02x), scsi_status(0x%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*, i32, i8*, %struct.TYPE_14__*)* @_ctl_display_some_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ctl_display_some_debug(%struct.MPT3SAS_ADAPTER* %0, i32 %1, i8* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct._sas_device*, align 8
  %16 = alloca %struct._pcie_device*, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %8, align 8
  store i8* null, i8** %10, align 8
  %17 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %18 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MPT_DEBUG_IOCTL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %244

24:                                               ; preds = %4
  %25 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.TYPE_13__* @mpt3sas_base_get_msg_frame(%struct.MPT3SAS_ADAPTER* %25, i32 %26)
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %9, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %112 [
    i32 130, label %31
    i32 129, label %53
    i32 137, label %54
    i32 138, label %55
    i32 144, label %56
    i32 135, label %79
    i32 136, label %80
    i32 141, label %81
    i32 140, label %82
    i32 139, label %83
    i32 134, label %84
    i32 133, label %85
    i32 132, label %107
    i32 131, label %108
    i32 143, label %109
    i32 142, label %110
    i32 128, label %111
  ]

31:                                               ; preds = %24
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %33 = bitcast %struct.TYPE_13__* %32 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %11, align 8
  %34 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %35 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* @MPT_STRING_LENGTH, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @le16_to_cpu(i64 %46)
  %48 = and i32 %47, 15
  %49 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %36, i32 %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %48)
  %50 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %51 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %10, align 8
  br label %112

53:                                               ; preds = %24
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %112

54:                                               ; preds = %24
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %112

55:                                               ; preds = %24
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %112

56:                                               ; preds = %24
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %57, %struct.TYPE_13__** %12, align 8
  %58 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %59 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* @MPT_STRING_LENGTH, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @MPI2_CONFIG_PAGETYPE_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %60, i32 %61, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %67, i32 %70, i32 %74)
  %76 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %77 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %10, align 8
  br label %112

79:                                               ; preds = %24
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  br label %112

80:                                               ; preds = %24
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %10, align 8
  br label %112

81:                                               ; preds = %24
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8** %10, align 8
  br label %112

82:                                               ; preds = %24
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %10, align 8
  br label %112

83:                                               ; preds = %24
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %10, align 8
  br label %112

84:                                               ; preds = %24
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8** %10, align 8
  br label %112

85:                                               ; preds = %24
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %87 = bitcast %struct.TYPE_13__* %86 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %87, %struct.TYPE_11__** %13, align 8
  %88 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %89 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = load i32, i32* @MPT_STRING_LENGTH, align 4
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @le16_to_cpu(i64 %100)
  %102 = and i32 %101, 15
  %103 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %90, i32 %91, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %97, i32 %102)
  %104 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %105 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  store i8* %106, i8** %10, align 8
  br label %112

107:                                              ; preds = %24
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8** %10, align 8
  br label %112

108:                                              ; preds = %24
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8** %10, align 8
  br label %112

109:                                              ; preds = %24
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8** %10, align 8
  br label %112

110:                                              ; preds = %24
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8** %10, align 8
  br label %112

111:                                              ; preds = %24
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8** %10, align 8
  br label %112

112:                                              ; preds = %24, %111, %110, %109, %108, %107, %85, %84, %83, %82, %81, %80, %79, %56, %55, %54, %53, %31
  %113 = load i8*, i8** %10, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %112
  br label %244

116:                                              ; preds = %112
  %117 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = load i8*, i8** %10, align 8
  %120 = load i32, i32* %6, align 4
  %121 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %117, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i8* %118, i8* %119, i32 %120)
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %123 = icmp ne %struct.TYPE_14__* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %116
  br label %244

125:                                              ; preds = %116
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %130, %125
  %136 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @le16_to_cpu(i64 %139)
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @le32_to_cpu(i64 %143)
  %145 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %136, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0), i32 %140, i32 %144)
  br label %146

146:                                              ; preds = %135, %130
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 130
  br i1 %150, label %156, label %151

151:                                              ; preds = %146
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 133
  br i1 %155, label %156, label %244

156:                                              ; preds = %151, %146
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %158 = bitcast %struct.TYPE_14__* %157 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %158, %struct.TYPE_12__** %14, align 8
  store %struct._sas_device* null, %struct._sas_device** %15, align 8
  store %struct._pcie_device* null, %struct._pcie_device** %16, align 8
  %159 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @le16_to_cpu(i64 %162)
  %164 = call %struct._sas_device* @mpt3sas_get_sdev_by_handle(%struct.MPT3SAS_ADAPTER* %159, i32 %163)
  store %struct._sas_device* %164, %struct._sas_device** %15, align 8
  %165 = load %struct._sas_device*, %struct._sas_device** %15, align 8
  %166 = icmp ne %struct._sas_device* %165, null
  br i1 %166, label %167, label %186

167:                                              ; preds = %156
  %168 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %169 = load %struct._sas_device*, %struct._sas_device** %15, align 8
  %170 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = load %struct._sas_device*, %struct._sas_device** %15, align 8
  %173 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @ioc_warn(%struct.MPT3SAS_ADAPTER* %168, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i64 %171, i32 %174)
  %176 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %177 = load %struct._sas_device*, %struct._sas_device** %15, align 8
  %178 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct._sas_device*, %struct._sas_device** %15, align 8
  %181 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @ioc_warn(%struct.MPT3SAS_ADAPTER* %176, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i64 0, i64 0), i64 %179, i32 %182)
  %184 = load %struct._sas_device*, %struct._sas_device** %15, align 8
  %185 = call i32 @sas_device_put(%struct._sas_device* %184)
  br label %186

186:                                              ; preds = %167, %156
  %187 = load %struct._sas_device*, %struct._sas_device** %15, align 8
  %188 = icmp ne %struct._sas_device* %187, null
  br i1 %188, label %224, label %189

189:                                              ; preds = %186
  %190 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @le16_to_cpu(i64 %193)
  %195 = call %struct._pcie_device* @mpt3sas_get_pdev_by_handle(%struct.MPT3SAS_ADAPTER* %190, i32 %194)
  store %struct._pcie_device* %195, %struct._pcie_device** %16, align 8
  %196 = load %struct._pcie_device*, %struct._pcie_device** %16, align 8
  %197 = icmp ne %struct._pcie_device* %196, null
  br i1 %197, label %198, label %223

198:                                              ; preds = %189
  %199 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %200 = load %struct._pcie_device*, %struct._pcie_device** %16, align 8
  %201 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %200, i32 0, i32 4
  %202 = load i64, i64* %201, align 8
  %203 = load %struct._pcie_device*, %struct._pcie_device** %16, align 8
  %204 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @ioc_warn(%struct.MPT3SAS_ADAPTER* %199, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i64 %202, i32 %205)
  %207 = load %struct._pcie_device*, %struct._pcie_device** %16, align 8
  %208 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %220

211:                                              ; preds = %198
  %212 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %213 = load %struct._pcie_device*, %struct._pcie_device** %16, align 8
  %214 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = load %struct._pcie_device*, %struct._pcie_device** %16, align 8
  %217 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @ioc_warn(%struct.MPT3SAS_ADAPTER* %212, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i64 0, i64 0), i64 %215, i32 %218)
  br label %220

220:                                              ; preds = %211, %198
  %221 = load %struct._pcie_device*, %struct._pcie_device** %16, align 8
  %222 = call i32 @pcie_device_put(%struct._pcie_device* %221)
  br label %223

223:                                              ; preds = %220, %189
  br label %224

224:                                              ; preds = %223, %186
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %234, label %229

229:                                              ; preds = %224
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %243

234:                                              ; preds = %229, %224
  %235 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %235, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i64 0, i64 0), i32 %238, i32 %241)
  br label %243

243:                                              ; preds = %234, %229
  br label %244

244:                                              ; preds = %23, %115, %124, %243, %151
  ret void
}

declare dso_local %struct.TYPE_13__* @mpt3sas_base_get_msg_frame(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @ioc_info(%struct.MPT3SAS_ADAPTER*, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local %struct._sas_device* @mpt3sas_get_sdev_by_handle(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @ioc_warn(%struct.MPT3SAS_ADAPTER*, i8*, i64, i32) #1

declare dso_local i32 @sas_device_put(%struct._sas_device*) #1

declare dso_local %struct._pcie_device* @mpt3sas_get_pdev_by_handle(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @pcie_device_put(%struct._pcie_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
