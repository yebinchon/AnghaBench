; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c__hisi_sas_internal_task_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c__hisi_sas_internal_task_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.hisi_sas_cq*, i32, i32, i64, %struct.TYPE_6__*, %struct.device* }
%struct.hisi_sas_cq = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.device = type { i32 }
%struct.domain_device = type { i32, i32, %struct.hisi_sas_device* }
%struct.hisi_sas_device = type { i32 }
%struct.hisi_sas_dq = type { i32 }
%struct.sas_task = type { i32, %struct.TYPE_8__, %struct.hisi_sas_slot*, %struct.TYPE_7__*, i32, i32, %struct.domain_device* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.hisi_sas_slot = type { i64, i32* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32 }

@TMF_RESP_FUNC_FAILED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hisi_sas_task_done = common dso_local global i32 0, align 4
@hisi_sas_tmf_timedout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@INTERNAL_ABORT_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"internal task abort: executing internal task failed: %d\0A\00", align 1
@SAS_TASK_STATE_ABORTED = common dso_local global i32 0, align 4
@hisi_sas_debugfs_enable = common dso_local global i64 0, align 8
@SAS_TASK_STATE_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"internal task abort: timeout and not done.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"internal task abort: timeout.\0A\00", align 1
@SAS_TASK_COMPLETE = common dso_local global i64 0, align 8
@TMF_RESP_FUNC_COMPLETE = common dso_local global i32 0, align 4
@TMF_RESP_FUNC_SUCC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [71 x i8] c"internal task abort: task to dev %016llx task=%pK resp: 0x%x sts 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_hba*, %struct.domain_device*, i32, i32, %struct.hisi_sas_dq*)* @_hisi_sas_internal_task_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_hisi_sas_internal_task_abort(%struct.hisi_hba* %0, %struct.domain_device* %1, i32 %2, i32 %3, %struct.hisi_sas_dq* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hisi_hba*, align 8
  %8 = alloca %struct.domain_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hisi_sas_dq*, align 8
  %12 = alloca %struct.sas_task*, align 8
  %13 = alloca %struct.hisi_sas_device*, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.hisi_sas_slot*, align 8
  %17 = alloca %struct.hisi_sas_cq*, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %7, align 8
  store %struct.domain_device* %1, %struct.domain_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.hisi_sas_dq* %4, %struct.hisi_sas_dq** %11, align 8
  %18 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %19 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %18, i32 0, i32 2
  %20 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %19, align 8
  store %struct.hisi_sas_device* %20, %struct.hisi_sas_device** %13, align 8
  %21 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %22 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %21, i32 0, i32 5
  %23 = load %struct.device*, %struct.device** %22, align 8
  store %struct.device* %23, %struct.device** %14, align 8
  %24 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %25 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %24, i32 0, i32 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %5
  %31 = load i32, i32* @TMF_RESP_FUNC_FAILED, align 4
  store i32 %31, i32* %6, align 4
  br label %209

32:                                               ; preds = %5
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.sas_task* @sas_alloc_slow_task(i32 %33)
  store %struct.sas_task* %34, %struct.sas_task** %12, align 8
  %35 = load %struct.sas_task*, %struct.sas_task** %12, align 8
  %36 = icmp ne %struct.sas_task* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %209

40:                                               ; preds = %32
  %41 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %42 = load %struct.sas_task*, %struct.sas_task** %12, align 8
  %43 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %42, i32 0, i32 6
  store %struct.domain_device* %41, %struct.domain_device** %43, align 8
  %44 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %45 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sas_task*, %struct.sas_task** %12, align 8
  %48 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @hisi_sas_task_done, align 4
  %50 = load %struct.sas_task*, %struct.sas_task** %12, align 8
  %51 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @hisi_sas_tmf_timedout, align 4
  %53 = load %struct.sas_task*, %struct.sas_task** %12, align 8
  %54 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %53, i32 0, i32 3
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  store i32 %52, i32* %57, align 8
  %58 = load i64, i64* @jiffies, align 8
  %59 = load i32, i32* @INTERNAL_ABORT_TIMEOUT, align 4
  %60 = load i32, i32* @HZ, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %58, %62
  %64 = load %struct.sas_task*, %struct.sas_task** %12, align 8
  %65 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %64, i32 0, i32 3
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store i64 %63, i64* %68, align 8
  %69 = load %struct.sas_task*, %struct.sas_task** %12, align 8
  %70 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %69, i32 0, i32 3
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = call i32 @add_timer(%struct.TYPE_9__* %72)
  %74 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %75 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %13, align 8
  %76 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sas_task*, %struct.sas_task** %12, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.hisi_sas_dq*, %struct.hisi_sas_dq** %11, align 8
  %82 = call i32 @hisi_sas_internal_abort_task_exec(%struct.hisi_hba* %74, i32 %77, %struct.sas_task* %78, i32 %79, i32 %80, %struct.hisi_sas_dq* %81)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %40
  %86 = load %struct.sas_task*, %struct.sas_task** %12, align 8
  %87 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %86, i32 0, i32 3
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = call i32 @del_timer(%struct.TYPE_9__* %89)
  %91 = load %struct.device*, %struct.device** %14, align 8
  %92 = load i32, i32* %15, align 4
  %93 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %91, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %190

94:                                               ; preds = %40
  %95 = load %struct.sas_task*, %struct.sas_task** %12, align 8
  %96 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %95, i32 0, i32 3
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = call i32 @wait_for_completion(i32* %98)
  %100 = load i32, i32* @TMF_RESP_FUNC_FAILED, align 4
  store i32 %100, i32* %15, align 4
  %101 = load %struct.sas_task*, %struct.sas_task** %12, align 8
  %102 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @SAS_TASK_STATE_ABORTED, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %157

107:                                              ; preds = %94
  %108 = load i64, i64* @hisi_sas_debugfs_enable, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %107
  %111 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %112 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %117 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %120 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %119, i32 0, i32 1
  %121 = call i32 @queue_work(i32 %118, i32* %120)
  br label %122

122:                                              ; preds = %115, %110, %107
  %123 = load %struct.sas_task*, %struct.sas_task** %12, align 8
  %124 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @SAS_TASK_STATE_DONE, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %153, label %129

129:                                              ; preds = %122
  %130 = load %struct.sas_task*, %struct.sas_task** %12, align 8
  %131 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %130, i32 0, i32 2
  %132 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %131, align 8
  store %struct.hisi_sas_slot* %132, %struct.hisi_sas_slot** %16, align 8
  %133 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %16, align 8
  %134 = icmp ne %struct.hisi_sas_slot* %133, null
  br i1 %134, label %135, label %148

135:                                              ; preds = %129
  %136 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %137 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %136, i32 0, i32 0
  %138 = load %struct.hisi_sas_cq*, %struct.hisi_sas_cq** %137, align 8
  %139 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %16, align 8
  %140 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.hisi_sas_cq, %struct.hisi_sas_cq* %138, i64 %141
  store %struct.hisi_sas_cq* %142, %struct.hisi_sas_cq** %17, align 8
  %143 = load %struct.hisi_sas_cq*, %struct.hisi_sas_cq** %17, align 8
  %144 = getelementptr inbounds %struct.hisi_sas_cq, %struct.hisi_sas_cq* %143, i32 0, i32 0
  %145 = call i32 @tasklet_kill(i32* %144)
  %146 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %16, align 8
  %147 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %146, i32 0, i32 1
  store i32* null, i32** %147, align 8
  br label %148

148:                                              ; preds = %135, %129
  %149 = load %struct.device*, %struct.device** %14, align 8
  %150 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %149, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %151 = load i32, i32* @EIO, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %15, align 4
  br label %190

153:                                              ; preds = %122
  %154 = load %struct.device*, %struct.device** %14, align 8
  %155 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %154, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %156

156:                                              ; preds = %153
  br label %157

157:                                              ; preds = %156, %94
  %158 = load %struct.sas_task*, %struct.sas_task** %12, align 8
  %159 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @SAS_TASK_COMPLETE, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %157
  %165 = load %struct.sas_task*, %struct.sas_task** %12, align 8
  %166 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @TMF_RESP_FUNC_COMPLETE, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %164
  %172 = load i32, i32* @TMF_RESP_FUNC_COMPLETE, align 4
  store i32 %172, i32* %15, align 4
  br label %190

173:                                              ; preds = %164, %157
  %174 = load %struct.sas_task*, %struct.sas_task** %12, align 8
  %175 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @SAS_TASK_COMPLETE, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %189

180:                                              ; preds = %173
  %181 = load %struct.sas_task*, %struct.sas_task** %12, align 8
  %182 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @TMF_RESP_FUNC_SUCC, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %180
  %188 = load i32, i32* @TMF_RESP_FUNC_SUCC, align 4
  store i32 %188, i32* %15, align 4
  br label %190

189:                                              ; preds = %180, %173
  br label %190

190:                                              ; preds = %189, %187, %171, %148, %85
  %191 = load %struct.device*, %struct.device** %14, align 8
  %192 = load %struct.domain_device*, %struct.domain_device** %8, align 8
  %193 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @SAS_ADDR(i32 %194)
  %196 = load %struct.sas_task*, %struct.sas_task** %12, align 8
  %197 = load %struct.sas_task*, %struct.sas_task** %12, align 8
  %198 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.sas_task*, %struct.sas_task** %12, align 8
  %202 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @dev_dbg(%struct.device* %191, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %195, %struct.sas_task* %196, i64 %200, i32 %204)
  %206 = load %struct.sas_task*, %struct.sas_task** %12, align 8
  %207 = call i32 @sas_free_task(%struct.sas_task* %206)
  %208 = load i32, i32* %15, align 4
  store i32 %208, i32* %6, align 4
  br label %209

209:                                              ; preds = %190, %37, %30
  %210 = load i32, i32* %6, align 4
  ret i32 %210
}

declare dso_local %struct.sas_task* @sas_alloc_slow_task(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_9__*) #1

declare dso_local i32 @hisi_sas_internal_abort_task_exec(%struct.hisi_hba*, i32, %struct.sas_task*, i32, i32, %struct.hisi_sas_dq*) #1

declare dso_local i32 @del_timer(%struct.TYPE_9__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, %struct.sas_task*, i64, i32) #1

declare dso_local i32 @SAS_ADDR(i32) #1

declare dso_local i32 @sas_free_task(%struct.sas_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
