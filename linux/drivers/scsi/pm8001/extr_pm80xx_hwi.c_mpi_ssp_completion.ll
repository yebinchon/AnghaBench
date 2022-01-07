; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_ssp_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_ssp_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32, %struct.pm8001_ccb_info* }
%struct.pm8001_ccb_info = type { %struct.sas_task*, %struct.pm8001_device*, i64 }
%struct.sas_task = type { i32, i32 (%struct.sas_task*)*, i32, %struct.TYPE_3__*, i32, %struct.TYPE_4__*, %struct.task_status_struct, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.task_status_struct = type { i64, i8*, i8*, i8* }
%struct.pm8001_device = type { i32 }
%struct.ssp_completion_resp = type { %struct.ssp_response_iu, i32, i32, i32 }
%struct.ssp_response_iu = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"sas IO status 0x%x\0A\00", align 1
@IO_OVERFLOW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"SAS Address of IO Failure Drive:%016llx\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"IO_SUCCESS ,param = 0x%x\0A\00", align 1
@SAS_TASK_COMPLETE = common dso_local global i8* null, align 8
@SAM_STAT_GOOD = common dso_local global i8* null, align 8
@SAS_PROTO_RESPONSE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"IO_ABORTED IOMB Tag\0A\00", align 1
@SAS_ABORTED_TASK = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"IO_UNDERFLOW ,param = 0x%x\0A\00", align 1
@SAS_DATA_UNDERRUN = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"IO_NO_DEVICE\0A\00", align 1
@SAS_TASK_UNDELIVERED = common dso_local global i8* null, align 8
@SAS_PHY_DOWN = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"IO_XFER_ERROR_BREAK\0A\00", align 1
@SAS_OPEN_REJECT = common dso_local global i8* null, align 8
@SAS_OREJ_RSVD_RETRY = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"IO_XFER_ERROR_PHY_NOT_READY\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"IO_XFER_ERROR_INVALID_SSP_RSP_FRAME\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"IO_OPEN_CNX_ERROR_PROTOCOL_NOT_SUPPORTED\0A\00", align 1
@SAS_OREJ_EPROTO = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [34 x i8] c"IO_OPEN_CNX_ERROR_ZONE_VIOLATION\0A\00", align 1
@SAS_OREJ_UNKNOWN = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [25 x i8] c"IO_OPEN_CNX_ERROR_BREAK\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"IO_OPEN_CNX_ERROR_BAD_DESTINATION\0A\00", align 1
@SAS_OREJ_BAD_DEST = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [49 x i8] c"IO_OPEN_CNX_ERROR_CONNECTION_RATE_NOT_SUPPORTED\0A\00", align 1
@SAS_OREJ_CONN_RATE = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [37 x i8] c"IO_OPEN_CNX_ERROR_WRONG_DESTINATION\0A\00", align 1
@SAS_OREJ_WRONG_DEST = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [28 x i8] c"IO_XFER_ERROR_NAK_RECEIVED\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"IO_XFER_ERROR_ACK_NAK_TIMEOUT\0A\00", align 1
@SAS_NAK_R_ERR = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [19 x i8] c"IO_XFER_ERROR_DMA\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"IO_XFER_OPEN_RETRY_TIMEOUT\0A\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"IO_XFER_ERROR_OFFSET_MISMATCH\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"IO_PORT_IN_RESET\0A\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"IO_DS_NON_OPERATIONAL\0A\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"IO_DS_IN_RECOVERY\0A\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"IO_TM_TAG_NOT_FOUND\0A\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"IO_SSP_EXT_IU_ZERO_LEN_ERROR\0A\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"IO_OPEN_CNX_ERROR_HW_RESOURCE_BUSY\0A\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"Unknown status 0x%x\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"scsi_status = 0x%x\0A \00", align 1
@SAS_TASK_STATE_PENDING = common dso_local global i32 0, align 4
@SAS_TASK_AT_INITIATOR = common dso_local global i32 0, align 4
@SAS_TASK_STATE_DONE = common dso_local global i32 0, align 4
@SAS_TASK_STATE_ABORTED = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [84 x i8] c"task 0x%p done with io_status 0x%x resp 0x%x stat 0x%x but aborted by upper layer!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*, i8*)* @mpi_ssp_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpi_ssp_completion(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sas_task*, align 8
  %6 = alloca %struct.pm8001_ccb_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ssp_completion_resp*, align 8
  %12 = alloca %struct.task_status_struct*, align 8
  %13 = alloca %struct.ssp_response_iu*, align 8
  %14 = alloca %struct.pm8001_device*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr i8, i8* %15, i64 4
  %17 = bitcast i8* %16 to %struct.ssp_completion_resp*
  store %struct.ssp_completion_resp* %17, %struct.ssp_completion_resp** %11, align 8
  %18 = load %struct.ssp_completion_resp*, %struct.ssp_completion_resp** %11, align 8
  %19 = getelementptr inbounds %struct.ssp_completion_resp, %struct.ssp_completion_resp* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @le32_to_cpu(i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load %struct.ssp_completion_resp*, %struct.ssp_completion_resp** %11, align 8
  %23 = getelementptr inbounds %struct.ssp_completion_resp, %struct.ssp_completion_resp* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le32_to_cpu(i32 %24)
  store i64 %25, i64* %10, align 8
  %26 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %27 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %26, i32 0, i32 1
  %28 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %27, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %28, i64 %29
  store %struct.pm8001_ccb_info* %30, %struct.pm8001_ccb_info** %6, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp eq i64 %31, 157
  br i1 %32, label %33, label %41

33:                                               ; preds = %2
  %34 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %35 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %40 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  br label %551

41:                                               ; preds = %33, %2
  %42 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %43 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %42, i32 0, i32 1
  %44 = load %struct.pm8001_device*, %struct.pm8001_device** %43, align 8
  store %struct.pm8001_device* %44, %struct.pm8001_device** %14, align 8
  %45 = load %struct.ssp_completion_resp*, %struct.ssp_completion_resp** %11, align 8
  %46 = getelementptr inbounds %struct.ssp_completion_resp, %struct.ssp_completion_resp* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @le32_to_cpu(i32 %47)
  store i64 %48, i64* %9, align 8
  %49 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %50 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %49, i32 0, i32 0
  %51 = load %struct.sas_task*, %struct.sas_task** %50, align 8
  store %struct.sas_task* %51, %struct.sas_task** %5, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %41
  %55 = load i64, i64* %8, align 8
  %56 = icmp ne i64 %55, 137
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %59)
  %61 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %58, i32 %60)
  br label %62

