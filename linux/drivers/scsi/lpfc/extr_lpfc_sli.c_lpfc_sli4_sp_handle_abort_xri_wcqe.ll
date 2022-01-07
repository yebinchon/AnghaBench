; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_sp_handle_abort_xri_wcqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_sp_handle_abort_xri_wcqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.lpfc_queue = type { i32, i32 }
%struct.sli4_wcqe_xri_aborted = type { i32, i32, i32, i32 }
%struct.lpfc_cq_event = type { i32, i32 }

@LPFC_ENABLE_NVME = common dso_local global i32 0, align 4
@ELS_XRI_ABORT_EVENT = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"0603 Invalid CQ subtype %d: %08x %08x %08x %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.sli4_wcqe_xri_aborted*)* @lpfc_sli4_sp_handle_abort_xri_wcqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_sp_handle_abort_xri_wcqe(%struct.lpfc_hba* %0, %struct.lpfc_queue* %1, %struct.sli4_wcqe_xri_aborted* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_queue*, align 8
  %7 = alloca %struct.sli4_wcqe_xri_aborted*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lpfc_cq_event*, align 8
  %10 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfc_queue* %1, %struct.lpfc_queue** %6, align 8
  store %struct.sli4_wcqe_xri_aborted* %2, %struct.sli4_wcqe_xri_aborted** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %12 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %70 [
    i32 129, label %14
    i32 128, label %38
    i32 130, label %38
  ]

14:                                               ; preds = %3
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %16 = load %struct.sli4_wcqe_xri_aborted*, %struct.sli4_wcqe_xri_aborted** %7, align 8
  %17 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %18 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @lpfc_sli4_io_xri_aborted(%struct.lpfc_hba* %15, %struct.sli4_wcqe_xri_aborted* %16, i32 %19)
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @LPFC_ENABLE_NVME, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %14
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %29 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %34 = load %struct.sli4_wcqe_xri_aborted*, %struct.sli4_wcqe_xri_aborted** %7, align 8
  %35 = call i32 @lpfc_sli4_nvmet_xri_aborted(%struct.lpfc_hba* %33, %struct.sli4_wcqe_xri_aborted* %34)
  br label %36

36:                                               ; preds = %32, %27
  br label %37

37:                                               ; preds = %36, %14
  store i32 0, i32* %8, align 4
  br label %90

38:                                               ; preds = %3, %3
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %40 = load %struct.sli4_wcqe_xri_aborted*, %struct.sli4_wcqe_xri_aborted** %7, align 8
  %41 = call %struct.lpfc_cq_event* @lpfc_cq_event_setup(%struct.lpfc_hba* %39, %struct.sli4_wcqe_xri_aborted* %40, i32 16)
  store %struct.lpfc_cq_event* %41, %struct.lpfc_cq_event** %9, align 8
  %42 = load %struct.lpfc_cq_event*, %struct.lpfc_cq_event** %9, align 8
  %43 = icmp ne %struct.lpfc_cq_event* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %92

45:                                               ; preds = %38
  %46 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %47 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.lpfc_cq_event*, %struct.lpfc_cq_event** %9, align 8
  %50 = getelementptr inbounds %struct.lpfc_cq_event, %struct.lpfc_cq_event* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 1
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load %struct.lpfc_cq_event*, %struct.lpfc_cq_event** %9, align 8
  %56 = getelementptr inbounds %struct.lpfc_cq_event, %struct.lpfc_cq_event* %55, i32 0, i32 0
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %58 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @list_add_tail(i32* %56, i32* %59)
  %61 = load i32, i32* @ELS_XRI_ABORT_EVENT, align 4
  %62 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %63 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %67 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %66, i32 0, i32 1
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  store i32 1, i32* %8, align 4
  br label %90

70:                                               ; preds = %3
  %71 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %72 = load i32, i32* @KERN_ERR, align 4
  %73 = load i32, i32* @LOG_SLI, align 4
  %74 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %75 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.sli4_wcqe_xri_aborted*, %struct.sli4_wcqe_xri_aborted** %7, align 8
  %78 = getelementptr inbounds %struct.sli4_wcqe_xri_aborted, %struct.sli4_wcqe_xri_aborted* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.sli4_wcqe_xri_aborted*, %struct.sli4_wcqe_xri_aborted** %7, align 8
  %81 = getelementptr inbounds %struct.sli4_wcqe_xri_aborted, %struct.sli4_wcqe_xri_aborted* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.sli4_wcqe_xri_aborted*, %struct.sli4_wcqe_xri_aborted** %7, align 8
  %84 = getelementptr inbounds %struct.sli4_wcqe_xri_aborted, %struct.sli4_wcqe_xri_aborted* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.sli4_wcqe_xri_aborted*, %struct.sli4_wcqe_xri_aborted** %7, align 8
  %87 = getelementptr inbounds %struct.sli4_wcqe_xri_aborted, %struct.sli4_wcqe_xri_aborted* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %71, i32 %72, i32 %73, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %79, i32 %82, i32 %85, i32 %88)
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %70, %45, %37
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %44
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @lpfc_sli4_io_xri_aborted(%struct.lpfc_hba*, %struct.sli4_wcqe_xri_aborted*, i32) #1

declare dso_local i32 @lpfc_sli4_nvmet_xri_aborted(%struct.lpfc_hba*, %struct.sli4_wcqe_xri_aborted*) #1

declare dso_local %struct.lpfc_cq_event* @lpfc_cq_event_setup(%struct.lpfc_hba*, %struct.sli4_wcqe_xri_aborted*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
