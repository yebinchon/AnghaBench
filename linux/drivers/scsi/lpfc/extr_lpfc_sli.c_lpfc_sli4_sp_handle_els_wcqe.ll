; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_sp_handle_els_wcqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_sp_handle_els_wcqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.lpfc_queue = type { %struct.lpfc_sli_ring* }
%struct.lpfc_sli_ring = type { i32, i32 }
%struct.lpfc_wcqe_complete = type { i32, i32, i32, i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@lpfc_wcqe_c_status = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"0357 ELS CQE error: status=x%x: CQE: %08x %08x %08x %08x\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"0387 NO IOCBQ data: txq_cnt=%d iocb_cnt=%d fcp_txcmplq_cnt=%d, els_txcmplq_cnt=%d\0A\00", align 1
@HBA_SP_QUEUE_EVT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.lpfc_wcqe_complete*)* @lpfc_sli4_sp_handle_els_wcqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_sp_handle_els_wcqe(%struct.lpfc_hba* %0, %struct.lpfc_queue* %1, %struct.lpfc_wcqe_complete* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_queue*, align 8
  %7 = alloca %struct.lpfc_wcqe_complete*, align 8
  %8 = alloca %struct.lpfc_iocbq*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.lpfc_sli_ring*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfc_queue* %1, %struct.lpfc_queue** %6, align 8
  store %struct.lpfc_wcqe_complete* %2, %struct.lpfc_wcqe_complete** %7, align 8
  %14 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %15 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %14, i32 0, i32 0
  %16 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %15, align 8
  store %struct.lpfc_sli_ring* %16, %struct.lpfc_sli_ring** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* @lpfc_wcqe_c_status, align 4
  %18 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %7, align 8
  %19 = call i32 @bf_get(i32 %17, %struct.lpfc_wcqe_complete* %18)
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %3
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %24 = load i32, i32* @KERN_INFO, align 4
  %25 = load i32, i32* @LOG_SLI, align 4
  %26 = load i32, i32* @lpfc_wcqe_c_status, align 4
  %27 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %7, align 8
  %28 = call i32 @bf_get(i32 %26, %struct.lpfc_wcqe_complete* %27)
  %29 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %7, align 8
  %30 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %7, align 8
  %33 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %7, align 8
  %36 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %7, align 8
  %39 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %23, i32 %24, i32 %25, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31, i32 %34, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %22, %3
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %44 = call %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba* %43)
  store %struct.lpfc_iocbq* %44, %struct.lpfc_iocbq** %8, align 8
  %45 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %46 = icmp ne %struct.lpfc_iocbq* %45, null
  br i1 %46, label %74, label %47

47:                                               ; preds = %42
  %48 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %10, align 8
  %49 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %48, i32 0, i32 1
  %50 = call i32 @list_empty(i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %52, %47
  %56 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %10, align 8
  %57 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %56, i32 0, i32 0
  %58 = call i32 @list_empty(i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %60, %55
  %64 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %65 = load i32, i32* @KERN_ERR, align 4
  %66 = load i32, i32* @LOG_SLI, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %69 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %64, i32 %65, i32 %66, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %70, i32 %71, i32 %72)
  store i32 0, i32* %4, align 4
  br label %101

74:                                               ; preds = %42
  %75 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %76 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %7, align 8
  %80 = call i32 @memcpy(i32* %78, %struct.lpfc_wcqe_complete* %79, i32 16)
  %81 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %82 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %81, i32 0, i32 0
  %83 = load i64, i64* %9, align 8
  %84 = call i32 @spin_lock_irqsave(i32* %82, i64 %83)
  %85 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %86 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %89 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = call i32 @list_add_tail(i32* %87, i32* %90)
  %92 = load i32, i32* @HBA_SP_QUEUE_EVT, align 4
  %93 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %94 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %98 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %97, i32 0, i32 0
  %99 = load i64, i64* %9, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  store i32 1, i32* %4, align 4
  br label %101

101:                                              ; preds = %74, %63
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bf_get(i32, %struct.lpfc_wcqe_complete*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, i32, ...) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.lpfc_wcqe_complete*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
