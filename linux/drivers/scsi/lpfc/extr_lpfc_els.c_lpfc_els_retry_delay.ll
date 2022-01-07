; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_retry_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_retry_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_nodelist = type { %struct.lpfc_work_evt, %struct.lpfc_vport* }
%struct.lpfc_work_evt = type { i32, i32, i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i32 }
%struct.timer_list = type { i32 }

@nlp_delayfunc = common dso_local global i32 0, align 4
@LPFC_EVT_ELS_RETRY = common dso_local global i32 0, align 4
@ndlp = common dso_local global %struct.lpfc_nodelist* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_els_retry_delay(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.lpfc_nodelist*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.lpfc_work_evt*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %8 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %9 = ptrtoint %struct.lpfc_nodelist* %8 to i32
  %10 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %11 = load i32, i32* @nlp_delayfunc, align 4
  %12 = call %struct.lpfc_nodelist* @from_timer(i32 %9, %struct.timer_list* %10, i32 %11)
  store %struct.lpfc_nodelist* %12, %struct.lpfc_nodelist** %3, align 8
  %13 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %14 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %13, i32 0, i32 1
  %15 = load %struct.lpfc_vport*, %struct.lpfc_vport** %14, align 8
  store %struct.lpfc_vport* %15, %struct.lpfc_vport** %4, align 8
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %17 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %16, i32 0, i32 0
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %17, align 8
  store %struct.lpfc_hba* %18, %struct.lpfc_hba** %5, align 8
  %19 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %20 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %19, i32 0, i32 0
  store %struct.lpfc_work_evt* %20, %struct.lpfc_work_evt** %7, align 8
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 0
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.lpfc_work_evt*, %struct.lpfc_work_evt** %7, align 8
  %26 = getelementptr inbounds %struct.lpfc_work_evt, %struct.lpfc_work_evt* %25, i32 0, i32 0
  %27 = call i32 @list_empty(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %1
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %31 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %30, i32 0, i32 0
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  br label %59

34:                                               ; preds = %1
  %35 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %36 = call i64 @lpfc_nlp_get(%struct.lpfc_nodelist* %35)
  %37 = load %struct.lpfc_work_evt*, %struct.lpfc_work_evt** %7, align 8
  %38 = getelementptr inbounds %struct.lpfc_work_evt, %struct.lpfc_work_evt* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load %struct.lpfc_work_evt*, %struct.lpfc_work_evt** %7, align 8
  %40 = getelementptr inbounds %struct.lpfc_work_evt, %struct.lpfc_work_evt* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %34
  %44 = load i32, i32* @LPFC_EVT_ELS_RETRY, align 4
  %45 = load %struct.lpfc_work_evt*, %struct.lpfc_work_evt** %7, align 8
  %46 = getelementptr inbounds %struct.lpfc_work_evt, %struct.lpfc_work_evt* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.lpfc_work_evt*, %struct.lpfc_work_evt** %7, align 8
  %48 = getelementptr inbounds %struct.lpfc_work_evt, %struct.lpfc_work_evt* %47, i32 0, i32 0
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %50 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %49, i32 0, i32 1
  %51 = call i32 @list_add_tail(i32* %48, i32* %50)
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %53 = call i32 @lpfc_worker_wake_up(%struct.lpfc_hba* %52)
  br label %54

54:                                               ; preds = %43, %34
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %56 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %55, i32 0, i32 0
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  br label %59

59:                                               ; preds = %54, %29
  ret void
}

declare dso_local %struct.lpfc_nodelist* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @lpfc_nlp_get(%struct.lpfc_nodelist*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @lpfc_worker_wake_up(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
