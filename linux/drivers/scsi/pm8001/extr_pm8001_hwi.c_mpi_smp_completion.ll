; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_mpi_smp_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_mpi_smp_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.pm8001_ccb_info* }
%struct.pm8001_ccb_info = type { %struct.pm8001_device*, %struct.sas_task* }
%struct.pm8001_device = type { i32 }
%struct.sas_task = type { i32, i32 (%struct.sas_task*)*, i32, i32, i32, %struct.task_status_struct }
%struct.task_status_struct = type { i8*, i8*, i8*, i32 }
%struct.smp_completion_resp = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"smp IO status 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"IO_SUCCESS\0A\00", align 1
@SAS_TASK_COMPLETE = common dso_local global i8* null, align 8
@SAM_STAT_GOOD = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"IO_ABORTED IOMB\0A\00", align 1
@SAS_ABORTED_TASK = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"IO_UNDERFLOW\0A\00", align 1
@SAS_DATA_OVERRUN = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"IO_NO_DEVICE\0A\00", align 1
@SAS_PHY_DOWN = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"IO_ERROR_HW_TIMEOUT\0A\00", align 1
@SAM_STAT_BUSY = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"IO_XFER_ERROR_BREAK\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"IO_XFER_ERROR_PHY_NOT_READY\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"IO_OPEN_CNX_ERROR_PROTOCOL_NOT_SUPPORTED\0A\00", align 1
@SAS_OPEN_REJECT = common dso_local global i8* null, align 8
@SAS_OREJ_UNKNOWN = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [34 x i8] c"IO_OPEN_CNX_ERROR_ZONE_VIOLATION\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"IO_OPEN_CNX_ERROR_BREAK\0A\00", align 1
@SAS_OREJ_RSVD_CONT0 = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [33 x i8] c"IO_OPEN_CNX_ERROR_IT_NEXUS_LOSS\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"IO_OPEN_CNX_ERROR_BAD_DESTINATION\0A\00", align 1
@SAS_OREJ_BAD_DEST = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [49 x i8] c"IO_OPEN_CNX_ERROR_CONNECTION_RATE_NOT_SUPPORTED\0A\00", align 1
@SAS_OREJ_CONN_RATE = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [37 x i8] c"IO_OPEN_CNX_ERROR_WRONG_DESTINATION\0A\00", align 1
@SAS_OREJ_WRONG_DEST = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [24 x i8] c"IO_XFER_ERROR_RX_FRAME\0A\00", align 1
@SAS_DEV_NO_RESPONSE = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [28 x i8] c"IO_XFER_OPEN_RETRY_TIMEOUT\0A\00", align 1
@SAS_OREJ_RSVD_RETRY = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [32 x i8] c"IO_ERROR_INTERNAL_SMP_RESOURCE\0A\00", align 1
@SAS_QUEUE_FULL = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [18 x i8] c"IO_PORT_IN_RESET\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"IO_DS_NON_OPERATIONAL\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"IO_DS_IN_RECOVERY\0A\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"IO_OPEN_CNX_ERROR_HW_RESOURCE_BUSY\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"Unknown status 0x%x\0A\00", align 1
@SAS_TASK_STATE_PENDING = common dso_local global i32 0, align 4
@SAS_TASK_AT_INITIATOR = common dso_local global i32 0, align 4
@SAS_TASK_STATE_DONE = common dso_local global i32 0, align 4
@SAS_TASK_STATE_ABORTED = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [84 x i8] c"task 0x%p done with io_status 0x%x resp 0x%x stat 0x%x but aborted by upper layer!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*, i8*)* @mpi_smp_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpi_smp_completion(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sas_task*, align 8
  %6 = alloca %struct.pm8001_ccb_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.smp_completion_resp*, align 8
  %11 = alloca %struct.task_status_struct*, align 8
  %12 = alloca %struct.pm8001_device*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr i8, i8* %13, i64 4
  %15 = bitcast i8* %14 to %struct.smp_completion_resp*
  store %struct.smp_completion_resp* %15, %struct.smp_completion_resp** %10, align 8
  %16 = load %struct.smp_completion_resp*, %struct.smp_completion_resp** %10, align 8
  %17 = getelementptr inbounds %struct.smp_completion_resp, %struct.smp_completion_resp* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @le32_to_cpu(i32 %18)
  store i64 %19, i64* %8, align 8
  %20 = load %struct.smp_completion_resp*, %struct.smp_completion_resp** %10, align 8
  %21 = getelementptr inbounds %struct.smp_completion_resp, %struct.smp_completion_resp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @le32_to_cpu(i32 %22)
  store i64 %23, i64* %9, align 8
  %24 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %25 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %24, i32 0, i32 0
  %26 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %25, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %26, i64 %27
  store %struct.pm8001_ccb_info* %28, %struct.pm8001_ccb_info** %6, align 8
  %29 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %30 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %29, i32 0, i32 1
  %31 = load %struct.sas_task*, %struct.sas_task** %30, align 8
  store %struct.sas_task* %31, %struct.sas_task** %5, align 8
  %32 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %33 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %32, i32 0, i32 5
  store %struct.task_status_struct* %33, %struct.task_status_struct** %11, align 8
  %34 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %35 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %34, i32 0, i32 0
  %36 = load %struct.pm8001_device*, %struct.pm8001_device** %35, align 8
  store %struct.pm8001_device* %36, %struct.pm8001_device** %12, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %2
  %40 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %40, i32 %42)
  br label %44

