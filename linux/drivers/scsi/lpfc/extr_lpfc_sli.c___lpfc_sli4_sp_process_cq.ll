; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c___lpfc_sli4_sp_process_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c___lpfc_sli4_sp_process_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_queue = type { i32, i32, i32, i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }

@lpfc_sli4_sp_handle_mcqe = common dso_local global i32 0, align 4
@LPFC_IO = common dso_local global i32 0, align 4
@lpfc_sli4_fp_handle_cqe = common dso_local global i32 0, align 4
@lpfc_sli4_sp_handle_cqe = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"0370 Invalid completion queue type (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"0394 Cannot schedule soft IRQ for cqid=%d on CPU %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_queue*)* @__lpfc_sli4_sp_process_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__lpfc_sli4_sp_process_cq(%struct.lpfc_queue* %0) #0 {
  %2 = alloca %struct.lpfc_queue*, align 8
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.lpfc_queue* %0, %struct.lpfc_queue** %2, align 8
  %6 = load %struct.lpfc_queue*, %struct.lpfc_queue** %2, align 8
  %7 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %6, i32 0, i32 5
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  store %struct.lpfc_hba* %8, %struct.lpfc_hba** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.lpfc_queue*, %struct.lpfc_queue** %2, align 8
  %10 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %40 [
    i32 129, label %12
    i32 128, label %19
  ]

12:                                               ; preds = %1
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %14 = load %struct.lpfc_queue*, %struct.lpfc_queue** %2, align 8
  %15 = load i32, i32* @lpfc_sli4_sp_handle_mcqe, align 4
  %16 = call i32 @__lpfc_sli4_process_cq(%struct.lpfc_hba* %13, %struct.lpfc_queue* %14, i32 %15, i64* %4)
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  br label %48

19:                                               ; preds = %1
  %20 = load %struct.lpfc_queue*, %struct.lpfc_queue** %2, align 8
  %21 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @LPFC_IO, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %27 = load %struct.lpfc_queue*, %struct.lpfc_queue** %2, align 8
  %28 = load i32, i32* @lpfc_sli4_fp_handle_cqe, align 4
  %29 = call i32 @__lpfc_sli4_process_cq(%struct.lpfc_hba* %26, %struct.lpfc_queue* %27, i32 %28, i64* %4)
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %39

32:                                               ; preds = %19
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %34 = load %struct.lpfc_queue*, %struct.lpfc_queue** %2, align 8
  %35 = load i32, i32* @lpfc_sli4_sp_handle_cqe, align 4
  %36 = call i32 @__lpfc_sli4_process_cq(%struct.lpfc_hba* %33, %struct.lpfc_queue* %34, i32 %35, i64* %4)
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %32, %25
  br label %48

40:                                               ; preds = %1
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %42 = load i32, i32* @KERN_ERR, align 4
  %43 = load i32, i32* @LOG_SLI, align 4
  %44 = load %struct.lpfc_queue*, %struct.lpfc_queue** %2, align 8
  %45 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %41, i32 %42, i32 %43, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %81

48:                                               ; preds = %39, %12
  %49 = load i64, i64* %4, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %48
  %52 = load %struct.lpfc_queue*, %struct.lpfc_queue** %2, align 8
  %53 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %56 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.lpfc_queue*, %struct.lpfc_queue** %2, align 8
  %59 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %58, i32 0, i32 3
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @queue_delayed_work_on(i32 %54, i32 %57, i32* %59, i64 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %51
  %64 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %65 = load i32, i32* @KERN_ERR, align 4
  %66 = load i32, i32* @LOG_SLI, align 4
  %67 = load %struct.lpfc_queue*, %struct.lpfc_queue** %2, align 8
  %68 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.lpfc_queue*, %struct.lpfc_queue** %2, align 8
  %71 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %64, i32 %65, i32 %66, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %63, %51
  br label %75

75:                                               ; preds = %74, %48
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %80 = call i32 @lpfc_worker_wake_up(%struct.lpfc_hba* %79)
  br label %81

81:                                               ; preds = %40, %78, %75
  ret void
}

declare dso_local i32 @__lpfc_sli4_process_cq(%struct.lpfc_hba*, %struct.lpfc_queue*, i32, i64*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @queue_delayed_work_on(i32, i32, i32*, i64) #1

declare dso_local i32 @lpfc_worker_wake_up(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
