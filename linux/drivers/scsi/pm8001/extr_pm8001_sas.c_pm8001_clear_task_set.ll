; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_clear_task_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_clear_task_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { %struct.pm8001_device* }
%struct.pm8001_device = type { i32 }
%struct.pm8001_tmf_task = type { i32 }
%struct.pm8001_hba_info = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"I_T_L_Q clear task set[%x]\0A\00", align 1
@TMF_CLEAR_TASK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm8001_clear_task_set(%struct.domain_device* %0, i32* %1) #0 {
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pm8001_tmf_task, align 4
  %6 = alloca %struct.pm8001_device*, align 8
  %7 = alloca %struct.pm8001_hba_info*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %9 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %8, i32 0, i32 0
  %10 = load %struct.pm8001_device*, %struct.pm8001_device** %9, align 8
  store %struct.pm8001_device* %10, %struct.pm8001_device** %6, align 8
  %11 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %12 = call %struct.pm8001_hba_info* @pm8001_find_ha_by_dev(%struct.domain_device* %11)
  store %struct.pm8001_hba_info* %12, %struct.pm8001_hba_info** %7, align 8
  %13 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %14 = load %struct.pm8001_device*, %struct.pm8001_device** %6, align 8
  %15 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call i32 @PM8001_EH_DBG(%struct.pm8001_hba_info* %13, i32 %17)
  %19 = load i32, i32* @TMF_CLEAR_TASK_SET, align 4
  %20 = getelementptr inbounds %struct.pm8001_tmf_task, %struct.pm8001_tmf_task* %5, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @pm8001_issue_ssp_tmf(%struct.domain_device* %21, i32* %22, %struct.pm8001_tmf_task* %5)
  ret i32 %23
}

declare dso_local %struct.pm8001_hba_info* @pm8001_find_ha_by_dev(%struct.domain_device*) #1

declare dso_local i32 @PM8001_EH_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i32) #1

declare dso_local i32 @pm8001_issue_ssp_tmf(%struct.domain_device*, i32*, %struct.pm8001_tmf_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
