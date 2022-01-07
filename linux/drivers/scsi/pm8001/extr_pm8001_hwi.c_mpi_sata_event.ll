; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_mpi_sata_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_mpi_sata_event.c"
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
@.str.2 = private unnamed_addr constant [21 x i8] c"sata IO status 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"port_id:0x%x, device_id:0x%x, tag:0x%x, event:0x%x\0A\00", align 1
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
@.str.25 = private unnamed_addr constant [21 x i8] c"Unknown status 0x%x\0A\00", align 1
@SAS_TASK_STATE_PENDING = common dso_local global i32 0, align 4
@SAS_TASK_AT_INITIATOR = common dso_local global i32 0, align 4
@SAS_TASK_STATE_DONE = common dso_local global i32 0, align 4
@SAS_TASK_STATE_ABORTED = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [84 x i8] c"task 0x%p done with io_status 0x%x resp 0x%x stat 0x%x but aborted by upper layer!\0A\00", align 1
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
  br label %52

52:                                               ; preds = %48, %41
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
  %73 = call i32 @pm8001_send_read_log(%struct.pm8001_hba_info* %71, %struct.pm8001_device* %72)
  br label %74

74:                                               ; preds = %70, %64
  br label %451

75:                                               ; preds = %60
  %76 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %77 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %76, i32 0, i32 0
  %78 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %77, align 8
  %79 = load i64, i64* %11, align 8
  %80 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %78, i64 %79
  store %struct.pm8001_ccb_info* %80, %struct.pm8001_ccb_info** %7, align 8
  %81 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %82 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %81, i32 0, i32 1
  %83 = load %struct.sas_task*, %struct.sas_task** %82, align 8
  store %struct.sas_task* %83, %struct.sas_task** %5, align 8
  %84 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %85 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %84, i32 0, i32 0
  %86 = load %struct.pm8001_device*, %struct.pm8001_device** %85, align 8
  store %struct.pm8001_device* %86, %struct.pm8001_device** %8, align 8
  %87 = load i64, i64* %10, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %75
  %90 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %91 = load i64, i64* %10, align 8
  %92 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %91)
  %93 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %90, i32 %92)
  br label %94

94:                                               ; preds = %89, %75
  %95 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %96 = icmp ne %struct.sas_task* %95, null
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %99 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %104 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  br label %108

108:                                              ; preds = %102, %97, %94
  %109 = phi i1 [ true, %97 ], [ true, %94 ], [ %107, %102 ]
  %110 = zext i1 %109 to i32
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %451

114:                                              ; preds = %108
  %115 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %116 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %115, i32 0, i32 3
  store %struct.task_status_struct* %116, %struct.task_status_struct** %6, align 8
  %117 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %118 = load i64, i64* %12, align 8
  %119 = load i64, i64* %13, align 8
  %120 = load i64, i64* %11, align 8
  %121 = load i64, i64* %10, align 8
  %122 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i64 %118, i64 %119, i64 %120, i64 %121)
  %123 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %117, i32 %122)
  %124 = load i64, i64* %10, align 8
  switch i64 %124, label %380 [
    i64 141, label %125
    i64 139, label %145
    i64 135, label %155
    i64 144, label %168
    i64 142, label %181
    i64 147, label %194
    i64 145, label %207
    i64 148, label %237
    i64 146, label %250
    i64 143, label %263
    i64 138, label %276
    i64 136, label %286
    i64 134, label %296
    i64 129, label %306
    i64 133, label %316
    i64 131, label %326
    i64 132, label %336
    i64 137, label %346
    i64 130, label %356
    i64 140, label %366
    i64 128, label %370
  ]

125:                                              ; preds = %114
  %126 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %127 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %128 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %126, i32 %127)
  %129 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %130 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %131 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  %132 = load i8*, i8** @SAS_DATA_OVERRUN, align 8
  %133 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %134 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %133, i32 0, i32 0
  store i8* %132, i8** %134, align 8
  %135 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %136 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %135, i32 0, i32 3
  store i32 0, i32* %136, align 4
  %137 = load %struct.pm8001_device*, %struct.pm8001_device** %8, align 8
  %138 = icmp ne %struct.pm8001_device* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %125
  %140 = load %struct.pm8001_device*, %struct.pm8001_device** %8, align 8
  %141 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %139, %125
  br label %391

