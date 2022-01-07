; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_sata_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_sata_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.pm8001_ccb_info* }
%struct.pm8001_ccb_info = type { %struct.pm8001_device*, %struct.sas_task* }
%struct.pm8001_device = type { i32 }
%struct.sas_task = type { i32, i32, i32, %struct.task_status_struct, i32, i32 }
%struct.task_status_struct = type { i8*, i8*, i32, i32 }
%struct.sata_event_resp = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"No CCB !!!. returning\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"SATA EVENT 0x%x\0A\00", align 1
@IO_XFER_ERROR_ABORTED_NCQ_MODE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"task or dev null\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"port_id:0x%x, tag:0x%x, event:0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"IO_UNDERFLOW\0A\00", align 1
@SAS_TASK_COMPLETE = common dso_local global i8* null, align 8
@SAS_DATA_OVERRUN = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"IO_XFER_ERROR_BREAK\0A\00", align 1
@SAS_INTERRUPTED = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"IO_XFER_ERROR_PHY_NOT_READY\0A\00", align 1
@SAS_OPEN_REJECT = common dso_local global i8* null, align 8
@SAS_OREJ_RSVD_RETRY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"IO_OPEN_CNX_ERROR_PROTOCOL_NOT_SUPPORTED\0A\00", align 1
@SAS_OREJ_EPROTO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"IO_OPEN_CNX_ERROR_ZONE_VIOLATION\0A\00", align 1
@SAS_OREJ_UNKNOWN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"IO_OPEN_CNX_ERROR_BREAK\0A\00", align 1
@SAS_OREJ_RSVD_CONT0 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS\0A\00", align 1
@SAS_TASK_UNDELIVERED = common dso_local global i8* null, align 8
@SAS_DEV_NO_RESPONSE = common dso_local global i8* null, align 8
@SAS_QUEUE_FULL = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [35 x i8] c"IO_OPEN_CNX_ERROR_BAD_DESTINATION\0A\00", align 1
@SAS_OREJ_BAD_DEST = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [49 x i8] c"IO_OPEN_CNX_ERROR_CONNECTION_RATE_NOT_SUPPORTED\0A\00", align 1
@SAS_OREJ_CONN_RATE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [37 x i8] c"IO_OPEN_CNX_ERROR_WRONG_DESTINATION\0A\00", align 1
@SAS_OREJ_WRONG_DEST = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [28 x i8] c"IO_XFER_ERROR_NAK_RECEIVED\0A\00", align 1
@SAS_NAK_R_ERR = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [28 x i8] c"IO_XFER_ERROR_PEER_ABORTED\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"IO_XFER_ERROR_REJECTED_NCQ_MODE\0A\00", align 1
@SAS_DATA_UNDERRUN = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [28 x i8] c"IO_XFER_OPEN_RETRY_TIMEOUT\0A\00", align 1
@SAS_OPEN_TO = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [32 x i8] c"IO_XFER_ERROR_UNEXPECTED_PHASE\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"IO_XFER_ERROR_XFER_RDY_OVERRUN\0A\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"IO_XFER_ERROR_XFER_RDY_NOT_EXPECTED\0A\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"IO_XFER_ERROR_OFFSET_MISMATCH\0A\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"IO_XFER_ERROR_XFER_ZERO_DATA_LEN\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"IO_XFER_CMD_FRAME_ISSUED\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"IO_XFER_PIO_SETUP_ERROR\0A\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"IO_XFR_ERROR_INTERNAL_CRC_ERROR\0A\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"IO_XFR_DMA_ACTIVATE_TIMEOUT\0A\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"Unknown status 0x%x\0A\00", align 1
@SAS_TASK_STATE_PENDING = common dso_local global i32 0, align 4
@SAS_TASK_AT_INITIATOR = common dso_local global i32 0, align 4
@SAS_TASK_STATE_DONE = common dso_local global i32 0, align 4
@SAS_TASK_STATE_ABORTED = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [84 x i8] c"task 0x%p done with io_status 0x%x resp 0x%x stat 0x%x but aborted by upper layer!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*, i8*)* @mpi_sata_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpi_sata_event(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sas_task*, align 8
  %6 = alloca %struct.task_status_struct*, align 8
  %7 = alloca %struct.pm8001_ccb_info*, align 8
  %8 = alloca %struct.pm8001_device*, align 8
  %9 = alloca %struct.sata_event_resp*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr i8, i8* %15, i64 4
  %17 = bitcast i8* %16 to %struct.sata_event_resp*
  store %struct.sata_event_resp* %17, %struct.sata_event_resp** %9, align 8
  %18 = load %struct.sata_event_resp*, %struct.sata_event_resp** %9, align 8
  %19 = getelementptr inbounds %struct.sata_event_resp, %struct.sata_event_resp* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @le32_to_cpu(i32 %20)
  store i64 %21, i64* %10, align 8
  %22 = load %struct.sata_event_resp*, %struct.sata_event_resp** %9, align 8
  %23 = getelementptr inbounds %struct.sata_event_resp, %struct.sata_event_resp* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le32_to_cpu(i32 %24)
  store i64 %25, i64* %11, align 8
  %26 = load %struct.sata_event_resp*, %struct.sata_event_resp** %9, align 8
  %27 = getelementptr inbounds %struct.sata_event_resp, %struct.sata_event_resp* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @le32_to_cpu(i32 %28)
  store i64 %29, i64* %12, align 8
  %30 = load %struct.sata_event_resp*, %struct.sata_event_resp** %9, align 8
  %31 = getelementptr inbounds %struct.sata_event_resp, %struct.sata_event_resp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @le32_to_cpu(i32 %32)
  store i64 %33, i64* %13, align 8
  %34 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %35 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %34, i32 0, i32 0
  %36 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %35, align 8
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %36, i64 %37
  store %struct.pm8001_ccb_info* %38, %struct.pm8001_ccb_info** %7, align 8
  %39 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %40 = icmp ne %struct.pm8001_ccb_info* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %2
  %42 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %43 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %42, i32 0, i32 1
  %44 = load %struct.sas_task*, %struct.sas_task** %43, align 8
  store %struct.sas_task* %44, %struct.sas_task** %5, align 8
  %45 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %46 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %45, i32 0, i32 0
  %47 = load %struct.pm8001_device*, %struct.pm8001_device** %46, align 8
  store %struct.pm8001_device* %47, %struct.pm8001_device** %8, align 8
  br label %52

