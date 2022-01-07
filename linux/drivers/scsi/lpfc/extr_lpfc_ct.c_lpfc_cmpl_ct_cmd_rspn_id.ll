; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_cmpl_ct_cmd_rspn_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_cmpl_ct_cmd_rspn_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { i64, %struct.lpfc_vport*, %struct.TYPE_6__ }
%struct.lpfc_vport = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.lpfc_dmabuf = type { i64 }
%struct.lpfc_sli_ct_request = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@IOSTAT_SUCCESS = common dso_local global i64 0, align 8
@SLI_CT_RESPONSE_FS_ACC = common dso_local global i32 0, align 4
@FC_CT_RSPN_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* @lpfc_cmpl_ct_cmd_rspn_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_cmpl_ct_cmd_rspn_id(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.lpfc_vport*, align 8
  %9 = alloca %struct.lpfc_dmabuf*, align 8
  %10 = alloca %struct.lpfc_sli_ct_request*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  %11 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %12 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %11, i32 0, i32 2
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %7, align 8
  %13 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %14 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %13, i32 0, i32 1
  %15 = load %struct.lpfc_vport*, %struct.lpfc_vport** %14, align 8
  store %struct.lpfc_vport* %15, %struct.lpfc_vport** %8, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IOSTAT_SUCCESS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %3
  %22 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %23 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %25, %struct.lpfc_dmabuf** %9, align 8
  %26 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %27 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.lpfc_sli_ct_request*
  store %struct.lpfc_sli_ct_request* %29, %struct.lpfc_sli_ct_request** %10, align 8
  %30 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %10, align 8
  %31 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @SLI_CT_RESPONSE_FS_ACC, align 4
  %36 = call i64 @be16_to_cpu(i32 %35)
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %21
  %39 = load i32, i32* @FC_CT_RSPN_ID, align 4
  %40 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %41 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %21
  br label %45

45:                                               ; preds = %44, %3
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %47 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %48 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %49 = call i32 @lpfc_cmpl_ct(%struct.lpfc_hba* %46, %struct.lpfc_iocbq* %47, %struct.lpfc_iocbq* %48)
  ret void
}

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @lpfc_cmpl_ct(%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
