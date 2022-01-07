; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_mpi_ssp_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_mpi_ssp_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32, %struct.pm8001_ccb_info* }
%struct.pm8001_ccb_info = type { %struct.sas_task*, %struct.pm8001_device*, i64 }
%struct.sas_task = type { i32, i32 (%struct.sas_task*)*, i32, i32, %struct.TYPE_2__*, %struct.task_status_struct, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.task_status_struct = type { i64, i8*, i8*, i8* }
%struct.pm8001_device = type { i32 }
%struct.ssp_completion_resp = type { %struct.ssp_response_iu, i32, i32, i32 }
%struct.ssp_response_iu = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"sas IO status 0x%x\0A\00", align 1
@IO_OVERFLOW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"SAS Address of IO Failure Drive:%016llx\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"IO_SUCCESS,param = %d\0A\00", align 1
@SAS_TASK_COMPLETE = common dso_local global i8* null, align 8
@SAM_STAT_GOOD = common dso_local global i8* null, align 8
@SAS_PROTO_RESPONSE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"IO_ABORTED IOMB Tag\0A\00", align 1
@SAS_ABORTED_TASK = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"IO_UNDERFLOW,param = %d\0A\00", align 1
@SAS_DATA_UNDERRUN = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"IO_NO_DEVICE\0A\00", align 1
@SAS_TASK_UNDELIVERED = common dso_local global i8* null, align 8
@SAS_PHY_DOWN = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"IO_XFER_ERROR_BREAK\0A\00", align 1
@SAS_OPEN_REJECT = common dso_local global i8* null, align 8
@SAS_OREJ_RSVD_RETRY = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"IO_XFER_ERROR_PHY_NOT_READY\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"IO_OPEN_CNX_ERROR_PROTOCOL_NOT_SUPPORTED\0A\00", align 1
@SAS_OREJ_EPROTO = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [34 x i8] c"IO_OPEN_CNX_ERROR_ZONE_VIOLATION\0A\00", align 1
@SAS_OREJ_UNKNOWN = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [25 x i8] c"IO_OPEN_CNX_ERROR_BREAK\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"IO_OPEN_CNX_ERROR_BAD_DESTINATION\0A\00", align 1
@SAS_OREJ_BAD_DEST = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [49 x i8] c"IO_OPEN_CNX_ERROR_CONNECTION_RATE_NOT_SUPPORTED\0A\00", align 1
@SAS_OREJ_CONN_RATE = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [37 x i8] c"IO_OPEN_CNX_ERROR_WRONG_DESTINATION\0A\00", align 1
@SAS_OREJ_WRONG_DEST = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [28 x i8] c"IO_XFER_ERROR_NAK_RECEIVED\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"IO_XFER_ERROR_ACK_NAK_TIMEOUT\0A\00", align 1
@SAS_NAK_R_ERR = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [19 x i8] c"IO_XFER_ERROR_DMA\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"IO_XFER_OPEN_RETRY_TIMEOUT\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"IO_XFER_ERROR_OFFSET_MISMATCH\0A\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"IO_PORT_IN_RESET\0A\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"IO_DS_NON_OPERATIONAL\0A\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"IO_DS_IN_RECOVERY\0A\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"IO_TM_TAG_NOT_FOUND\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"IO_SSP_EXT_IU_ZERO_LEN_ERROR\0A\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"IO_OPEN_CNX_ERROR_HW_RESOURCE_BUSY\0A\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"Unknown status 0x%x\0A\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"scsi_status = %x\0A \00", align 1
@SAS_TASK_STATE_PENDING = common dso_local global i32 0, align 4
@SAS_TASK_AT_INITIATOR = common dso_local global i32 0, align 4
@SAS_TASK_STATE_DONE = common dso_local global i32 0, align 4
@SAS_TASK_STATE_ABORTED = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [84 x i8] c"task 0x%p done with io_status 0x%x resp 0x%x stat 0x%x but aborted by upper layer!\0A\00", align 1
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
  %32 = icmp eq i64 %31, 151
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
  br label %527

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
  %56 = icmp ne i64 %55, 135
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
  %67 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %72 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %71, i32 0, i32 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = icmp ne %struct.TYPE_2__* %73, null
  %75 = xor i1 %74, true
  br label %76

76:                                               ; preds = %70, %65, %62
  %77 = phi i1 [ true, %65 ], [ true, %62 ], [ %75, %70 ]
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %527

82:                                               ; preds = %76
  %83 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %84 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %83, i32 0, i32 5
  store %struct.task_status_struct* %84, %struct.task_status_struct** %12, align 8
  %85 = load i64, i64* %8, align 8
  %86 = icmp ne i64 %85, 137
  br i1 %86, label %87, label %104

87:                                               ; preds = %82
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* @IO_OVERFLOW, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %87
  %92 = load i64, i64* %8, align 8
  %93 = icmp ne i64 %92, 135
  br i1 %93, label %94, label %104

94:                                               ; preds = %91
  %95 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %96 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %97 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %96, i32 0, i32 4
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @SAS_ADDR(i32 %100)
  %102 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %95, i32 %102)
  br label %104

