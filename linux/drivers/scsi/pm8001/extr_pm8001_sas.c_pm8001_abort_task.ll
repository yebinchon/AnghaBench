; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_abort_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_abort_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.pm8001_hba_info*, i32, i32)*, i32 (%struct.pm8001_hba_info*, %struct.pm8001_device*, i32)* }
%struct.pm8001_hba_info = type { i64, %struct.pm8001_phy* }
%struct.pm8001_phy = type { i32, i64, i32*, i32* }
%struct.pm8001_device = type { i32, i32, i32* }
%struct.sas_task = type { i32, i32, i32, %struct.sas_task_slow*, %struct.scsi_cmnd*, %struct.domain_device*, i32 }
%struct.sas_task_slow = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.domain_device = type { %struct.pm8001_device* }
%struct.scsi_lun = type { i32 }
%struct.pm8001_tmf_task = type { i32, i32 }

@TMF_RESP_FUNC_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"no tag for task:%p\0A\00", align 1
@SAS_TASK_STATE_DONE = common dso_local global i32 0, align 4
@TMF_RESP_FUNC_COMPLETE = common dso_local global i32 0, align 4
@SAS_TASK_STATE_ABORTED = common dso_local global i32 0, align 4
@SAS_PROTOCOL_SSP = common dso_local global i32 0, align 4
@TMF_ABORT_TASK = common dso_local global i32 0, align 4
@SAS_PROTOCOL_SATA = common dso_local global i32 0, align 4
@SAS_PROTOCOL_STP = common dso_local global i32 0, align 4
@chip_8006 = common dso_local global i64 0, align 8
@completion_reset = common dso_local global i32 0, align 4
@completion = common dso_local global i32 0, align 4
@PM8001_CHIP_DISP = common dso_local global %struct.TYPE_4__* null, align 8
@PHY_HARD_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Waiting for local phy ctl\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Waiting for Port reset\0A\00", align 1
@PM8001_TASK_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@SAS_PROTOCOL_SMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"rc= %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm8001_abort_task(%struct.sas_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sas_task*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.domain_device*, align 8
  %7 = alloca %struct.pm8001_hba_info*, align 8
  %8 = alloca %struct.scsi_lun, align 4
  %9 = alloca %struct.pm8001_device*, align 8
  %10 = alloca %struct.pm8001_tmf_task, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sas_task_slow, align 4
  %15 = alloca %struct.scsi_cmnd*, align 8
  %16 = alloca %struct.pm8001_phy*, align 8
  store %struct.sas_task* %0, %struct.sas_task** %3, align 8
  %17 = load i32, i32* @TMF_RESP_FUNC_FAILED, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %19 = icmp ne %struct.sas_task* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %22 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %27 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %26, i32 0, i32 5
  %28 = load %struct.domain_device*, %struct.domain_device** %27, align 8
  %29 = icmp ne %struct.domain_device* %28, null
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %25, %20, %1
  %32 = phi i1 [ true, %20 ], [ true, %1 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @TMF_RESP_FUNC_FAILED, align 4
  store i32 %37, i32* %2, align 4
  br label %292

38:                                               ; preds = %31
  %39 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %40 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %39, i32 0, i32 5
  %41 = load %struct.domain_device*, %struct.domain_device** %40, align 8
  store %struct.domain_device* %41, %struct.domain_device** %6, align 8
  %42 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %43 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %42, i32 0, i32 0
  %44 = load %struct.pm8001_device*, %struct.pm8001_device** %43, align 8
  store %struct.pm8001_device* %44, %struct.pm8001_device** %9, align 8
  %45 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %46 = call %struct.pm8001_hba_info* @pm8001_find_ha_by_dev(%struct.domain_device* %45)
  store %struct.pm8001_hba_info* %46, %struct.pm8001_hba_info** %7, align 8
  %47 = load %struct.pm8001_device*, %struct.pm8001_device** %9, align 8
  %48 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %13, align 4
  %50 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %51 = call i32 @pm8001_find_tag(%struct.sas_task* %50, i32* %5)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %38
  %55 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %56 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.sas_task* %55)
  %57 = load i32, i32* @TMF_RESP_FUNC_FAILED, align 4
  store i32 %57, i32* %2, align 4
  br label %292