44:                                               ; preds = %39, %2
  %45 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %46 = icmp ne %struct.sas_task* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %49 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %54 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %52, %47, %44
  %59 = phi i1 [ true, %47 ], [ true, %44 ], [ %57, %52 ]
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %415

64:                                               ; preds = %58
  %65 = load i64, i64* %8, align 8
  switch i64 %65, label %338 [
    i64 132, label %66
    i64 148, label %84
    i64 134, label %102
    i64 143, label %122
    i64 145, label %132
    i64 131, label %142
    i64 130, label %152
    i64 137, label %162
    i64 135, label %175
    i64 141, label %188
    i64 138, label %201
    i64 142, label %217
    i64 140, label %230
    i64 136, label %243
    i64 129, label %256
    i64 128, label %266
    i64 144, label %279
    i64 133, label %289
    i64 146, label %302
    i64 147, label %312
    i64 139, label %325
  ]

66:                                               ; preds = %64
  %67 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %68 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %69 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %67, i32 %68)
  %70 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %71 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %72 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load i8*, i8** @SAM_STAT_GOOD, align 8
  %74 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %75 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  %76 = load %struct.pm8001_device*, %struct.pm8001_device** %12, align 8
  %77 = icmp ne %struct.pm8001_device* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %66
  %79 = load %struct.pm8001_device*, %struct.pm8001_device** %12, align 8
  %80 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %78, %66
  br label %349

84:                                               ; preds = %64
  %85 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %86 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %87 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %85, i32 %86)
  %88 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %89 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %90 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load i8*, i8** @SAS_ABORTED_TASK, align 8
  %92 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %93 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  %94 = load %struct.pm8001_device*, %struct.pm8001_device** %12, align 8
  %95 = icmp ne %struct.pm8001_device* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %84
  %97 = load %struct.pm8001_device*, %struct.pm8001_device** %12, align 8
  %98 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %96, %84
  br label %349

102:                                              ; preds = %64
  %103 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %104 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %105 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %103, i32 %104)
  %106 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %107 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %108 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load i8*, i8** @SAS_DATA_OVERRUN, align 8
  %110 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %111 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  %112 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %113 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %112, i32 0, i32 3
  store i32 0, i32* %113, align 8
  %114 = load %struct.pm8001_device*, %struct.pm8001_device** %12, align 8
  %115 = icmp ne %struct.pm8001_device* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %102
  %117 = load %struct.pm8001_device*, %struct.pm8001_device** %12, align 8
  %118 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %116, %102
  br label %349

