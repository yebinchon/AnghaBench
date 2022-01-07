; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_nvme_abort_fcreq_cmpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_nvme_abort_fcreq_cmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.lpfc_wcqe_complete = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_NVME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [119 x i8] c"6145 ABORT_XRI_CN completing on rpi x%x original iotag x%x, abort cmd iotag x%x req_tag x%x, status x%x, hwstatus x%x\0A\00", align 1
@lpfc_wcqe_c_request_tag = common dso_local global i32 0, align 4
@lpfc_wcqe_c_status = common dso_local global i32 0, align 4
@lpfc_wcqe_c_hw_status = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_nvme_abort_fcreq_cmpl(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_wcqe_complete* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_wcqe_complete*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_wcqe_complete* %2, %struct.lpfc_wcqe_complete** %6, align 8
  %7 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %8 = load i32, i32* @KERN_INFO, align 4
  %9 = load i32, i32* @LOG_NVME, align 4
  %10 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %11 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %17 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %23 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @lpfc_wcqe_c_request_tag, align 4
  %26 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %27 = call i32 @bf_get(i32 %25, %struct.lpfc_wcqe_complete* %26)
  %28 = load i32, i32* @lpfc_wcqe_c_status, align 4
  %29 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %30 = call i32 @bf_get(i32 %28, %struct.lpfc_wcqe_complete* %29)
  %31 = load i32, i32* @lpfc_wcqe_c_hw_status, align 4
  %32 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %33 = call i32 @bf_get(i32 %31, %struct.lpfc_wcqe_complete* %32)
  %34 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %7, i32 %8, i32 %9, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %21, i32 %24, i32 %27, i32 %30, i32 %33)
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %36 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %37 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %35, %struct.lpfc_iocbq* %36)
  ret void
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bf_get(i32, %struct.lpfc_wcqe_complete*) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
