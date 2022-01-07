; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_get_nvme_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_get_nvme_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_io_buf = type { i32, %struct.sli4_sge*, i32, %struct.lpfc_iocbq }
%struct.sli4_sge = type { i32 }
%struct.lpfc_iocbq = type { i32, i32, %union.lpfc_wqe128 }
%union.lpfc_wqe128 = type { i32 }
%struct.lpfc_hba = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.lpfc_sli4_hdw_queue* }
%struct.lpfc_sli4_hdw_queue = type { i32 }
%struct.lpfc_nodelist = type { i32 }

@LPFC_IO_NVME = common dso_local global i32 0, align 4
@lpfc_nvme_io_cmd_wqe_cmpl = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@lpfc_sli4_sge_type = common dso_local global i32 0, align 4
@LPFC_SGE_TYPE_SKIP = common dso_local global i32 0, align 4
@lpfc_sli4_sge_last = common dso_local global i32 0, align 4
@LPFC_SBUF_BUMP_QDEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lpfc_io_buf* (%struct.lpfc_hba*, %struct.lpfc_nodelist*, i32, i32)* @lpfc_get_nvme_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lpfc_io_buf* @lpfc_get_nvme_buf(%struct.lpfc_hba* %0, %struct.lpfc_nodelist* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.lpfc_io_buf*, align 8
  %10 = alloca %struct.lpfc_sli4_hdw_queue*, align 8
  %11 = alloca %struct.sli4_sge*, align 8
  %12 = alloca %struct.lpfc_iocbq*, align 8
  %13 = alloca %union.lpfc_wqe128*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.lpfc_io_buf* @lpfc_get_io_buf(%struct.lpfc_hba* %14, i32* null, i32 %15, i32 %16)
  store %struct.lpfc_io_buf* %17, %struct.lpfc_io_buf** %9, align 8
  %18 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %9, align 8
  %19 = icmp ne %struct.lpfc_io_buf* %18, null
  br i1 %19, label %20, label %68

20:                                               ; preds = %4
  %21 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %9, align 8
  %22 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %21, i32 0, i32 3
  store %struct.lpfc_iocbq* %22, %struct.lpfc_iocbq** %12, align 8
  %23 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %24 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %23, i32 0, i32 2
  store %union.lpfc_wqe128* %24, %union.lpfc_wqe128** %13, align 8
  %25 = load i32, i32* @LPFC_IO_NVME, align 4
  %26 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %27 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @lpfc_nvme_io_cmd_wqe_cmpl, align 4
  %29 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %30 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @jiffies, align 4
  %32 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %9, align 8
  %33 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %9, align 8
  %35 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %9, align 8
  %37 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %36, i32 0, i32 1
  %38 = load %struct.sli4_sge*, %struct.sli4_sge** %37, align 8
  store %struct.sli4_sge* %38, %struct.sli4_sge** %11, align 8
  %39 = load i32, i32* @lpfc_sli4_sge_type, align 4
  %40 = load %struct.sli4_sge*, %struct.sli4_sge** %11, align 8
  %41 = load i32, i32* @LPFC_SGE_TYPE_SKIP, align 4
  %42 = call i32 @bf_set(i32 %39, %struct.sli4_sge* %40, i32 %41)
  %43 = load i32, i32* @lpfc_sli4_sge_last, align 4
  %44 = load %struct.sli4_sge*, %struct.sli4_sge** %11, align 8
  %45 = call i32 @bf_set(i32 %43, %struct.sli4_sge* %44, i32 0)
  %46 = load %struct.sli4_sge*, %struct.sli4_sge** %11, align 8
  %47 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cpu_to_le32(i32 %48)
  %50 = load %struct.sli4_sge*, %struct.sli4_sge** %11, align 8
  %51 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %13, align 8
  %53 = call i32 @memset(%union.lpfc_wqe128* %52, i32 0, i32 4)
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %55 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %56 = call i64 @lpfc_ndlp_check_qdepth(%struct.lpfc_hba* %54, %struct.lpfc_nodelist* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %20
  %59 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %60 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %59, i32 0, i32 0
  %61 = call i32 @atomic_inc(i32* %60)
  %62 = load i32, i32* @LPFC_SBUF_BUMP_QDEPTH, align 4
  %63 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %9, align 8
  %64 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %58, %20
  br label %80

68:                                               ; preds = %4
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %70 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %72, i64 %74
  store %struct.lpfc_sli4_hdw_queue* %75, %struct.lpfc_sli4_hdw_queue** %10, align 8
  %76 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %10, align 8
  %77 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %68, %67
  %81 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %9, align 8
  ret %struct.lpfc_io_buf* %81
}

declare dso_local %struct.lpfc_io_buf* @lpfc_get_io_buf(%struct.lpfc_hba*, i32*, i32, i32) #1

declare dso_local i32 @bf_set(i32, %struct.sli4_sge*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memset(%union.lpfc_wqe128*, i32, i32) #1

declare dso_local i64 @lpfc_ndlp_check_qdepth(%struct.lpfc_hba*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
