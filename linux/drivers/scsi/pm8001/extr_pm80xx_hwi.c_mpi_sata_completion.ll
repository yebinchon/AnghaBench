; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_sata_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_sata_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i64*, %struct.pm8001_ccb_info* }
%struct.pm8001_ccb_info = type { %struct.pm8001_device*, %struct.sas_task* }
%struct.pm8001_device = type { i32, i64, i32 }
%struct.sas_task = type { i32, i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_5__*, %struct.task_status_struct, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, %struct.pm8001_device* }
%struct.TYPE_4__ = type { i32 }
%struct.task_status_struct = type { i64, i32, i8*, i8*, i8*, i64 }
%struct.sata_completion_resp = type { i64*, i32, i32, i32 }
%struct.ata_task_resp = type { i64, i64* }

@.str = private unnamed_addr constant [10 x i8] c"tag null\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ccb null\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"task null\0A\00", align 1
@NCQ_READ_LOG_FLAG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"task or dev null\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"ts null\0A\00", align 1
@IO_OVERFLOW = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [41 x i8] c"SAS Address of IO Failure Drive:%08x%08x\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"SAS Address of IO Failure Drive:%016llx\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"IO_SUCCESS\0A\00", align 1
@SAS_TASK_COMPLETE = common dso_local global i8* null, align 8
@SAM_STAT_GOOD = common dso_local global i8* null, align 8
@NCQ_ABORT_ALL_FLAG = common dso_local global i32 0, align 4
@SAS_PROTO_RESPONSE = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [29 x i8] c"SAS_PROTO_RESPONSE len = %d\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"PIO read len = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"FPDMA len = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"other len = %d\0A\00", align 1
@SAS_STATUS_BUF_SIZE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [19 x i8] c"response to large\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"IO_ABORTED IOMB Tag\0A\00", align 1
@SAS_ABORTED_TASK = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [25 x i8] c"IO_UNDERFLOW param = %d\0A\00", align 1
@SAS_DATA_UNDERRUN = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [14 x i8] c"IO_NO_DEVICE\0A\00", align 1
@SAS_TASK_UNDELIVERED = common dso_local global i8* null, align 8
@SAS_PHY_DOWN = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [21 x i8] c"IO_XFER_ERROR_BREAK\0A\00", align 1
@SAS_INTERRUPTED = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [29 x i8] c"IO_XFER_ERROR_PHY_NOT_READY\0A\00", align 1
@SAS_OPEN_REJECT = common dso_local global i8* null, align 8
@SAS_OREJ_RSVD_RETRY = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [42 x i8] c"IO_OPEN_CNX_ERROR_PROTOCOL_NOT_SUPPORTED\0A\00", align 1
@SAS_OREJ_EPROTO = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [34 x i8] c"IO_OPEN_CNX_ERROR_ZONE_VIOLATION\0A\00", align 1
@SAS_OREJ_UNKNOWN = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [25 x i8] c"IO_OPEN_CNX_ERROR_BREAK\0A\00", align 1
@SAS_OREJ_RSVD_CONT0 = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [33 x i8] c"IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS\0A\00", align 1
@SAS_DEV_NO_RESPONSE = common dso_local global i8* null, align 8
@SAS_QUEUE_FULL = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [35 x i8] c"IO_OPEN_CNX_ERROR_BAD_DESTINATION\0A\00", align 1
@SAS_OREJ_BAD_DEST = common dso_local global i8* null, align 8
@.str.23 = private unnamed_addr constant [49 x i8] c"IO_OPEN_CNX_ERROR_CONNECTION_RATE_NOT_SUPPORTED\0A\00", align 1
@SAS_OREJ_CONN_RATE = common dso_local global i8* null, align 8
@.str.24 = private unnamed_addr constant [38 x i8] c"IO_OPEN_CNX_ERROR_STP_RESOURCES_BUSY\0A\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"IO_OPEN_CNX_ERROR_WRONG_DESTINATION\0A\00", align 1
@SAS_OREJ_WRONG_DEST = common dso_local global i8* null, align 8
@.str.26 = private unnamed_addr constant [28 x i8] c"IO_XFER_ERROR_NAK_RECEIVED\0A\00", align 1
@SAS_NAK_R_ERR = common dso_local global i8* null, align 8
@.str.27 = private unnamed_addr constant [31 x i8] c"IO_XFER_ERROR_ACK_NAK_TIMEOUT\0A\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"IO_XFER_ERROR_DMA\0A\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"IO_XFER_ERROR_SATA_LINK_TIMEOUT\0A\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"IO_XFER_ERROR_REJECTED_NCQ_MODE\0A\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"IO_XFER_OPEN_RETRY_TIMEOUT\0A\00", align 1
@SAS_OPEN_TO = common dso_local global i8* null, align 8
@.str.32 = private unnamed_addr constant [18 x i8] c"IO_PORT_IN_RESET\0A\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"IO_DS_NON_OPERATIONAL\0A\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"IO_DS_IN_RECOVERY\0A\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"IO_DS_IN_ERROR\0A\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"IO_OPEN_CNX_ERROR_HW_RESOURCE_BUSY\0A\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"Unknown status 0x%x\0A\00", align 1
@SAS_TASK_STATE_PENDING = common dso_local global i32 0, align 4
@SAS_TASK_AT_INITIATOR = common dso_local global i32 0, align 4
@SAS_TASK_STATE_DONE = common dso_local global i32 0, align 4
@SAS_TASK_STATE_ABORTED = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [84 x i8] c"task 0x%p done with io_status 0x%x resp 0x%x stat 0x%x but aborted by upper layer!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*, i8*)* @mpi_sata_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpi_sata_completion(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sas_task*, align 8
  %6 = alloca %struct.pm8001_ccb_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i64], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca [4 x i64], align 16
  %16 = alloca %struct.sata_completion_resp*, align 8
  %17 = alloca %struct.task_status_struct*, align 8
  %18 = alloca %struct.ata_task_resp*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca %struct.pm8001_device*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr i8, i8* %23, i64 4
  %25 = bitcast i8* %24 to %struct.sata_completion_resp*
  store %struct.sata_completion_resp* %25, %struct.sata_completion_resp** %16, align 8
  %26 = load %struct.sata_completion_resp*, %struct.sata_completion_resp** %16, align 8
  %27 = getelementptr inbounds %struct.sata_completion_resp, %struct.sata_completion_resp* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @le32_to_cpu(i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load %struct.sata_completion_resp*, %struct.sata_completion_resp** %16, align 8
  %31 = getelementptr inbounds %struct.sata_completion_resp, %struct.sata_completion_resp* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @le32_to_cpu(i32 %32)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %2
  %37 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %38 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %37, i32 %38)
  br label %850