62:                                               ; preds = %57, %54, %41
  %63 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %64 = icmp ne %struct.sas_task* %63, null
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %67 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %72 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %71, i32 0, i32 5
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = icmp ne %struct.TYPE_4__* %73, null
  %75 = xor i1 %74, true
  br label %76

76:                                               ; preds = %70, %65, %62
  %77 = phi i1 [ true, %65 ], [ true, %62 ], [ %75, %70 ]
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %551

82:                                               ; preds = %76
  %83 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %84 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %83, i32 0, i32 6
  store %struct.task_status_struct* %84, %struct.task_status_struct** %12, align 8
  %85 = load i64, i64* %8, align 8
  %86 = icmp ne i64 %85, 139
  br i1 %86, label %87, label %104

87:                                               ; preds = %82
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* @IO_OVERFLOW, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %87
  %92 = load i64, i64* %8, align 8
  %93 = icmp ne i64 %92, 137
  br i1 %93, label %94, label %104

94:                                               ; preds = %91
  %95 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %96 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %97 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %96, i32 0, i32 5
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @SAS_ADDR(i32 %100)
  %102 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %95, i32 %102)
  br label %104

104:                                              ; preds = %94, %91, %87, %82
  %105 = load i64, i64* %8, align 8
  switch i64 %105, label %456 [
    i64 139, label %106
    i64 157, label %147
    i64 137, label %157
    i64 154, label %179
    i64 135, label %189
    i64 130, label %202
    i64 133, label %215
    i64 144, label %228
    i64 142, label %241
    i64 152, label %254
    i64 149, label %267
    i64 129, label %267
    i64 146, label %267
    i64 148, label %267
    i64 147, label %267
    i64 145, label %267
    i64 153, label %289
    i64 151, label %302
    i64 143, label %315
    i64 132, label %328
    i64 136, label %341
    i64 134, label %351
    i64 128, label %361
    i64 131, label %374
    i64 141, label %384
    i64 155, label %394
    i64 156, label %413
    i64 138, label %423
    i64 140, label %433
    i64 150, label %443
  ]

