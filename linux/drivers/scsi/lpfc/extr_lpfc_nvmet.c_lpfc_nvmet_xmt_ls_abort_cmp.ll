; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvmet.c_lpfc_nvmet_xmt_ls_abort_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvmet.c_lpfc_nvmet_xmt_ls_abort_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.lpfc_iocbq = type { i32*, %struct.lpfc_nvmet_rcv_ctx* }
%struct.lpfc_nvmet_rcv_ctx = type { i64, i32, i32 }
%struct.lpfc_wcqe_complete = type { i32, i32, i32, i32 }
%struct.lpfc_nvmet_tgtport = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_NVME_ABTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"6083 Abort cmpl: ctx x%px WCQE:%08x %08x %08x %08x\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"6415 NVMET LS Abort No ctx: WCQE: %08x %08x %08x %08x\0A\00", align 1
@LPFC_NVMET_STE_LS_ABORT = common dso_local global i64 0, align 8
@LOG_NVME_IOERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"6416 NVMET LS abort cmpl state mismatch: oxid x%x: %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_wcqe_complete*)* @lpfc_nvmet_xmt_ls_abort_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_nvmet_xmt_ls_abort_cmp(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_wcqe_complete* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_wcqe_complete*, align 8
  %7 = alloca %struct.lpfc_nvmet_rcv_ctx*, align 8
  %8 = alloca %struct.lpfc_nvmet_tgtport*, align 8
  %9 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_wcqe_complete* %2, %struct.lpfc_wcqe_complete** %6, align 8
  %10 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %11 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %10, i32 0, i32 1
  %12 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %11, align 8
  store %struct.lpfc_nvmet_rcv_ctx* %12, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %13 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %14 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %17 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.lpfc_nvmet_tgtport*
  store %struct.lpfc_nvmet_tgtport* %21, %struct.lpfc_nvmet_tgtport** %8, align 8
  %22 = load %struct.lpfc_nvmet_tgtport*, %struct.lpfc_nvmet_tgtport** %8, align 8
  %23 = getelementptr inbounds %struct.lpfc_nvmet_tgtport, %struct.lpfc_nvmet_tgtport* %22, i32 0, i32 0
  %24 = call i32 @atomic_inc(i32* %23)
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %26 = load i32, i32* @KERN_INFO, align 4
  %27 = load i32, i32* @LOG_NVME_ABTS, align 4
  %28 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %29 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %30 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %34 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %38 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, %struct.lpfc_nvmet_rcv_ctx*, i64, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %25, i32 %26, i32 %27, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), %struct.lpfc_nvmet_rcv_ctx* %28, i64 %32, i32 %35, i32 %36, i32 %39)
  %41 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %42 = icmp ne %struct.lpfc_nvmet_rcv_ctx* %41, null
  br i1 %42, label %64, label %43

43:                                               ; preds = %3
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %45 = load i32, i32* @KERN_ERR, align 4
  %46 = load i32, i32* @LOG_NVME_ABTS, align 4
  %47 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %48 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to %struct.lpfc_nvmet_rcv_ctx*
  %52 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %53 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %58 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, %struct.lpfc_nvmet_rcv_ctx*, i64, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %44, i32 %45, i32 %46, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), %struct.lpfc_nvmet_rcv_ctx* %51, i64 %55, i32 %56, i32 %59)
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %62 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %63 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %61, %struct.lpfc_iocbq* %62)
  br label %96

64:                                               ; preds = %3
  %65 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %66 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @LPFC_NVMET_STE_LS_ABORT, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %86

70:                                               ; preds = %64
  %71 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %72 = load i32, i32* @KERN_ERR, align 4
  %73 = load i32, i32* @LOG_NVME_IOERR, align 4
  %74 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %75 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to %struct.lpfc_nvmet_rcv_ctx*
  %79 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %80 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %83 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, %struct.lpfc_nvmet_rcv_ctx*, i64, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %71, i32 %72, i32 %73, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), %struct.lpfc_nvmet_rcv_ctx* %78, i64 %81, i32 %84)
  br label %86

86:                                               ; preds = %70, %64
  %87 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %88 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %87, i32 0, i32 1
  store %struct.lpfc_nvmet_rcv_ctx* null, %struct.lpfc_nvmet_rcv_ctx** %88, align 8
  %89 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %90 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %89, i32 0, i32 0
  store i32* null, i32** %90, align 8
  %91 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %92 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %93 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %91, %struct.lpfc_iocbq* %92)
  %94 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %95 = call i32 @kfree(%struct.lpfc_nvmet_rcv_ctx* %94)
  br label %96

96:                                               ; preds = %86, %43
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, %struct.lpfc_nvmet_rcv_ctx*, i64, i32, ...) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @kfree(%struct.lpfc_nvmet_rcv_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
