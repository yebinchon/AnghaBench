; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_sp_handle_async_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_sp_handle_async_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lpfc_mcqe = type { i32, i32, i32, i32 }
%struct.lpfc_cq_event = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"0392 Async Event: word0:x%x, word1:x%x, word2:x%x, word3:x%x\0A\00", align 1
@ASYNC_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_mcqe*)* @lpfc_sli4_sp_handle_async_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_sp_handle_async_event(%struct.lpfc_hba* %0, %struct.lpfc_mcqe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_mcqe*, align 8
  %6 = alloca %struct.lpfc_cq_event*, align 8
  %7 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_mcqe* %1, %struct.lpfc_mcqe** %5, align 8
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %9 = load i32, i32* @KERN_INFO, align 4
  %10 = load i32, i32* @LOG_SLI, align 4
  %11 = load %struct.lpfc_mcqe*, %struct.lpfc_mcqe** %5, align 8
  %12 = getelementptr inbounds %struct.lpfc_mcqe, %struct.lpfc_mcqe* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.lpfc_mcqe*, %struct.lpfc_mcqe** %5, align 8
  %15 = getelementptr inbounds %struct.lpfc_mcqe, %struct.lpfc_mcqe* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.lpfc_mcqe*, %struct.lpfc_mcqe** %5, align 8
  %18 = getelementptr inbounds %struct.lpfc_mcqe, %struct.lpfc_mcqe* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.lpfc_mcqe*, %struct.lpfc_mcqe** %5, align 8
  %21 = getelementptr inbounds %struct.lpfc_mcqe, %struct.lpfc_mcqe* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %8, i32 %9, i32 %10, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i32 %19, i32 %22)
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %25 = load %struct.lpfc_mcqe*, %struct.lpfc_mcqe** %5, align 8
  %26 = call %struct.lpfc_cq_event* @lpfc_cq_event_setup(%struct.lpfc_hba* %24, %struct.lpfc_mcqe* %25, i32 16)
  store %struct.lpfc_cq_event* %26, %struct.lpfc_cq_event** %6, align 8
  %27 = load %struct.lpfc_cq_event*, %struct.lpfc_cq_event** %6, align 8
  %28 = icmp ne %struct.lpfc_cq_event* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

30:                                               ; preds = %2
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %32 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %31, i32 0, i32 0
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.lpfc_cq_event*, %struct.lpfc_cq_event** %6, align 8
  %36 = getelementptr inbounds %struct.lpfc_cq_event, %struct.lpfc_cq_event* %35, i32 0, i32 0
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %38 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @list_add_tail(i32* %36, i32* %39)
  %41 = load i32, i32* @ASYNC_EVENT, align 4
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %43 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %47 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %46, i32 0, i32 0
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  store i32 1, i32* %3, align 4
  br label %50

50:                                               ; preds = %30, %29
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.lpfc_cq_event* @lpfc_cq_event_setup(%struct.lpfc_hba*, %struct.lpfc_mcqe*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
