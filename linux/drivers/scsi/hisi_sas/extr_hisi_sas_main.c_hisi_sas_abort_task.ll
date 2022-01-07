; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_abort_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_abort_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_task = type { i32, i32, %struct.hisi_sas_slot*, %struct.domain_device*, %struct.scsi_cmnd*, i32 }
%struct.hisi_sas_slot = type { i64, i32*, i32 }
%struct.domain_device = type { i64, %struct.hisi_sas_device* }
%struct.hisi_sas_device = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_lun = type { i32 }
%struct.hisi_sas_tmf_task = type { i32, i32 }
%struct.hisi_hba = type { %struct.hisi_sas_cq*, %struct.device* }
%struct.hisi_sas_cq = type { i32 }
%struct.device = type { i32 }

@TMF_RESP_FUNC_FAILED = common dso_local global i32 0, align 4
@SAS_TASK_STATE_DONE = common dso_local global i32 0, align 4
@TMF_RESP_FUNC_COMPLETE = common dso_local global i32 0, align 4
@SAS_TASK_STATE_ABORTED = common dso_local global i32 0, align 4
@SAS_PROTOCOL_SSP = common dso_local global i32 0, align 4
@TMF_ABORT_TASK = common dso_local global i32 0, align 4
@HISI_SAS_INT_ABT_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"abort task: internal abort (%d)\0A\00", align 1
@TMF_RESP_FUNC_SUCC = common dso_local global i32 0, align 4
@SAS_PROTOCOL_SATA = common dso_local global i32 0, align 4
@SAS_PROTOCOL_STP = common dso_local global i32 0, align 4
@SAS_SATA_DEV = common dso_local global i64 0, align 8
@HISI_SAS_INT_ABT_DEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"abort task: internal abort failed\0A\00", align 1
@SAS_PROTOCOL_SMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"abort task: rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sas_task*)* @hisi_sas_abort_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_sas_abort_task(%struct.sas_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sas_task*, align 8
  %4 = alloca %struct.scsi_lun, align 4
  %5 = alloca %struct.hisi_sas_tmf_task, align 4
  %6 = alloca %struct.domain_device*, align 8
  %7 = alloca %struct.hisi_sas_device*, align 8
  %8 = alloca %struct.hisi_hba*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.hisi_sas_slot*, align 8
  %13 = alloca %struct.hisi_sas_cq*, align 8
  %14 = alloca %struct.scsi_cmnd*, align 8
  %15 = alloca %struct.hisi_sas_slot*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.hisi_sas_slot*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.hisi_sas_cq*, align 8
  store %struct.sas_task* %0, %struct.sas_task** %3, align 8
  %21 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %22 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %21, i32 0, i32 3
  %23 = load %struct.domain_device*, %struct.domain_device** %22, align 8
  store %struct.domain_device* %23, %struct.domain_device** %6, align 8
  %24 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %25 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %24, i32 0, i32 1
  %26 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %25, align 8
  store %struct.hisi_sas_device* %26, %struct.hisi_sas_device** %7, align 8
  %27 = load i32, i32* @TMF_RESP_FUNC_FAILED, align 4
  store i32 %27, i32* %10, align 4
  %28 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %7, align 8
  %29 = icmp ne %struct.hisi_sas_device* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @TMF_RESP_FUNC_FAILED, align 4
  store i32 %31, i32* %2, align 4
  br label %253

32:                                               ; preds = %1
  %33 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %34 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %33, i32 0, i32 3
  %35 = load %struct.domain_device*, %struct.domain_device** %34, align 8
  %36 = call %struct.hisi_hba* @dev_to_hisi_hba(%struct.domain_device* %35)
  store %struct.hisi_hba* %36, %struct.hisi_hba** %8, align 8
  %37 = load %struct.hisi_hba*, %struct.hisi_hba** %8, align 8
  %38 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %37, i32 0, i32 1
  %39 = load %struct.device*, %struct.device** %38, align 8
  store %struct.device* %39, %struct.device** %9, align 8
  %40 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %41 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %40, i32 0, i32 5
  %42 = load i64, i64* %11, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %45 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SAS_TASK_STATE_DONE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %32
  %51 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %52 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %51, i32 0, i32 2
  %53 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %52, align 8
  store %struct.hisi_sas_slot* %53, %struct.hisi_sas_slot** %12, align 8
  %54 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %12, align 8
  %55 = icmp ne %struct.hisi_sas_slot* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %50
  %57 = load %struct.hisi_hba*, %struct.hisi_hba** %8, align 8
  %58 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %57, i32 0, i32 0
  %59 = load %struct.hisi_sas_cq*, %struct.hisi_sas_cq** %58, align 8
  %60 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %12, align 8
  %61 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.hisi_sas_cq, %struct.hisi_sas_cq* %59, i64 %62
  store %struct.hisi_sas_cq* %63, %struct.hisi_sas_cq** %13, align 8
  %64 = load %struct.hisi_sas_cq*, %struct.hisi_sas_cq** %13, align 8
  %65 = getelementptr inbounds %struct.hisi_sas_cq, %struct.hisi_sas_cq* %64, i32 0, i32 0
  %66 = call i32 @tasklet_kill(i32* %65)
  br label %67