104:                                              ; preds = %94, %91, %87, %82
  %105 = load i64, i64* %8, align 8
  switch i64 %105, label %443 [
    i64 137, label %106
    i64 151, label %147
    i64 135, label %157
    i64 148, label %179
    i64 133, label %189
    i64 129, label %202
    i64 142, label %215
    i64 140, label %228
    i64 146, label %241
    i64 143, label %254
    i64 147, label %276
    i64 145, label %289
    i64 141, label %302
    i64 131, label %315
    i64 134, label %328
    i64 132, label %338
    i64 128, label %348
    i64 130, label %361
    i64 139, label %371
    i64 149, label %381
    i64 150, label %400
    i64 136, label %410
    i64 138, label %420
    i64 144, label %430
  ]

106:                                              ; preds = %104
  %107 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %108 = load i64, i64* %9, align 8
  %109 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %108)
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
  br label %454

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
  br label %454

157:                                              ; preds = %104
  %158 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %159 = load i64, i64* %9, align 8
  %160 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %159)
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
  br label %454

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
  br label %454

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
  br label %454

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
  br label %454

215:                                              ; preds = %104
  %216 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %217 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %218 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %216, i32 %217)
  %219 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %220 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %221 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %220, i32 0, i32 2
  store i8* %219, i8** %221, align 8
  %222 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %223 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %224 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %223, i32 0, i32 1
  store i8* %222, i8** %224, align 8
  %225 = load i8*, i8** @SAS_OREJ_EPROTO, align 8
  %226 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %227 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %226, i32 0, i32 3
  store i8* %225, i8** %227, align 8
  br label %454

228:                                              ; preds = %104
  %229 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %230 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %231 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %229, i32 %230)
  %232 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %233 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %234 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %233, i32 0, i32 2
  store i8* %232, i8** %234, align 8
  %235 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %236 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %237 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %236, i32 0, i32 1
  store i8* %235, i8** %237, align 8
  %238 = load i8*, i8** @SAS_OREJ_UNKNOWN, align 8
  %239 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %240 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %239, i32 0, i32 3
  store i8* %238, i8** %240, align 8
  br label %454

241:                                              ; preds = %104
  %242 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %243 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %244 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %242, i32 %243)
  %245 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %246 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %247 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %246, i32 0, i32 2
  store i8* %245, i8** %247, align 8
  %248 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %249 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %250 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %249, i32 0, i32 1
  store i8* %248, i8** %250, align 8
  %251 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %252 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %253 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %252, i32 0, i32 3
  store i8* %251, i8** %253, align 8
  br label %454

254:                                              ; preds = %104
  %255 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %256 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %257 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %255, i32 %256)
  %258 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %259 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %260 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %259, i32 0, i32 2
  store i8* %258, i8** %260, align 8
  %261 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %262 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %263 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %262, i32 0, i32 1
  store i8* %261, i8** %263, align 8
  %264 = load i8*, i8** @SAS_OREJ_UNKNOWN, align 8
  %265 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %266 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %265, i32 0, i32 3
  store i8* %264, i8** %266, align 8
  %267 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %268 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %275, label %271

271:                                              ; preds = %254
  %272 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %273 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %274 = call i32 @pm8001_handle_event(%struct.pm8001_hba_info* %272, %struct.pm8001_device* %273, i32 143)
  br label %275

275:                                              ; preds = %271, %254
  br label %454

276:                                              ; preds = %104
  %277 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %278 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  %279 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %277, i32 %278)
  %280 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %281 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %282 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %281, i32 0, i32 2
  store i8* %280, i8** %282, align 8
  %283 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %284 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %285 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %284, i32 0, i32 1
  store i8* %283, i8** %285, align 8
  %286 = load i8*, i8** @SAS_OREJ_BAD_DEST, align 8
  %287 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %288 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %287, i32 0, i32 3
  store i8* %286, i8** %288, align 8
  br label %454

289:                                              ; preds = %104
  %290 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %291 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i64 0, i64 0))
  %292 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %290, i32 %291)
  %293 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %294 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %295 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %294, i32 0, i32 2
  store i8* %293, i8** %295, align 8
  %296 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %297 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %298 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %297, i32 0, i32 1
  store i8* %296, i8** %298, align 8
  %299 = load i8*, i8** @SAS_OREJ_CONN_RATE, align 8
  %300 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %301 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %300, i32 0, i32 3
  store i8* %299, i8** %301, align 8
  br label %454