122:                                              ; preds = %64
  %123 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %124 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %125 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %123, i32 %124)
  %126 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %127 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %128 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %127, i32 0, i32 1
  store i8* %126, i8** %128, align 8
  %129 = load i8*, i8** @SAS_PHY_DOWN, align 8
  %130 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %131 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %130, i32 0, i32 0
  store i8* %129, i8** %131, align 8
  br label %349

132:                                              ; preds = %64
  %133 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %134 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %135 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %133, i32 %134)
  %136 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %137 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %138 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %137, i32 0, i32 1
  store i8* %136, i8** %138, align 8
  %139 = load i8*, i8** @SAM_STAT_BUSY, align 8
  %140 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %141 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %140, i32 0, i32 0
  store i8* %139, i8** %141, align 8
  br label %349

142:                                              ; preds = %64
  %143 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %144 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %145 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %143, i32 %144)
  %146 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %147 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %148 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %147, i32 0, i32 1
  store i8* %146, i8** %148, align 8
  %149 = load i8*, i8** @SAM_STAT_BUSY, align 8
  %150 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %151 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %150, i32 0, i32 0
  store i8* %149, i8** %151, align 8
  br label %349

152:                                              ; preds = %64
  %153 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %154 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %155 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %153, i32 %154)
  %156 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %157 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %158 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %157, i32 0, i32 1
  store i8* %156, i8** %158, align 8
  %159 = load i8*, i8** @SAM_STAT_BUSY, align 8
  %160 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %161 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %160, i32 0, i32 0
  store i8* %159, i8** %161, align 8
  br label %349

162:                                              ; preds = %64
  %163 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %164 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %165 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %163, i32 %164)
  %166 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %167 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %168 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %167, i32 0, i32 1
  store i8* %166, i8** %168, align 8
  %169 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %170 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %171 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %170, i32 0, i32 0
  store i8* %169, i8** %171, align 8
  %172 = load i8*, i8** @SAS_OREJ_UNKNOWN, align 8
  %173 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %174 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %173, i32 0, i32 2
  store i8* %172, i8** %174, align 8
  br label %349

175:                                              ; preds = %64
  %176 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %177 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %178 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %176, i32 %177)
  %179 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %180 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %181 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %180, i32 0, i32 1
  store i8* %179, i8** %181, align 8
  %182 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %183 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %184 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %183, i32 0, i32 0
  store i8* %182, i8** %184, align 8
  %185 = load i8*, i8** @SAS_OREJ_UNKNOWN, align 8
  %186 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %187 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %186, i32 0, i32 2
  store i8* %185, i8** %187, align 8
  br label %349

188:                                              ; preds = %64
  %189 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %190 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %191 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %189, i32 %190)
  %192 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %193 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %194 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %193, i32 0, i32 1
  store i8* %192, i8** %194, align 8
  %195 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %196 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %197 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %196, i32 0, i32 0
  store i8* %195, i8** %197, align 8
  %198 = load i8*, i8** @SAS_OREJ_RSVD_CONT0, align 8
  %199 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %200 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %199, i32 0, i32 2
  store i8* %198, i8** %200, align 8
  br label %349

201:                                              ; preds = %64
  %202 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %203 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %204 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %202, i32 %203)
  %205 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %206 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %207 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %206, i32 0, i32 1
  store i8* %205, i8** %207, align 8
  %208 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %209 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %210 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %209, i32 0, i32 0
  store i8* %208, i8** %210, align 8
  %211 = load i8*, i8** @SAS_OREJ_UNKNOWN, align 8
  %212 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %213 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %212, i32 0, i32 2
  store i8* %211, i8** %213, align 8
  %214 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %215 = load %struct.pm8001_device*, %struct.pm8001_device** %12, align 8
  %216 = call i32 @pm8001_handle_event(%struct.pm8001_hba_info* %214, %struct.pm8001_device* %215, i32 138)
  br label %349

