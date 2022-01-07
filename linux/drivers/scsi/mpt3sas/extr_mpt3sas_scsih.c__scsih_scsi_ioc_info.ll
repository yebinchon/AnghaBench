; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_scsi_ioc_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_scsi_ioc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i8*, i64 }
%struct.scsi_cmnd = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.scsi_target* }
%struct.scsi_target = type { %struct.MPT3SAS_TARGET* }
%struct.MPT3SAS_TARGET = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._sas_device = type { i32, i64 }
%struct._pcie_device = type { i64, i64*, i32, i64*, i64, i64*, i64 }
%struct.sense_info = type { i8*, i32, i8* }

@MPI2_IOCSTATUS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"WarpDrive\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"invalid function\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"scsi recovered error\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"scsi invalid dev handle\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"scsi device not there\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"scsi data overrun\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"scsi data underrun\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"scsi io data error\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"scsi protocol error\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"scsi task terminated\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"scsi residual mismatch\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"scsi task mgmt failed\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"scsi ioc terminated\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"scsi ext terminated\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"eedp guard error\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"eedp ref tag error\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"eedp app tag error\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"insufficient power\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"good\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"check condition\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"condition met\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"busy\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"intermediate\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"intermediate condmet\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"reservation conflict\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"command terminated\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"task set full\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"aca active\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"task aborted\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c" \00", align 1
@MPI2_SCSI_STATE_RESPONSE_INFO_VALID = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [15 x i8] c"response info \00", align 1
@MPI2_SCSI_STATE_TERMINATED = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [18 x i8] c"state terminated \00", align 1
@MPI2_SCSI_STATE_NO_SCSI_STATUS = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [11 x i8] c"no status \00", align 1
@MPI2_SCSI_STATE_AUTOSENSE_FAILED = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [18 x i8] c"autosense failed \00", align 1
@MPI2_SCSI_STATE_AUTOSENSE_VALID = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [17 x i8] c"autosense valid \00", align 1
@MPT_TARGET_FLAGS_VOLUME = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [21 x i8] c"\09%s wwid(0x%016llx)\0A\00", align 1
@MPT_TARGET_FLAGS_PCIE_DEVICE = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [28 x i8] c"\09wwid(0x%016llx), port(%d)\0A\00", align 1
@.str.40 = private unnamed_addr constant [44 x i8] c"\09enclosure logical id(0x%016llx), slot(%d)\0A\00", align 1
@.str.41 = private unnamed_addr constant [47 x i8] c"\09enclosure level(0x%04x), connector name( %s)\0A\00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c"\09sas_address(0x%016llx), phy(%d)\0A\00", align 1
@.str.43 = private unnamed_addr constant [51 x i8] c"\09handle(0x%04x), ioc_status(%s)(0x%04x), smid(%d)\0A\00", align 1
@.str.44 = private unnamed_addr constant [44 x i8] c"\09request_len(%d), underflow(%d), resid(%d)\0A\00", align 1
@.str.45 = private unnamed_addr constant [50 x i8] c"\09tag(%d), transfer_count(%d), sc->result(0x%08x)\0A\00", align 1
@.str.46 = private unnamed_addr constant [50 x i8] c"\09scsi_status(%s)(0x%02x), scsi_state(%s)(0x%02x)\0A\00", align 1
@.str.47 = private unnamed_addr constant [58 x i8] c"\09[sense_key,asc,ascq]: [0x%02x,0x%02x,0x%02x], count(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*, %struct.scsi_cmnd*, %struct.TYPE_5__*, i32)* @_scsih_scsi_ioc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_scsi_ioc_info(%struct.MPT3SAS_ADAPTER* %0, %struct.scsi_cmnd* %1, %struct.TYPE_5__* %2, i32 %3) #0 {
  %5 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct._sas_device*, align 8
  %19 = alloca %struct._pcie_device*, align 8
  %20 = alloca %struct.scsi_target*, align 8
  %21 = alloca %struct.MPT3SAS_TARGET*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.sense_info, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %5, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i32 %3, i32* %8, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le16_to_cpu(i32 %26)
  %28 = load i32, i32* @MPI2_IOCSTATUS_MASK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %11, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %13, align 4
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %36 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %37 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %16, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le32_to_cpu(i32 %41)
  store i32 %42, i32* %17, align 4
  store %struct._sas_device* null, %struct._sas_device** %18, align 8
  store %struct._pcie_device* null, %struct._pcie_device** %19, align 8
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %44 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %43, i32 0, i32 3
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.scsi_target*, %struct.scsi_target** %46, align 8
  store %struct.scsi_target* %47, %struct.scsi_target** %20, align 8
  %48 = load %struct.scsi_target*, %struct.scsi_target** %20, align 8
  %49 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %48, i32 0, i32 0
  %50 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %49, align 8
  store %struct.MPT3SAS_TARGET* %50, %struct.MPT3SAS_TARGET** %21, align 8
  store i8* null, i8** %22, align 8
  %51 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %21, align 8
  %52 = icmp ne %struct.MPT3SAS_TARGET* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %4
  br label %317