58:                                               ; preds = %38
  %59 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %60 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %59, i32 0, i32 2
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @spin_lock_irqsave(i32* %60, i64 %61)
  %63 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %64 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @SAS_TASK_STATE_DONE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %58
  %70 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %71 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %70, i32 0, i32 2
  %72 = load i64, i64* %4, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  %74 = load i32, i32* @TMF_RESP_FUNC_COMPLETE, align 4
  store i32 %74, i32* %2, align 4
  br label %292

75:                                               ; preds = %58
  %76 = load i32, i32* @SAS_TASK_STATE_ABORTED, align 4
  %77 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %78 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %82 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %81, i32 0, i32 3
  %83 = load %struct.sas_task_slow*, %struct.sas_task_slow** %82, align 8
  %84 = icmp eq %struct.sas_task_slow* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %75
  %86 = getelementptr inbounds %struct.sas_task_slow, %struct.sas_task_slow* %14, i32 0, i32 0
  %87 = call i32 @init_completion(i32* %86)
  %88 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %89 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %88, i32 0, i32 3
  store %struct.sas_task_slow* %14, %struct.sas_task_slow** %89, align 8
  br label %90

90:                                               ; preds = %85, %75
  %91 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %92 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %91, i32 0, i32 2
  %93 = load i64, i64* %4, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  %95 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %96 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @SAS_PROTOCOL_SSP, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %126

101:                                              ; preds = %90
  %102 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %103 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %102, i32 0, i32 4
  %104 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %103, align 8
  store %struct.scsi_cmnd* %104, %struct.scsi_cmnd** %15, align 8
  %105 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %106 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %105, i32 0, i32 0
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @int_to_scsilun(i32 %109, %struct.scsi_lun* %8)
  %111 = load i32, i32* @TMF_ABORT_TASK, align 4
  %112 = getelementptr inbounds %struct.pm8001_tmf_task, %struct.pm8001_tmf_task* %10, i32 0, i32 1
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* %5, align 4
  %114 = getelementptr inbounds %struct.pm8001_tmf_task, %struct.pm8001_tmf_task* %10, i32 0, i32 0
  store i32 %113, i32* %114, align 4
  %115 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %116 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %8, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @pm8001_issue_ssp_tmf(%struct.domain_device* %115, i32 %117, %struct.pm8001_tmf_task* %10)
  store i32 %118, i32* %11, align 4
  %119 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %120 = load %struct.pm8001_device*, %struct.pm8001_device** %9, align 8
  %121 = load %struct.pm8001_device*, %struct.pm8001_device** %9, align 8
  %122 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @pm8001_exec_internal_task_abort(%struct.pm8001_hba_info* %119, %struct.pm8001_device* %120, i32 %123, i32 0, i32 %124)
  br label %266

126:                                              ; preds = %90
  %127 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %128 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @SAS_PROTOCOL_SATA, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %126
  %134 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %135 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @SAS_PROTOCOL_STP, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %249

140:                                              ; preds = %133, %126
  %141 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %142 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @chip_8006, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %239