106:                                              ; preds = %104
  %107 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %108 = load i64, i64* %9, align 8
  %109 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %108)
  %110 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %107, i32 %109)
  %111 = load i64, i64* %9, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %106
  %114 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %115 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %116 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  %117 = load i8*, i8** @SAM_STAT_GOOD, align 8
  %118 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %119 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %118, i32 0, i32 1
  store i8* %117, i8** %119, align 8
  br label %138

120:                                              ; preds = %106
  %121 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %122 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %123 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %122, i32 0, i32 2
  store i8* %121, i8** %123, align 8
  %124 = load i8*, i8** @SAS_PROTO_RESPONSE, align 8
  %125 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %126 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  %127 = load i64, i64* %9, align 8
  %128 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %129 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  %130 = load %struct.ssp_completion_resp*, %struct.ssp_completion_resp** %11, align 8
  %131 = getelementptr inbounds %struct.ssp_completion_resp, %struct.ssp_completion_resp* %130, i32 0, i32 0
  store %struct.ssp_response_iu* %131, %struct.ssp_response_iu** %13, align 8
  %132 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %133 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %136 = load %struct.ssp_response_iu*, %struct.ssp_response_iu** %13, align 8
  %137 = call i32 @sas_ssp_task_response(i32 %134, %struct.sas_task* %135, %struct.ssp_response_iu* %136)
  br label %138

138:                                              ; preds = %120, %113
  %139 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %140 = icmp ne %struct.pm8001_device* %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %143 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %141, %138
  br label %467

147:                                              ; preds = %104
  %148 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %149 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %150 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %148, i32 %149)
  %151 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %152 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %153 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %152, i32 0, i32 2
  store i8* %151, i8** %153, align 8
  %154 = load i8*, i8** @SAS_ABORTED_TASK, align 8
  %155 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %156 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %155, i32 0, i32 1
  store i8* %154, i8** %156, align 8
  br label %467

157:                                              ; preds = %104
  %158 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %159 = load i64, i64* %9, align 8
  %160 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %159)
  %161 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %158, i32 %160)
  %162 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %163 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %164 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %163, i32 0, i32 2
  store i8* %162, i8** %164, align 8
  %165 = load i8*, i8** @SAS_DATA_UNDERRUN, align 8
  %166 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %167 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %166, i32 0, i32 1
  store i8* %165, i8** %167, align 8
  %168 = load i64, i64* %9, align 8
  %169 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %170 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %169, i32 0, i32 0
  store i64 %168, i64* %170, align 8
  %171 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %172 = icmp ne %struct.pm8001_device* %171, null
  br i1 %172, label %173, label %178

173:                                              ; preds = %157
  %174 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %175 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %173, %157
  br label %467

179:                                              ; preds = %104
  %180 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %181 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %182 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %180, i32 %181)
  %183 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %184 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %185 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %184, i32 0, i32 2
  store i8* %183, i8** %185, align 8
  %186 = load i8*, i8** @SAS_PHY_DOWN, align 8
  %187 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %188 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %187, i32 0, i32 1
  store i8* %186, i8** %188, align 8
  br label %467

189:                                              ; preds = %104
  %190 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %191 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %192 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %190, i32 %191)
  %193 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %194 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %195 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %194, i32 0, i32 2
  store i8* %193, i8** %195, align 8
  %196 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %197 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %198 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %197, i32 0, i32 1
  store i8* %196, i8** %198, align 8
  %199 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %200 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %201 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %200, i32 0, i32 3
  store i8* %199, i8** %201, align 8
  br label %467

202:                                              ; preds = %104
  %203 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %204 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %205 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %203, i32 %204)
  %206 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %207 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %208 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %207, i32 0, i32 2
  store i8* %206, i8** %208, align 8
  %209 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %210 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %211 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %210, i32 0, i32 1
  store i8* %209, i8** %211, align 8
  %212 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %213 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %214 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %213, i32 0, i32 3
  store i8* %212, i8** %214, align 8
  br label %467

215:                                              ; preds = %104
  %216 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %217 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %218 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %216, i32 %217)
  %219 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %220 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %221 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %220, i32 0, i32 2
  store i8* %219, i8** %221, align 8
  %222 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %223 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %224 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %223, i32 0, i32 1
  store i8* %222, i8** %224, align 8
  %225 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %226 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %227 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %226, i32 0, i32 3
  store i8* %225, i8** %227, align 8
  br label %467

