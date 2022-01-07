; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_abort_fcp_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_abort_fcp_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i64, %struct.TYPE_4__, %struct.lpfc_sli }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.lpfc_sli_ring* }
%struct.lpfc_sli_ring = type { i32 }
%struct.lpfc_sli = type { %struct.lpfc_sli_ring* }

@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_FCP_RING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_sli_abort_fcp_rings(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_sli*, align 8
  %4 = alloca %struct.lpfc_sli_ring*, align 8
  %5 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 3
  store %struct.lpfc_sli* %7, %struct.lpfc_sli** %3, align 8
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %9 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @LPFC_SLI_REV4, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %34, %13
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %17 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %14
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %29, align 8
  store %struct.lpfc_sli_ring* %30, %struct.lpfc_sli_ring** %4, align 8
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %32 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %33 = call i32 @lpfc_sli_abort_iocb_ring(%struct.lpfc_hba* %31, %struct.lpfc_sli_ring* %32)
  br label %34

34:                                               ; preds = %20
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %5, align 8
  br label %14

37:                                               ; preds = %14
  br label %47

38:                                               ; preds = %1
  %39 = load %struct.lpfc_sli*, %struct.lpfc_sli** %3, align 8
  %40 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %39, i32 0, i32 0
  %41 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %40, align 8
  %42 = load i64, i64* @LPFC_FCP_RING, align 8
  %43 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %41, i64 %42
  store %struct.lpfc_sli_ring* %43, %struct.lpfc_sli_ring** %4, align 8
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %45 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %46 = call i32 @lpfc_sli_abort_iocb_ring(%struct.lpfc_hba* %44, %struct.lpfc_sli_ring* %45)
  br label %47

47:                                               ; preds = %38, %37
  ret void
}

declare dso_local i32 @lpfc_sli_abort_iocb_ring(%struct.lpfc_hba*, %struct.lpfc_sli_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
