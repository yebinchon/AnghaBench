; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_abort_task_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_abort_task_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32 }
%struct.mvs_tmf_task = type { i32 }

@TMF_RESP_FUNC_FAILED = common dso_local global i32 0, align 4
@TMF_ABORT_TASK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mvs_abort_task_set(%struct.domain_device* %0, i32* %1) #0 {
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mvs_tmf_task, align 4
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @TMF_RESP_FUNC_FAILED, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @TMF_ABORT_TASK_SET, align 4
  %9 = getelementptr inbounds %struct.mvs_tmf_task, %struct.mvs_tmf_task* %6, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @mvs_debug_issue_ssp_tmf(%struct.domain_device* %10, i32* %11, %struct.mvs_tmf_task* %6)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  ret i32 %13
}

declare dso_local i32 @mvs_debug_issue_ssp_tmf(%struct.domain_device*, i32*, %struct.mvs_tmf_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