146:                                              ; preds = %140
  %147 = load i32, i32* @completion_reset, align 4
  %148 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %147)
  %149 = load i32, i32* @completion, align 4
  %150 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %149)
  %151 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %152 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %151, i32 0, i32 1
  %153 = load %struct.pm8001_phy*, %struct.pm8001_phy** %152, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %153, i64 %155
  store %struct.pm8001_phy* %156, %struct.pm8001_phy** %16, align 8
  %157 = load %struct.pm8001_device*, %struct.pm8001_device** %9, align 8
  %158 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %157, i32 0, i32 2
  store i32* @completion, i32** %158, align 8
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PM8001_CHIP_DISP, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i32 (%struct.pm8001_hba_info*, %struct.pm8001_device*, i32)*, i32 (%struct.pm8001_hba_info*, %struct.pm8001_device*, i32)** %160, align 8
  %162 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %163 = load %struct.pm8001_device*, %struct.pm8001_device** %9, align 8
  %164 = call i32 %161(%struct.pm8001_hba_info* %162, %struct.pm8001_device* %163, i32 3)
  %165 = call i32 @wait_for_completion(i32* @completion)
  %166 = call i32 @reinit_completion(i32* @completion)
  %167 = load %struct.pm8001_phy*, %struct.pm8001_phy** %16, align 8
  %168 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %167, i32 0, i32 0
  store i32 0, i32* %168, align 8
  %169 = load %struct.pm8001_phy*, %struct.pm8001_phy** %16, align 8
  %170 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %169, i32 0, i32 3
  store i32* @completion, i32** %170, align 8
  %171 = load %struct.pm8001_phy*, %struct.pm8001_phy** %16, align 8
  %172 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %171, i32 0, i32 2
  store i32* @completion_reset, i32** %172, align 8
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PM8001_CHIP_DISP, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32 (%struct.pm8001_hba_info*, i32, i32)*, i32 (%struct.pm8001_hba_info*, i32, i32)** %174, align 8
  %176 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %177 = load i32, i32* %13, align 4
  %178 = load i32, i32* @PHY_HARD_RESET, align 4
  %179 = call i32 %175(%struct.pm8001_hba_info* %176, i32 %177, i32 %178)
  store i32 %179, i32* %12, align 4
  %180 = load i32, i32* %12, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %146
  br label %267

183:                                              ; preds = %146
  %184 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %185 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %186 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %184, i32 %185)
  %187 = call i32 @wait_for_completion(i32* @completion)
  %188 = load %struct.pm8001_phy*, %struct.pm8001_phy** %16, align 8
  %189 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %183
  br label %267

193:                                              ; preds = %183
  %194 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %195 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %196 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %194, i32 %195)
  %197 = call i32 @wait_for_completion(i32* @completion_reset)
  %198 = load %struct.pm8001_phy*, %struct.pm8001_phy** %16, align 8
  %199 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %193
  %203 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %204 = call i32 @pm8001_dev_gone_notify(%struct.domain_device* %203)
  br label %267

205:                                              ; preds = %193
  %206 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %207 = load %struct.pm8001_device*, %struct.pm8001_device** %9, align 8
  %208 = load %struct.pm8001_device*, %struct.pm8001_device** %9, align 8
  %209 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %5, align 4
  %212 = call i32 @pm8001_exec_internal_task_abort(%struct.pm8001_hba_info* %206, %struct.pm8001_device* %207, i32 %210, i32 1, i32 %211)
  store i32 %212, i32* %12, align 4
  %213 = load i32, i32* %12, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %205
  br label %267

216:                                              ; preds = %205
  %217 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %218 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %217, i32 0, i32 3
  %219 = load %struct.sas_task_slow*, %struct.sas_task_slow** %218, align 8
  %220 = getelementptr inbounds %struct.sas_task_slow, %struct.sas_task_slow* %219, i32 0, i32 0
  %221 = load i32, i32* @PM8001_TASK_TIMEOUT, align 4
  %222 = load i32, i32* @HZ, align 4
  %223 = mul nsw i32 %221, %222
  %224 = call i32 @wait_for_completion_timeout(i32* %220, i32 %223)
  store i32 %224, i32* %12, align 4
  %225 = load i32, i32* %12, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %216
  br label %267

228:                                              ; preds = %216
  %229 = call i32 @reinit_completion(i32* @completion)
  %230 = load %struct.pm8001_device*, %struct.pm8001_device** %9, align 8
  %231 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %230, i32 0, i32 2
  store i32* @completion, i32** %231, align 8
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PM8001_CHIP_DISP, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 1
  %234 = load i32 (%struct.pm8001_hba_info*, %struct.pm8001_device*, i32)*, i32 (%struct.pm8001_hba_info*, %struct.pm8001_device*, i32)** %233, align 8
  %235 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %236 = load %struct.pm8001_device*, %struct.pm8001_device** %9, align 8
  %237 = call i32 %234(%struct.pm8001_hba_info* %235, %struct.pm8001_device* %236, i32 1)
  %238 = call i32 @wait_for_completion(i32* @completion)
  br label %247