302:                                              ; preds = %104
  %303 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %304 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0))
  %305 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %303, i32 %304)
  %306 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %307 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %308 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %307, i32 0, i32 2
  store i8* %306, i8** %308, align 8
  %309 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %310 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %311 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %310, i32 0, i32 1
  store i8* %309, i8** %311, align 8
  %312 = load i8*, i8** @SAS_OREJ_WRONG_DEST, align 8
  %313 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %314 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %313, i32 0, i32 3
  store i8* %312, i8** %314, align 8
  br label %454

315:                                              ; preds = %104
  %316 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %317 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0))
  %318 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %316, i32 %317)
  %319 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %320 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %321 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %320, i32 0, i32 2
  store i8* %319, i8** %321, align 8
  %322 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %323 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %324 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %323, i32 0, i32 1
  store i8* %322, i8** %324, align 8
  %325 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %326 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %327 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %326, i32 0, i32 3
  store i8* %325, i8** %327, align 8
  br label %454

328:                                              ; preds = %104
  %329 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %330 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0))
  %331 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %329, i32 %330)
  %332 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %333 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %334 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %333, i32 0, i32 2
  store i8* %332, i8** %334, align 8
  %335 = load i8*, i8** @SAS_NAK_R_ERR, align 8
  %336 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %337 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %336, i32 0, i32 1
  store i8* %335, i8** %337, align 8
  br label %454

338:                                              ; preds = %104
  %339 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %340 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  %341 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %339, i32 %340)
  %342 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %343 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %344 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %343, i32 0, i32 2
  store i8* %342, i8** %344, align 8
  %345 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %346 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %347 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %346, i32 0, i32 1
  store i8* %345, i8** %347, align 8
  br label %454

348:                                              ; preds = %104
  %349 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %350 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0))
  %351 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %349, i32 %350)
  %352 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %353 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %354 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %353, i32 0, i32 2
  store i8* %352, i8** %354, align 8
  %355 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %356 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %357 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %356, i32 0, i32 1
  store i8* %355, i8** %357, align 8
  %358 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %359 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %360 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %359, i32 0, i32 3
  store i8* %358, i8** %360, align 8
  br label %454

361:                                              ; preds = %104
  %362 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %363 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0))
  %364 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %362, i32 %363)
  %365 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %366 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %367 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %366, i32 0, i32 2
  store i8* %365, i8** %367, align 8
  %368 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %369 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %370 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %369, i32 0, i32 1
  store i8* %368, i8** %370, align 8
  br label %454

371:                                              ; preds = %104
  %372 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %373 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0))
  %374 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %372, i32 %373)
  %375 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %376 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %377 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %376, i32 0, i32 2
  store i8* %375, i8** %377, align 8
  %378 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %379 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %380 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %379, i32 0, i32 1
  store i8* %378, i8** %380, align 8
  br label %454

381:                                              ; preds = %104
  %382 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %383 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0))
  %384 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %382, i32 %383)
  %385 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %386 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %387 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %386, i32 0, i32 2
  store i8* %385, i8** %387, align 8
  %388 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %389 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %390 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %389, i32 0, i32 1
  store i8* %388, i8** %390, align 8
  %391 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %392 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %391, i32 0, i32 3
  %393 = load i32, i32* %392, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %399, label %395

395:                                              ; preds = %381
  %396 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %397 = load %struct.pm8001_device*, %struct.pm8001_device** %14, align 8
  %398 = call i32 @pm8001_handle_event(%struct.pm8001_hba_info* %396, %struct.pm8001_device* %397, i32 149)
  br label %399

399:                                              ; preds = %395, %381
  br label %454

400:                                              ; preds = %104
  %401 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %402 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0))
  %403 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %401, i32 %402)
  %404 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %405 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %406 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %405, i32 0, i32 2
  store i8* %404, i8** %406, align 8
  %407 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %408 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %409 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %408, i32 0, i32 1
  store i8* %407, i8** %409, align 8
  br label %454

410:                                              ; preds = %104
  %411 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %412 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0))
  %413 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %411, i32 %412)
  %414 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %415 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %416 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %415, i32 0, i32 2
  store i8* %414, i8** %416, align 8
  %417 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %418 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %419 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %418, i32 0, i32 1
  store i8* %417, i8** %419, align 8
  br label %454