67:                                               ; preds = %56, %50
  %68 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %69 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %68, i32 0, i32 5
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load i32, i32* @TMF_RESP_FUNC_COMPLETE, align 4
  store i32 %72, i32* %10, align 4
  br label %243

73:                                               ; preds = %32
  %74 = load i32, i32* @SAS_TASK_STATE_ABORTED, align 4
  %75 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %76 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %80 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %79, i32 0, i32 5
  %81 = load i64, i64* %11, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %84 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %83, i32 0, i32 2
  %85 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %84, align 8
  %86 = icmp ne %struct.hisi_sas_slot* %85, null
  br i1 %86, label %87, label %152

87:                                               ; preds = %73
  %88 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %89 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @SAS_PROTOCOL_SSP, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %152

94:                                               ; preds = %87
  %95 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %96 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %95, i32 0, i32 4
  %97 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %96, align 8
  store %struct.scsi_cmnd* %97, %struct.scsi_cmnd** %14, align 8
  %98 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %99 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %98, i32 0, i32 2
  %100 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %99, align 8
  store %struct.hisi_sas_slot* %100, %struct.hisi_sas_slot** %15, align 8
  %101 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %15, align 8
  %102 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %16, align 4
  %104 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %105 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @int_to_scsilun(i32 %108, %struct.scsi_lun* %4)
  %110 = load i32, i32* @TMF_ABORT_TASK, align 4
  %111 = getelementptr inbounds %struct.hisi_sas_tmf_task, %struct.hisi_sas_tmf_task* %5, i32 0, i32 1
  store i32 %110, i32* %111, align 4
  %112 = load i32, i32* %16, align 4
  %113 = getelementptr inbounds %struct.hisi_sas_tmf_task, %struct.hisi_sas_tmf_task* %5, i32 0, i32 0
  store i32 %112, i32* %113, align 4
  %114 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %115 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %114, i32 0, i32 3
  %116 = load %struct.domain_device*, %struct.domain_device** %115, align 8
  %117 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %4, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @hisi_sas_debug_issue_ssp_tmf(%struct.domain_device* %116, i32 %118, %struct.hisi_sas_tmf_task* %5)
  store i32 %119, i32* %10, align 4
  %120 = load %struct.hisi_hba*, %struct.hisi_hba** %8, align 8
  %121 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %122 = load i32, i32* @HISI_SAS_INT_ABT_CMD, align 4
  %123 = load i32, i32* %16, align 4
  %124 = call i32 @hisi_sas_internal_task_abort(%struct.hisi_hba* %120, %struct.domain_device* %121, i32 %122, i32 %123)
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %17, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %94
  %128 = load %struct.device*, %struct.device** %9, align 8
  %129 = load i32, i32* %17, align 4
  %130 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @TMF_RESP_FUNC_FAILED, align 4
  store i32 %131, i32* %2, align 4
  br label %253

132:                                              ; preds = %94
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @TMF_RESP_FUNC_COMPLETE, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %151

136:                                              ; preds = %132
  %137 = load i32, i32* %17, align 4
  %138 = load i32, i32* @TMF_RESP_FUNC_SUCC, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %136
  %141 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %142 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %141, i32 0, i32 2
  %143 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %142, align 8
  %144 = icmp ne %struct.hisi_sas_slot* %143, null
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load %struct.hisi_hba*, %struct.hisi_hba** %8, align 8
  %147 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %148 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %15, align 8
  %149 = call i32 @hisi_sas_do_release_task(%struct.hisi_hba* %146, %struct.sas_task* %147, %struct.hisi_sas_slot* %148)
  br label %150

150:                                              ; preds = %145, %140
  br label %151

151:                                              ; preds = %150, %136, %132
  br label %242

152:                                              ; preds = %87, %73
  %153 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %154 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @SAS_PROTOCOL_SATA, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %166, label %159

159:                                              ; preds = %152
  %160 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %161 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @SAS_PROTOCOL_STP, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %191

166:                                              ; preds = %159, %152
  %167 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %168 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %167, i32 0, i32 3
  %169 = load %struct.domain_device*, %struct.domain_device** %168, align 8
  %170 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @SAS_SATA_DEV, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %190

174:                                              ; preds = %166
  %175 = load %struct.hisi_hba*, %struct.hisi_hba** %8, align 8
  %176 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %177 = load i32, i32* @HISI_SAS_INT_ABT_DEV, align 4
  %178 = call i32 @hisi_sas_internal_task_abort(%struct.hisi_hba* %175, %struct.domain_device* %176, i32 %177, i32 0)
  store i32 %178, i32* %10, align 4
  %179 = load i32, i32* %10, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %174
  %182 = load %struct.device*, %struct.device** %9, align 8
  %183 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %182, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %243