239:                                              ; preds = %140
  %240 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %241 = load %struct.pm8001_device*, %struct.pm8001_device** %9, align 8
  %242 = load %struct.pm8001_device*, %struct.pm8001_device** %9, align 8
  %243 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %5, align 4
  %246 = call i32 @pm8001_exec_internal_task_abort(%struct.pm8001_hba_info* %240, %struct.pm8001_device* %241, i32 %244, i32 0, i32 %245)
  store i32 %246, i32* %11, align 4
  br label %247

247:                                              ; preds = %239, %228
  %248 = load i32, i32* @TMF_RESP_FUNC_COMPLETE, align 4
  store i32 %248, i32* %11, align 4
  br label %265

249:                                              ; preds = %133
  %250 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %251 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @SAS_PROTOCOL_SMP, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %264

256:                                              ; preds = %249
  %257 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %258 = load %struct.pm8001_device*, %struct.pm8001_device** %9, align 8
  %259 = load %struct.pm8001_device*, %struct.pm8001_device** %9, align 8
  %260 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %5, align 4
  %263 = call i32 @pm8001_exec_internal_task_abort(%struct.pm8001_hba_info* %257, %struct.pm8001_device* %258, i32 %261, i32 0, i32 %262)
  store i32 %263, i32* %11, align 4
  br label %264

264:                                              ; preds = %256, %249
  br label %265

265:                                              ; preds = %264, %247
  br label %266

266:                                              ; preds = %265, %101
  br label %267

267:                                              ; preds = %266, %227, %215, %202, %192, %182
  %268 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %269 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %268, i32 0, i32 2
  %270 = load i64, i64* %4, align 8
  %271 = call i32 @spin_lock_irqsave(i32* %269, i64 %270)
  %272 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %273 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %272, i32 0, i32 3
  %274 = load %struct.sas_task_slow*, %struct.sas_task_slow** %273, align 8
  %275 = icmp eq %struct.sas_task_slow* %274, %14
  br i1 %275, label %276, label %279

276:                                              ; preds = %267
  %277 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %278 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %277, i32 0, i32 3
  store %struct.sas_task_slow* null, %struct.sas_task_slow** %278, align 8
  br label %279

279:                                              ; preds = %276, %267
  %280 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %281 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %280, i32 0, i32 2
  %282 = load i64, i64* %4, align 8
  %283 = call i32 @spin_unlock_irqrestore(i32* %281, i64 %282)
  %284 = load i32, i32* %11, align 4
  %285 = load i32, i32* @TMF_RESP_FUNC_COMPLETE, align 4
  %286 = icmp ne i32 %284, %285
  br i1 %286, label %287, label %290

287:                                              ; preds = %279
  %288 = load i32, i32* %11, align 4
  %289 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %288)
  br label %290

290:                                              ; preds = %287, %279
  %291 = load i32, i32* %11, align 4
  store i32 %291, i32* %2, align 4
  br label %292

292:                                              ; preds = %290, %69, %54, %36
  %293 = load i32, i32* %2, align 4
  ret i32 %293
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.pm8001_hba_info* @pm8001_find_ha_by_dev(%struct.domain_device*) #1

declare dso_local i32 @pm8001_find_tag(%struct.sas_task*, i32*) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @int_to_scsilun(i32, %struct.scsi_lun*) #1

declare dso_local i32 @pm8001_issue_ssp_tmf(%struct.domain_device*, i32, %struct.pm8001_tmf_task*) #1

declare dso_local i32 @pm8001_exec_internal_task_abort(%struct.pm8001_hba_info*, %struct.pm8001_device*, i32, i32, i32) #1

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_dev_gone_notify(%struct.domain_device*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
