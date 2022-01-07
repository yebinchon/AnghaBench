; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c___lpfc_sli4_hba_process_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c___lpfc_sli4_hba_process_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_queue = type { i32, i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }

@lpfc_sli4_fp_handle_cqe = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"0367 Cannot schedule soft IRQ for cqid=%d on CPU %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_queue*)* @__lpfc_sli4_hba_process_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__lpfc_sli4_hba_process_cq(%struct.lpfc_queue* %0) #0 {
  %2 = alloca %struct.lpfc_queue*, align 8
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.lpfc_queue* %0, %struct.lpfc_queue** %2, align 8
  %6 = load %struct.lpfc_queue*, %struct.lpfc_queue** %2, align 8
  %7 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %6, i32 0, i32 3
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  store %struct.lpfc_hba* %8, %struct.lpfc_hba** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %10 = load %struct.lpfc_queue*, %struct.lpfc_queue** %2, align 8
  %11 = load i32, i32* @lpfc_sli4_fp_handle_cqe, align 4
  %12 = call i32 @__lpfc_sli4_process_cq(%struct.lpfc_hba* %9, %struct.lpfc_queue* %10, i32 %11, i64* %4)
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %1
  %18 = load %struct.lpfc_queue*, %struct.lpfc_queue** %2, align 8
  %19 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.lpfc_queue*, %struct.lpfc_queue** %2, align 8
  %25 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %24, i32 0, i32 2
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @queue_delayed_work_on(i32 %20, i32 %23, i32* %25, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %17
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %31 = load i32, i32* @KERN_ERR, align 4
  %32 = load i32, i32* @LOG_SLI, align 4
  %33 = load %struct.lpfc_queue*, %struct.lpfc_queue** %2, align 8
  %34 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.lpfc_queue*, %struct.lpfc_queue** %2, align 8
  %37 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %30, i32 %31, i32 %32, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %29, %17
  br label %41

41:                                               ; preds = %40, %1
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %46 = call i32 @lpfc_worker_wake_up(%struct.lpfc_hba* %45)
  br label %47

47:                                               ; preds = %44, %41
  ret void
}

declare dso_local i32 @__lpfc_sli4_process_cq(%struct.lpfc_hba*, %struct.lpfc_queue*, i32, i64*) #1

declare dso_local i32 @queue_delayed_work_on(i32, i32, i32*, i64) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @lpfc_worker_wake_up(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