40:                                               ; preds = %2
  %41 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %42 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %41, i32 0, i32 1
  %43 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %43, i64 %44
  store %struct.pm8001_ccb_info* %45, %struct.pm8001_ccb_info** %6, align 8
  %46 = load %struct.sata_completion_resp*, %struct.sata_completion_resp** %16, align 8
  %47 = getelementptr inbounds %struct.sata_completion_resp, %struct.sata_completion_resp* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @le32_to_cpu(i32 %48)
  store i64 %49, i64* %7, align 8
  %50 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %51 = icmp ne %struct.pm8001_ccb_info* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %40
  %53 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %54 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %53, i32 0, i32 1
  %55 = load %struct.sas_task*, %struct.sas_task** %54, align 8
  store %struct.sas_task* %55, %struct.sas_task** %5, align 8
  %56 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %57 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %56, i32 0, i32 0
  %58 = load %struct.pm8001_device*, %struct.pm8001_device** %57, align 8
  store %struct.pm8001_device* %58, %struct.pm8001_device** %20, align 8
  br label %63

59:                                               ; preds = %40
  %60 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %61 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %62 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %60, i32 %61)
  br label %850

63:                                               ; preds = %52
  %64 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %65 = icmp ne %struct.sas_task* %64, null
  br i1 %65, label %66, label %85

66:                                               ; preds = %63
  %67 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %68 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %67, i32 0, i32 5
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = icmp ne %struct.TYPE_5__* %69, null
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %73 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %72, i32 0, i32 5
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load %struct.pm8001_device*, %struct.pm8001_device** %75, align 8
  %77 = icmp ne %struct.pm8001_device* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %80 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %79, i32 0, i32 5
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  %83 = load %struct.pm8001_device*, %struct.pm8001_device** %82, align 8
  store %struct.pm8001_device* %83, %struct.pm8001_device** %20, align 8
  br label %84

84:                                               ; preds = %78, %71, %66
  br label %89

85:                                               ; preds = %63
  %86 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %87 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %88 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %86, i32 %87)
  br label %850

89:                                               ; preds = %84
  %90 = load %struct.pm8001_device*, %struct.pm8001_device** %20, align 8
  %91 = icmp ne %struct.pm8001_device* %90, null
  br i1 %91, label %92, label %122

92:                                               ; preds = %89
  %93 = load %struct.pm8001_device*, %struct.pm8001_device** %20, align 8
  %94 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @NCQ_READ_LOG_FLAG, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %122, label %99

99:                                               ; preds = %92
  %100 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %101 = icmp ne %struct.sas_task* %100, null
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %104 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %109 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %108, i32 0, i32 5
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = icmp ne %struct.TYPE_5__* %110, null
  %112 = xor i1 %111, true
  br label %113

113:                                              ; preds = %107, %102, %99
  %114 = phi i1 [ true, %102 ], [ true, %99 ], [ %112, %107 ]
  %115 = zext i1 %114 to i32
  %116 = call i64 @unlikely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %120 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %121 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %119, i32 %120)
  br label %850

122:                                              ; preds = %113, %92, %89
  %123 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %124 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %123, i32 0, i32 6
  store %struct.task_status_struct* %124, %struct.task_status_struct** %17, align 8
  %125 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %126 = icmp ne %struct.task_status_struct* %125, null
  br i1 %126, label %131, label %127

127:                                              ; preds = %122
  %128 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %129 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %130 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %128, i32 %129)
  br label %850

131:                                              ; preds = %122
  %132 = load i64, i64* %8, align 8
  %133 = icmp ne i64 %132, 138
  br i1 %133, label %134, label %264

134:                                              ; preds = %131
  %135 = load i64, i64* %8, align 8
  %136 = load i64, i64* @IO_OVERFLOW, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %264

138:                                              ; preds = %134
  %139 = load i64, i64* %8, align 8
  %140 = icmp ne i64 %139, 137
  br i1 %140, label %141, label %264

141:                                              ; preds = %138
  %142 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %143 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %142, i32 0, i32 5
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = icmp ne %struct.TYPE_4__* %146, null
  br i1 %147, label %148, label %158