228:                                              ; preds = %104
  %229 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %230 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  %231 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %229, i32 %230)
  %232 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %233 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %234 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %233, i32 0, i32 2
  store i8* %232, i8** %234, align 8
  %235 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %236 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %237 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %236, i32 0, i32 1
  store i8* %235, i8** %237, align 8
  %238 = load i8*, i8** @SAS_OREJ_EPROTO, align 8
  %239 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %240 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %239, i32 0, i32 3
  store i8* %238, i8** %240, align 8
  br label %467

241:                                              ; preds = %104
  %242 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %243 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %244 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %242, i32 %243)
  %245 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %246 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %247 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %246, i32 0, i32 2
  store i8* %245, i8** %247, align 8
  %248 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %249 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %250 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %249, i32 0, i32 1
  store i8* %248, i8** %250, align 8
  %251 = load i8*, i8** @SAS_OREJ_UNKNOWN, align 8
  %252 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %253 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %252, i32 0, i32 3
  store i8* %251, i8** %253, align 8
  br label %467

254:                                              ; preds = %104
  %255 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %256 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %257 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %255, i32 %256)
  %258 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %259 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %260 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %259, i32 0, i32 2
  store i8* %258, i8** %260, align 8
  %261 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %262 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %263 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %262, i32 0, i32 1
  store i8* %261, i8** %263, align 8
  %264 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %265 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %266 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %265, i32 0, i32 3
  store i8* %264, i8** %266, align 8
  br label %467

267:                                              ; preds = %104, %104, %104, %104, %104, %104
  %268 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %269 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  %270 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %268, i32 %269)
  %271 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %272 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %273 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %272, i32 0, i32 2
  store i8* %271, i8** %273, align 8
  %274 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %275 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %276 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %275, i32 0, i32 1
  store i8* %274, i8** %276, align 8
  %277 = load i8*, i8** @SAS_OREJ_UNKNOWN, align 8
  %278 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %279 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %278, i32 0, i32 3
  store i8* %277, i8** %279, align 8
  %280 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %281 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %280, i32 0, i32 4
  %282 = load i32, i32* %281, align 8
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %288, label %284

284:                                              ; preds = %267
  %285 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %286 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %287 = call i32 @pm8001_handle_event(%struct.pm8001_hba_info* %285, %struct.pm8001_device* %286, i32 149)
  br label %288

288:                                              ; preds = %284, %267
  br label %467

289:                                              ; preds = %104
  %290 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %291 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  %292 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %290, i32 %291)
  %293 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %294 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %295 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %294, i32 0, i32 2
  store i8* %293, i8** %295, align 8
  %296 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %297 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %298 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %297, i32 0, i32 1
  store i8* %296, i8** %298, align 8
  %299 = load i8*, i8** @SAS_OREJ_BAD_DEST, align 8
  %300 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %301 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %300, i32 0, i32 3
  store i8* %299, i8** %301, align 8
  br label %467

302:                                              ; preds = %104
  %303 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %304 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.14, i64 0, i64 0))
  %305 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %303, i32 %304)
  %306 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %307 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %308 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %307, i32 0, i32 2
  store i8* %306, i8** %308, align 8
  %309 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %310 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %311 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %310, i32 0, i32 1
  store i8* %309, i8** %311, align 8
  %312 = load i8*, i8** @SAS_OREJ_CONN_RATE, align 8
  %313 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %314 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %313, i32 0, i32 3
  store i8* %312, i8** %314, align 8
  br label %467

315:                                              ; preds = %104
  %316 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %317 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0))
  %318 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %316, i32 %317)
  %319 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %320 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %321 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %320, i32 0, i32 2
  store i8* %319, i8** %321, align 8
  %322 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %323 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %324 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %323, i32 0, i32 1
  store i8* %322, i8** %324, align 8
  %325 = load i8*, i8** @SAS_OREJ_WRONG_DEST, align 8
  %326 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %327 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %326, i32 0, i32 3
  store i8* %325, i8** %327, align 8
  br label %467

328:                                              ; preds = %104
  %329 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %330 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  %331 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %329, i32 %330)
  %332 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %333 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %334 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %333, i32 0, i32 2
  store i8* %332, i8** %334, align 8
  %335 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %336 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %337 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %336, i32 0, i32 1
  store i8* %335, i8** %337, align 8
  %338 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %339 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %340 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %339, i32 0, i32 3
  store i8* %338, i8** %340, align 8
  br label %467