145:                                              ; preds = %114
  %146 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %147 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %148 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %146, i32 %147)
  %149 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %150 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %151 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %150, i32 0, i32 1
  store i8* %149, i8** %151, align 8
  %152 = load i8*, i8** @SAS_INTERRUPTED, align 8
  %153 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %154 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %153, i32 0, i32 0
  store i8* %152, i8** %154, align 8
  br label %391

155:                                              ; preds = %114
  %156 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %157 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %158 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %156, i32 %157)
  %159 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %160 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %161 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %160, i32 0, i32 1
  store i8* %159, i8** %161, align 8
  %162 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %163 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %164 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %163, i32 0, i32 0
  store i8* %162, i8** %164, align 8
  %165 = load i32, i32* @SAS_OREJ_RSVD_RETRY, align 4
  %166 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %167 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 8
  br label %391

168:                                              ; preds = %114
  %169 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %170 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %171 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %169, i32 %170)
  %172 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %173 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %174 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %173, i32 0, i32 1
  store i8* %172, i8** %174, align 8
  %175 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %176 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %177 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %176, i32 0, i32 0
  store i8* %175, i8** %177, align 8
  %178 = load i32, i32* @SAS_OREJ_EPROTO, align 4
  %179 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %180 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  br label %391

181:                                              ; preds = %114
  %182 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %183 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %184 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %182, i32 %183)
  %185 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %186 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %187 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %186, i32 0, i32 1
  store i8* %185, i8** %187, align 8
  %188 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %189 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %190 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %189, i32 0, i32 0
  store i8* %188, i8** %190, align 8
  %191 = load i32, i32* @SAS_OREJ_UNKNOWN, align 4
  %192 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %193 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 8
  br label %391

194:                                              ; preds = %114
  %195 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %196 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %197 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %195, i32 %196)
  %198 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %199 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %200 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %199, i32 0, i32 1
  store i8* %198, i8** %200, align 8
  %201 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %202 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %203 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %202, i32 0, i32 0
  store i8* %201, i8** %203, align 8
  %204 = load i32, i32* @SAS_OREJ_RSVD_CONT0, align 4
  %205 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %206 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %205, i32 0, i32 2
  store i32 %204, i32* %206, align 8
  br label %391

207:                                              ; preds = %114
  %208 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %209 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %210 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %208, i32 %209)
  %211 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %212 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %213 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %212, i32 0, i32 1
  store i8* %211, i8** %213, align 8
  %214 = load i8*, i8** @SAS_DEV_NO_RESPONSE, align 8
  %215 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %216 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %215, i32 0, i32 0
  store i8* %214, i8** %216, align 8
  %217 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %218 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %236, label %221

221:                                              ; preds = %207
  %222 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %223 = load %struct.pm8001_device*, %struct.pm8001_device** %8, align 8
  %224 = call i32 @pm8001_handle_event(%struct.pm8001_hba_info* %222, %struct.pm8001_device* %223, i32 145)
  %225 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %226 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %227 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %226, i32 0, i32 1
  store i8* %225, i8** %227, align 8
  %228 = load i8*, i8** @SAS_QUEUE_FULL, align 8
  %229 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %230 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %229, i32 0, i32 0
  store i8* %228, i8** %230, align 8
  %231 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %232 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %233 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %234 = load i64, i64* %11, align 8
  %235 = call i32 @pm8001_ccb_task_free_done(%struct.pm8001_hba_info* %231, %struct.sas_task* %232, %struct.pm8001_ccb_info* %233, i64 %234)
  br label %451

236:                                              ; preds = %207
  br label %391

237:                                              ; preds = %114
  %238 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %239 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %240 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %238, i32 %239)
  %241 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %242 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %243 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %242, i32 0, i32 1
  store i8* %241, i8** %243, align 8
  %244 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %245 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %246 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %245, i32 0, i32 0
  store i8* %244, i8** %246, align 8
  %247 = load i32, i32* @SAS_OREJ_BAD_DEST, align 4
  %248 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %249 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %248, i32 0, i32 2
  store i32 %247, i32* %249, align 8
  br label %391

