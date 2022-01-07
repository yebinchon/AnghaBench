; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_exec_internal_tmf_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_exec_internal_tmf_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32, i32, %struct.hisi_sas_device* }
%struct.hisi_sas_device = type { %struct.hisi_hba* }
%struct.hisi_hba = type { %struct.hisi_sas_cq*, %struct.device* }
%struct.hisi_sas_cq = type { i32 }
%struct.device = type { i32 }
%struct.hisi_sas_tmf_task = type { i32 }
%struct.sas_task = type { i32, %struct.TYPE_8__, %struct.hisi_sas_slot*, %struct.TYPE_7__*, i32, i32, %struct.TYPE_6__, i32, %struct.domain_device* }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.hisi_sas_slot = type { i64, i32* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@TASK_RETRY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hisi_sas_task_done = common dso_local global i32 0, align 4
@hisi_sas_tmf_timedout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TASK_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"abort tmf: executing internal task failed: %d\0A\00", align 1
@TMF_RESP_FUNC_FAILED = common dso_local global i32 0, align 4
@SAS_TASK_STATE_ABORTED = common dso_local global i32 0, align 4
@SAS_TASK_STATE_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"abort tmf: TMF task timeout and not done\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"abort tmf: TMF task timeout\0A\00", align 1
@SAS_TASK_COMPLETE = common dso_local global i64 0, align 8
@TMF_RESP_FUNC_COMPLETE = common dso_local global i32 0, align 4
@TMF_RESP_FUNC_SUCC = common dso_local global i32 0, align 4
@SAS_DATA_UNDERRUN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [61 x i8] c"abort tmf: task to dev %016llx resp: 0x%x sts 0x%x underrun\0A\00", align 1
@SAS_DATA_OVERRUN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"abort tmf: blocked task error\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@SAS_OPEN_REJECT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"abort tmf: open reject failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [55 x i8] c"abort tmf: task to dev %016llx resp: 0x%x status 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"abort tmf: executing internal task failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*, i8*, i32, %struct.hisi_sas_tmf_task*)* @hisi_sas_exec_internal_tmf_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_sas_exec_internal_tmf_task(%struct.domain_device* %0, i8* %1, i32 %2, %struct.hisi_sas_tmf_task* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.domain_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hisi_sas_tmf_task*, align 8
  %10 = alloca %struct.hisi_sas_device*, align 8
  %11 = alloca %struct.hisi_hba*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca %struct.sas_task*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.hisi_sas_slot*, align 8
  %17 = alloca %struct.hisi_sas_cq*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.hisi_sas_tmf_task* %3, %struct.hisi_sas_tmf_task** %9, align 8
  %18 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %19 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %18, i32 0, i32 2
  %20 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %19, align 8
  store %struct.hisi_sas_device* %20, %struct.hisi_sas_device** %10, align 8
  %21 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %10, align 8
  %22 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %21, i32 0, i32 0
  %23 = load %struct.hisi_hba*, %struct.hisi_hba** %22, align 8
  store %struct.hisi_hba* %23, %struct.hisi_hba** %11, align 8
  %24 = load %struct.hisi_hba*, %struct.hisi_hba** %11, align 8
  %25 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %24, i32 0, i32 1
  %26 = load %struct.device*, %struct.device** %25, align 8
  store %struct.device* %26, %struct.device** %12, align 8
  store i32 0, i32* %15, align 4
  br label %27

27:                                               ; preds = %278, %4
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* @TASK_RETRY, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %281

31:                                               ; preds = %27
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.sas_task* @sas_alloc_slow_task(i32 %32)
  store %struct.sas_task* %33, %struct.sas_task** %13, align 8
  %34 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %35 = icmp ne %struct.sas_task* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %293

39:                                               ; preds = %31
  %40 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %41 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %42 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %41, i32 0, i32 8
  store %struct.domain_device* %40, %struct.domain_device** %42, align 8
  %43 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %44 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %47 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 8
  %48 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %49 = call i64 @dev_is_sata(%struct.domain_device* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %39
  %52 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %53 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %56 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @memcpy(i32* %57, i8* %58, i32 %59)
  br label %67

61:                                               ; preds = %39
  %62 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %63 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %62, i32 0, i32 5
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @memcpy(i32* %63, i8* %64, i32 %65)
  br label %67

67:                                               ; preds = %61, %51
  %68 = load i32, i32* @hisi_sas_task_done, align 4
  %69 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %70 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @hisi_sas_tmf_timedout, align 4
  %72 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %73 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %72, i32 0, i32 3
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  store i32 %71, i32* %76, align 8
  %77 = load i64, i64* @jiffies, align 8
  %78 = load i32, i32* @TASK_TIMEOUT, align 4
  %79 = load i32, i32* @HZ, align 4
  %80 = mul nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %77, %81
  %83 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %84 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %83, i32 0, i32 3
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  store i64 %82, i64* %87, align 8
  %88 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %89 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %88, i32 0, i32 3
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = call i32 @add_timer(%struct.TYPE_9__* %91)
  %93 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %94 = load i32, i32* @GFP_KERNEL, align 4
  %95 = load %struct.hisi_sas_tmf_task*, %struct.hisi_sas_tmf_task** %9, align 8
  %96 = call i32 @hisi_sas_task_exec(%struct.sas_task* %93, i32 %94, i32 1, %struct.hisi_sas_tmf_task* %95)
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %67
  %100 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %101 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %100, i32 0, i32 3
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = call i32 @del_timer(%struct.TYPE_9__* %103)
  %105 = load %struct.device*, %struct.device** %12, align 8
  %106 = load i32, i32* %14, align 4
  %107 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %105, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %106)
  br label %282

108:                                              ; preds = %67
  %109 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %110 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %109, i32 0, i32 3
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = call i32 @wait_for_completion(i32* %112)
  %114 = load i32, i32* @TMF_RESP_FUNC_FAILED, align 4
  store i32 %114, i32* %14, align 4
  %115 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %116 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @SAS_TASK_STATE_ABORTED, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %154

121:                                              ; preds = %108
  %122 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %123 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @SAS_TASK_STATE_DONE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %150, label %128

128:                                              ; preds = %121
  %129 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %130 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %129, i32 0, i32 2
  %131 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %130, align 8
  store %struct.hisi_sas_slot* %131, %struct.hisi_sas_slot** %16, align 8
  %132 = load %struct.device*, %struct.device** %12, align 8
  %133 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %132, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %134 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %16, align 8
  %135 = icmp ne %struct.hisi_sas_slot* %134, null
  br i1 %135, label %136, label %149

136:                                              ; preds = %128
  %137 = load %struct.hisi_hba*, %struct.hisi_hba** %11, align 8
  %138 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %137, i32 0, i32 0
  %139 = load %struct.hisi_sas_cq*, %struct.hisi_sas_cq** %138, align 8
  %140 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %16, align 8
  %141 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.hisi_sas_cq, %struct.hisi_sas_cq* %139, i64 %142
  store %struct.hisi_sas_cq* %143, %struct.hisi_sas_cq** %17, align 8
  %144 = load %struct.hisi_sas_cq*, %struct.hisi_sas_cq** %17, align 8
  %145 = getelementptr inbounds %struct.hisi_sas_cq, %struct.hisi_sas_cq* %144, i32 0, i32 0
  %146 = call i32 @tasklet_kill(i32* %145)
  %147 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %16, align 8
  %148 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %147, i32 0, i32 1
  store i32* null, i32** %148, align 8
  br label %149

149:                                              ; preds = %136, %128
  br label %282

150:                                              ; preds = %121
  %151 = load %struct.device*, %struct.device** %12, align 8
  %152 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %151, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %153

153:                                              ; preds = %150
  br label %154

154:                                              ; preds = %153, %108
  %155 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %156 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @SAS_TASK_COMPLETE, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %170

161:                                              ; preds = %154
  %162 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %163 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @TMF_RESP_FUNC_COMPLETE, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %161
  %169 = load i32, i32* @TMF_RESP_FUNC_COMPLETE, align 4
  store i32 %169, i32* %14, align 4
  br label %281

170:                                              ; preds = %161, %154
  %171 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %172 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @SAS_TASK_COMPLETE, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %186

177:                                              ; preds = %170
  %178 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %179 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @TMF_RESP_FUNC_SUCC, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %177
  %185 = load i32, i32* @TMF_RESP_FUNC_SUCC, align 4
  store i32 %185, i32* %14, align 4
  br label %281

186:                                              ; preds = %177, %170
  %187 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %188 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @SAS_TASK_COMPLETE, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %220

193:                                              ; preds = %186
  %194 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %195 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = sext i32 %197 to i64
  %199 = load i64, i64* @SAS_DATA_UNDERRUN, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %220

201:                                              ; preds = %193
  %202 = load %struct.device*, %struct.device** %12, align 8
  %203 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %204 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @SAS_ADDR(i32 %205)
  %207 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %208 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %212 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %202, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 %206, i64 %210, i32 %214)
  %216 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %217 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %14, align 4
  br label %281