341:                                              ; preds = %104
  %342 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %343 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0))
  %344 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %342, i32 %343)
  %345 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %346 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %347 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %346, i32 0, i32 2
  store i8* %345, i8** %347, align 8
  %348 = load i8*, i8** @SAS_NAK_R_ERR, align 8
  %349 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %350 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %349, i32 0, i32 1
  store i8* %348, i8** %350, align 8
  br label %467

351:                                              ; preds = %104
  %352 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %353 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0))
  %354 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %352, i32 %353)
  %355 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %356 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %357 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %356, i32 0, i32 2
  store i8* %355, i8** %357, align 8
  %358 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %359 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %360 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %359, i32 0, i32 1
  store i8* %358, i8** %360, align 8
  br label %467

361:                                              ; preds = %104
  %362 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %363 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0))
  %364 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %362, i32 %363)
  %365 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %366 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %367 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %366, i32 0, i32 2
  store i8* %365, i8** %367, align 8
  %368 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %369 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %370 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %369, i32 0, i32 1
  store i8* %368, i8** %370, align 8
  %371 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %372 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %373 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %372, i32 0, i32 3
  store i8* %371, i8** %373, align 8
  br label %467

374:                                              ; preds = %104
  %375 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %376 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0))
  %377 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %375, i32 %376)
  %378 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %379 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %380 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %379, i32 0, i32 2
  store i8* %378, i8** %380, align 8
  %381 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %382 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %383 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %382, i32 0, i32 1
  store i8* %381, i8** %383, align 8
  br label %467

384:                                              ; preds = %104
  %385 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %386 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0))
  %387 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %385, i32 %386)
  %388 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %389 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %390 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %389, i32 0, i32 2
  store i8* %388, i8** %390, align 8
  %391 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %392 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %393 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %392, i32 0, i32 1
  store i8* %391, i8** %393, align 8
  br label %467

394:                                              ; preds = %104
  %395 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %396 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0))
  %397 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %395, i32 %396)
  %398 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %399 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %400 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %399, i32 0, i32 2
  store i8* %398, i8** %400, align 8
  %401 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %402 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %403 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %402, i32 0, i32 1
  store i8* %401, i8** %403, align 8
  %404 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %405 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %404, i32 0, i32 4
  %406 = load i32, i32* %405, align 8
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %412, label %408

408:                                              ; preds = %394
  %409 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %410 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %411 = call i32 @pm8001_handle_event(%struct.pm8001_hba_info* %409, %struct.pm8001_device* %410, i32 155)
  br label %412

412:                                              ; preds = %408, %394
  br label %467

413:                                              ; preds = %104
  %414 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %415 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0))
  %416 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %414, i32 %415)
  %417 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %418 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %419 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %418, i32 0, i32 2
  store i8* %417, i8** %419, align 8
  %420 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %421 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %422 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %421, i32 0, i32 1
  store i8* %420, i8** %422, align 8
  br label %467

423:                                              ; preds = %104
  %424 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %425 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0))
  %426 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %424, i32 %425)
  %427 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %428 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %429 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %428, i32 0, i32 2
  store i8* %427, i8** %429, align 8
  %430 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %431 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %432 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %431, i32 0, i32 1
  store i8* %430, i8** %432, align 8
  br label %467

433:                                              ; preds = %104
  %434 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %435 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0))
  %436 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %434, i32 %435)
  %437 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %438 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %439 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %438, i32 0, i32 2
  store i8* %437, i8** %439, align 8
  %440 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %441 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %442 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %441, i32 0, i32 1
  store i8* %440, i8** %442, align 8
  br label %467

443:                                              ; preds = %104
  %444 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %445 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0))
  %446 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %444, i32 %445)
  %447 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %448 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %449 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %448, i32 0, i32 2
  store i8* %447, i8** %449, align 8
  %450 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %451 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %452 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %451, i32 0, i32 1
  store i8* %450, i8** %452, align 8
  %453 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %454 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %455 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %454, i32 0, i32 3
  store i8* %453, i8** %455, align 8
  br label %467

456:                                              ; preds = %104
  %457 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %458 = load i64, i64* %8, align 8
  %459 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i64 0, i64 0), i64 %458)
  %460 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %457, i32 %459)
  %461 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %462 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %463 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %462, i32 0, i32 2
  store i8* %461, i8** %463, align 8
  %464 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %465 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %466 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %465, i32 0, i32 1
  store i8* %464, i8** %466, align 8
  br label %467