250:                                              ; preds = %114
  %251 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %252 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0))
  %253 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %251, i32 %252)
  %254 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %255 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %256 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %255, i32 0, i32 1
  store i8* %254, i8** %256, align 8
  %257 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %258 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %259 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %258, i32 0, i32 0
  store i8* %257, i8** %259, align 8
  %260 = load i32, i32* @SAS_OREJ_CONN_RATE, align 4
  %261 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %262 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %261, i32 0, i32 2
  store i32 %260, i32* %262, align 8
  br label %391

263:                                              ; preds = %114
  %264 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %265 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  %266 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %264, i32 %265)
  %267 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %268 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %269 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %268, i32 0, i32 1
  store i8* %267, i8** %269, align 8
  %270 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %271 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %272 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %271, i32 0, i32 0
  store i8* %270, i8** %272, align 8
  %273 = load i32, i32* @SAS_OREJ_WRONG_DEST, align 4
  %274 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %275 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %274, i32 0, i32 2
  store i32 %273, i32* %275, align 8
  br label %391

276:                                              ; preds = %114
  %277 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %278 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  %279 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %277, i32 %278)
  %280 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %281 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %282 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %281, i32 0, i32 1
  store i8* %280, i8** %282, align 8
  %283 = load i8*, i8** @SAS_NAK_R_ERR, align 8
  %284 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %285 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %284, i32 0, i32 0
  store i8* %283, i8** %285, align 8
  br label %391

286:                                              ; preds = %114
  %287 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %288 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0))
  %289 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %287, i32 %288)
  %290 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %291 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %292 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %291, i32 0, i32 1
  store i8* %290, i8** %292, align 8
  %293 = load i8*, i8** @SAS_NAK_R_ERR, align 8
  %294 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %295 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %294, i32 0, i32 0
  store i8* %293, i8** %295, align 8
  br label %391

296:                                              ; preds = %114
  %297 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %298 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0))
  %299 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %297, i32 %298)
  %300 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %301 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %302 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %301, i32 0, i32 1
  store i8* %300, i8** %302, align 8
  %303 = load i8*, i8** @SAS_DATA_UNDERRUN, align 8
  %304 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %305 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %304, i32 0, i32 0
  store i8* %303, i8** %305, align 8
  br label %391

306:                                              ; preds = %114
  %307 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %308 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  %309 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %307, i32 %308)
  %310 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %311 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %312 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %311, i32 0, i32 1
  store i8* %310, i8** %312, align 8
  %313 = load i8*, i8** @SAS_OPEN_TO, align 8
  %314 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %315 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %314, i32 0, i32 0
  store i8* %313, i8** %315, align 8
  br label %391

316:                                              ; preds = %114
  %317 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %318 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0))
  %319 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %317, i32 %318)
  %320 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %321 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %322 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %321, i32 0, i32 1
  store i8* %320, i8** %322, align 8
  %323 = load i8*, i8** @SAS_OPEN_TO, align 8
  %324 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %325 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %324, i32 0, i32 0
  store i8* %323, i8** %325, align 8
  br label %391

326:                                              ; preds = %114
  %327 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %328 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0))
  %329 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %327, i32 %328)
  %330 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %331 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %332 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %331, i32 0, i32 1
  store i8* %330, i8** %332, align 8
  %333 = load i8*, i8** @SAS_OPEN_TO, align 8
  %334 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %335 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %334, i32 0, i32 0
  store i8* %333, i8** %335, align 8
  br label %391

336:                                              ; preds = %114
  %337 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %338 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0))
  %339 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %337, i32 %338)
  %340 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %341 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %342 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %341, i32 0, i32 1
  store i8* %340, i8** %342, align 8
  %343 = load i8*, i8** @SAS_OPEN_TO, align 8
  %344 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %345 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %344, i32 0, i32 0
  store i8* %343, i8** %345, align 8
  br label %391

346:                                              ; preds = %114
  %347 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %348 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0))
  %349 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %347, i32 %348)
  %350 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %351 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %352 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %351, i32 0, i32 1
  store i8* %350, i8** %352, align 8
  %353 = load i8*, i8** @SAS_OPEN_TO, align 8
  %354 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %355 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %354, i32 0, i32 0
  store i8* %353, i8** %355, align 8
  br label %391