217:                                              ; preds = %64
  %218 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %219 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  %220 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %218, i32 %219)
  %221 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %222 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %223 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %222, i32 0, i32 1
  store i8* %221, i8** %223, align 8
  %224 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %225 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %226 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %225, i32 0, i32 0
  store i8* %224, i8** %226, align 8
  %227 = load i8*, i8** @SAS_OREJ_BAD_DEST, align 8
  %228 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %229 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %228, i32 0, i32 2
  store i8* %227, i8** %229, align 8
  br label %349

230:                                              ; preds = %64
  %231 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %232 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i64 0, i64 0))
  %233 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %231, i32 %232)
  %234 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %235 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %236 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %235, i32 0, i32 1
  store i8* %234, i8** %236, align 8
  %237 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %238 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %239 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %238, i32 0, i32 0
  store i8* %237, i8** %239, align 8
  %240 = load i8*, i8** @SAS_OREJ_CONN_RATE, align 8
  %241 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %242 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %241, i32 0, i32 2
  store i8* %240, i8** %242, align 8
  br label %349

243:                                              ; preds = %64
  %244 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %245 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0))
  %246 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %244, i32 %245)
  %247 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %248 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %249 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %248, i32 0, i32 1
  store i8* %247, i8** %249, align 8
  %250 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %251 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %252 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %251, i32 0, i32 0
  store i8* %250, i8** %252, align 8
  %253 = load i8*, i8** @SAS_OREJ_WRONG_DEST, align 8
  %254 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %255 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %254, i32 0, i32 2
  store i8* %253, i8** %255, align 8
  br label %349

256:                                              ; preds = %64
  %257 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %258 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  %259 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %257, i32 %258)
  %260 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %261 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %262 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %261, i32 0, i32 1
  store i8* %260, i8** %262, align 8
  %263 = load i8*, i8** @SAS_DEV_NO_RESPONSE, align 8
  %264 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %265 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %264, i32 0, i32 0
  store i8* %263, i8** %265, align 8
  br label %349

266:                                              ; preds = %64
  %267 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %268 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  %269 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %267, i32 %268)
  %270 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %271 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %272 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %271, i32 0, i32 1
  store i8* %270, i8** %272, align 8
  %273 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %274 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %275 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %274, i32 0, i32 0
  store i8* %273, i8** %275, align 8
  %276 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %277 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %278 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %277, i32 0, i32 2
  store i8* %276, i8** %278, align 8
  br label %349

279:                                              ; preds = %64
  %280 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %281 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0))
  %282 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %280, i32 %281)
  %283 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %284 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %285 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %284, i32 0, i32 1
  store i8* %283, i8** %285, align 8
  %286 = load i8*, i8** @SAS_QUEUE_FULL, align 8
  %287 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %288 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %287, i32 0, i32 0
  store i8* %286, i8** %288, align 8
  br label %349

289:                                              ; preds = %64
  %290 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %291 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0))
  %292 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %290, i32 %291)
  %293 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %294 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %295 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %294, i32 0, i32 1
  store i8* %293, i8** %295, align 8
  %296 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %297 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %298 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %297, i32 0, i32 0
  store i8* %296, i8** %298, align 8
  %299 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %300 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %301 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %300, i32 0, i32 2
  store i8* %299, i8** %301, align 8
  br label %349

302:                                              ; preds = %64
  %303 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %304 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  %305 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %303, i32 %304)
  %306 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %307 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %308 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %307, i32 0, i32 1
  store i8* %306, i8** %308, align 8
  %309 = load i8*, i8** @SAS_DEV_NO_RESPONSE, align 8
  %310 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %311 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %310, i32 0, i32 0
  store i8* %309, i8** %311, align 8
  br label %349

312:                                              ; preds = %64
  %313 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %314 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0))
  %315 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %313, i32 %314)
  %316 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %317 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %318 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %317, i32 0, i32 1
  store i8* %316, i8** %318, align 8
  %319 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %320 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %321 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %320, i32 0, i32 0
  store i8* %319, i8** %321, align 8
  %322 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %323 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %324 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %323, i32 0, i32 2
  store i8* %322, i8** %324, align 8
  br label %349