54:                                               ; preds = %4
  %55 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %56 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  br label %61

60:                                               ; preds = %54
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %22, align 8
  br label %61

61:                                               ; preds = %60, %59
  %62 = load i32, i32* %17, align 4
  %63 = icmp eq i32 %62, 823590912
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %317

65:                                               ; preds = %61
  %66 = load i32, i32* %11, align 4
  switch i32 %66, label %85 [
    i32 139, label %67
    i32 152, label %68
    i32 143, label %69
    i32 147, label %70
    i32 149, label %71
    i32 151, label %72
    i32 150, label %73
    i32 145, label %74
    i32 144, label %75
    i32 140, label %76
    i32 142, label %77
    i32 141, label %78
    i32 146, label %79
    i32 148, label %80
    i32 155, label %81
    i32 154, label %82
    i32 156, label %83
    i32 153, label %84
  ]

67:                                               ; preds = %65
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  br label %86

68:                                               ; preds = %65
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  br label %86

69:                                               ; preds = %65
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8** %14, align 8
  br label %86

70:                                               ; preds = %65
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8** %14, align 8
  br label %86

71:                                               ; preds = %65
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8** %14, align 8
  br label %86

72:                                               ; preds = %65
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8** %14, align 8
  br label %86

73:                                               ; preds = %65
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8** %14, align 8
  br label %86

74:                                               ; preds = %65
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8** %14, align 8
  br label %86

75:                                               ; preds = %65
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8** %14, align 8
  br label %86

76:                                               ; preds = %65
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8** %14, align 8
  br label %86

77:                                               ; preds = %65
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8** %14, align 8
  br label %86

78:                                               ; preds = %65
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i8** %14, align 8
  br label %86

79:                                               ; preds = %65
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i8** %14, align 8
  br label %86

80:                                               ; preds = %65
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8** %14, align 8
  br label %86

81:                                               ; preds = %65
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8** %14, align 8
  br label %86

82:                                               ; preds = %65
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i8** %14, align 8
  br label %86

83:                                               ; preds = %65
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i8** %14, align 8
  br label %86

84:                                               ; preds = %65
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0), i8** %14, align 8
  br label %86

85:                                               ; preds = %65
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8** %14, align 8
  br label %86

86:                                               ; preds = %85, %84, %83, %82, %81, %80, %79, %78, %77, %76, %75, %74, %73, %72, %71, %70, %69, %68, %67
  %87 = load i32, i32* %13, align 4
  switch i32 %87, label %99 [
    i32 133, label %88
    i32 136, label %89
    i32 134, label %90
    i32 137, label %91
    i32 132, label %92
    i32 131, label %93
    i32 130, label %94
    i32 135, label %95
    i32 128, label %96
    i32 138, label %97
    i32 129, label %98
  ]

88:                                               ; preds = %86
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8** %15, align 8
  br label %100

89:                                               ; preds = %86
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8** %15, align 8
  br label %100

90:                                               ; preds = %86
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8** %15, align 8
  br label %100

91:                                               ; preds = %86
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8** %15, align 8
  br label %100

92:                                               ; preds = %86
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i8** %15, align 8
  br label %100

93:                                               ; preds = %86
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0), i8** %15, align 8
  br label %100

94:                                               ; preds = %86
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i64 0, i64 0), i8** %15, align 8
  br label %100

95:                                               ; preds = %86
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0), i8** %15, align 8
  br label %100

96:                                               ; preds = %86
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i8** %15, align 8
  br label %100

97:                                               ; preds = %86
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i8** %15, align 8
  br label %100

98:                                               ; preds = %86
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0), i8** %15, align 8
  br label %100

99:                                               ; preds = %86
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8** %15, align 8
  br label %100

100:                                              ; preds = %99, %98, %97, %96, %95, %94, %93, %92, %91, %90, %89, %88
  %101 = load i8*, i8** %16, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  store i8 0, i8* %102, align 1
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), i8** %16, align 8
  br label %106

