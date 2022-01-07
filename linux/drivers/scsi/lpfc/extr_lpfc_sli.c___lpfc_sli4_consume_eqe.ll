; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c___lpfc_sli4_consume_eqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c___lpfc_sli4_consume_eqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.lpfc_queue = type { i32, i32, i32 }
%struct.lpfc_eqe = type { i32 }

@lpfc_eqe_valid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.lpfc_eqe*)* @__lpfc_sli4_consume_eqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__lpfc_sli4_consume_eqe(%struct.lpfc_hba* %0, %struct.lpfc_queue* %1, %struct.lpfc_eqe* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_queue*, align 8
  %6 = alloca %struct.lpfc_eqe*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_queue* %1, %struct.lpfc_queue** %5, align 8
  store %struct.lpfc_eqe* %2, %struct.lpfc_eqe** %6, align 8
  %7 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %8 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @lpfc_eqe_valid, align 4
  %15 = load %struct.lpfc_eqe*, %struct.lpfc_eqe** %6, align 8
  %16 = call i32 @bf_set_le32(i32 %14, %struct.lpfc_eqe* %15, i32 0)
  br label %17

17:                                               ; preds = %13, %3
  %18 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %19 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  %22 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %23 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = srem i32 %21, %24
  %26 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %27 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %29 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %17
  %35 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %36 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %41 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 0, i32 1
  %46 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %47 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %39, %34, %17
  ret void
}

declare dso_local i32 @bf_set_le32(i32, %struct.lpfc_eqe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