220:                                              ; preds = %193, %186
  %221 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %222 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @SAS_TASK_COMPLETE, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %240

227:                                              ; preds = %220
  %228 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %229 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = sext i32 %231 to i64
  %233 = load i64, i64* @SAS_DATA_OVERRUN, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %240

235:                                              ; preds = %227
  %236 = load %struct.device*, %struct.device** %12, align 8
  %237 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %236, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %238 = load i32, i32* @EMSGSIZE, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %14, align 4
  br label %281

240:                                              ; preds = %227, %220
  %241 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %242 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @SAS_TASK_COMPLETE, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %260

247:                                              ; preds = %240
  %248 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %249 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = sext i32 %251 to i64
  %253 = load i64, i64* @SAS_OPEN_REJECT, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %260

255:                                              ; preds = %247
  %256 = load %struct.device*, %struct.device** %12, align 8
  %257 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %256, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %258 = load i32, i32* @EIO, align 4
  %259 = sub nsw i32 0, %258
  store i32 %259, i32* %14, align 4
  br label %275

260:                                              ; preds = %247, %240
  %261 = load %struct.device*, %struct.device** %12, align 8
  %262 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %263 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @SAS_ADDR(i32 %264)
  %266 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %267 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %271 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %261, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i32 %265, i64 %269, i32 %273)
  br label %275