106:                                              ; preds = %105, %100
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* @MPI2_SCSI_STATE_RESPONSE_INFO_VALID, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i8*, i8** %16, align 8
  %113 = call i32 @strcat(i8* %112, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %106
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* @MPI2_SCSI_STATE_TERMINATED, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i8*, i8** %16, align 8
  %121 = call i32 @strcat(i8* %120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %114
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @MPI2_SCSI_STATE_NO_SCSI_STATUS, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load i8*, i8** %16, align 8
  %129 = call i32 @strcat(i8* %128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %122
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @MPI2_SCSI_STATE_AUTOSENSE_FAILED, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load i8*, i8** %16, align 8
  %137 = call i32 @strcat(i8* %136, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i64 0, i64 0))
  br label %138

138:                                              ; preds = %135, %130
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* @MPI2_SCSI_STATE_AUTOSENSE_VALID, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load i8*, i8** %16, align 8
  %145 = call i32 @strcat(i8* %144, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %138
  %147 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %148 = call i32 @scsi_print_command(%struct.scsi_cmnd* %147)
  %149 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %21, align 8
  %150 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @MPT_TARGET_FLAGS_VOLUME, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %146
  %156 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %157 = load i8*, i8** %22, align 8
  %158 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %21, align 8
  %159 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = trunc i64 %160 to i32
  %162 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_warn(%struct.MPT3SAS_ADAPTER* %156, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0), i8* %157, i32 %161)
  br label %243

163:                                              ; preds = %146
  %164 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %21, align 8
  %165 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @MPT_TARGET_FLAGS_PCIE_DEVICE, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %220

170:                                              ; preds = %163
  %171 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %172 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %21, align 8
  %173 = call %struct._pcie_device* @mpt3sas_get_pdev_from_target(%struct.MPT3SAS_ADAPTER* %171, %struct.MPT3SAS_TARGET* %172)
  store %struct._pcie_device* %173, %struct._pcie_device** %19, align 8
  %174 = load %struct._pcie_device*, %struct._pcie_device** %19, align 8
  %175 = icmp ne %struct._pcie_device* %174, null
  br i1 %175, label %176, label %219

176:                                              ; preds = %170
  %177 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %178 = load %struct._pcie_device*, %struct._pcie_device** %19, align 8
  %179 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %178, i32 0, i32 6
  %180 = load i64, i64* %179, align 8
  %181 = trunc i64 %180 to i32
  %182 = load %struct._pcie_device*, %struct._pcie_device** %19, align 8
  %183 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %182, i32 0, i32 5
  %184 = load i64*, i64** %183, align 8
  %185 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %177, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.39, i64 0, i64 0), i32 %181, i64* %184)
  %186 = load %struct._pcie_device*, %struct._pcie_device** %19, align 8
  %187 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %200

190:                                              ; preds = %176
  %191 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %192 = load %struct._pcie_device*, %struct._pcie_device** %19, align 8
  %193 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %192, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = trunc i64 %194 to i32
  %196 = load %struct._pcie_device*, %struct._pcie_device** %19, align 8
  %197 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %196, i32 0, i32 3
  %198 = load i64*, i64** %197, align 8
  %199 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %191, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.40, i64 0, i64 0), i32 %195, i64* %198)
  br label %200

200:                                              ; preds = %190, %176
  %201 = load %struct._pcie_device*, %struct._pcie_device** %19, align 8
  %202 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %201, i32 0, i32 1
  %203 = load i64*, i64** %202, align 8
  %204 = getelementptr inbounds i64, i64* %203, i64 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %200
  %208 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %209 = load %struct._pcie_device*, %struct._pcie_device** %19, align 8
  %210 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load %struct._pcie_device*, %struct._pcie_device** %19, align 8
  %213 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %212, i32 0, i32 1
  %214 = load i64*, i64** %213, align 8
  %215 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %208, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.41, i64 0, i64 0), i32 %211, i64* %214)
  br label %216

216:                                              ; preds = %207, %200
  %217 = load %struct._pcie_device*, %struct._pcie_device** %19, align 8
  %218 = call i32 @pcie_device_put(%struct._pcie_device* %217)
  br label %219

219:                                              ; preds = %216, %170
  br label %242

220:                                              ; preds = %163
  %221 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %222 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %21, align 8
  %223 = call %struct._sas_device* @mpt3sas_get_sdev_from_target(%struct.MPT3SAS_ADAPTER* %221, %struct.MPT3SAS_TARGET* %222)
  store %struct._sas_device* %223, %struct._sas_device** %18, align 8
  %224 = load %struct._sas_device*, %struct._sas_device** %18, align 8
  %225 = icmp ne %struct._sas_device* %224, null
  br i1 %225, label %226, label %241