356:                                              ; preds = %114
  %357 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %358 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0))
  %359 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %357, i32 %358)
  %360 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %361 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %362 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %361, i32 0, i32 1
  store i8* %360, i8** %362, align 8
  %363 = load i8*, i8** @SAS_OPEN_TO, align 8
  %364 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %365 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %364, i32 0, i32 0
  store i8* %363, i8** %365, align 8
  br label %391

366:                                              ; preds = %114
  %367 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %368 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0))
  %369 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %367, i32 %368)
  br label %391

370:                                              ; preds = %114
  %371 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %372 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0))
  %373 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %371, i32 %372)
  %374 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %375 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %376 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %375, i32 0, i32 1
  store i8* %374, i8** %376, align 8
  %377 = load i8*, i8** @SAS_OPEN_TO, align 8
  %378 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %379 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %378, i32 0, i32 0
  store i8* %377, i8** %379, align 8
  br label %391

380:                                              ; preds = %114
  %381 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %382 = load i64, i64* %10, align 8
  %383 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i64 %382)
  %384 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %381, i32 %383)
  %385 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %386 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %387 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %386, i32 0, i32 1
  store i8* %385, i8** %387, align 8
  %388 = load i8*, i8** @SAS_OPEN_TO, align 8
  %389 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %390 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %389, i32 0, i32 0
  store i8* %388, i8** %390, align 8
  br label %391

391:                                              ; preds = %380, %370, %366, %356, %346, %336, %326, %316, %306, %296, %286, %276, %263, %250, %237, %236, %194, %181, %168, %155, %145, %144
  %392 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %393 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %392, i32 0, i32 1
  %394 = load i64, i64* %14, align 8
  %395 = call i32 @spin_lock_irqsave(i32* %393, i64 %394)
  %396 = load i32, i32* @SAS_TASK_STATE_PENDING, align 4
  %397 = xor i32 %396, -1
  %398 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %399 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = and i32 %400, %397
  store i32 %401, i32* %399, align 8
  %402 = load i32, i32* @SAS_TASK_AT_INITIATOR, align 4
  %403 = xor i32 %402, -1
  %404 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %405 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = and i32 %406, %403
  store i32 %407, i32* %405, align 8
  %408 = load i32, i32* @SAS_TASK_STATE_DONE, align 4
  %409 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %410 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = or i32 %411, %408
  store i32 %412, i32* %410, align 8
  %413 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %414 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = load i32, i32* @SAS_TASK_STATE_ABORTED, align 4
  %417 = and i32 %415, %416
  %418 = call i64 @unlikely(i32 %417)
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %441

420:                                              ; preds = %391
  %421 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %422 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %421, i32 0, i32 1
  %423 = load i64, i64* %14, align 8
  %424 = call i32 @spin_unlock_irqrestore(i32* %422, i64 %423)
  %425 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %426 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %427 = load i64, i64* %10, align 8
  %428 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %429 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %428, i32 0, i32 1
  %430 = load i8*, i8** %429, align 8
  %431 = load %struct.task_status_struct*, %struct.task_status_struct** %6, align 8
  %432 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %431, i32 0, i32 0
  %433 = load i8*, i8** %432, align 8
  %434 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.26, i64 0, i64 0), %struct.sas_task* %426, i64 %427, i8* %430, i8* %433)
  %435 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %425, i32 %434)
  %436 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %437 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %438 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %439 = load i64, i64* %11, align 8
  %440 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %436, %struct.sas_task* %437, %struct.pm8001_ccb_info* %438, i64 %439)
  br label %451

441:                                              ; preds = %391
  %442 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %443 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %442, i32 0, i32 1
  %444 = load i64, i64* %14, align 8
  %445 = call i32 @spin_unlock_irqrestore(i32* %443, i64 %444)
  %446 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %447 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %448 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %449 = load i64, i64* %11, align 8
  %450 = call i32 @pm8001_ccb_task_free_done(%struct.pm8001_hba_info* %446, %struct.sas_task* %447, %struct.pm8001_ccb_info* %448, i64 %449)
  br label %451

451:                                              ; preds = %74, %113, %221, %441, %420
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local %struct.pm8001_device* @pm8001_find_dev(%struct.pm8001_hba_info*, i64) #1

declare dso_local i32 @pm8001_send_read_log(%struct.pm8001_hba_info*, %struct.pm8001_device*) #1

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