148:                                              ; preds = %141
  %149 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %150 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %149, i32 0, i32 5
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @dev_is_expander(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %253, label %158

158:                                              ; preds = %148, %141
  store i32 0, i32* %10, align 4
  store i32 4, i32* %11, align 4
  br label %159

159:                                              ; preds = %178, %158
  %160 = load i32, i32* %10, align 4
  %161 = icmp sle i32 %160, 3
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i32, i32* %11, align 4
  %164 = icmp sle i32 %163, 7
  br label %165

165:                                              ; preds = %162, %159
  %166 = phi i1 [ false, %159 ], [ %164, %162 ]
  br i1 %166, label %167, label %183

167:                                              ; preds = %165
  %168 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %169 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %168, i32 0, i32 0
  %170 = load i64*, i64** %169, align 8
  %171 = load i32, i32* %11, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i64, i64* %170, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* %10, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 %176
  store i64 %174, i64* %177, align 8
  br label %178

178:                                              ; preds = %167
  %179 = load i32, i32* %10, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %10, align 4
  %181 = load i32, i32* %11, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %11, align 4
  br label %159

183:                                              ; preds = %165
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %184

184:                                              ; preds = %203, %183
  %185 = load i32, i32* %10, align 4
  %186 = icmp sle i32 %185, 3
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load i32, i32* %11, align 4
  %189 = icmp sle i32 %188, 3
  br label %190

190:                                              ; preds = %187, %184
  %191 = phi i1 [ false, %184 ], [ %189, %187 ]
  br i1 %191, label %192, label %208

192:                                              ; preds = %190
  %193 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %194 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %193, i32 0, i32 0
  %195 = load i64*, i64** %194, align 8
  %196 = load i32, i32* %11, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i64, i64* %195, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 %201
  store i64 %199, i64* %202, align 8
  br label %203

203:                                              ; preds = %192
  %204 = load i32, i32* %10, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %10, align 4
  %206 = load i32, i32* %11, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %11, align 4
  br label %184

208:                                              ; preds = %190
  %209 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %210 = call i32 @memcpy(i64* %13, i64* %209, i64 32)
  %211 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 0
  %212 = call i32 @memcpy(i64* %14, i64* %211, i64 32)
  %213 = load i64, i64* %14, align 8
  %214 = lshr i64 %213, 24
  %215 = and i64 %214, 255
  %216 = load i64, i64* %14, align 8
  %217 = shl i64 %216, 8
  %218 = and i64 %217, 16711680
  %219 = or i64 %215, %218
  %220 = load i64, i64* %14, align 8
  %221 = lshr i64 %220, 8
  %222 = and i64 %221, 65280
  %223 = or i64 %219, %222
  %224 = load i64, i64* %14, align 8
  %225 = shl i64 %224, 24
  %226 = and i64 %225, 4278190080
  %227 = or i64 %223, %226
  store i64 %227, i64* %14, align 8
  %228 = load i64, i64* %13, align 8
  %229 = lshr i64 %228, 24
  %230 = and i64 %229, 255
  %231 = load i64, i64* %13, align 8
  %232 = shl i64 %231, 8
  %233 = and i64 %232, 16711680
  %234 = or i64 %230, %233
  %235 = load i64, i64* %13, align 8
  %236 = lshr i64 %235, 8
  %237 = and i64 %236, 65280
  %238 = or i64 %234, %237
  %239 = load i64, i64* %13, align 8
  %240 = shl i64 %239, 24
  %241 = and i64 %240, 4278190080
  %242 = or i64 %238, %241
  %243 = load %struct.pm8001_device*, %struct.pm8001_device** %20, align 8
  %244 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = add i64 %242, %245
  %247 = add i64 %246, 16
  store i64 %247, i64* %13, align 8
  %248 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %249 = load i64, i64* %14, align 8
  %250 = load i64, i64* %13, align 8
  %251 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i64 %249, i64 %250)
  %252 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %248, i32 %251)
  br label %263

253:                                              ; preds = %148
  %254 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %255 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %256 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %255, i32 0, i32 5
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @SAS_ADDR(i32 %259)
  %261 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %260)
  %262 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %254, i32 %261)
  br label %263

263:                                              ; preds = %253, %208
  br label %264

264:                                              ; preds = %263, %138, %134, %131
  %265 = load i64, i64* %8, align 8
  switch i64 %265, label %779 [
    i64 138, label %266
    i64 157, label %395
    i64 137, label %413
    i64 153, label %435
    i64 135, label %445
    i64 132, label %455
    i64 143, label %468
    i64 140, label %481
    i64 151, label %494
    i64 148, label %507
    i64 129, label %507
    i64 145, label %507
    i64 147, label %507
    i64 146, label %507
    i64 144, label %507
    i64 152, label %537
    i64 150, label %570
    i64 142, label %583
    i64 141, label %613
    i64 133, label %626
    i64 136, label %636
    i64 134, label %646
    i64 130, label %656
    i64 131, label %666
    i64 128, label %676
    i64 139, label %686
    i64 154, label %696
    i64 155, label %726
    i64 156, label %736
    i64 149, label %766
  ]

266:                                              ; preds = %264
  %267 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %268 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %269 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %267, i32 %268)
  %270 = load i64, i64* %7, align 8
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %272, label %309

272:                                              ; preds = %266
  %273 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %274 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %275 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %274, i32 0, i32 3
  store i8* %273, i8** %275, align 8
  %276 = load i8*, i8** @SAM_STAT_GOOD, align 8
  %277 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %278 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %277, i32 0, i32 2
  store i8* %276, i8** %278, align 8
  %279 = load %struct.pm8001_device*, %struct.pm8001_device** %20, align 8
  %280 = icmp ne %struct.pm8001_device* %279, null
  br i1 %280, label %281, label %308