226:                                              ; preds = %220
  %227 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %228 = load %struct._sas_device*, %struct._sas_device** %18, align 8
  %229 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = trunc i64 %230 to i32
  %232 = load %struct._sas_device*, %struct._sas_device** %18, align 8
  %233 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_warn(%struct.MPT3SAS_ADAPTER* %227, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.42, i64 0, i64 0), i32 %231, i32 %234)
  %236 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %237 = load %struct._sas_device*, %struct._sas_device** %18, align 8
  %238 = call i32 @_scsih_display_enclosure_chassis_info(%struct.MPT3SAS_ADAPTER* %236, %struct._sas_device* %237, i32* null, i32* null)
  %239 = load %struct._sas_device*, %struct._sas_device** %18, align 8
  %240 = call i32 @sas_device_put(%struct._sas_device* %239)
  br label %241

241:                                              ; preds = %226, %220
  br label %242

242:                                              ; preds = %241, %219
  br label %243

243:                                              ; preds = %242, %155
  %244 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 6
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @le16_to_cpu(i32 %247)
  %249 = load i8*, i8** %14, align 8
  %250 = load i32, i32* %11, align 4
  %251 = load i32, i32* %8, align 4
  %252 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_warn(%struct.MPT3SAS_ADAPTER* %244, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.43, i64 0, i64 0), i32 %248, i8* %249, i32 %250, i32 %251)
  %253 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %254 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %255 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %254)
  %256 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %257 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %260 = call i32 @scsi_get_resid(%struct.scsi_cmnd* %259)
  %261 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_warn(%struct.MPT3SAS_ADAPTER* %253, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.44, i64 0, i64 0), i32 %255, i32 %258, i32 %260)
  %262 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @le16_to_cpu(i32 %265)
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @le32_to_cpu(i32 %269)
  %271 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %272 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_warn(%struct.MPT3SAS_ADAPTER* %262, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.45, i64 0, i64 0), i32 %266, i32 %270, i32 %273)
  %275 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %276 = load i8*, i8** %15, align 8
  %277 = load i32, i32* %13, align 4
  %278 = load i8*, i8** %16, align 8
  %279 = load i32, i32* %12, align 4
  %280 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_warn(%struct.MPT3SAS_ADAPTER* %275, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.46, i64 0, i64 0), i8* %276, i32 %277, i8* %278, i32 %279)
  %281 = load i32, i32* %12, align 4
  %282 = load i32, i32* @MPI2_SCSI_STATE_AUTOSENSE_VALID, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %302

285:                                              ; preds = %243
  %286 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %287 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @_scsih_normalize_sense(i32 %288, %struct.sense_info* %23)
  %290 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %291 = getelementptr inbounds %struct.sense_info, %struct.sense_info* %23, i32 0, i32 0
  %292 = load i8*, i8** %291, align 8
  %293 = getelementptr inbounds %struct.sense_info, %struct.sense_info* %23, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = getelementptr inbounds %struct.sense_info, %struct.sense_info* %23, i32 0, i32 2
  %296 = load i8*, i8** %295, align 8
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @le32_to_cpu(i32 %299)
  %301 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_warn(%struct.MPT3SAS_ADAPTER* %290, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.47, i64 0, i64 0), i8* %292, i32 %294, i8* %296, i32 %300)
  br label %302

302:                                              ; preds = %285, %243
  %303 = load i32, i32* %12, align 4
  %304 = load i32, i32* @MPI2_SCSI_STATE_RESPONSE_INFO_VALID, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %317

307:                                              ; preds = %302
  %308 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @le32_to_cpu(i32 %310)
  store i32 %311, i32* %9, align 4
  store i32* %9, i32** %10, align 8
  %312 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %313 = load i32*, i32** %10, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 0
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @_scsih_response_code(%struct.MPT3SAS_ADAPTER* %312, i32 %315)
  br label %317

317:                                              ; preds = %53, %64, %307, %302
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @scsi_print_command(%struct.scsi_cmnd*) #1

declare dso_local i32 @ioc_warn(%struct.MPT3SAS_ADAPTER*, i8*, ...) #1

declare dso_local %struct._pcie_device* @mpt3sas_get_pdev_from_target(%struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_TARGET*) #1

declare dso_local i32 @ioc_info(%struct.MPT3SAS_ADAPTER*, i8*, i32, i64*) #1

declare dso_local i32 @pcie_device_put(%struct._pcie_device*) #1

declare dso_local %struct._sas_device* @mpt3sas_get_sdev_from_target(%struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_TARGET*) #1

declare dso_local i32 @_scsih_display_enclosure_chassis_info(%struct.MPT3SAS_ADAPTER*, %struct._sas_device*, i32*, i32*) #1

declare dso_local i32 @sas_device_put(%struct._sas_device*) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_get_resid(%struct.scsi_cmnd*) #1

declare dso_local i32 @_scsih_normalize_sense(i32, %struct.sense_info*) #1

declare dso_local i32 @_scsih_response_code(%struct.MPT3SAS_ADAPTER*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