420:                                              ; preds = %104
  %421 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %422 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0))
  %423 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %421, i32 %422)
  %424 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %425 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %426 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %425, i32 0, i32 2
  store i8* %424, i8** %426, align 8
  %427 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %428 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %429 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %428, i32 0, i32 1
  store i8* %427, i8** %429, align 8
  br label %454

430:                                              ; preds = %104
  %431 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %432 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i64 0, i64 0))
  %433 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %431, i32 %432)
  %434 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %435 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %436 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %435, i32 0, i32 2
  store i8* %434, i8** %436, align 8
  %437 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %438 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %439 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %438, i32 0, i32 1
  store i8* %437, i8** %439, align 8
  %440 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %441 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %442 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %441, i32 0, i32 3
  store i8* %440, i8** %442, align 8
  br label %454

443:                                              ; preds = %104
  %444 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %445 = load i64, i64* %8, align 8
  %446 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0), i64 %445)
  %447 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %444, i32 %446)
  %448 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %449 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %450 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %449, i32 0, i32 2
  store i8* %448, i8** %450, align 8
  %451 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %452 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %453 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %452, i32 0, i32 1
  store i8* %451, i8** %453, align 8
  br label %454

454:                                              ; preds = %443, %430, %420, %410, %400, %399, %371, %361, %348, %338, %328, %315, %302, %289, %276, %275, %241, %228, %215, %202, %189, %179, %178, %147, %146
  %455 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %456 = load %struct.ssp_completion_resp*, %struct.ssp_completion_resp** %11, align 8
  %457 = getelementptr inbounds %struct.ssp_completion_resp, %struct.ssp_completion_resp* %456, i32 0, i32 0
  %458 = getelementptr inbounds %struct.ssp_response_iu, %struct.ssp_response_iu* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 4
  %460 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0), i32 %459)
  %461 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %455, i32 %460)
  %462 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %463 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %462, i32 0, i32 2
  %464 = load i64, i64* %7, align 8
  %465 = call i32 @spin_lock_irqsave(i32* %463, i64 %464)
  %466 = load i32, i32* @SAS_TASK_STATE_PENDING, align 4
  %467 = xor i32 %466, -1
  %468 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %469 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 8
  %471 = and i32 %470, %467
  store i32 %471, i32* %469, align 8
  %472 = load i32, i32* @SAS_TASK_AT_INITIATOR, align 4
  %473 = xor i32 %472, -1
  %474 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %475 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  %477 = and i32 %476, %473
  store i32 %477, i32* %475, align 8
  %478 = load i32, i32* @SAS_TASK_STATE_DONE, align 4
  %479 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %480 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 8
  %482 = or i32 %481, %478
  store i32 %482, i32* %480, align 8
  %483 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %484 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 8
  %486 = load i32, i32* @SAS_TASK_STATE_ABORTED, align 4
  %487 = and i32 %485, %486
  %488 = call i64 @unlikely(i32 %487)
  %489 = icmp ne i64 %488, 0
  br i1 %489, label %490, label %511

490:                                              ; preds = %454
  %491 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %492 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %491, i32 0, i32 2
  %493 = load i64, i64* %7, align 8
  %494 = call i32 @spin_unlock_irqrestore(i32* %492, i64 %493)
  %495 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %496 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %497 = load i64, i64* %8, align 8
  %498 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %499 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %498, i32 0, i32 2
  %500 = load i8*, i8** %499, align 8
  %501 = load %struct.task_status_struct*, %struct.task_status_struct** %12, align 8
  %502 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %501, i32 0, i32 1
  %503 = load i8*, i8** %502, align 8
  %504 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.28, i64 0, i64 0), %struct.sas_task* %496, i64 %497, i8* %500, i8* %503)
  %505 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %495, i32 %504)
  %506 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %507 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %508 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %509 = load i64, i64* %10, align 8
  %510 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %506, %struct.sas_task* %507, %struct.pm8001_ccb_info* %508, i64 %509)
  br label %527

511:                                              ; preds = %454
  %512 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %513 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %512, i32 0, i32 2
  %514 = load i64, i64* %7, align 8
  %515 = call i32 @spin_unlock_irqrestore(i32* %513, i64 %514)
  %516 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %517 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %518 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %519 = load i64, i64* %10, align 8
  %520 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %516, %struct.sas_task* %517, %struct.pm8001_ccb_info* %518, i64 %519)
  %521 = call i32 (...) @mb()
  %522 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %523 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %522, i32 0, i32 1
  %524 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %523, align 8
  %525 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %526 = call i32 %524(%struct.sas_task* %525)
  br label %527

527:                                              ; preds = %38, %81, %511, %490
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

declare dso_local i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info*, %struct.sas_task*, %struct.pm8001_ccb_info*, i64) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