48:                                               ; preds = %2
  %49 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %50 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %51 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %49, i32 %50)
  br label %454

52:                                               ; preds = %41
  %53 = load i64, i64* %10, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  %59 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %56, i32 %58)
  br label %60

60:                                               ; preds = %55, %52
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* @IO_XFER_ERROR_ABORTED_NCQ_MODE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %66 = load i64, i64* %13, align 8
  %67 = call %struct.pm8001_device* @pm8001_find_dev(%struct.pm8001_hba_info* %65, i64 %66)
  store %struct.pm8001_device* %67, %struct.pm8001_device** %8, align 8
  %68 = load %struct.pm8001_device*, %struct.pm8001_device** %8, align 8
  %69 = icmp ne %struct.pm8001_device* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %72 = load %struct.pm8001_device*, %struct.pm8001_device** %8, align 8
  %73 = call i32 @pm80xx_send_read_log(%struct.pm8001_hba_info* %71, %struct.pm8001_device* %72)
  br label %74

74:                                               ; preds = %70, %64
  br label %454

75:                                               ; preds = %60
  %76 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %77 = icmp ne %struct.sas_task* %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %80 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %85 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  br label %89

89:                                               ; preds = %83, %78, %75
  %90 = phi i1 [ true, %78 ], [ true, %75 ], [ %88, %83 ]
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %96 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %97 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %95, i32 %96)
  br label %454

98:                                               ; preds = %89
  %99 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %100 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %99, i32 0, i32 3
  store %struct.task_status_struct* %100, %struct.task_status_struct** %6, align 8
  %101 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %102 = load i64, i64* %12, align 8
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* %10, align 8
  %105 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %102, i64 %103, i64 %104)
  %106 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %101, i32 %105)
  %107 = load i64, i64* %10, align 8
  switch i64 %107, label %383 [
    i64 144, label %108
    i64 141, label %128
    i64 136, label %138
    i64 147, label %151
    i64 145, label %164
    i64 154, label %177
    i64 152, label %190
    i64 130, label %190
    i64 149, label %190
    i64 151, label %190
    i64 150, label %190
    i64 148, label %190
    i64 155, label %220
    i64 153, label %233
    i64 146, label %246
    i64 139, label %259
    i64 137, label %269
    i64 135, label %279
    i64 129, label %289
    i64 134, label %299
    i64 132, label %309
    i64 133, label %319
    i64 138, label %329
    i64 131, label %339
    i64 143, label %349
    i64 128, label %353
    i64 140, label %363
    i64 142, label %373
  ]

