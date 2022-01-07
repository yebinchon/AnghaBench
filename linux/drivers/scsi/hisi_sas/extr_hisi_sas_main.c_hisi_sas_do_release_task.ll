; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_do_release_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_do_release_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32 }
%struct.sas_task = type { i32, i64, i32, %struct.task_status_struct }
%struct.task_status_struct = type { i32, i32 }
%struct.hisi_sas_slot = type { i32 }

@SAS_TASK_COMPLETE = common dso_local global i32 0, align 4
@SAS_ABORTED_TASK = common dso_local global i32 0, align 4
@SAS_TASK_STATE_PENDING = common dso_local global i32 0, align 4
@SAS_TASK_AT_INITIATOR = common dso_local global i32 0, align 4
@SAS_PROTOCOL_SMP = common dso_local global i64 0, align 8
@SAS_TASK_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*, %struct.sas_task*, %struct.hisi_sas_slot*)* @hisi_sas_do_release_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_sas_do_release_task(%struct.hisi_hba* %0, %struct.sas_task* %1, %struct.hisi_sas_slot* %2) #0 {
  %4 = alloca %struct.hisi_hba*, align 8
  %5 = alloca %struct.sas_task*, align 8
  %6 = alloca %struct.hisi_sas_slot*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.task_status_struct*, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %4, align 8
  store %struct.sas_task* %1, %struct.sas_task** %5, align 8
  store %struct.hisi_sas_slot* %2, %struct.hisi_sas_slot** %6, align 8
  %9 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %10 = icmp ne %struct.sas_task* %9, null
  br i1 %10, label %11, label %53

11:                                               ; preds = %3
  %12 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %13 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %12, i32 0, i32 3
  store %struct.task_status_struct* %13, %struct.task_status_struct** %8, align 8
  %14 = load i32, i32* @SAS_TASK_COMPLETE, align 4
  %15 = load %struct.task_status_struct*, %struct.task_status_struct** %8, align 8
  %16 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @SAS_ABORTED_TASK, align 4
  %18 = load %struct.task_status_struct*, %struct.task_status_struct** %8, align 8
  %19 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %21 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %20, i32 0, i32 2
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load i32, i32* @SAS_TASK_STATE_PENDING, align 4
  %25 = load i32, i32* @SAS_TASK_AT_INITIATOR, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %29 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %6, align 8
  %33 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %11
  %37 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %38 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SAS_PROTOCOL_SMP, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load i32, i32* @SAS_TASK_STATE_DONE, align 4
  %44 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %45 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %42, %36, %11
  %49 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %50 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %49, i32 0, i32 2
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  br label %53

53:                                               ; preds = %48, %3
  %54 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %55 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %56 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %6, align 8
  %57 = call i32 @hisi_sas_slot_task_free(%struct.hisi_hba* %54, %struct.sas_task* %55, %struct.hisi_sas_slot* %56)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hisi_sas_slot_task_free(%struct.hisi_hba*, %struct.sas_task*, %struct.hisi_sas_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