325:                                              ; preds = %64
  %326 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %327 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i64 0, i64 0))
  %328 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %326, i32 %327)
  %329 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %330 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %331 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %330, i32 0, i32 1
  store i8* %329, i8** %331, align 8
  %332 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %333 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %334 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %333, i32 0, i32 0
  store i8* %332, i8** %334, align 8
  %335 = load i8*, i8** @SAS_OREJ_RSVD_RETRY, align 8
  %336 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %337 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %336, i32 0, i32 2
  store i8* %335, i8** %337, align 8
  br label %349

338:                                              ; preds = %64
  %339 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %340 = load i64, i64* %8, align 8
  %341 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i64 %340)
  %342 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %339, i32 %341)
  %343 = load i8*, i8** @SAS_TASK_COMPLETE, align 8
  %344 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %345 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %344, i32 0, i32 1
  store i8* %343, i8** %345, align 8
  %346 = load i8*, i8** @SAS_DEV_NO_RESPONSE, align 8
  %347 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %348 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %347, i32 0, i32 0
  store i8* %346, i8** %348, align 8
  br label %349

349:                                              ; preds = %338, %325, %312, %302, %289, %279, %266, %256, %243, %230, %217, %201, %188, %175, %162, %152, %142, %132, %122, %121, %101, %83
  %350 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %351 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %350, i32 0, i32 2
  %352 = load i64, i64* %7, align 8
  %353 = call i32 @spin_lock_irqsave(i32* %351, i64 %352)
  %354 = load i32, i32* @SAS_TASK_STATE_PENDING, align 4
  %355 = xor i32 %354, -1
  %356 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %357 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = and i32 %358, %355
  store i32 %359, i32* %357, align 8
  %360 = load i32, i32* @SAS_TASK_AT_INITIATOR, align 4
  %361 = xor i32 %360, -1
  %362 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %363 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = and i32 %364, %361
  store i32 %365, i32* %363, align 8
  %366 = load i32, i32* @SAS_TASK_STATE_DONE, align 4
  %367 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %368 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = or i32 %369, %366
  store i32 %370, i32* %368, align 8
  %371 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %372 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = load i32, i32* @SAS_TASK_STATE_ABORTED, align 4
  %375 = and i32 %373, %374
  %376 = call i64 @unlikely(i32 %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %399

378:                                              ; preds = %349
  %379 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %380 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %379, i32 0, i32 2
  %381 = load i64, i64* %7, align 8
  %382 = call i32 @spin_unlock_irqrestore(i32* %380, i64 %381)
  %383 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %384 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %385 = load i64, i64* %8, align 8
  %386 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %387 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %386, i32 0, i32 1
  %388 = load i8*, i8** %387, align 8
  %389 = load %struct.task_status_struct*, %struct.task_status_struct** %11, align 8
  %390 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %389, i32 0, i32 0
  %391 = load i8*, i8** %390, align 8
  %392 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.23, i64 0, i64 0), %struct.sas_task* %384, i64 %385, i8* %388, i8* %391)
  %393 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %383, i32 %392)
  %394 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %395 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %396 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %397 = load i64, i64* %9, align 8
  %398 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %394, %struct.sas_task* %395, %struct.pm8001_ccb_info* %396, i64 %397)
  br label %415

399:                                              ; preds = %349
  %400 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %401 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %400, i32 0, i32 2
  %402 = load i64, i64* %7, align 8
  %403 = call i32 @spin_unlock_irqrestore(i32* %401, i64 %402)
  %404 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %405 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %406 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %407 = load i64, i64* %9, align 8
  %408 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %404, %struct.sas_task* %405, %struct.pm8001_ccb_info* %406, i64 %407)
  %409 = call i32 (...) @mb()
  %410 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %411 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %410, i32 0, i32 1
  %412 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %411, align 8
  %413 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %414 = call i32 %412(%struct.sas_task* %413)
  br label %415

415:                                              ; preds = %63, %399, %378
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PM8001_IO_DBG(%struct.pm8001_hba_info*, i32) #1

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