108:                                              ; preds = %98
  %109 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %110 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %111 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %109, i32 %110)
  %112 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %113 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %114 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %113, i32 0, i32 1
  store i8* %112, i8** %114, align 8
  %115 = load i8*, i8** @SAS_DATA_OVERRUN, align 8
  %116 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %117 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %116, i32 0, i32 0
  store i8* %115, i8** %117, align 8
  %118 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %119 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %118, i32 0, i32 3
  store i32 0, i32* %119, align 4
  %120 = load %struct.pm8001_device*, %struct.pm8001_device** %8, align 8
  %121 = icmp ne %struct.pm8001_device* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %108
  %123 = load %struct.pm8001_device*, %struct.pm8001_device** %8, align 8
  %124 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %122, %108
  br label %394

128:                                              ; preds = %98
  %129 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %130 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %131 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %129, i32 %130)
  %132 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %133 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %134 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  %135 = load i8*, i8** @SAS_INTERRUPTED, align 8
  %136 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %137 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %136, i32 0, i32 0
  store i8* %135, i8** %137, align 8
  br label %394

138:                                              ; preds = %98
  %139 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %140 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %141 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %139, i32 %140)
  %142 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %143 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %144 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  %145 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %146 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %147 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %146, i32 0, i32 0
  store i8* %145, i8** %147, align 8
  %148 = load i32, i32* @SAS_OREJ_RSVD_RETRY, align 4
  %149 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %150 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  br label %394

151:                                              ; preds = %98
  %152 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %153 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %154 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %152, i32 %153)
  %155 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %156 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %157 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %156, i32 0, i32 1
  store i8* %155, i8** %157, align 8
  %158 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %159 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %160 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %159, i32 0, i32 0
  store i8* %158, i8** %160, align 8
  %161 = load i32, i32* @SAS_OREJ_EPROTO, align 4
  %162 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %163 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  br label %394

164:                                              ; preds = %98
  %165 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %166 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %167 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %165, i32 %166)
  %168 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %169 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %170 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %169, i32 0, i32 1
  store i8* %168, i8** %170, align 8
  %171 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %172 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %173 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %172, i32 0, i32 0
  store i8* %171, i8** %173, align 8
  %174 = load i32, i32* @SAS_OREJ_UNKNOWN, align 4
  %175 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %176 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 8
  br label %394

177:                                              ; preds = %98
  %178 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %179 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %180 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %178, i32 %179)
  %181 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %182 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %183 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %182, i32 0, i32 1
  store i8* %181, i8** %183, align 8
  %184 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %185 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %186 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %185, i32 0, i32 0
  store i8* %184, i8** %186, align 8
  %187 = load i32, i32* @SAS_OREJ_RSVD_CONT0, align 4
  %188 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %189 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 8
  br label %394

190:                                              ; preds = %98, %98, %98, %98, %98, %98
  %191 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %192 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %193 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %191, i32 %192)
  %194 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %195 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %196 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %195, i32 0, i32 1
  store i8* %194, i8** %196, align 8
  %197 = load i8*, i8** @SAS_DEV_NO_RESPONSE, align 8
  %198 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %199 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %198, i32 0, i32 0
  store i8* %197, i8** %199, align 8
  %200 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %201 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %219, label %204

204:                                              ; preds = %190
  %205 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %206 = load %struct.pm8001_device*, %struct.pm8001_device** %8, align 8
  %207 = call i32 @pm8001_handle_event(%struct.pm8001_hba_info* %205, %struct.pm8001_device* %206, i32 152)
  %208 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %209 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %210 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %209, i32 0, i32 1
  store i8* %208, i8** %210, align 8
  %211 = load i8*, i8** @SAS_QUEUE_FULL, align 8
  %212 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %213 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %212, i32 0, i32 0
  store i8* %211, i8** %213, align 8
  %214 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %215 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %216 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %217 = load i64, i64* %11, align 8
  %218 = call i32 @pm8001_ccb_task_free_done(%struct.pm8001_hba_info* %214, %struct.sas_task* %215, %struct.pm8001_ccb_info* %216, i64 %217)
  br label %454

219:                                              ; preds = %190
  br label %394

220:                                              ; preds = %98
  %221 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %222 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %223 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %221, i32 %222)
  %224 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %225 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %226 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %225, i32 0, i32 1
  store i8* %224, i8** %226, align 8
  %227 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %228 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %229 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %228, i32 0, i32 0
  store i8* %227, i8** %229, align 8
  %230 = load i32, i32* @SAS_OREJ_BAD_DEST, align 4
  %231 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %232 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %231, i32 0, i32 2
  store i32 %230, i32* %232, align 8
  br label %394

