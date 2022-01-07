; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_sas.h_pm8001_ccb_task_free_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_sas.h_pm8001_ccb_task_free_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32 }
%struct.sas_task = type { i32 (%struct.sas_task*)* }
%struct.pm8001_ccb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*, %struct.sas_task*, %struct.pm8001_ccb_info*, i32)* @pm8001_ccb_task_free_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm8001_ccb_task_free_done(%struct.pm8001_hba_info* %0, %struct.sas_task* %1, %struct.pm8001_ccb_info* %2, i32 %3) #0 {
  %5 = alloca %struct.pm8001_hba_info*, align 8
  %6 = alloca %struct.sas_task*, align 8
  %7 = alloca %struct.pm8001_ccb_info*, align 8
  %8 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %5, align 8
  store %struct.sas_task* %1, %struct.sas_task** %6, align 8
  store %struct.pm8001_ccb_info* %2, %struct.pm8001_ccb_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %10 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %11 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info* %9, %struct.sas_task* %10, %struct.pm8001_ccb_info* %11, i32 %12)
  %14 = call i32 (...) @smp_mb()
  %15 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %16 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %15, i32 0, i32 0
  %17 = call i32 @spin_unlock(i32* %16)
  %18 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %19 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %18, i32 0, i32 0
  %20 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %19, align 8
  %21 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %22 = call i32 %20(%struct.sas_task* %21)
  %23 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %24 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  ret void
}

declare dso_local i32 @pm8001_ccb_task_free(%struct.pm8001_hba_info*, %struct.sas_task*, %struct.pm8001_ccb_info*, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
