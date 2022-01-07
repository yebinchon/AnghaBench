; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_sli4_nvme_xri_aborted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_sli4_nvme_xri_aborted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.sli4_wcqe_xri_aborted = type { i32 }
%struct.lpfc_io_buf = type { %struct.nvmefc_fcp_req*, %struct.TYPE_2__, %struct.lpfc_nodelist* }
%struct.nvmefc_fcp_req = type { i32 (%struct.nvmefc_fcp_req*)* }
%struct.TYPE_2__ = type { i32 }
%struct.lpfc_nodelist = type { i32 }

@lpfc_wcqe_xa_xri = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_NVME_ABTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"6311 nvme_cmd %p xri x%x tag x%x abort complete and xri released\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_sli4_nvme_xri_aborted(%struct.lpfc_hba* %0, %struct.sli4_wcqe_xri_aborted* %1, %struct.lpfc_io_buf* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.sli4_wcqe_xri_aborted*, align 8
  %6 = alloca %struct.lpfc_io_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvmefc_fcp_req*, align 8
  %9 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.sli4_wcqe_xri_aborted* %1, %struct.sli4_wcqe_xri_aborted** %5, align 8
  store %struct.lpfc_io_buf* %2, %struct.lpfc_io_buf** %6, align 8
  %10 = load i32, i32* @lpfc_wcqe_xa_xri, align 4
  %11 = load %struct.sli4_wcqe_xri_aborted*, %struct.sli4_wcqe_xri_aborted** %5, align 8
  %12 = call i32 @bf_get(i32 %10, %struct.sli4_wcqe_xri_aborted* %11)
  store i32 %12, i32* %7, align 4
  store %struct.nvmefc_fcp_req* null, %struct.nvmefc_fcp_req** %8, align 8
  %13 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %6, align 8
  %14 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %13, i32 0, i32 2
  %15 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %14, align 8
  store %struct.lpfc_nodelist* %15, %struct.lpfc_nodelist** %9, align 8
  %16 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %17 = icmp ne %struct.lpfc_nodelist* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %20 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %21 = load %struct.sli4_wcqe_xri_aborted*, %struct.sli4_wcqe_xri_aborted** %5, align 8
  %22 = call i32 @lpfc_sli4_abts_err_handler(%struct.lpfc_hba* %19, %struct.lpfc_nodelist* %20, %struct.sli4_wcqe_xri_aborted* %21)
  br label %23

23:                                               ; preds = %18, %3
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %25 = load i32, i32* @KERN_INFO, align 4
  %26 = load i32, i32* @LOG_NVME_ABTS, align 4
  %27 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %6, align 8
  %28 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %27, i32 0, i32 0
  %29 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %6, align 8
  %32 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %24, i32 %25, i32 %26, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), %struct.nvmefc_fcp_req* %29, i32 %30, i32 %34)
  %36 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %6, align 8
  %37 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %36, i32 0, i32 0
  %38 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %37, align 8
  %39 = icmp ne %struct.nvmefc_fcp_req* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %23
  %41 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %6, align 8
  %42 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %41, i32 0, i32 0
  %43 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %42, align 8
  store %struct.nvmefc_fcp_req* %43, %struct.nvmefc_fcp_req** %8, align 8
  %44 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %8, align 8
  %45 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %44, i32 0, i32 0
  %46 = load i32 (%struct.nvmefc_fcp_req*)*, i32 (%struct.nvmefc_fcp_req*)** %45, align 8
  %47 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %8, align 8
  %48 = call i32 %46(%struct.nvmefc_fcp_req* %47)
  %49 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %6, align 8
  %50 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %49, i32 0, i32 0
  store %struct.nvmefc_fcp_req* null, %struct.nvmefc_fcp_req** %50, align 8
  br label %51

51:                                               ; preds = %40, %23
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %53 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %6, align 8
  %54 = call i32 @lpfc_release_nvme_buf(%struct.lpfc_hba* %52, %struct.lpfc_io_buf* %53)
  ret void
}

declare dso_local i32 @bf_get(i32, %struct.sli4_wcqe_xri_aborted*) #1

declare dso_local i32 @lpfc_sli4_abts_err_handler(%struct.lpfc_hba*, %struct.lpfc_nodelist*, %struct.sli4_wcqe_xri_aborted*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, %struct.nvmefc_fcp_req*, i32, i32) #1

declare dso_local i32 @lpfc_release_nvme_buf(%struct.lpfc_hba*, %struct.lpfc_io_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
