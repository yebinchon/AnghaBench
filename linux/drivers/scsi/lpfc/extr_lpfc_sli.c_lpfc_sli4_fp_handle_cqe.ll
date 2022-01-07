; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_fp_handle_cqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_fp_handle_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i8* }
%struct.lpfc_queue = type { i32, i32, i32, i32 }
%struct.lpfc_cqe = type { i32 }
%struct.lpfc_wcqe_release = type { i32 }
%struct.lpfc_wcqe_complete = type { i32 }
%struct.sli4_wcqe_xri_aborted = type { i32 }
%struct.lpfc_rcqe = type { i32 }

@lpfc_wcqe_c_code = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@LPFC_IO = common dso_local global i32 0, align 4
@LPFC_NVME_LS = common dso_local global i32 0, align 4
@LPFC_NVMET = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"0144 Not a valid CQE code: x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.lpfc_cqe*)* @lpfc_sli4_fp_handle_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_fp_handle_cqe(%struct.lpfc_hba* %0, %struct.lpfc_queue* %1, %struct.lpfc_cqe* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_queue*, align 8
  %6 = alloca %struct.lpfc_cqe*, align 8
  %7 = alloca %struct.lpfc_wcqe_release, align 4
  %8 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_queue* %1, %struct.lpfc_queue** %5, align 8
  store %struct.lpfc_cqe* %2, %struct.lpfc_cqe** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.lpfc_cqe*, %struct.lpfc_cqe** %6, align 8
  %10 = call i32 @lpfc_sli4_pcimem_bcopy(%struct.lpfc_cqe* %9, %struct.lpfc_wcqe_release* %7, i32 4)
  %11 = load i32, i32* @lpfc_wcqe_c_code, align 4
  %12 = call i32 @bf_get(i32 %11, %struct.lpfc_wcqe_release* %7)
  switch i32 %12, label %73 [
    i32 133, label %13
    i32 132, label %13
    i32 129, label %38
    i32 128, label %46
    i32 130, label %58
    i32 131, label %58
  ]

13:                                               ; preds = %3, %3
  %14 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %15 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load i8*, i8** @jiffies, align 8
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %22 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @LPFC_IO, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %13
  %27 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %28 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @LPFC_NVME_LS, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %26, %13
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %34 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %35 = bitcast %struct.lpfc_wcqe_release* %7 to %struct.lpfc_wcqe_complete*
  %36 = call i32 @lpfc_sli4_fp_handle_fcp_wcqe(%struct.lpfc_hba* %33, %struct.lpfc_queue* %34, %struct.lpfc_wcqe_complete* %35)
  br label %37

37:                                               ; preds = %32, %26
  br label %80

38:                                               ; preds = %3
  %39 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %40 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %44 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %45 = call i32 @lpfc_sli4_fp_handle_rel_wcqe(%struct.lpfc_hba* %43, %struct.lpfc_queue* %44, %struct.lpfc_wcqe_release* %7)
  br label %80

46:                                               ; preds = %3
  %47 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %48 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load i8*, i8** @jiffies, align 8
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %53 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %55 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %56 = bitcast %struct.lpfc_wcqe_release* %7 to %struct.sli4_wcqe_xri_aborted*
  %57 = call i32 @lpfc_sli4_sp_handle_abort_xri_wcqe(%struct.lpfc_hba* %54, %struct.lpfc_queue* %55, %struct.sli4_wcqe_xri_aborted* %56)
  store i32 %57, i32* %8, align 4
  br label %80

58:                                               ; preds = %3, %3
  %59 = load i8*, i8** @jiffies, align 8
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %61 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  %62 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %63 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @LPFC_NVMET, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %58
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %69 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %70 = bitcast %struct.lpfc_wcqe_release* %7 to %struct.lpfc_rcqe*
  %71 = call i32 @lpfc_sli4_nvmet_handle_rcqe(%struct.lpfc_hba* %68, %struct.lpfc_queue* %69, %struct.lpfc_rcqe* %70)
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %67, %58
  br label %80

73:                                               ; preds = %3
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %75 = load i32, i32* @KERN_ERR, align 4
  %76 = load i32, i32* @LOG_SLI, align 4
  %77 = load i32, i32* @lpfc_wcqe_c_code, align 4
  %78 = call i32 @bf_get(i32 %77, %struct.lpfc_wcqe_release* %7)
  %79 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %74, i32 %75, i32 %76, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %73, %72, %46, %38, %37
  %81 = load i32, i32* %8, align 4
  ret i32 %81
}

declare dso_local i32 @lpfc_sli4_pcimem_bcopy(%struct.lpfc_cqe*, %struct.lpfc_wcqe_release*, i32) #1

declare dso_local i32 @bf_get(i32, %struct.lpfc_wcqe_release*) #1

declare dso_local i32 @lpfc_sli4_fp_handle_fcp_wcqe(%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.lpfc_wcqe_complete*) #1

declare dso_local i32 @lpfc_sli4_fp_handle_rel_wcqe(%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.lpfc_wcqe_release*) #1

declare dso_local i32 @lpfc_sli4_sp_handle_abort_xri_wcqe(%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.sli4_wcqe_xri_aborted*) #1

declare dso_local i32 @lpfc_sli4_nvmet_handle_rcqe(%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.lpfc_rcqe*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