281:                                              ; preds = %272
  %282 = load %struct.pm8001_device*, %struct.pm8001_device** %20, align 8
  %283 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @NCQ_READ_LOG_FLAG, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %308

288:                                              ; preds = %281
  %289 = load i32, i32* @NCQ_ABORT_ALL_FLAG, align 4
  %290 = load %struct.pm8001_device*, %struct.pm8001_device** %20, align 8
  %291 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = or i32 %292, %289
  store i32 %293, i32* %291, align 8
  %294 = load %struct.pm8001_device*, %struct.pm8001_device** %20, align 8
  %295 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = and i32 %296, 2147483647
  %298 = load %struct.pm8001_device*, %struct.pm8001_device** %20, align 8
  %299 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %298, i32 0, i32 0
  store i32 %297, i32* %299, align 8
  %300 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %301 = load %struct.pm8001_device*, %struct.pm8001_device** %20, align 8
  %302 = call i32 @pm80xx_send_abort_all(%struct.pm8001_hba_info* %300, %struct.pm8001_device* %301)
  %303 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %304 = load i64, i64* %9, align 8
  %305 = call i32 @pm8001_tag_free(%struct.pm8001_hba_info* %303, i64 %304)
  %306 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %307 = call i32 @sas_free_task(%struct.sas_task* %306)
  br label %850

308:                                              ; preds = %281, %272
  br label %386

309:                                              ; preds = %266
  %310 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %311 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %312 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %311, i32 0, i32 3
  store i8* %310, i8** %312, align 8
  %313 = load i8*, i8** @SAS_PROTO_RESPONSE, align 8
  %314 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %315 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %314, i32 0, i32 2
  store i8* %313, i8** %315, align 8
  %316 = load i64, i64* %7, align 8
  %317 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %318 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %317, i32 0, i32 0
  store i64 %316, i64* %318, align 8
  %319 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %320 = load i64, i64* %7, align 8
  %321 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i64 %320)
  %322 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %319, i32 %321)
  %323 = load %struct.sata_completion_resp*, %struct.sata_completion_resp** %16, align 8
  %324 = getelementptr inbounds %struct.sata_completion_resp, %struct.sata_completion_resp* %323, i32 0, i32 0
  %325 = load i64*, i64** %324, align 8
  %326 = getelementptr inbounds i64, i64* %325, i64 0
  store i64* %326, i64** %19, align 8
  %327 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %328 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %327, i32 0, i32 5
  %329 = load i64, i64* %328, align 8
  %330 = inttoptr i64 %329 to %struct.ata_task_resp*
  store %struct.ata_task_resp* %330, %struct.ata_task_resp** %18, align 8
  %331 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %332 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %331, i32 0, i32 3
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %347

336:                                              ; preds = %309
  %337 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %338 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %337, i32 0, i32 4
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %341 = icmp eq i32 %339, %340
  br i1 %341, label %342, label %347

342:                                              ; preds = %336
  store i64 4, i64* %22, align 8
  %343 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %344 = load i64, i64* %22, align 8
  %345 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i64 %344)
  %346 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %343, i32 %345)
  br label %364

347:                                              ; preds = %336, %309
  %348 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %349 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %348, i32 0, i32 3
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %358

353:                                              ; preds = %347
  store i64 4, i64* %22, align 8
  %354 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %355 = load i64, i64* %22, align 8
  %356 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i64 %355)
  %357 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %354, i32 %356)
  br label %363

358:                                              ; preds = %347
  store i64 4, i64* %22, align 8
  %359 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %360 = load i64, i64* %22, align 8
  %361 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i64 %360)
  %362 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %359, i32 %361)
  br label %363

363:                                              ; preds = %358, %353
  br label %364

364:                                              ; preds = %363, %342
  %365 = load i32, i32* @SAS_STATUS_BUF_SIZE, align 4
  %366 = sext i32 %365 to i64
  %367 = icmp uge i64 %366, 16
  br i1 %367, label %368, label %381

368:                                              ; preds = %364
  %369 = load i64, i64* %22, align 8
  %370 = load %struct.ata_task_resp*, %struct.ata_task_resp** %18, align 8
  %371 = getelementptr inbounds %struct.ata_task_resp, %struct.ata_task_resp* %370, i32 0, i32 0
  store i64 %369, i64* %371, align 8
  %372 = load %struct.ata_task_resp*, %struct.ata_task_resp** %18, align 8
  %373 = getelementptr inbounds %struct.ata_task_resp, %struct.ata_task_resp* %372, i32 0, i32 1
  %374 = load i64*, i64** %373, align 8
  %375 = getelementptr inbounds i64, i64* %374, i64 0
  %376 = load i64*, i64** %19, align 8
  %377 = load i64, i64* %22, align 8
  %378 = call i32 @memcpy(i64* %375, i64* %376, i64 %377)
  %379 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %380 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %379, i32 0, i32 1
  store i32 16, i32* %380, align 8
  br label %385

381:                                              ; preds = %364
  %382 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %383 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %384 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %382, i32 %383)
  br label %385

385:                                              ; preds = %381, %368
  br label %386

386:                                              ; preds = %385, %308
  %387 = load %struct.pm8001_device*, %struct.pm8001_device** %20, align 8
  %388 = icmp ne %struct.pm8001_device* %387, null
  br i1 %388, label %389, label %394

