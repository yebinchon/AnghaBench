; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_sp_handle_cqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_sp_handle_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i8* }
%struct.lpfc_queue = type { i32 }
%struct.lpfc_cqe = type { i32 }
%struct.lpfc_wcqe_complete = type { i32 }
%struct.lpfc_wcqe_release = type { i32 }
%struct.sli4_wcqe_xri_aborted = type { i32 }
%struct.lpfc_rcqe = type { i32 }

@lpfc_cqe_code = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"0388 Not a valid WCQE code: x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.lpfc_cqe*)* @lpfc_sli4_sp_handle_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_sp_handle_cqe(%struct.lpfc_hba* %0, %struct.lpfc_queue* %1, %struct.lpfc_cqe* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_queue*, align 8
  %6 = alloca %struct.lpfc_cqe*, align 8
  %7 = alloca %struct.lpfc_cqe, align 4
  %8 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_queue* %1, %struct.lpfc_queue** %5, align 8
  store %struct.lpfc_cqe* %2, %struct.lpfc_cqe** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.lpfc_cqe*, %struct.lpfc_cqe** %6, align 8
  %10 = call i32 @lpfc_sli4_pcimem_bcopy(%struct.lpfc_cqe* %9, %struct.lpfc_cqe* %7, i32 4)
  %11 = load i32, i32* @lpfc_cqe_code, align 4
  %12 = call i32 @bf_get(i32 %11, %struct.lpfc_cqe* %7)
  switch i32 %12, label %40 [
    i32 132, label %13
    i32 129, label %21
    i32 128, label %25
    i32 131, label %33
    i32 130, label %33
  ]

13:                                               ; preds = %3
  %14 = load i8*, i8** @jiffies, align 8
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %18 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %19 = bitcast %struct.lpfc_cqe* %7 to %struct.lpfc_wcqe_complete*
  %20 = call i32 @lpfc_sli4_sp_handle_els_wcqe(%struct.lpfc_hba* %17, %struct.lpfc_queue* %18, %struct.lpfc_wcqe_complete* %19)
  store i32 %20, i32* %8, align 4
  br label %47

21:                                               ; preds = %3
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %23 = bitcast %struct.lpfc_cqe* %7 to %struct.lpfc_wcqe_release*
  %24 = call i32 @lpfc_sli4_sp_handle_rel_wcqe(%struct.lpfc_hba* %22, %struct.lpfc_wcqe_release* %23)
  br label %47

25:                                               ; preds = %3
  %26 = load i8*, i8** @jiffies, align 8
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %30 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %31 = bitcast %struct.lpfc_cqe* %7 to %struct.sli4_wcqe_xri_aborted*
  %32 = call i32 @lpfc_sli4_sp_handle_abort_xri_wcqe(%struct.lpfc_hba* %29, %struct.lpfc_queue* %30, %struct.sli4_wcqe_xri_aborted* %31)
  store i32 %32, i32* %8, align 4
  br label %47

33:                                               ; preds = %3, %3
  %34 = load i8*, i8** @jiffies, align 8
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %38 = bitcast %struct.lpfc_cqe* %7 to %struct.lpfc_rcqe*
  %39 = call i32 @lpfc_sli4_sp_handle_rcqe(%struct.lpfc_hba* %37, %struct.lpfc_rcqe* %38)
  store i32 %39, i32* %8, align 4
  br label %47

40:                                               ; preds = %3
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %42 = load i32, i32* @KERN_ERR, align 4
  %43 = load i32, i32* @LOG_SLI, align 4
  %44 = load i32, i32* @lpfc_cqe_code, align 4
  %45 = call i32 @bf_get(i32 %44, %struct.lpfc_cqe* %7)
  %46 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %41, i32 %42, i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %40, %33, %25, %21, %13
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

declare dso_local i32 @lpfc_sli4_pcimem_bcopy(%struct.lpfc_cqe*, %struct.lpfc_cqe*, i32) #1

declare dso_local i32 @bf_get(i32, %struct.lpfc_cqe*) #1

declare dso_local i32 @lpfc_sli4_sp_handle_els_wcqe(%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.lpfc_wcqe_complete*) #1

declare dso_local i32 @lpfc_sli4_sp_handle_rel_wcqe(%struct.lpfc_hba*, %struct.lpfc_wcqe_release*) #1

declare dso_local i32 @lpfc_sli4_sp_handle_abort_xri_wcqe(%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.sli4_wcqe_xri_aborted*) #1

declare dso_local i32 @lpfc_sli4_sp_handle_rcqe(%struct.lpfc_hba*, %struct.lpfc_rcqe*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
