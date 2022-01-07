; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_abort_task_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_abort_task_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32 }
%struct.hisi_hba = type { %struct.device* }
%struct.device = type { i32 }
%struct.hisi_sas_tmf_task = type { i32 }

@HISI_SAS_INT_ABT_DEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"abort task set: internal abort rc=%d\0A\00", align 1
@TMF_RESP_FUNC_FAILED = common dso_local global i32 0, align 4
@TMF_ABORT_TASK_SET = common dso_local global i32 0, align 4
@TMF_RESP_FUNC_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*, i32*)* @hisi_sas_abort_task_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_sas_abort_task_set(%struct.domain_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.domain_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hisi_hba*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.hisi_sas_tmf_task, align 4
  %9 = alloca i32, align 4
  store %struct.domain_device* %0, %struct.domain_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %11 = call %struct.hisi_hba* @dev_to_hisi_hba(%struct.domain_device* %10)
  store %struct.hisi_hba* %11, %struct.hisi_hba** %6, align 8
  %12 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %13 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %7, align 8
  %15 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %16 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %17 = load i32, i32* @HISI_SAS_INT_ABT_DEV, align 4
  %18 = call i32 @hisi_sas_internal_task_abort(%struct.hisi_hba* %15, %struct.domain_device* %16, i32 %17, i32 0)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %7, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @TMF_RESP_FUNC_FAILED, align 4
  store i32 %25, i32* %3, align 4
  br label %44

26:                                               ; preds = %2
  %27 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %28 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %29 = call i32 @hisi_sas_dereg_device(%struct.hisi_hba* %27, %struct.domain_device* %28)
  %30 = load i32, i32* @TMF_ABORT_TASK_SET, align 4
  %31 = getelementptr inbounds %struct.hisi_sas_tmf_task, %struct.hisi_sas_tmf_task* %8, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @hisi_sas_debug_issue_ssp_tmf(%struct.domain_device* %32, i32* %33, %struct.hisi_sas_tmf_task* %8)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @TMF_RESP_FUNC_COMPLETE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %26
  %39 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %40 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %41 = call i32 @hisi_sas_release_task(%struct.hisi_hba* %39, %struct.domain_device* %40)
  br label %42

42:                                               ; preds = %38, %26
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %21
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.hisi_hba* @dev_to_hisi_hba(%struct.domain_device*) #1

declare dso_local i32 @hisi_sas_internal_task_abort(%struct.hisi_hba*, %struct.domain_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @hisi_sas_dereg_device(%struct.hisi_hba*, %struct.domain_device*) #1

declare dso_local i32 @hisi_sas_debug_issue_ssp_tmf(%struct.domain_device*, i32*, %struct.hisi_sas_tmf_task*) #1

declare dso_local i32 @hisi_sas_release_task(%struct.hisi_hba*, %struct.domain_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