389:                                              ; preds = %386
  %390 = load %struct.pm8001_device*, %struct.pm8001_device** %20, align 8
  %391 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 8
  %393 = add nsw i32 %392, -1
  store i32 %393, i32* %391, align 8
  br label %394

394:                                              ; preds = %389, %386
  br label %790

395:                                              ; preds = %264
  %396 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %397 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  %398 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %396, i32 %397)
  %399 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %400 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %401 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %400, i32 0, i32 3
  store i8* %399, i8** %401, align 8
  %402 = load i8*, i8** @SAS_ABORTED_TASK, align 8
  %403 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %404 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %403, i32 0, i32 2
  store i8* %402, i8** %404, align 8
  %405 = load %struct.pm8001_device*, %struct.pm8001_device** %20, align 8
  %406 = icmp ne %struct.pm8001_device* %405, null
  br i1 %406, label %407, label %412

407:                                              ; preds = %395
  %408 = load %struct.pm8001_device*, %struct.pm8001_device** %20, align 8
  %409 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %408, i32 0, i32 2
  %410 = load i32, i32* %409, align 8
  %411 = add nsw i32 %410, -1
  store i32 %411, i32* %409, align 8
  br label %412

412:                                              ; preds = %407, %395
  br label %790

413:                                              ; preds = %264
  %414 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %415 = load i64, i64* %7, align 8
  %416 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i64 %415)
  %417 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %414, i32 %416)
  %418 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %419 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %420 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %419, i32 0, i32 3
  store i8* %418, i8** %420, align 8
  %421 = load i8*, i8** @SAS_DATA_UNDERRUN, align 8
  %422 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %423 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %422, i32 0, i32 2
  store i8* %421, i8** %423, align 8
  %424 = load i64, i64* %7, align 8
  %425 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %426 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %425, i32 0, i32 0
  store i64 %424, i64* %426, align 8
  %427 = load %struct.pm8001_device*, %struct.pm8001_device** %20, align 8
  %428 = icmp ne %struct.pm8001_device* %427, null
  br i1 %428, label %429, label %434

429:                                              ; preds = %413
  %430 = load %struct.pm8001_device*, %struct.pm8001_device** %20, align 8
  %431 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %430, i32 0, i32 2
  %432 = load i32, i32* %431, align 8
  %433 = add nsw i32 %432, -1
  store i32 %433, i32* %431, align 8
  br label %434

434:                                              ; preds = %429, %413
  br label %790

435:                                              ; preds = %264
  %436 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %437 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %438 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %436, i32 %437)
  %439 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %440 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %441 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %440, i32 0, i32 3
  store i8* %439, i8** %441, align 8
  %442 = load i8*, i8** @SAS_PHY_DOWN, align 8
  %443 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %444 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %443, i32 0, i32 2
  store i8* %442, i8** %444, align 8
  br label %790

445:                                              ; preds = %264
  %446 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %447 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  %448 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %446, i32 %447)
  %449 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %450 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %451 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %450, i32 0, i32 3
  store i8* %449, i8** %451, align 8
  %452 = load i8*, i8** @SAS_INTERRUPTED, align 8
  %453 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %454 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %453, i32 0, i32 2
  store i8* %452, i8** %454, align 8
  br label %790

455:                                              ; preds = %264
  %456 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %457 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0))
  %458 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %456, i32 %457)
  %459 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %460 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %461 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %460, i32 0, i32 3
  store i8* %459, i8** %461, align 8
  %462 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %463 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %464 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %463, i32 0, i32 2
  store i8* %462, i8** %464, align 8
  %465 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %466 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %467 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %466, i32 0, i32 4
  store i8* %465, i8** %467, align 8
  br label %790

468:                                              ; preds = %264
  %469 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %470 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0))
  %471 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %469, i32 %470)
  %472 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %473 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %474 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %473, i32 0, i32 3
  store i8* %472, i8** %474, align 8
  %475 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %476 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %477 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %476, i32 0, i32 2
  store i8* %475, i8** %477, align 8
  %478 = load i8*, i8** @SAS_OREJ_EPROTO, align 8
  %479 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %480 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %479, i32 0, i32 4
  store i8* %478, i8** %480, align 8
  br label %790

481:                                              ; preds = %264
  %482 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %483 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0))
  %484 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %482, i32 %483)
  %485 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %486 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %487 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %486, i32 0, i32 3
  store i8* %485, i8** %487, align 8
  %488 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %489 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %490 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %489, i32 0, i32 2
  store i8* %488, i8** %490, align 8
  %491 = load i8*, i8** @SAS_OREJ_UNKNOWN, align 8
  %492 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %493 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %492, i32 0, i32 4
  store i8* %491, i8** %493, align 8
  br label %790

494:                                              ; preds = %264
  %495 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %496 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0))
  %497 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %495, i32 %496)
  %498 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %499 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %500 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %499, i32 0, i32 3
  store i8* %498, i8** %500, align 8
  %501 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %502 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %503 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %502, i32 0, i32 2
  store i8* %501, i8** %503, align 8
  %504 = load i8*, i8** @SAS_OREJ_RSVD_CONT0, align 8
  %505 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %506 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %505, i32 0, i32 4
  store i8* %504, i8** %506, align 8
  br label %790

507:                                              ; preds = %264, %264, %264, %264, %264, %264
  %508 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %509 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0))
  %510 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %508, i32 %509)
  %511 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %512 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %513 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %512, i32 0, i32 3
  store i8* %511, i8** %513, align 8
  %514 = load i8*, i8** @SAS_DEV_NO_RESPONSE, align 8
  %515 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %516 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %515, i32 0, i32 2
  store i8* %514, i8** %516, align 8
  %517 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %518 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %517, i32 0, i32 2
  %519 = load i32, i32* %518, align 8
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %536, label %521

