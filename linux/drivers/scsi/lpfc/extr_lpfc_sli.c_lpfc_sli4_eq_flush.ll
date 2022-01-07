; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_eq_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_eq_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.lpfc_hba.0*, %struct.lpfc_queue*, i64, i32)* }
%struct.lpfc_hba.0 = type opaque
%struct.lpfc_queue = type { i32 }
%struct.lpfc_eqe = type { i32 }

@LPFC_QUEUE_REARM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_queue*)* @lpfc_sli4_eq_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli4_eq_flush(%struct.lpfc_hba* %0, %struct.lpfc_queue* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_queue*, align 8
  %5 = alloca %struct.lpfc_eqe*, align 8
  %6 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_queue* %1, %struct.lpfc_queue** %4, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %8 = call %struct.lpfc_eqe* @lpfc_sli4_eq_get(%struct.lpfc_queue* %7)
  store %struct.lpfc_eqe* %8, %struct.lpfc_eqe** %5, align 8
  br label %9

9:                                                ; preds = %12, %2
  %10 = load %struct.lpfc_eqe*, %struct.lpfc_eqe** %5, align 8
  %11 = icmp ne %struct.lpfc_eqe* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %14 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %15 = load %struct.lpfc_eqe*, %struct.lpfc_eqe** %5, align 8
  %16 = call i32 @__lpfc_sli4_consume_eqe(%struct.lpfc_hba* %13, %struct.lpfc_queue* %14, %struct.lpfc_eqe* %15)
  %17 = load i64, i64* %6, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %6, align 8
  %19 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %20 = call %struct.lpfc_eqe* @lpfc_sli4_eq_get(%struct.lpfc_queue* %19)
  store %struct.lpfc_eqe* %20, %struct.lpfc_eqe** %5, align 8
  br label %9

21:                                               ; preds = %9
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.lpfc_hba.0*, %struct.lpfc_queue*, i64, i32)*, i32 (%struct.lpfc_hba.0*, %struct.lpfc_queue*, i64, i32)** %24, align 8
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %27 = bitcast %struct.lpfc_hba* %26 to %struct.lpfc_hba.0*
  %28 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i32, i32* @LPFC_QUEUE_REARM, align 4
  %31 = call i32 %25(%struct.lpfc_hba.0* %27, %struct.lpfc_queue* %28, i64 %29, i32 %30)
  ret void
}

declare dso_local %struct.lpfc_eqe* @lpfc_sli4_eq_get(%struct.lpfc_queue*) #1

declare dso_local i32 @__lpfc_sli4_consume_eqe(%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.lpfc_eqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