233:                                              ; preds = %98
  %234 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %235 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0))
  %236 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %234, i32 %235)
  %237 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %238 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %239 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %238, i32 0, i32 1
  store i8* %237, i8** %239, align 8
  %240 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %241 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %242 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %241, i32 0, i32 0
  store i8* %240, i8** %242, align 8
  %243 = load i32, i32* @SAS_OREJ_CONN_RATE, align 4
  %244 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %245 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %244, i32 0, i32 2
  store i32 %243, i32* %245, align 8
  br label %394

246:                                              ; preds = %98
  %247 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %248 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  %249 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %247, i32 %248)
  %250 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %251 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %252 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %251, i32 0, i32 1
  store i8* %250, i8** %252, align 8
  %253 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %254 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %255 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %254, i32 0, i32 0
  store i8* %253, i8** %255, align 8
  %256 = load i32, i32* @SAS_OREJ_WRONG_DEST, align 4
  %257 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %258 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %257, i32 0, i32 2
  store i32 %256, i32* %258, align 8
  br label %394

259:                                              ; preds = %98
  %260 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %261 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  %262 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %260, i32 %261)
  %263 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %264 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %265 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %264, i32 0, i32 1
  store i8* %263, i8** %265, align 8
  %266 = load i8*, i8** @SAS_NAK_R_ERR, align 8
  %267 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %268 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %267, i32 0, i32 0
  store i8* %266, i8** %268, align 8
  br label %394

269:                                              ; preds = %98
  %270 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %271 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0))
  %272 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %270, i32 %271)
  %273 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %274 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %275 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %274, i32 0, i32 1
  store i8* %273, i8** %275, align 8
  %276 = load i8*, i8** @SAS_NAK_R_ERR, align 8
  %277 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %278 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %277, i32 0, i32 0
  store i8* %276, i8** %278, align 8
  br label %394

279:                                              ; preds = %98
  %280 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %281 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0))
  %282 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %280, i32 %281)
  %283 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %284 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %285 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %284, i32 0, i32 1
  store i8* %283, i8** %285, align 8
  %286 = load i8*, i8** @SAS_DATA_UNDERRUN, align 8
  %287 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %288 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %287, i32 0, i32 0
  store i8* %286, i8** %288, align 8
  br label %394

289:                                              ; preds = %98
  %290 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %291 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  %292 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %290, i32 %291)
  %293 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %294 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %295 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %294, i32 0, i32 1
  store i8* %293, i8** %295, align 8
  %296 = load i8*, i8** @SAS_OPEN_TO, align 8
  %297 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %298 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %297, i32 0, i32 0
  store i8* %296, i8** %298, align 8
  br label %394

299:                                              ; preds = %98
  %300 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %301 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0))
  %302 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %300, i32 %301)
  %303 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %304 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %305 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %304, i32 0, i32 1
  store i8* %303, i8** %305, align 8
  %306 = load i8*, i8** @SAS_OPEN_TO, align 8
  %307 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %308 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %307, i32 0, i32 0
  store i8* %306, i8** %308, align 8
  br label %394

309:                                              ; preds = %98
  %310 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %311 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0))
  %312 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %310, i32 %311)
  %313 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %314 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %315 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %314, i32 0, i32 1
  store i8* %313, i8** %315, align 8
  %316 = load i8*, i8** @SAS_OPEN_TO, align 8
  %317 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %318 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %317, i32 0, i32 0
  store i8* %316, i8** %318, align 8
  br label %394

319:                                              ; preds = %98
  %320 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %321 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0))
  %322 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %320, i32 %321)
  %323 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %324 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %325 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %324, i32 0, i32 1
  store i8* %323, i8** %325, align 8
  %326 = load i8*, i8** @SAS_OPEN_TO, align 8
  %327 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %328 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %327, i32 0, i32 0
  store i8* %326, i8** %328, align 8
  br label %394

329:                                              ; preds = %98
  %330 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %331 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0))
  %332 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %330, i32 %331)
  %333 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %334 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %335 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %334, i32 0, i32 1
  store i8* %333, i8** %335, align 8
  %336 = load i8*, i8** @SAS_OPEN_TO, align 8
  %337 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %338 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %337, i32 0, i32 0
  store i8* %336, i8** %338, align 8
  br label %394

339:                                              ; preds = %98
  %340 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %341 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0))
  %342 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %340, i32 %341)
  %343 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %344 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %345 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %344, i32 0, i32 1
  store i8* %343, i8** %345, align 8
  %346 = load i8*, i8** @SAS_OPEN_TO, align 8
  %347 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %348 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %347, i32 0, i32 0
  store i8* %346, i8** %348, align 8
  br label %394

349:                                              ; preds = %98
  %350 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %351 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0))
  %352 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %350, i32 %351)
  br label %394