521:                                              ; preds = %507
  %522 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %523 = load %struct.pm8001_device*, %struct.pm8001_device** %20, align 8
  %524 = call i32 @pm8001_handle_event(%struct.pm8001_hba_info* %522, %struct.pm8001_device* %523, i32 148)
  %525 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %526 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %527 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %526, i32 0, i32 3
  store i8* %525, i8** %527, align 8
  %528 = load i8*, i8** @SAS_QUEUE_FULL, align 8
  %529 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %530 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %529, i32 0, i32 2
  store i8* %528, i8** %530, align 8
  %531 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %532 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %533 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %534 = load i64, i64* %9, align 8
  %535 = call i32 @pm8001_ccb_task_free_done(%struct.pm8001_hba_info* %531, %struct.sas_task* %532, %struct.pm8001_ccb_info* %533, i64 %534)
  br label %850

536:                                              ; preds = %507
  br label %790

537:                                              ; preds = %264
  %538 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %539 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i64 0, i64 0))
  %540 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %538, i32 %539)
  %541 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %542 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %543 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %542, i32 0, i32 3
  store i8* %541, i8** %543, align 8
  %544 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %545 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %546 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %545, i32 0, i32 2
  store i8* %544, i8** %546, align 8
  %547 = load i8*, i8** @SAS_OREJ_BAD_DEST, align 8
  %548 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %549 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %548, i32 0, i32 4
  store i8* %547, i8** %549, align 8
  %550 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %551 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %550, i32 0, i32 2
  %552 = load i32, i32* %551, align 8
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %569, label %554

554:                                              ; preds = %537
  %555 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %556 = load %struct.pm8001_device*, %struct.pm8001_device** %20, align 8
  %557 = call i32 @pm8001_handle_event(%struct.pm8001_hba_info* %555, %struct.pm8001_device* %556, i32 148)
  %558 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %559 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %560 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %559, i32 0, i32 3
  store i8* %558, i8** %560, align 8
  %561 = load i8*, i8** @SAS_QUEUE_FULL, align 8
  %562 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %563 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %562, i32 0, i32 2
  store i8* %561, i8** %563, align 8
  %564 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %565 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %566 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %567 = load i64, i64* %9, align 8
  %568 = call i32 @pm8001_ccb_task_free_done(%struct.pm8001_hba_info* %564, %struct.sas_task* %565, %struct.pm8001_ccb_info* %566, i64 %567)
  br label %850

569:                                              ; preds = %537
  br label %790

570:                                              ; preds = %264
  %571 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %572 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.23, i64 0, i64 0))
  %573 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %571, i32 %572)
  %574 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %575 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %576 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %575, i32 0, i32 3
  store i8* %574, i8** %576, align 8
  %577 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %578 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %579 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %578, i32 0, i32 2
  store i8* %577, i8** %579, align 8
  %580 = load i8*, i8** @SAS_OREJ_CONN_RATE, align 8
  %581 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %582 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %581, i32 0, i32 4
  store i8* %580, i8** %582, align 8
  br label %790

583:                                              ; preds = %264
  %584 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %585 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i64 0, i64 0))
  %586 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %584, i32 %585)
  %587 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %588 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %589 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %588, i32 0, i32 3
  store i8* %587, i8** %589, align 8
  %590 = load i8*, i8** @SAS_DEV_NO_RESPONSE, align 8
  %591 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %592 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %591, i32 0, i32 2
  store i8* %590, i8** %592, align 8
  %593 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %594 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %593, i32 0, i32 2
  %595 = load i32, i32* %594, align 8
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %612, label %597

597:                                              ; preds = %583
  %598 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %599 = load %struct.pm8001_device*, %struct.pm8001_device** %20, align 8
  %600 = call i32 @pm8001_handle_event(%struct.pm8001_hba_info* %598, %struct.pm8001_device* %599, i32 142)
  %601 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %602 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %603 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %602, i32 0, i32 3
  store i8* %601, i8** %603, align 8
  %604 = load i8*, i8** @SAS_QUEUE_FULL, align 8
  %605 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %606 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %605, i32 0, i32 2
  store i8* %604, i8** %606, align 8
  %607 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %608 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %609 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %610 = load i64, i64* %9, align 8
  %611 = call i32 @pm8001_ccb_task_free_done(%struct.pm8001_hba_info* %607, %struct.sas_task* %608, %struct.pm8001_ccb_info* %609, i64 %610)
  br label %850

612:                                              ; preds = %583
  br label %790

613:                                              ; preds = %264
  %614 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %615 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i64 0, i64 0))
  %616 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %614, i32 %615)
  %617 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %618 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %619 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %618, i32 0, i32 3
  store i8* %617, i8** %619, align 8
  %620 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %621 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %622 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %621, i32 0, i32 2
  store i8* %620, i8** %622, align 8
  %623 = load i8*, i8** @SAS_OREJ_WRONG_DEST, align 8
  %624 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %625 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %624, i32 0, i32 4
  store i8* %623, i8** %625, align 8
  br label %790

626:                                              ; preds = %264
  %627 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %628 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i64 0, i64 0))
  %629 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %627, i32 %628)
  %630 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %631 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %632 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %631, i32 0, i32 3
  store i8* %630, i8** %632, align 8
  %633 = load i8*, i8** @SAS_NAK_R_ERR, align 8
  %634 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %635 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %634, i32 0, i32 2
  store i8* %633, i8** %635, align 8
  br label %790

