; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c___lpfc_clear_active_sglq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c___lpfc_clear_active_sglq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_sglq = type { i32 }
%struct.lpfc_hba = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.lpfc_sglq** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lpfc_sglq* @__lpfc_clear_active_sglq(%struct.lpfc_hba* %0, i64 %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.lpfc_sglq*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.lpfc_sglq**, %struct.lpfc_sglq*** %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.lpfc_sglq*, %struct.lpfc_sglq** %9, i64 %10
  %12 = load %struct.lpfc_sglq*, %struct.lpfc_sglq** %11, align 8
  store %struct.lpfc_sglq* %12, %struct.lpfc_sglq** %5, align 8
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %14 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.lpfc_sglq**, %struct.lpfc_sglq*** %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds %struct.lpfc_sglq*, %struct.lpfc_sglq** %16, i64 %17
  store %struct.lpfc_sglq* null, %struct.lpfc_sglq** %18, align 8
  %19 = load %struct.lpfc_sglq*, %struct.lpfc_sglq** %5, align 8
  ret %struct.lpfc_sglq* %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