184:                                              ; preds = %174
  %185 = load %struct.hisi_hba*, %struct.hisi_hba** %8, align 8
  %186 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %187 = call i32 @hisi_sas_dereg_device(%struct.hisi_hba* %185, %struct.domain_device* %186)
  %188 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %189 = call i32 @hisi_sas_softreset_ata_disk(%struct.domain_device* %188)
  store i32 %189, i32* %10, align 4
  br label %190

190:                                              ; preds = %184, %166
  br label %241

191:                                              ; preds = %159
  %192 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %193 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %192, i32 0, i32 2
  %194 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %193, align 8
  %195 = icmp ne %struct.hisi_sas_slot* %194, null
  br i1 %195, label %196, label %240

196:                                              ; preds = %191
  %197 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %198 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @SAS_PROTOCOL_SMP, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %240

203:                                              ; preds = %196
  %204 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %205 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %204, i32 0, i32 2
  %206 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %205, align 8
  store %struct.hisi_sas_slot* %206, %struct.hisi_sas_slot** %18, align 8
  %207 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %18, align 8
  %208 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  store i32 %209, i32* %19, align 4
  %210 = load %struct.hisi_hba*, %struct.hisi_hba** %8, align 8
  %211 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %210, i32 0, i32 0
  %212 = load %struct.hisi_sas_cq*, %struct.hisi_sas_cq** %211, align 8
  %213 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %18, align 8
  %214 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = getelementptr inbounds %struct.hisi_sas_cq, %struct.hisi_sas_cq* %212, i64 %215
  store %struct.hisi_sas_cq* %216, %struct.hisi_sas_cq** %20, align 8
  %217 = load %struct.hisi_hba*, %struct.hisi_hba** %8, align 8
  %218 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %219 = load i32, i32* @HISI_SAS_INT_ABT_CMD, align 4
  %220 = load i32, i32* %19, align 4
  %221 = call i32 @hisi_sas_internal_task_abort(%struct.hisi_hba* %217, %struct.domain_device* %218, i32 %219, i32 %220)
  store i32 %221, i32* %10, align 4
  %222 = load i32, i32* %10, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %228, label %224

224:                                              ; preds = %203
  %225 = load i32, i32* %10, align 4
  %226 = load i32, i32* @TMF_RESP_FUNC_FAILED, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %239

228:                                              ; preds = %224, %203
  %229 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %230 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %229, i32 0, i32 2
  %231 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %230, align 8
  %232 = icmp ne %struct.hisi_sas_slot* %231, null
  br i1 %232, label %233, label %239

233:                                              ; preds = %228
  %234 = load %struct.hisi_sas_cq*, %struct.hisi_sas_cq** %20, align 8
  %235 = getelementptr inbounds %struct.hisi_sas_cq, %struct.hisi_sas_cq* %234, i32 0, i32 0
  %236 = call i32 @tasklet_kill(i32* %235)
  %237 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %18, align 8
  %238 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %237, i32 0, i32 1
  store i32* null, i32** %238, align 8
  br label %239

239:                                              ; preds = %233, %228, %224
  br label %240

240:                                              ; preds = %239, %196, %191
  br label %241

241:                                              ; preds = %240, %190
  br label %242

242:                                              ; preds = %241, %151
  br label %243

243:                                              ; preds = %242, %181, %67
  %244 = load i32, i32* %10, align 4
  %245 = load i32, i32* @TMF_RESP_FUNC_COMPLETE, align 4
  %246 = icmp ne i32 %244, %245
  br i1 %246, label %247, label %251

247:                                              ; preds = %243
  %248 = load %struct.device*, %struct.device** %9, align 8
  %249 = load i32, i32* %10, align 4
  %250 = call i32 @dev_notice(%struct.device* %248, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %249)
  br label %251

251:                                              ; preds = %247, %243
  %252 = load i32, i32* %10, align 4
  store i32 %252, i32* %2, align 4
  br label %253

253:                                              ; preds = %251, %127, %30
  %254 = load i32, i32* %2, align 4
  ret i32 %254
}

declare dso_local %struct.hisi_hba* @dev_to_hisi_hba(%struct.domain_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @int_to_scsilun(i32, %struct.scsi_lun*) #1

declare dso_local i32 @hisi_sas_debug_issue_ssp_tmf(%struct.domain_device*, i32, %struct.hisi_sas_tmf_task*) #1

declare dso_local i32 @hisi_sas_internal_task_abort(%struct.hisi_hba*, %struct.domain_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @hisi_sas_do_release_task(%struct.hisi_hba*, %struct.sas_task*, %struct.hisi_sas_slot*) #1

declare dso_local i32 @hisi_sas_dereg_device(%struct.hisi_hba*, %struct.domain_device*) #1

declare dso_local i32 @hisi_sas_softreset_ata_disk(%struct.domain_device*) #1

declare dso_local i32 @dev_notice(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