636:                                              ; preds = %264
  %637 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %638 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0))
  %639 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %637, i32 %638)
  %640 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %641 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %642 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %641, i32 0, i32 3
  store i8* %640, i8** %642, align 8
  %643 = load i8*, i8** @SAS_NAK_R_ERR, align 8
  %644 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %645 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %644, i32 0, i32 2
  store i8* %643, i8** %645, align 8
  br label %790

646:                                              ; preds = %264
  %647 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %648 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0))
  %649 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %647, i32 %648)
  %650 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %651 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %652 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %651, i32 0, i32 3
  store i8* %650, i8** %652, align 8
  %653 = load i8*, i8** @SAS_ABORTED_TASK, align 8
  %654 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %655 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %654, i32 0, i32 2
  store i8* %653, i8** %655, align 8
  br label %790

656:                                              ; preds = %264
  %657 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %658 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0))
  %659 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %657, i32 %658)
  %660 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %661 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %662 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %661, i32 0, i32 3
  store i8* %660, i8** %662, align 8
  %663 = load i8*, i8** @SAS_DEV_NO_RESPONSE, align 8
  %664 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %665 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %664, i32 0, i32 2
  store i8* %663, i8** %665, align 8
  br label %790

666:                                              ; preds = %264
  %667 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %668 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i64 0, i64 0))
  %669 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %667, i32 %668)
  %670 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %671 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %672 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %671, i32 0, i32 3
  store i8* %670, i8** %672, align 8
  %673 = load i8*, i8** @SAS_DATA_UNDERRUN, align 8
  %674 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %675 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %674, i32 0, i32 2
  store i8* %673, i8** %675, align 8
  br label %790

676:                                              ; preds = %264
  %677 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %678 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i64 0, i64 0))
  %679 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %677, i32 %678)
  %680 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %681 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %682 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %681, i32 0, i32 3
  store i8* %680, i8** %682, align 8
  %683 = load i8*, i8** @SAS_OPEN_TO, align 8
  %684 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %685 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %684, i32 0, i32 2
  store i8* %683, i8** %685, align 8
  br label %790

686:                                              ; preds = %264
  %687 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %688 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0))
  %689 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %687, i32 %688)
  %690 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %691 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %692 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %691, i32 0, i32 3
  store i8* %690, i8** %692, align 8
  %693 = load i8*, i8** @SAS_DEV_NO_RESPONSE, align 8
  %694 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %695 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %694, i32 0, i32 2
  store i8* %693, i8** %695, align 8
  br label %790

696:                                              ; preds = %264
  %697 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %698 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i64 0, i64 0))
  %699 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %697, i32 %698)
  %700 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %701 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %702 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %701, i32 0, i32 3
  store i8* %700, i8** %702, align 8
  %703 = load i8*, i8** @SAS_DEV_NO_RESPONSE, align 8
  %704 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %705 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %704, i32 0, i32 2
  store i8* %703, i8** %705, align 8
  %706 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %707 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %706, i32 0, i32 2
  %708 = load i32, i32* %707, align 8
  %709 = icmp ne i32 %708, 0
  br i1 %709, label %725, label %710

710:                                              ; preds = %696
  %711 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %712 = load %struct.pm8001_device*, %struct.pm8001_device** %20, align 8
  %713 = call i32 @pm8001_handle_event(%struct.pm8001_hba_info* %711, %struct.pm8001_device* %712, i32 154)
  %714 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %715 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %716 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %715, i32 0, i32 3
  store i8* %714, i8** %716, align 8
  %717 = load i8*, i8** @SAS_QUEUE_FULL, align 8
  %718 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %719 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %718, i32 0, i32 2
  store i8* %717, i8** %719, align 8
  %720 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %721 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %722 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %723 = load i64, i64* %9, align 8
  %724 = call i32 @pm8001_ccb_task_free_done(%struct.pm8001_hba_info* %720, %struct.sas_task* %721, %struct.pm8001_ccb_info* %722, i64 %723)
  br label %850

725:                                              ; preds = %696
  br label %790

726:                                              ; preds = %264
  %727 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %728 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i64 0, i64 0))
  %729 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %727, i32 %728)
  %730 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %731 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %732 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %731, i32 0, i32 3
  store i8* %730, i8** %732, align 8
  %733 = load i8*, i8** @SAS_DEV_NO_RESPONSE, align 8
  %734 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %735 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %734, i32 0, i32 2
  store i8* %733, i8** %735, align 8
  br label %790

736:                                              ; preds = %264
  %737 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %738 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i64 0, i64 0))
  %739 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %737, i32 %738)
  %740 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %741 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %742 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %741, i32 0, i32 3
  store i8* %740, i8** %742, align 8
  %743 = load i8*, i8** @SAS_DEV_NO_RESPONSE, align 8
  %744 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %745 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %744, i32 0, i32 2
  store i8* %743, i8** %745, align 8
  %746 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %747 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %746, i32 0, i32 2
  %748 = load i32, i32* %747, align 8
  %749 = icmp ne i32 %748, 0
  br i1 %749, label %765, label %750