275:                                              ; preds = %260, %255
  %276 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %277 = call i32 @sas_free_task(%struct.sas_task* %276)
  store %struct.sas_task* null, %struct.sas_task** %13, align 8
  br label %278

278:                                              ; preds = %275
  %279 = load i32, i32* %15, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %15, align 4
  br label %27

281:                                              ; preds = %235, %201, %184, %168, %27
  br label %282

282:                                              ; preds = %281, %149, %99
  %283 = load i32, i32* %15, align 4
  %284 = load i32, i32* @TASK_RETRY, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %289

286:                                              ; preds = %282
  %287 = load %struct.device*, %struct.device** %12, align 8
  %288 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %287, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  br label %289

289:                                              ; preds = %286, %282
  %290 = load %struct.sas_task*, %struct.sas_task** %13, align 8
  %291 = call i32 @sas_free_task(%struct.sas_task* %290)
  %292 = load i32, i32* %14, align 4
  store i32 %292, i32* %5, align 4
  br label %293

293:                                              ; preds = %289, %36
  %294 = load i32, i32* %5, align 4
  ret i32 %294
}

declare dso_local %struct.sas_task* @sas_alloc_slow_task(i32) #1

declare dso_local i64 @dev_is_sata(%struct.domain_device*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_9__*) #1

declare dso_local i32 @hisi_sas_task_exec(%struct.sas_task*, i32, i32, %struct.hisi_sas_tmf_task*) #1

declare dso_local i32 @del_timer(%struct.TYPE_9__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i32 @SAS_ADDR(i32) #1

declare dso_local i32 @sas_free_task(%struct.sas_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
