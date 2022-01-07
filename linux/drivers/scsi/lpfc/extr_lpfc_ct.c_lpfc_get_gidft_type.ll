; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_get_gidft_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_get_gidft_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32 }
%struct.lpfc_iocbq = type { %struct.lpfc_dmabuf* }
%struct.lpfc_dmabuf = type { i64 }
%struct.lpfc_sli_ct_request = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@SLI_CTPT_FCP = common dso_local global i64 0, align 8
@SLI_CTPT_NVME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_get_gidft_type(%struct.lpfc_vport* %0, %struct.lpfc_iocbq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_sli_ct_request*, align 8
  %7 = alloca %struct.lpfc_dmabuf*, align 8
  %8 = alloca i64, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  %9 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %10 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %9, i32 0, i32 0
  %11 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  store %struct.lpfc_dmabuf* %11, %struct.lpfc_dmabuf** %7, align 8
  %12 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %13 = icmp eq %struct.lpfc_dmabuf* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

15:                                               ; preds = %2
  %16 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %7, align 8
  %17 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.lpfc_sli_ct_request*
  store %struct.lpfc_sli_ct_request* %19, %struct.lpfc_sli_ct_request** %6, align 8
  %20 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %6, align 8
  %21 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @SLI_CTPT_FCP, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %15
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @SLI_CTPT_NVME, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %36

33:                                               ; preds = %28, %15
  %34 = load i64, i64* %8, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %33, %32, %14
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
