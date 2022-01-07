; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_process_eq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_process_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.lpfc_hba.0*, %struct.lpfc_queue*, i32, i32)* }
%struct.lpfc_hba.0 = type opaque
%struct.lpfc_queue = type { i32, i32, i32, i32, i64 }
%struct.lpfc_eqe = type { i32 }

@LPFC_QUEUE_NOARM = common dso_local global i32 0, align 4
@LPFC_QUEUE_REARM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_queue*)* @lpfc_sli4_process_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_process_eq(%struct.lpfc_hba* %0, %struct.lpfc_queue* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_queue*, align 8
  %5 = alloca %struct.lpfc_eqe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_queue* %1, %struct.lpfc_queue** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %9 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %8, i32 0, i32 4
  %10 = call i64 @cmpxchg(i64* %9, i32 0, i32 1)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %77

13:                                               ; preds = %2
  %14 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %15 = call %struct.lpfc_eqe* @lpfc_sli4_eq_get(%struct.lpfc_queue* %14)
  store %struct.lpfc_eqe* %15, %struct.lpfc_eqe** %5, align 8
  br label %16

16:                                               ; preds = %56, %13
  %17 = load %struct.lpfc_eqe*, %struct.lpfc_eqe** %5, align 8
  %18 = icmp ne %struct.lpfc_eqe* %17, null
  br i1 %18, label %19, label %59

19:                                               ; preds = %16
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %21 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %22 = load %struct.lpfc_eqe*, %struct.lpfc_eqe** %5, align 8
  %23 = call i32 @lpfc_sli4_hba_handle_eqe(%struct.lpfc_hba* %20, %struct.lpfc_queue* %21, %struct.lpfc_eqe* %22)
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %25 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %26 = load %struct.lpfc_eqe*, %struct.lpfc_eqe** %5, align 8
  %27 = call i32 @__lpfc_sli4_consume_eqe(%struct.lpfc_hba* %24, %struct.lpfc_queue* %25, %struct.lpfc_eqe* %26)
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  %32 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %33 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = srem i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %19
  br label %59

38:                                               ; preds = %19
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %41 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = srem i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %38
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %47 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32 (%struct.lpfc_hba.0*, %struct.lpfc_queue*, i32, i32)*, i32 (%struct.lpfc_hba.0*, %struct.lpfc_queue*, i32, i32)** %48, align 8
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %51 = bitcast %struct.lpfc_hba* %50 to %struct.lpfc_hba.0*
  %52 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @LPFC_QUEUE_NOARM, align 4
  %55 = call i32 %49(%struct.lpfc_hba.0* %51, %struct.lpfc_queue* %52, i32 %53, i32 %54)
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %45, %38
  %57 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %58 = call %struct.lpfc_eqe* @lpfc_sli4_eq_get(%struct.lpfc_queue* %57)
  store %struct.lpfc_eqe* %58, %struct.lpfc_eqe** %5, align 8
  br label %16

59:                                               ; preds = %37, %16
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %62 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %67 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %65, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %59
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %73 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %59
  %75 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %76 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %75, i32 0, i32 4
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %74, %12
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %79 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32 (%struct.lpfc_hba.0*, %struct.lpfc_queue*, i32, i32)*, i32 (%struct.lpfc_hba.0*, %struct.lpfc_queue*, i32, i32)** %80, align 8
  %82 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %83 = bitcast %struct.lpfc_hba* %82 to %struct.lpfc_hba.0*
  %84 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @LPFC_QUEUE_REARM, align 4
  %87 = call i32 %81(%struct.lpfc_hba.0* %83, %struct.lpfc_queue* %84, i32 %85, i32 %86)
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i64 @cmpxchg(i64*, i32, i32) #1

declare dso_local %struct.lpfc_eqe* @lpfc_sli4_eq_get(%struct.lpfc_queue*) #1

declare dso_local i32 @lpfc_sli4_hba_handle_eqe(%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.lpfc_eqe*) #1

declare dso_local i32 @__lpfc_sli4_consume_eqe(%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.lpfc_eqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