467:                                              ; preds = %456, %443, %433, %423, %413, %412, %384, %374, %361, %351, %341, %328, %315, %302, %289, %288, %254, %241, %228, %215, %202, %189, %179, %178, %147, %146
  %468 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %469 = load %struct.ssp_completion_resp*, %struct.ssp_completion_resp** %11, align 8
  %470 = getelementptr inbounds %struct.ssp_completion_resp, %struct.ssp_completion_resp* %469, i32 0, i32 0
  %471 = getelementptr inbounds %struct.ssp_response_iu, %struct.ssp_response_iu* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 4
  %473 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0), i32 %472)
  %474 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %468, i32 %473)
  %475 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %476 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %475, i32 0, i32 2
  %477 = load i64, i64* %7, align 8
  %478 = call i32 @spin_lock_irqsave(i32* %476, i64 %477)
  %479 = load i32, i32* @SAS_TASK_STATE_PENDING, align 4
  %480 = xor i32 %479, -1
  %481 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %482 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %481, i32 0, i32 0
  %483 = load i32, i32* %482, align 8
  %484 = and i32 %483, %480
  store i32 %484, i32* %482, align 8
  %485 = load i32, i32* @SAS_TASK_AT_INITIATOR, align 4
  %486 = xor i32 %485, -1
  %487 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %488 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 8
  %490 = and i32 %489, %486
  store i32 %490, i32* %488, align 8
  %491 = load i32, i32* @SAS_TASK_STATE_DONE, align 4
  %492 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %493 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 8
  %495 = or i32 %494, %491
  store i32 %495, i32* %493, align 8
  %496 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %497 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %496, i32 0, i32 0
  %498 = load i32, i32* %497, align 8
  %499 = load i32, i32* @SAS_TASK_STATE_ABORTED, align 4
  %500 = and i32 %498, %499
  %501 = call i64 @unlikely(i32 %500)
  %502 = icmp ne i64 %501, 0
  br i1 %502, label %503, label %535

503:                                              ; preds = %467
  %504 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %505 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %504, i32 0, i32 2
  %506 = load i64, i64* %7, align 8
  %507 = call i32 @spin_unlock_irqrestore(i32* %505, i64 %506)
  %508 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %509 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %510 = load i64, i64* %8, align 8
  %511 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %512 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %511, i32 0, i32 2
  %513 = load i8*, i8** %512, align 8
  %514 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %515 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %514, i32 0, i32 1
  %516 = load i8*, i8** %515, align 8
  %517 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.29, i64 0, i64 0), %struct.sas_task* %509, i64 %510, i8* %513, i8* %516)
  %518 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %508, i32 %517)
  %519 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %520 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %519, i32 0, i32 3
  %521 = load %struct.TYPE_3__*, %struct.TYPE_3__** %520, align 8
  %522 = icmp ne %struct.TYPE_3__* %521, null
  br i1 %522, label %523, label %529

523:                                              ; preds = %503
  %524 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %525 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %524, i32 0, i32 3
  %526 = load %struct.TYPE_3__*, %struct.TYPE_3__** %525, align 8
  %527 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %526, i32 0, i32 0
  %528 = call i32 @complete(i32* %527)
  br label %529

529:                                              ; preds = %523, %503
  %530 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %531 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %532 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %533 = load i64, i64* %10, align 8
  %534 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %530, %struct.sas_task* %531, %struct.pm8001_ccb_info* %532, i64 %533)
  br label %551

535:                                              ; preds = %467
  %536 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %537 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %536, i32 0, i32 2
  %538 = load i64, i64* %7, align 8
  %539 = call i32 @spin_unlock_irqrestore(i32* %537, i64 %538)
  %540 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %541 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %542 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %543 = load i64, i64* %10, align 8
  %544 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %540, %struct.sas_task* %541, %struct.pm8001_ccb_info* %542, i64 %543)
  %545 = call i32 (...) @mb()
  %546 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %547 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %546, i32 0, i32 1
  %548 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %547, align 8
  %549 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %550 = call i32 %548(%struct.sas_task* %549)
  br label %551

551:                                              ; preds = %38, %81, %535, %529
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @SAS_ADDR(i32) #1

declare dso_local i32 @PM8001_IO_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @sas_ssp_task_response(i32, %struct.sas_task*, %struct.ssp_response_iu*) #1

declare dso_local i32 @pm8001_handle_event(%struct.pm8001_hba_info*, %struct.pm8001_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info*, %struct.sas_task*, %struct.pm8001_ccb_info*, i64) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