353:                                              ; preds = %98
  %354 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %355 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0))
  %356 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %354, i32 %355)
  %357 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %358 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %359 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %358, i32 0, i32 1
  store i8* %357, i8** %359, align 8
  %360 = load i8*, i8** @SAS_OPEN_TO, align 8
  %361 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %362 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %361, i32 0, i32 0
  store i8* %360, i8** %362, align 8
  br label %394

363:                                              ; preds = %98
  %364 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %365 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i64 0, i64 0))
  %366 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %364, i32 %365)
  %367 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %368 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %369 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %368, i32 0, i32 1
  store i8* %367, i8** %369, align 8
  %370 = load i8*, i8** @SAS_OPEN_TO, align 8
  %371 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %372 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %371, i32 0, i32 0
  store i8* %370, i8** %372, align 8
  br label %394

373:                                              ; preds = %98
  %374 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %375 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0))
  %376 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %374, i32 %375)
  %377 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %378 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %379 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %378, i32 0, i32 1
  store i8* %377, i8** %379, align 8
  %380 = load i8*, i8** @SAS_OPEN_TO, align 8
  %381 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %382 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %381, i32 0, i32 0
  store i8* %380, i8** %382, align 8
  br label %394

383:                                              ; preds = %98
  %384 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %385 = load i64, i64* %10, align 8
  %386 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i64 0, i64 0), i64 %385)
  %387 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %384, i32 %386)
  %388 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %389 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %390 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %389, i32 0, i32 1
  store i8* %388, i8** %390, align 8
  %391 = load i8*, i8** @SAS_OPEN_TO, align 8
  %392 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %393 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %392, i32 0, i32 0
  store i8* %391, i8** %393, align 8
  br label %394

394:                                              ; preds = %383, %373, %363, %353, %349, %339, %329, %319, %309, %299, %289, %279, %269, %259, %246, %233, %220, %219, %177, %164, %151, %138, %128, %127
  %395 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %396 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %395, i32 0, i32 1
  %397 = load i64, i64* %14, align 8
  %398 = call i32 @spin_lock_irqsave(i32* %396, i64 %397)
  %399 = load i32, i32* @SAS_TASK_STATE_PENDING, align 4
  %400 = xor i32 %399, -1
  %401 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %402 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = and i32 %403, %400
  store i32 %404, i32* %402, align 8
  %405 = load i32, i32* @SAS_TASK_AT_INITIATOR, align 4
  %406 = xor i32 %405, -1
  %407 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %408 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = and i32 %409, %406
  store i32 %410, i32* %408, align 8
  %411 = load i32, i32* @SAS_TASK_STATE_DONE, align 4
  %412 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %413 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = or i32 %414, %411
  store i32 %415, i32* %413, align 8
  %416 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %417 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = load i32, i32* @SAS_TASK_STATE_ABORTED, align 4
  %420 = and i32 %418, %419
  %421 = call i64 @unlikely(i32 %420)
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %444

423:                                              ; preds = %394
  %424 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %425 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %424, i32 0, i32 1
  %426 = load i64, i64* %14, align 8
  %427 = call i32 @spin_unlock_irqrestore(i32* %425, i64 %426)
  %428 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %429 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %430 = load i64, i64* %10, align 8
  %431 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %432 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %431, i32 0, i32 1
  %433 = load i8*, i8** %432, align 8
  %434 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %435 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %434, i32 0, i32 0
  %436 = load i8*, i8** %435, align 8
  %437 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.28, i64 0, i64 0), %struct.sas_task* %429, i64 %430, i8* %433, i8* %436)
  %438 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %428, i32 %437)
  %439 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %440 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %441 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %442 = load i64, i64* %11, align 8
  %443 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %439, %struct.sas_task* %440, %struct.pm8001_ccb_info* %441, i64 %442)
  br label %454

444:                                              ; preds = %394
  %445 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %446 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %445, i32 0, i32 1
  %447 = load i64, i64* %14, align 8
  %448 = call i32 @spin_unlock_irqrestore(i32* %446, i64 %447)
  %449 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %450 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %451 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %452 = load i64, i64* %11, align 8
  %453 = call i32 @pm8001_ccb_task_free_done(%struct.pm8001_hba_info* %449, %struct.sas_task* %450, %struct.pm8001_ccb_info* %451, i64 %452)
  br label %454

454:                                              ; preds = %48, %74, %94, %204, %444, %423
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local %struct.pm8001_device* @pm8001_find_dev(%struct.pm8001_hba_info*, i64) #1

declare dso_local i32 @pm80xx_send_read_log(%struct.pm8001_hba_info*, %struct.pm8001_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PM8001_IO_DBG(%struct.pm8001_hba_info*, i32) #1

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