750:                                              ; preds = %736
  %751 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %752 = load %struct.pm8001_device*, %struct.pm8001_device** %20, align 8
  %753 = call i32 @pm8001_handle_event(%struct.pm8001_hba_info* %751, %struct.pm8001_device* %752, i32 156)
  %754 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %755 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %756 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %755, i32 0, i32 3
  store i8* %754, i8** %756, align 8
  %757 = load i8*, i8** @SAS_QUEUE_FULL, align 8
  %758 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %759 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %758, i32 0, i32 2
  store i8* %757, i8** %759, align 8
  %760 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %761 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %762 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %763 = load i64, i64* %9, align 8
  %764 = call i32 @pm8001_ccb_task_free_done(%struct.pm8001_hba_info* %760, %struct.sas_task* %761, %struct.pm8001_ccb_info* %762, i64 %763)
  br label %850

765:                                              ; preds = %736
  br label %790

766:                                              ; preds = %264
  %767 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %768 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i64 0, i64 0))
  %769 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %767, i32 %768)
  %770 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %771 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %772 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %771, i32 0, i32 3
  store i8* %770, i8** %772, align 8
  %773 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %774 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %775 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %774, i32 0, i32 2
  store i8* %773, i8** %775, align 8
  %776 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %777 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %778 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %777, i32 0, i32 4
  store i8* %776, i8** %778, align 8
  br label %790

779:                                              ; preds = %264
  %780 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %781 = load i64, i64* %8, align 8
  %782 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i64 0, i64 0), i64 %781)
  %783 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %780, i32 %782)
  %784 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %785 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %786 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %785, i32 0, i32 3
  store i8* %784, i8** %786, align 8
  %787 = load i8*, i8** @SAS_DEV_NO_RESPONSE, align 8
  %788 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %789 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %788, i32 0, i32 2
  store i8* %787, i8** %789, align 8
  br label %790

790:                                              ; preds = %779, %766, %765, %726, %725, %686, %676, %666, %656, %646, %636, %626, %613, %612, %570, %569, %536, %494, %481, %468, %455, %445, %435, %434, %412, %394
  %791 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %792 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %791, i32 0, i32 1
  %793 = load i64, i64* %21, align 8
  %794 = call i32 @spin_lock_irqsave(i32* %792, i64 %793)
  %795 = load i32, i32* @SAS_TASK_STATE_PENDING, align 4
  %796 = xor i32 %795, -1
  %797 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %798 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %797, i32 0, i32 0
  %799 = load i32, i32* %798, align 8
  %800 = and i32 %799, %796
  store i32 %800, i32* %798, align 8
  %801 = load i32, i32* @SAS_TASK_AT_INITIATOR, align 4
  %802 = xor i32 %801, -1
  %803 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %804 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %803, i32 0, i32 0
  %805 = load i32, i32* %804, align 8
  %806 = and i32 %805, %802
  store i32 %806, i32* %804, align 8
  %807 = load i32, i32* @SAS_TASK_STATE_DONE, align 4
  %808 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %809 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %808, i32 0, i32 0
  %810 = load i32, i32* %809, align 8
  %811 = or i32 %810, %807
  store i32 %811, i32* %809, align 8
  %812 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %813 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %812, i32 0, i32 0
  %814 = load i32, i32* %813, align 8
  %815 = load i32, i32* @SAS_TASK_STATE_ABORTED, align 4
  %816 = and i32 %814, %815
  %817 = call i64 @unlikely(i32 %816)
  %818 = icmp ne i64 %817, 0
  br i1 %818, label %819, label %840

819:                                              ; preds = %790
  %820 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %821 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %820, i32 0, i32 1
  %822 = load i64, i64* %21, align 8
  %823 = call i32 @spin_unlock_irqrestore(i32* %821, i64 %822)
  %824 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %825 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %826 = load i64, i64* %8, align 8
  %827 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %828 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %827, i32 0, i32 3
  %829 = load i8*, i8** %828, align 8
  %830 = load %struct.task_status_struct*, %struct.task_status_struct** %17, align 8
  %831 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %830, i32 0, i32 2
  %832 = load i8*, i8** %831, align 8
  %833 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.38, i64 0, i64 0), %struct.sas_task* %825, i64 %826, i8* %829, i8* %832)
  %834 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %824, i32 %833)
  %835 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %836 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %837 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %838 = load i64, i64* %9, align 8
  %839 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %835, %struct.sas_task* %836, %struct.pm8001_ccb_info* %837, i64 %838)
  br label %850

840:                                              ; preds = %790
  %841 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %842 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %841, i32 0, i32 1
  %843 = load i64, i64* %21, align 8
  %844 = call i32 @spin_unlock_irqrestore(i32* %842, i64 %843)
  %845 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %846 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %847 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %848 = load i64, i64* %9, align 8
  %849 = call i32 @pm8001_ccb_task_free_done(%struct.pm8001_hba_info* %845, %struct.sas_task* %846, %struct.pm8001_ccb_info* %847, i64 %848)
  br label %850

850:                                              ; preds = %36, %59, %85, %118, %127, %288, %521, %554, %597, %710, %750, %840, %819
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @dev_is_expander(i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i32 @SAS_ADDR(i32) #1

declare dso_local i32 @PM8001_IO_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm80xx_send_abort_all(%struct.pm8001_hba_info*, %struct.pm8001_device*) #1

declare dso_local i32 @pm8001_tag_free(%struct.pm8001_hba_info*, i64) #1

declare dso_local i32 @sas_free_task(%struct.sas_task*) #1

declare dso_local i32 @pm8001_handle_event(%struct.pm8001_hba_info*, %struct.pm8001_device*, i32) #1

declare dso_local i32 @pm8001_ccb_task_free_done(%struct.pm8001_hba_info*, %struct.sas_task*, %struct.pm8001_ccb_info*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info*, %struct.sas_task*, %struct.pm8001_ccb_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
